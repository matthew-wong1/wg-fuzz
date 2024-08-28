struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32 = -36185i;

var<private> global2: Struct_1;

var<private> global3: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(vec4<i32>(1i, 8483i, 45003i, 2147483647i)), Struct_5(vec4<i32>(i32(-2147483648), -1i, 54333i, 0i)), Struct_5(vec4<i32>(2147483647i, 29609i, -6975i, -3785i)), Struct_5(vec4<i32>(0i, i32(-2147483648), -1i, 2147483647i)), Struct_5(vec4<i32>(i32(-2147483648), 41540i, 2147483647i, 33247i)), Struct_5(vec4<i32>(-1i, -975i, 1i, 47037i)), Struct_5(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 15394i)), Struct_5(vec4<i32>(0i, 1i, 76003i, 7717i)), Struct_5(vec4<i32>(2147483647i, 46116i, 1i, -57606i)), Struct_5(vec4<i32>(16181i, 0i, -11918i, i32(-2147483648))), Struct_5(vec4<i32>(2147483647i, 1666i, 11285i, -21575i)), Struct_5(vec4<i32>(43057i, 2147483647i, -6198i, 2147483647i)), Struct_5(vec4<i32>(-1021i, 45097i, -13055i, -1i)), Struct_5(vec4<i32>(0i, -15496i, 5326i, i32(-2147483648))), Struct_5(vec4<i32>(-1i, i32(-2147483648), 18872i, -1i)), Struct_5(vec4<i32>(1i, 49085i, 3597i, i32(-2147483648))), Struct_5(vec4<i32>(2147483647i, 13895i, -1i, 1i)), Struct_5(vec4<i32>(-23789i, 2147483647i, -1i, i32(-2147483648))), Struct_5(vec4<i32>(-29771i, -28222i, -36538i, -31185i)), Struct_5(vec4<i32>(-40035i, i32(-2147483648), -1i, -9679i)), Struct_5(vec4<i32>(20615i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_5(vec4<i32>(-24749i, 1i, i32(-2147483648), 5477i)), Struct_5(vec4<i32>(-1i, 26284i, 0i, 40206i)), Struct_5(vec4<i32>(1i, -1i, 4365i, 10494i)), Struct_5(vec4<i32>(-88910i, 1i, -38706i, i32(-2147483648))), Struct_5(vec4<i32>(-6200i, -1i, 25834i, i32(-2147483648))), Struct_5(vec4<i32>(2147483647i, -1i, -20604i, 76803i)), Struct_5(vec4<i32>(i32(-2147483648), 19435i, -50052i, 0i)), Struct_5(vec4<i32>(i32(-2147483648), -21067i, -1i, -1i)), Struct_5(vec4<i32>(-1i, -15936i, 1i, 49256i)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_2(Struct_1(vec2<u32>(~(4294967295u & u_input.b.x), countOneBits(0u)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(global2.b.x, arg_1.x, true), false), vec3<bool>(true, arg_1.x, true), true), vec3<bool>(arg_1.x, any(vec4<bool>(arg_1.x, false, arg_1.x, global0.c.c.d.x)), !arg_1.x), arg_1), 0u, select(global0.c.c.b.zx, vec2<bool>(false, !global2.d.x), global0.c.c.d.x || true), -vec2<i32>(global0.b, global2.e.x) & ~(vec2<i32>(u_input.d.x, 19044i) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.a), _wgslsmith_f_op_f32(abs(-325f))))))));
    var var_1 = global2.a;
    let var_2 = global0.c.b.xxz;
    var var_3 = all(select(var_0.a.b.zx, select(vec2<bool>(true, all(global0.c.c.b.yz)), vec2<bool>(true, global2.d.x), true | !global0.c.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 2342f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1750f)));
    let var_4 = select(global0.c.c.b, var_0.a.b, any(!vec4<bool>(true, var_0.a.d.x, global2.b.x, true)));
    return true;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_3 {
    global0 = Struct_4(u_input.b, -52100i, global0.c, vec2<u32>(4294967295u, arg_0));
    var var_0 = -517f;
    var var_1 = !(!vec4<bool>(false, true, all(vec2<bool>(false, false)), select(func_3(vec3<f32>(-612f, global0.c.a, 1561f), global0.c.c.b), true, true)));
    var var_2 = global0.c.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(100f)) - _wgslsmith_f_op_f32(global0.c.a - global0.c.a)) * -915f) * _wgslsmith_f_op_f32(round(1f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a) * -1993f);
    return global0.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global0 = Struct_4(~u_input.b, -2147483647i, func_2(1u, -(~vec2<i32>(-1i, 1i))), abs(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4998u, 1u), arg_1.a))));
    let var_0 = 57450i;
    var var_1 = vec4<u32>(~global0.d.x, max(~select(arg_1.a.x, arg_0.a.a.x, true), 4294967295u), 4294967295u, ~4294967295u) & ~(~(~firstTrailingBit(vec4<u32>(global2.c, 49297u, 4294967295u, arg_1.c))));
    let var_2 = func_2(global2.a.x, ~_wgslsmith_sub_vec2_i32(arg_1.e, arg_1.e)).c;
    let var_3 = Struct_5(vec4<i32>(var_2.e.x, -1i, 13262i, ~(i32(-1i) * -1i)));
    return global0.c.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    global0 = Struct_4(u_input.b, ~arg_0, global0.c, abs(global0.a.yz << (global2.a % vec2<u32>(32u))));
    let var_0 = func_2(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u), ~min(1u, 4294967295u)), 0u, 1819u), vec2<i32>(global2.e.x, arg_1.b.x)).c;
    global1 = abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(func_2(global0.c.c.a.x, _wgslsmith_div_vec2_i32(vec2<i32>(27004i, arg_1.c.e.x), global2.e)).c.e.x, var_0.e.x), _wgslsmith_add_i32(-func_2(var_0.c, vec2<i32>(arg_1.c.e.x, arg_1.c.e.x)).b.x, func_2(global2.a.x, vec2<i32>(arg_0, 4132i)).c.e.x)));
    let var_1 = Struct_2(var_0, global0.c.a);
    let var_2 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4390u, 1u, global0.c.c.a.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.c.a.x, global0.d.x, 4294967295u, 1u), vec4<u32>(arg_1.c.a.x, arg_1.c.c, 2024u, var_1.a.c))), max(firstTrailingBit(vec4<u32>(20035u, var_1.a.c, 10023u, 8439u)), firstTrailingBit(vec4<u32>(u_input.b.x, global0.d.x, 4294967295u, 1u)))));
    return -_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.e.x, abs(-3000i)), -5713i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_i32(func_4(-15847i, Struct_3(_wgslsmith_f_op_f32(global0.c.a - _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global2.a, vec3<bool>(false, global0.c.c.b.x, global2.d.x), u_input.b.x, vec2<bool>(global0.c.c.d.x, true), vec2<i32>(global0.c.c.e.x, global2.e.x)), global0.c.a), global0.c.c, Struct_4(u_input.b, global0.b, Struct_3(global0.c.a, vec4<i32>(u_input.a.x, -76976i, global0.c.c.e.x, 1i), Struct_1(vec2<u32>(22761u, global0.a.x), global0.c.c.b, global2.c, global0.c.c.b.xy, u_input.d.yx)), vec2<u32>(6160u, 31622u))))), _wgslsmith_mod_vec4_i32(~global0.c.b, global0.c.b), func_2(1u, ~vec2<i32>(-2147483647i, u_input.d.x)).c)), global2.e.x);
    let var_0 = firstTrailingBit(vec3<i32>(-abs(countOneBits(-1i)), -global2.e.x, firstLeadingBit(global2.e.x)));
    global0 = Struct_4(u_input.b, ~29380i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a + _wgslsmith_f_op_f32(-591f - 1931f))), ~(~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), func_2(~_wgslsmith_add_u32(global0.d.x, 48132u), func_2(91899u, global2.e).c.e).c), vec2<u32>(u_input.b.x, ~u_input.b.x));
    var var_1 = true;
    global0 = Struct_4(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -global2.e.x, min(-1411i, 1i) >> (select(4294967295u, u_input.b.x, global0.c.c.b.x) % 32u), _wgslsmith_dot_vec3_i32(global0.c.b.zzz, global0.c.b.zwx)), vec3<i32>(~48341i, u_input.d.x, global0.c.b.x)), func_2(u_input.b.x | _wgslsmith_sub_u32(firstTrailingBit(35685u), ~1u), vec2<i32>(41946i, -_wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-2147483647i, u_input.c, u_input.a.x)))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, ~11848u), abs(vec2<u32>(global2.a.x, u_input.b.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.d.x, 1433u), u_input.b.xy), ~vec2<u32>(u_input.b.x, 89090u))));
    global0 = Struct_4(~u_input.b, reverseBits(1i), Struct_3(_wgslsmith_f_op_f32(global0.c.a * global0.c.a), -(~vec4<i32>(-2147483647i, 2147483647i, 44499i, var_0.x)), global0.c.c), _wgslsmith_add_vec2_u32(~u_input.b.xz & vec2<u32>(_wgslsmith_div_u32(global2.a.x, global0.c.c.a.x), global0.d.x), global0.c.c.a));
    let var_2 = Struct_4(global0.a, var_0.x, global0.c, select((global2.a >> (reverseBits(u_input.b.xx) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_sub_u32(global2.c, 1u), ~global2.a.x), abs(_wgslsmith_mult_vec2_u32(global0.d | vec2<u32>(u_input.b.x, 4943u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(1u, 29925u)))), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a, -1000f, global0.c.a, global0.c.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-112f, global0.c.a, 1000f, -707f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a, 286f, -305f, -1000f) + vec4<f32>(var_2.c.a, var_2.c.a, 2746f, -659f)), select(vec4<bool>(global2.b.x, false, true, false), vec4<bool>(true, var_2.c.c.b.x, global0.c.c.d.x, global2.b.x), vec4<bool>(var_2.c.c.b.x, true, true, var_2.c.c.d.x)))), vec4<bool>(true, var_2.c.c.d.x, var_2.c.c.b.x, var_0.x < -70470i))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1469f, var_2.c.a, 993f, var_2.c.a)), vec4<f32>(-740f, var_2.c.a, global0.c.a, 2853f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-501f, 396f, var_2.c.a, -2083f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(-var_2.c.b.zy, var_2.c.b.zz), vec2<i32>(var_0.x, max(16754i << (global0.c.c.a.x % 32u), 37414i)), reverseBits(-global0.c.b.xx) ^ var_2.c.c.e));
}


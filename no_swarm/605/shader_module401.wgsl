struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(679u, 76791u, 4294967295u, 28526u));

var<private> global2: vec2<u32>;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    let var_0 = global4.a.x;
    var var_1 = false;
    global0 = !(!((21u == u_input.c) || true)) == any(!vec4<bool>(u_input.b == u_input.b, false, false, false));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-344f)) - _wgslsmith_f_op_f32(f32(-1f) * -245f)))));
    var var_3 = u_input.b;
    return Struct_2(~vec4<u32>(~global2.x & ~u_input.c, ~(~0u), _wgslsmith_dot_vec4_u32(~global4.a, vec4<u32>(global2.x, u_input.a.x, 4294967295u, 26922u)), global1.a.x));
}

fn func_3() -> bool {
    global4 = Struct_2(abs(global1.a));
    let var_0 = !vec4<bool>(-abs(-2147483647i) != u_input.b, -2147483647i == u_input.b, true, !(!all(vec2<bool>(false, true))));
    global3 = Struct_2(max(global4.a, firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(global3.a), u_input.a))));
    return var_0.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    global4 = Struct_2(u_input.a);
    global3 = Struct_2(vec4<u32>(~1u, max(1u, ~arg_0.x), global2.x, ~firstTrailingBit(global1.a.x)) >> (abs(u_input.a) % vec4<u32>(32u)));
    let var_0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(select(select(u_input.a, vec4<u32>(3565u, global3.a.x, u_input.a.x, 0u), arg_1.x), vec4<u32>(26224u, global4.a.x, u_input.a.x, global2.x), arg_2.c.x), global3.a), arg_0.x, _wgslsmith_div_u32(min(global3.a.x, _wgslsmith_div_u32(u_input.c, global4.a.x)), global3.a.x), func_1().a.x));
    global4 = var_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-949f, -591f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - 532f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1431f, arg_2.a), 265f, -885f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2.a, arg_2.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, 682f, -1968f))), !select(arg_1.xxz, arg_1.zzy, vec3<bool>(arg_1.x, arg_1.x, arg_1.x))))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-218f, 2062f)))) - var_1.zy), true))));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(global4.a.yyw, !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-795f, _wgslsmith_f_op_f32(299f + arg_0)))), countOneBits(~(~vec2<i32>(0i, u_input.b))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), false), vec3<bool>(func_3(), true, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0);
    global0 = !any(!vec4<bool>(var_0.x != arg_0, true, true, true));
    global4 = Struct_2(vec4<u32>(u_input.c, abs(21824u), global1.a.x, ~(~global1.a.x)));
    var var_2 = ~(~(~49988u) >> (u_input.a.x % 32u));
    return ~u_input.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~1u;
    var_0 = Struct_2(_wgslsmith_div_vec4_u32(firstTrailingBit(global4.a), (reverseBits(vec4<u32>(0u, 1u, 1u, 4294967295u)) & vec4<u32>(4294967295u, 0u, global4.a.x, global3.a.x)) << (u_input.a % vec4<u32>(32u))));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-49064i, u_input.b, -4727i), vec3<i32>(-54311i, u_input.b, u_input.b)), -1i) >> (~0u % 32u), 2147483647i) ^ (abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), firstLeadingBit(vec2<i32>(u_input.b, u_input.b)))) << ((_wgslsmith_mult_vec2_u32(select(global4.a.wx, u_input.a.ww, false), ~global3.a.wy) << (func_2(780f) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_2.x, 27465i, -74289i), vec4<i32>(u_input.b, u_input.b, var_2.x, var_2.x)), -u_input.b, var_2.x) << (global4.a.yxx % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, -1i), select(vec3<i32>(-30457i, var_2.x, -1866i), vec3<i32>(u_input.b, 2147483647i, var_2.x), vec3<bool>(true, false, true))), vec3<i32>(~28447i, _wgslsmith_clamp_i32(u_input.b, -3024i, u_input.b), u_input.b | var_2.x)), true && (min(32928i, u_input.b) <= 0i)), _wgslsmith_div_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec3<i32>(abs(u_input.b), min(u_input.b, 1i), 32336i))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-255f - 985f), _wgslsmith_mult_vec2_i32(firstTrailingBit(-(vec2<i32>(21899i, 21108i) << (vec2<u32>(10642u, var_0.a.x) % vec2<u32>(32u)))), var_2 & (select(vec2<i32>(50144i, var_2.x), vec2<i32>(u_input.b, u_input.b), true) & ~vec2<i32>(var_2.x, var_2.x))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), true)), vec3<bool>(func_3(), false, (max(var_2.x, 1i) == 1i) || true));
    var_0 = Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(~global1.a.x, global4.a.x, 0u, 1u), global3.a & firstLeadingBit(global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, -(~(~vec3<i32>(-34919i, var_4.b.x, 0i))) >> (vec3<u32>(3335u, 75953u, global2.x) % vec3<u32>(32u)));
}


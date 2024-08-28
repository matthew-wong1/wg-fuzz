struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(15992i, 1i), true, vec2<f32>(-906f, -429f)));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(arg_1.a & min(arg_1.a, vec2<i32>(arg_0, arg_1.a.x)), max(vec2<i32>(arg_1.a.x, arg_0) | arg_1.a, ~arg_1.a)), _wgslsmith_sub_i32(-arg_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(15527i, 672i), arg_1.a), arg_1.a.x)), arg_1.a.x) & select(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-26478i, 1i, arg_1.a.x, arg_1.a.x), vec4<i32>(u_input.c, u_input.c, 1i, -2147483647i), arg_1.b), firstLeadingBit(vec4<i32>(0i, arg_0, u_input.c, arg_0))) >> ((vec4<u32>(0u, 24088u, 61205u, 0u) << ((arg_2 >> (vec4<u32>(u_input.b.x, 41324u, 0u, 35036u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<i32>(countOneBits(arg_0), 0i, -2206i, -32952i), vec4<i32>(0i, arg_1.a.x, abs(arg_1.a.x), _wgslsmith_div_i32(u_input.c, 0i)), true), arg_1.b || select(u_input.c >= arg_0, !arg_1.b, arg_1.b));
    global1 = array<Struct_1, 1>();
    var var_1 = 2221f;
    var var_2 = true;
    var_2 = arg_1.b;
    return vec2<u32>(arg_2.x, u_input.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_2.c.x, -593f, -1000f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-487f, _wgslsmith_div_f32(-620f, arg_2.c.x), _wgslsmith_div_f32(847f, 261f), _wgslsmith_f_op_f32(round(571f)))))));
    var var_1 = Struct_1(arg_2.a, any(!vec3<bool>(arg_2.b, !arg_2.b, arg_2.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1754f, _wgslsmith_f_op_f32(-2952f * arg_2.c.x)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1455f) - vec2<f32>(var_0.x, 213f)), vec2<f32>(arg_2.c.x, var_0.x)), arg_2.c))));
    global2 = _wgslsmith_clamp_u32(arg_0.x, arg_0.x, firstTrailingBit(~(~(~4294967295u))));
    let var_2 = ~(~select(vec4<u32>(4294967295u, min(22003u, 0u), 1u, 0u), u_input.a, _wgslsmith_f_op_f32(var_0.x - -988f) > 1f));
    var var_3 = vec4<u32>(~u_input.a.x, var_2.x, 8105u, _wgslsmith_dot_vec3_u32(u_input.a.www, var_2.xxx));
    return vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zxw << (~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, 38374u, 4294967295u), vec3<u32>(var_2.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), u_input.a.zwy), ~8222u, arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(u_input.a.x, firstTrailingBit(4294967295u >> (firstLeadingBit(_wgslsmith_mod_u32(17468u, arg_1.x)) % 32u)));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.d, 1u), 11666u, 1u >> (firstLeadingBit(64717u) % 32u)), func_4(func_3(-22836i, Struct_1(arg_0.a, true, vec2<f32>(arg_2, arg_0.c.x)), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(36502u, var_0.x, u_input.b.x, var_0.x))) | vec2<u32>(_wgslsmith_mod_u32(var_0.x, 1u), countOneBits(0u)), vec3<bool>(any(select(vec3<bool>(true, arg_3.b, true), vec3<bool>(arg_3.b, arg_0.b, arg_3.b), true)), !(822f >= arg_0.c.x), any(select(vec3<bool>(arg_0.b, arg_3.b, arg_3.b), vec3<bool>(arg_3.b, false, arg_0.b), arg_0.b))), Struct_1(arg_3.a, _wgslsmith_f_op_f32(step(arg_0.c.x, arg_3.c.x)) <= _wgslsmith_f_op_f32(min(-1235f, -466f)), arg_0.c))), 1u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = 0u;
    global2 = func_4(vec2<u32>(_wgslsmith_div_u32(~var_1, 53632u), u_input.a.x | ~1u), vec3<bool>(all(vec4<bool>(var_0.b, var_0.b, true, false)), arg_0.b, arg_1.b), Struct_1(-vec2<i32>(u_input.c, 30667i), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, arg_0.c.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-411f, 880f))))).x << (u_input.d % 32u);
    global1 = array<Struct_1, 1>();
    return Struct_1(~vec2<i32>(u_input.c, -28297i), all(!vec4<bool>(arg_1.b, arg_1.b, arg_0.b, any(vec4<bool>(var_0.b, var_0.b, arg_2.b, arg_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.x, 1000f), arg_2.c, arg_1.b))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(765f, _wgslsmith_f_op_f32(select(arg_1.c.x, 760f, true)))))));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec2<i32> {
    global2 = arg_2;
    let var_0 = func_5(Struct_1(-arg_1.a, true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.c.x)), func_5(Struct_1(arg_1.a, arg_0, arg_1.c), Struct_1(vec2<i32>(~arg_1.a.x, -2147483647i & u_input.c), arg_3 || select(arg_1.b, false, arg_3), arg_1.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(35621u, u_input.a.x, u_input.a.x) | vec3<u32>(arg_2, arg_2, 53513u)), ~max(vec3<u32>(34696u, 45221u, u_input.d), u_input.a.wyy)), 1u)]), global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    let var_1 = Struct_1((vec2<i32>(arg_1.a.x >> (0u % 32u), 2147483647i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(8938u, 0u), ~u_input.a.yx) % vec2<u32>(32u))) << (~(func_4(vec2<u32>(arg_2, arg_2), vec3<bool>(true, false, false), Struct_1(arg_1.a, arg_0, vec2<f32>(1000f, 656f))).yz ^ u_input.a.wx) % vec2<u32>(32u)), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f * var_0.c.x)), var_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1165f, var_0.c.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), !(!select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_0, arg_1.b), vec2<bool>(false, arg_1.b))))));
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(-65741i, var_0.a.x, var_0.a.x, u_input.c) >> (vec4<u32>(u_input.b.x, 49709u, 0u, u_input.a.x) % vec4<u32>(32u))), ~(select(vec4<i32>(var_0.a.x, var_0.a.x, 51396i, var_0.a.x), vec4<i32>(-22189i, -2147483647i, var_0.a.x, var_0.a.x), true) << (firstLeadingBit(u_input.a) % vec4<u32>(32u)))), abs(~vec4<i32>(-var_1.a.x, var_1.a.x, _wgslsmith_div_i32(var_1.a.x, var_0.a.x), -arg_1.a.x)));
    var var_3 = -43332i;
    return var_1.a;
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global2 = _wgslsmith_add_u32(~(~0u), func_4(min(vec2<u32>(~1u, 26757u), countOneBits(abs(arg_0.wx))), vec3<bool>(arg_1.b, !(!arg_2.b), any(!vec2<bool>(true, arg_2.b))), func_2(Struct_1(vec2<i32>(u_input.c, 6691i), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_1.c.x))), vec2<u32>(arg_0.x, u_input.d), arg_2.c.x, Struct_1(arg_1.a, arg_2.b, arg_1.c))).x);
    global2 = 10907u & ~(~_wgslsmith_div_u32(~0u, ~u_input.a.x));
    let var_0 = countOneBits(1i);
    var var_1 = vec4<bool>(any(!select(select(vec2<bool>(arg_1.b, false), vec2<bool>(true, arg_1.b), vec2<bool>(arg_2.b, arg_2.b)), vec2<bool>(arg_1.b, false), all(vec4<bool>(arg_2.b, arg_1.b, false, arg_2.b)))), true, ((_wgslsmith_f_op_f32(step(arg_2.c.x, arg_1.c.x)) > _wgslsmith_div_f32(arg_2.c.x, 447f)) || (true || (arg_1.b | true))) && false, true);
    return arg_2;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 1>();
    var var_0 = firstLeadingBit(u_input.d);
    var_0 = u_input.a.x;
    return func_7(u_input.a, global1[_wgslsmith_index_u32(~3244u, 1u)], global0[_wgslsmith_index_u32(43553u, 29u)], _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -2147483647i) & vec2<i32>(48154i, -2581i), vec2<i32>(1i, u_input.c) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), func_6(all(vec4<bool>(false, false, false, false)), func_5(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 4294967295u), 1u)], func_2(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.b, -217f, Struct_1(vec2<i32>(90937i, 0i), false, vec2<f32>(2751f, -1267f))), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 1u)]), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)), u_input.d != ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(u_input.c < u_input.c, !(!select(true, false, false)));
    let var_1 = func_1();
    var var_2 = func_1();
    var_0 = vec2<bool>(true, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1053f, var_2.c.x, var_1.c.x, var_1.c.x) - vec4<f32>(903f, -743f, var_1.c.x, var_1.c.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.c.x), 2122f, -2073f, var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, -145f, var_3.x, -1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1302f, -482f, -1061f, var_1.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3, var_3) - vec4<f32>(var_2.c.x, 1551f, 414f, var_1.c.x))))), -(i32(-1i) * -u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-697f, _wgslsmith_f_op_f32(192f * -390f))), var_3.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.x, 1931f))))));
}


struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(37994i, -164f, false, vec2<f32>(334f, 619f), vec2<i32>(-1i, -37539i)), Struct_1(2147483647i, 1780f, false, vec2<f32>(-904f, 1000f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(1i, -343f, true, vec2<f32>(1049f, 442f), vec2<i32>(-1i, -21579i)), Struct_1(-14004i, -363f, true, vec2<f32>(-856f, -1000f), vec2<i32>(2352i, 0i)), Struct_1(-40961i, -1282f, true, vec2<f32>(830f, -223f), vec2<i32>(-35635i, -67502i)), Struct_1(4780i, 623f, false, vec2<f32>(-1742f, -1260f), vec2<i32>(1i, 0i)), Struct_1(2147483647i, -861f, true, vec2<f32>(1000f, -494f), vec2<i32>(-47174i, -337i)), Struct_1(i32(-2147483648), -642f, false, vec2<f32>(-888f, 951f), vec2<i32>(0i, 2147483647i)), Struct_1(0i, 271f, false, vec2<f32>(-1157f, -1253f), vec2<i32>(2147483647i, 0i)), Struct_1(30318i, 1651f, false, vec2<f32>(-1000f, 1991f), vec2<i32>(2147483647i, 1i)), Struct_1(-45365i, 109f, true, vec2<f32>(-1417f, 652f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(0i, -1831f, true, vec2<f32>(727f, -1792f), vec2<i32>(i32(-2147483648), -29597i)), Struct_1(-6864i, -1000f, true, vec2<f32>(190f, 470f), vec2<i32>(i32(-2147483648), 6880i)), Struct_1(1i, 493f, true, vec2<f32>(397f, 368f), vec2<i32>(-1i, -1i)), Struct_1(-1i, -2096f, true, vec2<f32>(423f, 2021f), vec2<i32>(24759i, 0i)), Struct_1(35625i, 508f, true, vec2<f32>(-579f, -603f), vec2<i32>(-1i, i32(-2147483648))), Struct_1(15085i, 311f, false, vec2<f32>(802f, -429f), vec2<i32>(i32(-2147483648), 1i)), Struct_1(-4462i, -1762f, true, vec2<f32>(-442f, -437f), vec2<i32>(1i, 6829i)), Struct_1(1i, 1000f, false, vec2<f32>(1536f, 265f), vec2<i32>(1i, -67578i)), Struct_1(33040i, -1411f, true, vec2<f32>(1000f, 200f), vec2<i32>(2147483647i, -30650i)), Struct_1(16365i, 190f, false, vec2<f32>(-818f, 172f), vec2<i32>(-17963i, 1i)), Struct_1(39037i, 809f, false, vec2<f32>(292f, -1479f), vec2<i32>(2147483647i, 0i)), Struct_1(0i, 1389f, true, vec2<f32>(-723f, -222f), vec2<i32>(-56191i, i32(-2147483648))), Struct_1(-22477i, -902f, false, vec2<f32>(-627f, -382f), vec2<i32>(-31684i, 30714i)), Struct_1(10939i, -794f, true, vec2<f32>(-461f, 2696f), vec2<i32>(2147483647i, 36i)));

var<private> global1: vec2<u32> = vec2<u32>(21322u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global1 = ~(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 61609u)), ~firstLeadingBit(u_input.a)) ^ u_input.d.yy);
    let var_0 = Struct_1(countOneBits(-12003i), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-535f, 823f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f + -1256f) + -2234f)))), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) * _wgslsmith_f_op_f32(arg_0.x + 358f))))), ~(vec2<i32>(1i, 1i) << (vec2<u32>(~global1.x, countOneBits(u_input.e)) % vec2<u32>(32u))));
    global1 = max(~u_input.a, u_input.d.zy);
    let var_1 = vec3<f32>(-116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f * -146f))), arg_0.x);
    let var_2 = Struct_1(~1i, -570f, !var_0.c != select(all(vec3<bool>(false, var_0.c, true)), var_0.c, !var_0.c != var_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f), -357f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), abs(vec2<i32>(-50157i, 0i)) & ~(~_wgslsmith_mult_vec2_i32(var_0.e, vec2<i32>(var_0.a, var_0.a))));
    return 47759u;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global1.x), u_input.d.xz), 48090u), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, -994f))))), _wgslsmith_div_vec2_u32(u_input.a, u_input.d.yy));
    global1 = vec2<u32>(~u_input.a.x, ~1u);
    let var_0 = all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false)) || any(vec3<bool>(true, true, true));
    let var_1 = false;
    let var_2 = u_input.b;
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, -13238i), _wgslsmith_div_i32(1i, 1i)) << (u_input.d.x % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -405f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))))), !(!var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f - -150f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, 545f)))), _wgslsmith_mod_vec2_i32(-abs(vec2<i32>(1i, 1i)), abs(~vec2<i32>(1i, 18365i))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.c, 25u)];
    var var_1 = Struct_1(arg_1, 293f, false, arg_0.d, vec2<i32>(var_0.a | 1i, arg_1) ^ (vec2<i32>(-2147483647i, -1i) >> (firstTrailingBit(vec2<u32>(global1.x, 0u)) % vec2<u32>(32u))));
    global0 = array<Struct_1, 25>();
    return 78009u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global1 = ~vec2<u32>(20965u, global1.x << (11774u % 32u));
    global0 = array<Struct_1, 25>();
    let var_0 = vec4<i32>(8536i, arg_0.e.x, ~arg_1.a, abs(arg_1.e.x));
    let var_1 = global0[_wgslsmith_index_u32(func_4(func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x >> (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e.x, -1i, arg_1.e.x), var_0.xyy), func_2().e.x, countOneBits(arg_1.a)), var_0), select(select(!vec4<bool>(false, arg_1.c, false, false), select(vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(true, arg_0.c, arg_1.c, true), vec4<bool>(true, true, true, arg_0.c)), all(vec2<bool>(arg_1.c, true))), vec4<bool>(any(vec4<bool>(arg_0.c, arg_1.c, false, arg_1.c)), 28787i <= arg_1.a, arg_0.c, !arg_0.c), !select(vec4<bool>(true, false, arg_1.c, arg_0.c), vec4<bool>(false, arg_1.c, false, false), false)), Struct_1(reverseBits(arg_0.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d.x + 1000f))), any(!vec3<bool>(true, true, arg_0.c)), _wgslsmith_f_op_vec2_f32(-func_2().d), vec2<i32>(-1i) * -vec2<i32>(-29378i, 23515i))) ^ 0u, 25u)];
    global1 = vec2<u32>(0u, func_4(func_2(), -1i, vec4<bool>(false, arg_1.c, any(vec3<bool>(arg_0.c, false, false)), all(vec3<bool>(var_1.c, arg_1.c, false))), func_2()));
    return !vec4<bool>(arg_0.c, false, all(vec2<bool>(true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-343f, -905f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)))));
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-677f)))));
    global0 = array<Struct_1, 25>();
    let var_2 = !func_1(global0[_wgslsmith_index_u32(abs(0u), 25u)], global0[_wgslsmith_index_u32(global1.x, 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), select(-31503i, 0i, true), ~(-2147483647i)) >> (vec3<u32>(func_4(global0[_wgslsmith_index_u32(global1.x, 25u)], -12145i, var_2, Struct_1(-1i, 875f, false, vec2<f32>(-1000f, var_1), vec2<i32>(0i, 54295i))), global1.x, _wgslsmith_div_u32(4294967295u, 1u)) % vec3<u32>(32u))) | min(select(firstLeadingBit(vec3<i32>(-24951i, -22227i, 0i)), vec3<i32>(1i, 1i, 1i), all(vec2<bool>(var_2.x, false))), reverseBits(~vec3<i32>(-1i, -2147483647i, -1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-20163i, ~(i32(-1i) * -10081i)), func_2().e), ~vec2<i32>(_wgslsmith_mod_i32(2601i, -31444i), 1i) ^ (vec2<i32>(1i, 1i) << (u_input.a % vec2<u32>(32u))), select(countOneBits(vec4<u32>(_wgslsmith_mult_u32(0u, 38056u), select(4294967295u, 17014u, false), 102165u, u_input.a.x)), vec4<u32>(73923u, u_input.c, global1.x, u_input.e), var_2), -64895i | (_wgslsmith_dot_vec3_i32(vec3<i32>(6689i, -23120i, 0i) >> (vec3<u32>(0u, u_input.d.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)) >> (~(~0u) % 32u)));
}


struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(26539u, 64180u);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<f32>(2014f, 101f)), Struct_1(vec2<f32>(1232f, 943f)), Struct_1(vec2<f32>(-397f, -592f)), Struct_1(vec2<f32>(809f, -288f)), Struct_1(vec2<f32>(2088f, -728f)), Struct_1(vec2<f32>(135f, 608f)), Struct_1(vec2<f32>(245f, 2300f)), Struct_1(vec2<f32>(1422f, 2553f)), Struct_1(vec2<f32>(-248f, -535f)));

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 16> = array<f32, 16>(803f, -1310f, 1094f, 1266f, -1085f, -805f, -618f, 2780f, -924f, 961f, 381f, -646f, 1776f, 812f, 552f, -223f);

var<private> global4: u32 = 58006u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = true;
    global0 = ~(~(~vec2<u32>(global0.x, ~global0.x)));
    var var_1 = true;
    var var_2 = 389f;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 16u)], -427f, -331f, global3[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, -305f, global3[_wgslsmith_index_u32(global0.x, 16u)], global3[_wgslsmith_index_u32(global0.x, 16u)]))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, global0.x), 16u)], _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.x, 16u)] - -672f) + -702f), _wgslsmith_f_op_f32(f32(-1f) * -1209f))));
    return select(vec3<bool>(max(global0.x, global0.x) >= ~max(52874u, 16143u), all(select(select(global2.zy, vec2<bool>(global2.x, var_0), false), vec2<bool>(true, true), global3[_wgslsmith_index_u32(0u, 16u)] >= 424f)), var_0), select(vec3<bool>(!global2.x, global2.x, 1i < -u_input.c), !(!select(vec3<bool>(global2.x, true, var_0), vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, false, var_0))), !any(global2.xy)), any(vec2<bool>(!global2.x, !(var_0 | global2.x))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = !func_3();
    return global1[_wgslsmith_index_u32(1u, 9u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global2 = vec3<bool>(global2.x || !select(true, true, true), all(!vec4<bool>(all(global2.yz), true, global2.x, true)), global2.x);
    let var_0 = func_2(global2.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))))) + vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(true).a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    global3 = array<f32, 16>();
    global0 = _wgslsmith_mod_vec2_u32(arg_0.wx, vec2<u32>(global0.x, arg_0.x));
    return vec3<bool>(true, true, !all(vec2<bool>(global2.x || false, global2.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    let var_0 = select(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13809u, global0.x, 49029u, global0.x), vec4<u32>(4294967295u, 1u, 74763u, global0.x)), ~global0.x), global0.x), ~reverseBits(vec2<u32>(9009u, 0u))), vec2<u32>(global0.x, abs((global0.x << (3683u % 32u)) << (global0.x % 32u))), global2.x);
    global0 = var_0;
    global1 = array<Struct_1, 9>();
    global2 = func_4(min(vec4<u32>(global0.x << (~79886u % 32u), ~(~42696u), 33324u, 0u), ~countOneBits(vec4<u32>(60611u, 1u, 4294967295u, var_0.x)) & ((vec4<u32>(29129u, 4294967295u, var_0.x, 72991u) << (vec4<u32>(1u, 0u, var_0.x, 4294967295u) % vec4<u32>(32u))) & ~vec4<u32>(1u, 1u, 37292u, 68056u))), -1872f, ~7267u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.a.x)))), arg_0.a.x)));
    global3 = array<f32, 16>();
    return 10849u;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = global1[_wgslsmith_index_u32(~func_5(func_2(any(vec2<bool>(false, true))), vec3<bool>(true, true, true)), 9u)];
    let var_2 = select(!func_4(vec4<u32>(max(4294967295u, global0.x), _wgslsmith_sub_u32(global0.x, global0.x), ~global0.x, 42767u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + -407f) * -150f), ~global0.x, Struct_1(vec2<f32>(arg_0.a.x, global3[_wgslsmith_index_u32(17853u, 16u)]))).zz, !vec2<bool>(false, func_4(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, 0u), vec4<u32>(global0.x, 17189u, global0.x, 4294967295u)), _wgslsmith_f_op_f32(var_0.a.x - -754f), ~global0.x, Struct_1(vec2<f32>(-1596f, 150f))).x), -u_input.a == (abs(u_input.b.x) >> (global0.x % 32u)));
    global2 = vec3<bool>(arg_1, false, !arg_1);
    return func_3();
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = func_6(global1[_wgslsmith_index_u32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, 625f))), select(func_4(abs(vec4<u32>(global0.x, global0.x, global0.x, 0u)), 1434f, 1u, func_2(false)), !vec3<bool>(true, true, global2.x), global2.x)), 9u)], true);
    let var_0 = vec4<f32>(-446f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0.x, _wgslsmith_sub_u32(global0.x, global0.x)), func_5(Struct_1(vec2<f32>(-417f, global3[_wgslsmith_index_u32(0u, 16u)])), !vec3<bool>(global2.x, false, true))), 16u)]), -1000f, func_2(!global2.x).a.x);
    var var_1 = _wgslsmith_f_op_f32(374f - _wgslsmith_f_op_f32(f32(-1f) * -1588f));
    let var_2 = _wgslsmith_sub_u32(global0.x, ~4294967295u);
    global1 = array<Struct_1, 9>();
    return global1[_wgslsmith_index_u32(~abs(~(~global0.x) | ~(var_2 | 4294967295u)), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-135f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1525f, -1396f, global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(global0.x, 16u)], global3[_wgslsmith_index_u32(global0.x, 16u)]))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1056f, 640f, global3[_wgslsmith_index_u32(0u, 16u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(global0.x, 16u)])))))));
    global4 = global0.x;
    var var_1 = func_1(~(~(-1i)));
    var var_2 = func_2(true || global2.x);
    let var_3 = -838f;
    let var_4 = (vec4<i32>(~u_input.c, min(29464i, u_input.c), ~u_input.a, ~_wgslsmith_sub_i32(u_input.c, u_input.c)) ^ vec4<i32>(_wgslsmith_add_i32(~u_input.a, 1i), ~u_input.a ^ _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(33255i, -23906i)), -61324i, 0i)) >> (vec4<u32>(reverseBits(select(reverseBits(global0.x), firstLeadingBit(global0.x), true)), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x), vec4<u32>(60909u, 52072u, 1u, 0u))), global0.x & global0.x, ~select(global0.x >> (1u % 32u), global0.x, true)) % vec4<u32>(32u));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-(var_4.x >> (_wgslsmith_mult_u32(~43879u, global0.x) % 32u)), vec4<f32>(-1942f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + var_1.a.x)))), var_0.x, _wgslsmith_f_op_f32(1237f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1815f - var_1.a.x)))), vec4<i32>(_wgslsmith_div_i32(min(-u_input.a, var_4.x & 1i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a, u_input.a, var_4.x))), var_4.x | var_4.x, ~(~(-6978i)), 46568i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(825f + 2738f), var_3))), -575f);
}


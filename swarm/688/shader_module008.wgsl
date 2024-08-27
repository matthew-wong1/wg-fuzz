struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-1i, -1i, -5004i, -1i), vec4<i32>(10873i, 25698i, 0i, 17434i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 34061i), vec4<i32>(-54730i, -46241i, 84875i, 2147483647i), vec4<i32>(-1i, 24542i, -13185i, -31572i), vec4<i32>(1i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 19008i, -21903i, 2672i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 14565i), vec4<i32>(-87589i, i32(-2147483648), -1i, 0i), vec4<i32>(-17593i, -13535i, -1i, 21021i), vec4<i32>(-1274i, 907i, 20562i, -25758i), vec4<i32>(6941i, 0i, 0i, -36246i), vec4<i32>(-4360i, 0i, 2147483647i, 20784i), vec4<i32>(0i, 2147483647i, -7340i, 0i), vec4<i32>(i32(-2147483648), -33598i, 2147483647i, 29055i), vec4<i32>(i32(-2147483648), 2147483647i, -21760i, 13596i), vec4<i32>(6911i, i32(-2147483648), 1i, 1i), vec4<i32>(2286i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 37257i, 5021i, -69883i), vec4<i32>(0i, -1i, 2147483647i, 1i), vec4<i32>(2147483647i, -76952i, 51381i, -1i), vec4<i32>(1i, -4554i, 0i, 0i));

var<private> global4: array<Struct_4, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = Struct_1(arg_0.www, global0.x, ~0u);
    global4 = array<Struct_4, 24>();
    global1 = var_0.a.x;
    var var_1 = select(global3[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(~(~reverseBits(var_0.c)), 23u)], global3[_wgslsmith_index_u32(select(~firstTrailingBit(10275u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.b.x, u_input.b.x, 0u) | vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.c), ~vec4<u32>(u_input.b.x, 4294967295u, 17280u, var_0.c)), var_0.a.x), 23u)]), 1122i < u_input.a);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(global0.x + global0.x)));
    return !all(select(select(!var_0.a, vec3<bool>(true, arg_0.x, false), var_0.a.x), var_0.a, !(!var_0.a.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = !select(vec2<bool>(true && select(false, false, false), true || func_3(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), select(vec2<bool>(false, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a < 2147483647i)));
    let var_1 = var_0.x;
    global4 = array<Struct_4, 24>();
    global4 = array<Struct_4, 24>();
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, 1067f, _wgslsmith_f_op_f32(max(-325f, -170f))) + _wgslsmith_f_op_vec3_f32(-arg_0.zyy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -703f, 718f) * arg_1.c.wwy))));
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = ~36709u;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(252f, 521f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-207f, -1000f) - vec2<f32>(163f, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, -753f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-298f, 1412f))))));
    let var_1 = true && (-((u_input.a >> (1u % 32u)) << (var_0 % 32u)) == ~u_input.a);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(398f, -696f, global0.x, -894f))))))), Struct_4(30169u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(exp2(global0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2016f, arg_0) * vec2<f32>(-898f, 2278f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global0.x, 1217f, arg_0) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -242f, global0.x, -310f), vec4<f32>(-777f, 1334f, -704f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-583f, global0.x, -394f, global0.x), vec4<f32>(global0.x, 1000f, 1200f, -576f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(408f, 617f, -656f, 921f))))))));
    var var_3 = Struct_2(0u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-504f * global0.x), global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, -414f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1119f, 259f)))))));
    var var_0 = vec2<i32>(u_input.a, _wgslsmith_mod_i32(firstTrailingBit(select(-1i, 41722i, true) ^ _wgslsmith_div_i32(-36793i, 10776i)), 2147483647i & u_input.a));
    let var_1 = select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), select(vec4<bool>(func_1(_wgslsmith_f_op_f32(step(533f, global0.x)), 1i), all(vec2<bool>(true, true)), !(global0.x < global0.x), global0.x < -396f), vec4<bool>(~u_input.b.x <= u_input.b.x, true, !func_3(vec4<bool>(true, true, true, true)), true), true), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1090f) + global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, 491f, global0.x, -1712f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -828f, 512f, -1638f) + vec4<f32>(201f, -1427f, global0.x, 293f)))))));
    global3 = array<vec4<i32>, 23>();
    global2 = _wgslsmith_f_op_f32(floor(1662f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f - global0.x)))) + _wgslsmith_div_f32(var_2.x, var_2.x)), var_2.x);
    global4 = array<Struct_4, 24>();
    var var_3 = ~(-(global3[_wgslsmith_index_u32(~(124256u << (u_input.b.x % 32u)), 23u)] ^ global3[_wgslsmith_index_u32(40183u, 23u)]));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, 25525i, var_0.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), -var_3.zxw), -var_3.wzw, !var_1.xwz), var_2, _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, ~(~u_input.b.x), _wgslsmith_sub_u32(firstLeadingBit(12507u), ~u_input.b.x)), 23u)], vec4<i32>(max(-var_0.x, ~var_0.x), _wgslsmith_clamp_i32(abs(-2147483647i), -1i, -2147483647i), 1i, 2055i)), reverseBits(vec4<u32>(~u_input.b.x, ~_wgslsmith_add_u32(u_input.b.x, 4294967295u), 64404u, firstTrailingBit(1u) >> (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u))), var_3.yx);
}


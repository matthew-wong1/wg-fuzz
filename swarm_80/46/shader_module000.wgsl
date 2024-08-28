struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(48493i, 39986i, 1i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-7931i, -1i, 0i), vec3<i32>(0i, 1i, -32997i), vec3<i32>(-29016i, -1i, 2147483647i), vec3<i32>(-1i, -37037i, -20867i), vec3<i32>(-4520i, 1i, 72103i), vec3<i32>(33747i, 30294i, 7446i), vec3<i32>(0i, 2147483647i, 29862i), vec3<i32>(-761i, 2147483647i, 0i));

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 1i, -1i, -6775i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = Struct_1(!all(!select(arg_0.b.b, vec4<bool>(arg_1.d, false, var_0.d, arg_0.b.b.x), false)));
    var_1 = Struct_1(!(true | var_1.a));
    let var_2 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1848f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2150f + -1000f) + _wgslsmith_f_op_f32(max(-2091f, arg_0.d.x)))))), -101f);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: f32) -> vec3<bool> {
    global0 = array<vec3<i32>, 12>();
    var var_0 = ~(-_wgslsmith_add_vec3_i32(-global1.wwx, (global1.wxy >> (vec3<u32>(1u, u_input.a.x, 1u) % vec3<u32>(32u))) & ~vec3<i32>(arg_0, -12886i, arg_0)));
    var var_1 = vec2<i32>(arg_0, select(8775i, 2147483647i, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1803f), -1171f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3, -247f, arg_1))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, 375f, arg_2)))), vec3<bool>(u_input.b < _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a.wxx), u_input.a.x), !(!select(true, false, false)), false)));
    var var_3 = Struct_2(vec4<u32>(~(~u_input.b), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), min(32783u, 57873u), ~u_input.a.x), 4294967295u, 0u), -869f, firstLeadingBit(_wgslsmith_mod_i32(abs(firstTrailingBit(-7473i)), 37850i)), true & (true | !any(vec4<bool>(false, false, true, false))));
    return vec3<bool>(false, var_3.d | var_3.d, all(!(!select(vec2<bool>(true, false), vec2<bool>(var_3.d, var_3.d), vec2<bool>(var_3.d, var_3.d)))));
}

fn func_1() -> vec4<u32> {
    global0 = array<vec3<i32>, 12>();
    let var_0 = 421f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1498f, -510f) - _wgslsmith_div_f32(-986f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_5(true, Struct_4(true, vec4<bool>(true, false, true, true), vec2<f32>(-100f, var_0), var_0), vec3<bool>(true, false, true), vec3<f32>(var_0, var_0, -2279f), vec4<f32>(var_0, -1063f, -967f, -846f)), Struct_2(u_input.a, 969f, global1.x, false), firstTrailingBit(global1.wx), u_input.a.yyx >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))))))));
    var var_2 = Struct_5(true, Struct_4(false, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, 1697f)))), var_1), !func_3(~(~18298i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1845f, var_1)) * -148f), -1308f, _wgslsmith_f_op_f32(trunc(-1262f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + var_1)), _wgslsmith_f_op_f32(func_2(Struct_5(58418i != global1.x, Struct_4(false, vec4<bool>(true, false, false, true), vec2<f32>(var_1, var_1), var_0), vec3<bool>(true, false, false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, -925f, -171f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(237f, var_1, -1988f, 1000f) + vec4<f32>(var_1, 1429f, -1545f, var_1))), Struct_2(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), 1f, global1.x, func_3(2147483647i, 926f, -1200f, -771f).x), global1.xw, vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 36081u, 22586u), 1u))), _wgslsmith_f_op_f32(round(-346f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 1583f, -1766f, var_1))))))));
    global0 = array<vec3<i32>, 12>();
    return vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 0u | _wgslsmith_div_u32(13472u, u_input.b), 0u, countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    global1 = countOneBits(~(vec4<i32>(~global1.x, global1.x, global1.x, global1.x) ^ (vec4<i32>(16365i, -34277i, 2147483647i, global1.x) >> (u_input.a % vec4<u32>(32u)))));
    var var_0 = 1587f;
    var var_1 = 67875u;
    let var_2 = select(u_input.a.xxx, ~(u_input.a.wwx & ~u_input.a.xzw), vec3<bool>(true, true, true)) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, 1u), 1u), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zxx, u_input.a.zxw), vec3<u32>(u_input.a.x, 0u, 4294967295u))) << (u_input.a.zxx % vec3<u32>(32u)));
    global1 = _wgslsmith_add_vec4_i32((min(min(vec4<i32>(-2147483647i, 21412i, global1.x, global1.x), vec4<i32>(67307i, global1.x, global1.x, global1.x)), vec4<i32>(global1.x, 2147483647i, 1i, -3747i) | vec4<i32>(global1.x, global1.x, 0i, global1.x)) << (func_1() % vec4<u32>(32u))) << (vec4<u32>(u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 1u, var_2.x), u_input.a) % 32u), _wgslsmith_sub_u32(func_1().x, 0u), var_2.x, var_2.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(50740i, global1.x, -15138i, -1i)), vec4<i32>(global1.x, global1.x, global1.x, -139i))), vec4<i32>(1i ^ -global1.x, global1.x | global1.x, _wgslsmith_dot_vec2_i32(global1.zz, global1.zx), max(global1.x >> (var_2.x % 32u), _wgslsmith_add_i32(global1.x, global1.x)))));
    let var_3 = select(_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(var_2.x), firstLeadingBit(1u), u_input.b, var_2.x), ~(u_input.a & vec4<u32>(91115u, var_2.x, u_input.b, 1u)) & reverseBits(countOneBits(vec4<u32>(4294967295u, var_2.x, 15869u, u_input.a.x)))), vec4<u32>(u_input.a.x, ~1u, 1u, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_add_u32(select(43225u, 2095u, true), u_input.a.x))), !(true && func_3(firstLeadingBit(global1.x), -420f, -470f, -200f).x));
    let x = u_input.a;
    s_output = StorageBuffer((~abs(global1.x) | ~global1.x) ^ _wgslsmith_sub_i32(~reverseBits(-2147483647i), global1.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-913f)) + _wgslsmith_f_op_f32(-2327f * -1875f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2139f)))), 717f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1466f, -407f, 1000f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-198f, 1173f, 633f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1049f, 637f, -1000f), vec3<f32>(239f, 1223f, 1000f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(267f, -338f, 1166f))))));
}


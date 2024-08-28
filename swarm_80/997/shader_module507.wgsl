struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(1i, 12929i), vec2<i32>(-1i, 41482i), vec2<i32>(-6589i, -39393i), vec2<i32>(0i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-29826i, i32(-2147483648)), vec2<i32>(13797i, -41005i), vec2<i32>(-18321i, -1i), vec2<i32>(-1i, 35995i), vec2<i32>(43983i, -57173i), vec2<i32>(24858i, 21743i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 39175i), vec2<i32>(2147483647i, 1i), vec2<i32>(-21217i, 6938i), vec2<i32>(-1i, 14565i), vec2<i32>(i32(-2147483648), 32431i), vec2<i32>(34644i, -1i));

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> u32 {
    global0 = array<vec2<i32>, 19>();
    var var_0 = min(arg_3.x, -26561i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b, -164f, arg_0.b), vec3<f32>(-2014f, 332f, -424f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(983f, arg_0.b, arg_0.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1347f, arg_0.b, arg_0.b) + vec3<f32>(arg_0.b, arg_0.b, 375f)))), ~(~arg_2.x) != firstTrailingBit(36888u))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(976f, 1697f, arg_0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, 639f) * vec3<f32>(694f, arg_0.b, arg_0.b)))))));
    let var_2 = 1933f;
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))))), _wgslsmith_div_f32(417f, var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-747f)))), -762f));
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_1(false, -1857f, u_input.a);
    return vec4<u32>(reverseBits(55982u), ~(~var_0.c), ~(~_wgslsmith_sub_u32(u_input.a, var_0.c)), ~(func_3(Struct_1(arg_0, 866f, 4294967295u), vec2<u32>(u_input.a, u_input.a), vec3<u32>(u_input.a, var_0.c, 0u), vec4<i32>(0i, 21623i, u_input.b, -1i)) >> (4294967295u % 32u))) & reverseBits(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6332u, u_input.a, u_input.a), vec3<u32>(9872u, var_0.c, u_input.a)), vec3<u32>(16465u, 20579u, var_0.c)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 4294967295u, var_0.c)), vec3<u32>(5233u, 0u, 4294967295u)), var_0.c | ~u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-313f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1293f)))), true));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(step(-845f, 1039f));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - 200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f * _wgslsmith_f_op_f32(-arg_1.x))), select(select(false, false, false) & false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false)), true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, 503f, -1648f), vec3<f32>(2205f, -1268f, arg_2)))) + vec3<f32>(_wgslsmith_div_f32(arg_2, -1046f), -1032f, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-394f, arg_1.x, arg_2), vec3<f32>(arg_1.x, arg_2, arg_1.x))))))) + vec3<f32>(678f, -732f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1049f)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) - _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(select(467f, 940f, true))))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(-326f, 1795f, 366f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1452f, arg_1)))))) - vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_4(func_2(arg_0.x, vec2<bool>(true, arg_0.x), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(256f, 254f) * vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -169f)))), arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1396f, _wgslsmith_f_op_f32(arg_1 + 650f))))));
    global1 = any(arg_0.yx);
    global1 = 874f > _wgslsmith_f_op_f32(-var_0.x);
    return Struct_1(arg_0.x, var_0.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(vec4<bool>(all(vec3<bool>(true, false, true)), false, false, any(vec3<bool>(true, false, false))), vec4<bool>(false, true, true, false), select(true, true, true)));
    let var_1 = func_1(!vec3<bool>(any(vec3<bool>(true, true, true)), (u_input.b > u_input.b) || all(vec4<bool>(true, false, false, false)), true), -1000f);
    var_0 = false || !all(!(!vec4<bool>(true, true, var_1.a, true)));
    let var_2 = abs(1u);
    let var_3 = var_1.b < -749f;
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    let var_4 = var_1;
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(func_4(abs(~vec4<u32>(var_1.c, var_4.c, 4294967295u, 42958u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f - var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b)))), _wgslsmith_f_op_f32(f32(-1f) * -545f))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_4.b)), -1308f)) * -1012f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_4.b) + -2334f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~reverseBits(77753u), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, 0u, 1u), 27022u & var_2), ~(~u_input.a), _wgslsmith_mod_u32(firstTrailingBit(u_input.a | u_input.a), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_2), var_2 & var_2))), vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(0u, 19u)], vec2<i32>(u_input.b, 5770i)), vec2<i32>(1i, 1i)), -_wgslsmith_div_i32(firstLeadingBit(0i), u_input.b)), u_input.a, 0u);
}


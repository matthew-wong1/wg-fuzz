struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = Struct_2(Struct_1(-841f), Struct_1(_wgslsmith_f_op_f32(ceil(160f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1230f, 1361f, -2611f, 2288f), vec4<f32>(-1796f, -1186f, 111f, -534f)))))));
    let var_1 = countOneBits(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.a, u_input.a)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -12679i), arg_0))));
    let var_2 = !(~var_1 >= min(var_1, arg_0.x));
    let var_3 = Struct_3(~vec3<i32>(var_1, arg_0.x, abs(15213i) << (~arg_1 % 32u)), countOneBits(vec4<u32>(99u, arg_1, ~max(arg_1, arg_1), _wgslsmith_mod_u32(firstLeadingBit(30936u), 66057u))));
    var var_4 = firstTrailingBit(_wgslsmith_sub_vec3_i32(var_3.a, vec3<i32>(15274i, -u_input.a, firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(var_3.a.x, u_input.b))))));
    return var_0.c.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) + -1420f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: u32) -> vec4<f32> {
    let var_0 = u_input.a;
    var var_1 = vec2<bool>(false, any(vec3<bool>(!func_3(vec2<i32>(arg_1.x, 2147483647i), arg_2), var_0 != min(u_input.b, arg_0.x), false && all(vec2<bool>(true, false)))));
    var_1 = !vec2<bool>(20655u > arg_2, !func_3(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0.yw), select(arg_2, 25341u, var_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1171f, -2704f, -828f, -537f) * vec4<f32>(-354f, 414f, 1533f, -572f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(120f)) + -1509f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(690f)), _wgslsmith_f_op_f32(f32(-1f) * -111f))), 1230f, _wgslsmith_f_op_f32(f32(-1f) * -481f)), false))));
    var var_3 = max(60355u, arg_2);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 * var_2) * var_2) + var_2) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, _wgslsmith_div_f32(1225f, var_2.x), _wgslsmith_f_op_f32(-var_2.x)) - vec4<f32>(-1300f, -1000f, 112f, _wgslsmith_f_op_f32(293f * -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 958f, 1926f, 271f) + vec4<f32>(var_2.x, 1000f, 240f, var_2.x)), vec4<f32>(-1040f, _wgslsmith_f_op_f32(min(-529f, var_2.x)), _wgslsmith_f_op_f32(-510f * var_2.x), _wgslsmith_f_op_f32(var_2.x - 208f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, 505f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, 2939f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-529f, 2081f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 175f), vec2<f32>(-379f, 339f))))), vec2<bool>(arg_2, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(169f, var_0.x, 539f, -1182f), vec4<f32>(-1040f, 565f, var_0.x, var_0.x)) * vec4<f32>(var_0.x, 1725f, -668f, 947f))), _wgslsmith_f_op_vec4_f32(func_2(~(~vec4<i32>(2147483647i, 1i, 0i, -1i)), abs(~vec3<i32>(u_input.a, u_input.b, 10851i)), arg_1))) - vec4<f32>(_wgslsmith_f_op_f32(-1023f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), -886f, -1310f, -415f));
    var var_2 = u_input.b;
    var_2 = ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 11477i), select(vec2<i32>(-11179i, -2147483647i), vec2<i32>(u_input.a, u_input.a), true)) << (arg_0.x % 32u));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -714f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)))));
    return vec3<bool>(arg_2, !select(any(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2))), any(!vec4<bool>(arg_2, false, true, arg_2)), arg_2 && true), false && (abs(min(arg_1, 11375u)) == 48932u));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(trunc(118f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(400f), func_4(any(!func_1(vec4<u32>(4294967295u, 0u, 4294967295u, 57281u), 58572u, true)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(55761u, 1u, 4294967295u, 18708u)), vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(46924u, 8870u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 47657u), vec4<u32>(2989u, 0u, 18533u, 46368u)), select(50475u, 24669u, false))), ~max(21024i, 1i)), vec4<f32>(-1329f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1977f, -604f)), -218f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1510f, -465f)), 2522f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(2306i, -22128i, -1i, 60390i), vec3<i32>(u_input.a, u_input.a, u_input.a), 15841u)).x * -288f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-602f, _wgslsmith_f_op_f32(f32(-1f) * -547f), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f + -432f) * -1132f)))));
    var var_1 = Struct_2(func_4(false, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(68599u, 35936u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), 2147483647i), func_4(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), ~vec4<u32>(1u, 1u, 1u, 1u), 1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-124f, -328f, -637f, var_0.a.a), vec4<f32>(1751f, var_0.c.x, var_0.c.x, var_0.a.a))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-546f, -245f), _wgslsmith_f_op_f32(step(var_0.c.x, -323f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-645f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)))));
    let var_2 = Struct_2(var_0.b, var_1.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a - -1332f) - -2869f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))), var_0.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 0u, vec2<i32>(1i, 1i), 37121u, var_1.a.a);
}


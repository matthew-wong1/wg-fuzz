struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    return ~firstTrailingBit(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 19567u, 4294967295u), vec3<u32>(1u, 11229u, 1u), vec3<u32>(1u, 1u, 6045u))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = (_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(5754u, 4294967295u, 55581u)), _wgslsmith_div_vec3_u32(func_3(vec3<bool>(false, arg_2, arg_2)), vec3<u32>(50458u, 4294967295u, 54947u))) | firstLeadingBit(1u)) ^ 70752u;
    var_0 = firstTrailingBit(_wgslsmith_mod_u32(~4294967295u, firstLeadingBit(min(32767u, 70328u)))) >> (0u % 32u);
    let var_1 = select(!select(!vec4<bool>(arg_2, true, arg_2, false), !select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(true, false, arg_2, false), false), all(!vec4<bool>(true, arg_2, arg_2, true))), select(vec4<bool>(false, arg_2, true, true), select(vec4<bool>(arg_2, arg_2, all(vec4<bool>(false, true, arg_2, arg_2)), true), !select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, false, false, false), arg_2), arg_2), !(17026i < arg_0) & arg_2), vec4<bool>(true, true, true, true));
    var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(~0u, ~min(0u, 4294967295u)), 1u);
    let var_2 = Struct_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(135732u, 1u, 30991u, 26166u), select(~vec4<u32>(43606u, 16518u, 105119u, 0u), abs(vec4<u32>(11485u, 4294967295u, 4294967295u, 49563u)), select(var_1, vec4<bool>(false, true, var_1.x, arg_2), false))), -1i, arg_0, vec3<u32>(46264u, ~1u, firstLeadingBit(8419u)));
    return Struct_1(vec4<u32>(4294967295u, ~var_2.a.x, 13211u, ~func_3(select(vec3<bool>(var_1.x, false, false), var_1.yzy, vec3<bool>(var_1.x, true, arg_2))).x), -14407i, ~abs(firstTrailingBit(min(1i, var_2.b))), var_2.a.yyz);
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = abs(vec3<i32>(-(~max(u_input.a.x, arg_0)), arg_0, u_input.b));
    let var_1 = func_2(arg_0, 1516f, any(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    var var_2 = func_2(countOneBits(~u_input.b), _wgslsmith_f_op_f32(step(-569f, -1632f)), all(vec3<bool>(true, true, true)));
    let var_3 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), abs(func_3(vec3<bool>(true, true, true)).x) < ~firstTrailingBit(9394u));
    var_2 = func_2(~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x, arg_0 ^ var_0.x), _wgslsmith_mod_i32(2147483647i >> (var_2.d.x % 32u), reverseBits(2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -979f), any(vec2<bool>(all(var_3), true || !var_3.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(select(2024f, _wgslsmith_f_op_f32(step(1f, -1358f)), true)), _wgslsmith_f_op_f32(-567f - _wgslsmith_f_op_f32(f32(-1f) * -657f)), -1508f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f + -928f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) * _wgslsmith_f_op_f32(f32(-1f) * -1032f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(507f - 168f))), -1122f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~14641u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f * _wgslsmith_f_op_f32(select(166f, -240f, false)))) * -177f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.a.x)));
    var_1 = var_2.x;
    let var_3 = Struct_1(abs(vec4<u32>(~4294967295u, 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 52310u), vec2<u32>(0u, 0u)), abs(1u))), abs(max(0i, u_input.b) ^ -13251i) << (var_0 % 32u), _wgslsmith_dot_vec3_i32(u_input.a.yxw, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(min(u_input.a.xxy, u_input.a.xwz), _wgslsmith_clamp_vec3_i32(u_input.a.wwz, vec3<i32>(37136i, 48803i, u_input.b), u_input.a.xxz)), -(~vec3<i32>(-2147483647i, u_input.b, u_input.b)))), vec3<u32>(~firstTrailingBit(~var_0), 0u, var_0));
    var var_4 = 801f;
    var var_5 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, -1537f)));
    let var_6 = !select(select(vec2<bool>(true, all(vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(false, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), vec2<bool>(false, var_0 > var_0), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)));
    let var_7 = func_2(~47046i, _wgslsmith_f_op_f32(max(-1000f, var_5.x)), select(any(var_6), var_3.c != firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, -13597i)), any(vec3<bool>(var_6.x, var_6.x, var_6.x)) | any(select(vec4<bool>(var_6.x, var_6.x, false, false), vec4<bool>(true, var_6.x, false, false), vec4<bool>(var_6.x, var_6.x, var_6.x, var_6.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(-1i, _wgslsmith_f_op_f32(sign(-1000f)), var_6.x).a.ww << (vec2<u32>(0u, firstLeadingBit(_wgslsmith_mod_u32(7794u, var_0))) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(379f)), -1576f), _wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_vec4_f32(func_1(~var_7.b)).xw, func_3(select(!(!vec3<bool>(true, var_6.x, var_6.x)), vec3<bool>(all(vec4<bool>(true, var_6.x, false, var_6.x)), true, true), var_6.x)).x);
}


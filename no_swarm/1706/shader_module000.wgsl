struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = ~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b, 1u, arg_2.b, 0u) ^ vec4<u32>(22221u, 33789u, arg_0.x, 1u)), ~vec4<u32>(arg_2.c.x, 58013u, 0u, 32310u) | abs(vec4<u32>(arg_0.x, 36206u, 4294967295u, arg_0.x))));
    let var_1 = arg_2;
    var var_2 = arg_2;
    let var_3 = Struct_1(arg_2.e.x, _wgslsmith_div_u32(abs(~47889u), arg_0.x), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x | 50343u, arg_0.x, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.c.x, 0u, arg_0.x), min(vec3<u32>(9903u, 4294967295u, u_input.b), vec3<u32>(arg_2.c.x, u_input.b, arg_0.x)))), 0u), -(~(-41866i ^ ~var_2.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-212f, -819f, -195f), vec3<f32>(var_2.e.x, var_1.e.x, -368f))), var_2.e)), var_2.e)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1493f, arg_2.e.x, -844f), vec3<f32>(var_2.e.x, var_1.a, 441f))))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(607f, var_3.e.x))))), 579f, var_1.a, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -805f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, arg_1, -550f, arg_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -255f, 1878f, -1722f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1223f, var_1.a, -995f, arg_1) + vec4<f32>(631f, 666f, arg_2.a, -2100f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(641f, var_2.a, var_1.a, 310f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(757f, -1000f, arg_2.a, -617f)))))))));
    return !select(false, _wgslsmith_mod_u32(49917u, u_input.b) >= _wgslsmith_div_u32(0u, 48676u), true) || any(vec3<bool>(!all(vec2<bool>(false, true)), !any(vec3<bool>(true, false, false)), true || (arg_2.d >= -2147483647i)));
}

fn func_4(arg_0: bool) -> bool {
    let var_0 = Struct_1(-745f, min(u_input.b, 57347u), select(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 78370u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 65976u, _wgslsmith_add_u32(u_input.b, 102441u)), ~abs(91317u)), vec2<u32>(_wgslsmith_mod_u32(u_input.b ^ 16357u, select(10909u, 10648u, arg_0)), ~_wgslsmith_clamp_u32(51938u, 4294967295u, u_input.b)), !(!select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)))), _wgslsmith_mult_i32(u_input.a.x, 0i) >> (4294967295u % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -379f, 440f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(883f, -1313f, 417f)))))), vec3<f32>(311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f * 1166f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-386f, 1000f)))))));
    let var_1 = var_0.a;
    let var_2 = (-2147483647i >> (var_0.c.x % 32u)) | countOneBits(0i);
    var var_3 = !(select(true, true, any(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), arg_0))) | func_3(~vec3<u32>(0u, 14857u, 4294967295u) << (firstTrailingBit(vec3<u32>(54369u, var_0.c.x, u_input.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1980f, -654f))), var_0, _wgslsmith_f_op_f32(381f * _wgslsmith_f_op_f32(1521f + var_1))));
    var_3 = 5769i == -u_input.a.x;
    return arg_0;
}

fn func_2() -> bool {
    let var_0 = func_4(any(vec3<bool>(false, func_3(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 52016u), vec3<u32>(u_input.b, 38804u, 20593u)), -300f, Struct_1(199f, 48729u, vec2<u32>(7954u, 4294967295u), u_input.a.x, vec3<f32>(-160f, -2153f, 1000f)), _wgslsmith_f_op_f32(select(-270f, 2079f, false))), func_3(vec3<u32>(1u, 23960u, 10221u), _wgslsmith_f_op_f32(f32(-1f) * -520f), Struct_1(599f, 20005u, vec2<u32>(u_input.b, 9461u), u_input.a.x, vec3<f32>(652f, 555f, -609f)), _wgslsmith_f_op_f32(sign(-163f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(242f, -314f) * -1526f), ~u_input.b, select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), countOneBits(~vec2<u32>(u_input.b, 4294967295u))), countOneBits(vec2<u32>(_wgslsmith_add_u32(u_input.b, 5480u), _wgslsmith_sub_u32(112384u, u_input.b))), true), countOneBits(max(u_input.a.x, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2322f, -1214f, 478f) + vec3<f32>(-1000f, -957f, 711f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(trunc(1147f)), _wgslsmith_f_op_f32(select(-523f, -612f, var_0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(522f, 959f, 1192f) + vec3<f32>(-237f, 603f, -3101f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1198f, -1000f, 2151f), vec3<f32>(1273f, 337f, 301f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1582f, 932f, -1509f), vec3<f32>(-499f, 276f, 226f), vec3<bool>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1313f, 276f, -1000f))))));
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.a;
    let var_1 = 1u;
    var var_2 = func_2();
    let var_3 = arg_2;
    let var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(5345u, 0u, u_input.b, ~var_1), vec4<u32>(~var_1, select(reverseBits(abs(44698u)), _wgslsmith_mod_u32(0u, arg_1.x), func_4(func_4(true))), arg_1.x, ~(~1u << (arg_1.x % 32u))));
    return !any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(any(vec4<bool>(any(vec3<bool>(true, false, false)), true, select(false, true, true), any(vec4<bool>(false, false, false, true)))), false));
    var_0 = (func_1(-vec3<i32>(-1i, u_input.a.x, u_input.a.x) & vec3<i32>(-76149i, u_input.a.x, u_input.a.x), vec4<u32>(1u, ~u_input.b, 18663u, u_input.b), Struct_1(_wgslsmith_f_op_f32(sign(1162f)), max(48401u, 32503u), vec2<u32>(7285u, 4294967295u), -51192i, _wgslsmith_f_op_vec3_f32(vec3<f32>(343f, -751f, -570f) * vec3<f32>(1456f, -112f, -821f)))) || !any(vec3<bool>(false, true, true))) && !any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false));
    var var_1 = Struct_1(323f, u_input.b, _wgslsmith_sub_vec2_u32(abs(~(~vec2<u32>(u_input.b, u_input.b))), ~countOneBits(~vec2<u32>(14344u, 0u))), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, firstTrailingBit(u_input.a.x)), ~(~u_input.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(-668f, 135f)), _wgslsmith_f_op_f32(min(-650f, -410f)), _wgslsmith_f_op_f32(floor(-870f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(313f, 1039f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1594f, -593f, -2241f) - vec3<f32>(555f, 476f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(270f + -1000f), -335f, _wgslsmith_f_op_f32(sign(-1272f)))), true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), -567f);
    var var_3 = _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(var_1.d, 0i, max(-23284i, 1i))), countOneBits(reverseBits(vec3<i32>(-var_1.d, var_1.d, select(var_1.d, 10752i, true)))));
    var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.e.xz, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) - var_1.a)))), vec2<bool>(func_4(any(vec3<bool>(true, true, true))), true)));
    let var_4 = 48734i;
    var_3 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(u_input.a.x), max(0i, var_1.d), var_3.x) << (((vec3<u32>(u_input.b, u_input.b, u_input.b) ^ vec3<u32>(1u, u_input.b, var_1.b)) | select(vec3<u32>(73555u, 36013u, 61326u), vec3<u32>(u_input.b, 4294967295u, 6863u), vec3<bool>(false, true, false))) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(var_1.d, var_4, 2147483647i) | vec3<i32>(0i, var_1.d, var_1.d)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, var_1.b, 47644u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-16244i, 1i, -1i), vec3<i32>(-31427i, 0i, u_input.a.x))), vec3<i32>(u_input.a.x, u_input.a.x, var_4) & vec3<i32>(var_1.d, u_input.a.x, var_4)));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1134f, _wgslsmith_f_op_f32(var_1.a * var_1.e.x))), ~(~var_1.b), vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(32657u, 4294967295u, var_1.c.x), vec3<u32>(u_input.b, 32651u, u_input.b) | vec3<u32>(u_input.b, 4294967295u, 22883u)), var_1.b), ~_wgslsmith_add_i32(firstLeadingBit(-31546i), -17665i >> (~u_input.b % 32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(var_1.e)), _wgslsmith_div_vec3_f32(var_1.e, vec3<f32>(_wgslsmith_f_op_f32(min(545f, -448f)), _wgslsmith_div_f32(-571f, 795f), _wgslsmith_f_op_f32(var_1.e.x * var_1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.xy, var_5.a);
}


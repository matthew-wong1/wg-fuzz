struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_3(-firstTrailingBit(u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1421f * arg_0) - arg_0), arg_0, -174f)));
    let var_2 = vec4<f32>(695f, -1384f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0)))), 1000f);
    let var_3 = var_0;
    var var_4 = ~vec4<u32>(~(arg_1.x | arg_1.x), arg_1.x, ~(~arg_1.x), 1134u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 52698u, 4294967295u), arg_1.zwy) % 32u)) | ~arg_1;
    return arg_2;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: f32) -> vec2<u32> {
    var var_0 = min(firstLeadingBit(1u), firstTrailingBit(~4294967295u & _wgslsmith_mult_u32(arg_2.x, 4294967295u)) ^ arg_2.x);
    let var_1 = Struct_1(func_3(-125f, _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 22071u), ~vec4<u32>(0u, arg_2.x, 0u, 6628u)), -(~vec4<i32>(-1i, -931i, u_input.a.x, u_input.a.x) << (vec4<u32>(arg_2.x, 60280u, 88473u, arg_2.x) % vec4<u32>(32u)))), ~(~abs(4294967295u)), arg_2.x, true, _wgslsmith_f_op_f32(-380f + _wgslsmith_f_op_f32(sign(arg_3))));
    var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_2.x, 1u), abs(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(60671u, arg_2.x, 8539u)), min(vec3<u32>(var_1.b, 0u, 4294967295u), vec3<u32>(1u, var_1.b, 18534u)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(-474f)), !(!select(select(vec4<bool>(var_1.d, arg_0, var_1.d, arg_0), vec4<bool>(false, false, true, false), false), select(vec4<bool>(arg_0, arg_0, var_1.d, arg_0), vec4<bool>(false, var_1.d, true, var_1.d), true), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, var_1.d)))), !(any(vec3<bool>(true, false, false)) & false));
    var var_3 = _wgslsmith_f_op_f32(-var_2.a);
    return min(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(25857u, var_1.b));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = (_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(max(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -44780i), u_input.a))) & _wgslsmith_sub_i32(-10422i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(-85631i, u_input.a.x), u_input.a.x))) << (func_2(arg_2.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(866f, arg_3.a, arg_3.a, -216f) * vec4<f32>(arg_3.a, arg_3.a, arg_3.a, 124f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(567f, arg_3.a, -2962f, 971f), vec4<f32>(-1638f, arg_3.a, arg_3.a, arg_3.a), vec4<bool>(arg_3.b.x, true, arg_3.c, arg_2.x))), arg_3.b)))), ~(~arg_1), _wgslsmith_f_op_f32(min(arg_3.a, arg_3.a))).x % 32u);
    let var_1 = u_input.a;
    var var_2 = -121f;
    let var_3 = Struct_3(-(~firstLeadingBit(u_input.a.x | 9239i)));
    var var_4 = _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(-arg_3.a));
    return Struct_3(var_0);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = func_4(_wgslsmith_mod_vec2_u32((func_2(arg_1, vec4<f32>(arg_0.a, 1164f, arg_0.a, 1089f), vec3<u32>(18933u, 4294967295u, 4262u), arg_0.a) << (select(vec2<u32>(83208u, 30978u), vec2<u32>(47594u, 4294967295u), vec2<bool>(false, false)) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(28795u, 0u)), ~(~firstTrailingBit(vec2<u32>(11164u, 35569u)))), (~select(vec3<u32>(12009u, 13288u, 4294967295u), vec3<u32>(26299u, 50679u, 36873u), arg_0.b.yzw) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) >> (~countOneBits(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), arg_0.b.wxy, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1030f * 1209f)))), arg_0.b, 0u >= firstTrailingBit(25345u)));
    let var_1 = arg_0.b.wzw;
    var var_2 = firstTrailingBit(_wgslsmith_sub_u32(firstTrailingBit(1u), select(~0u, _wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 72u, 36471u, 15965u), vec4<u32>(17022u, 29811u, 13822u, 48884u)) >= ~40015u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), -1000f, arg_0.a)))));
    var var_4 = vec2<u32>(56038u, _wgslsmith_mod_u32(1u, ~countOneBits(~70567u)));
    return any(vec3<bool>(any(arg_0.b.zxz), arg_0.b.x, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!func_1(Struct_2(-394f, vec4<bool>(true, true, true, true), true), !(u_input.a.x <= -9013i)), any(vec4<bool>(any(vec3<bool>(true, true, true)), true, all(vec3<bool>(false, true, true)) & (2147483647i <= u_input.a.x), true)));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.a.x, 0i, -21139i, u_input.a.x) ^ select(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 44456i), vec4<i32>(u_input.a.x, -7176i, -2703i, 30609i), var_0.x)), vec4<i32>(3831i, select(u_input.a.x, u_input.a.x, all(vec2<bool>(var_0.x, var_0.x))), -(u_input.a.x >> (1u % 32u)), ~0i)), _wgslsmith_sub_u32(40494u, ~func_2(true, _wgslsmith_div_vec4_f32(vec4<f32>(-339f, -1471f, -109f, -488f), vec4<f32>(294f, -398f, 871f, 702f)), ~vec3<u32>(72719u, 0u, 4294967295u), _wgslsmith_f_op_f32(299f * 1136f)).x), firstLeadingBit(~min(0u, _wgslsmith_sub_u32(57865u, 54292u))), var_0.x, _wgslsmith_div_f32(293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-423f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(373f * 1083f), -1371f))));
    var_1 = Struct_1(var_1.a, var_1.c, ~var_1.b, all(select(select(select(vec4<bool>(true, true, var_0.x, var_1.d), vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, true, var_0.x, false)), select(vec4<bool>(var_1.d, false, true, true), vec4<bool>(var_1.d, false, var_1.d, var_0.x), vec4<bool>(var_1.d, var_1.d, true, false)), !vec4<bool>(var_0.x, false, false, false)), !vec4<bool>(false, false, false, var_0.x), var_0.x)), var_1.e);
    var_1 = Struct_1(firstLeadingBit(func_3(661f, _wgslsmith_div_vec4_u32(vec4<u32>(31446u, var_1.c, var_1.c, var_1.b), vec4<u32>(var_1.b, var_1.b, var_1.c, var_1.b)), _wgslsmith_mult_vec4_i32(var_1.a, var_1.a)) & _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(-1i, u_input.a.x, var_1.a.x, u_input.a.x)), vec4<i32>(-1i, var_1.a.x, 51146i, -1i))), _wgslsmith_clamp_u32(66284u, var_1.c, ~var_1.c), 42818u, var_0.x, _wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)) * var_1.e)));
    let var_2 = Struct_3(u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) * _wgslsmith_f_op_f32(2151f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f - -733f) - -1777f))), _wgslsmith_f_op_f32(abs(2153f))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1409f - _wgslsmith_f_op_f32(1406f - _wgslsmith_f_op_f32(-var_3))))), select(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, var_1.d, true, var_0.x)), !(var_1.a.x <= u_input.a.x)), select(!vec4<bool>(var_1.d, false, false, var_0.x), select(!vec4<bool>(true, false, true, var_1.d), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.d, true, false, var_0.x), vec4<bool>(var_1.d, var_1.d, true, true)), select(vec4<bool>(var_1.d, var_0.x, false, false), vec4<bool>(true, true, var_0.x, var_0.x), false)), vec4<bool>(true || var_0.x, true, true, any(vec3<bool>(var_1.d, true, false)))), vec4<bool>(all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_1.d, var_0.x, true), vec3<bool>(false, var_1.d, var_0.x))), false, all(vec4<bool>(var_1.d, var_1.d, var_1.d, var_0.x)) && var_1.d, false)), false);
    var var_5 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a, 9558i), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.a.x, -1i)), var_1.a.zw ^ _wgslsmith_div_vec2_i32(func_3(var_4.a, vec4<u32>(58735u, var_1.b, 17628u, var_1.b), var_1.a).wy, _wgslsmith_add_vec2_i32(var_1.a.wy, u_input.a))));
    var_5 = vec2<i32>(-22331i, abs((var_2.a << (9892u % 32u)) & -var_5.x)) & select(_wgslsmith_mult_vec2_i32(abs(u_input.a) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, 12175u), vec2<u32>(73441u, 0u)) % vec2<u32>(32u)), ~(var_1.a.yw & u_input.a)), vec2<i32>(-1i) * -vec2<i32>(-51952i, var_5.x), vec2<bool>(true, var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, select(vec4<u32>(1u, _wgslsmith_div_u32(countOneBits(var_1.c), ~var_1.c), firstLeadingBit(var_1.c), 4294967295u), _wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_1.c, 0u), vec4<u32>(var_1.c, 1u, var_1.b, 37681u))), ~(~vec4<u32>(52684u, 33286u, var_1.b, 0u))), select(vec4<bool>(false, true, any(var_4.b.wyw), var_0.x), var_4.b, true)), var_1.a);
}


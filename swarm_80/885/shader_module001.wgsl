struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = ~(~max(vec3<u32>(~98224u, ~1u, 4294967295u), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(92433u, 15905u, 58628u), vec3<u32>(12736u, 3706u, 24252u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 64348u, 44582u)), min(vec3<u32>(4294967295u, 1u, 25698u), vec3<u32>(4294967295u, 9227u, 4294967295u)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, 1000f, 434f, 1214f)), _wgslsmith_div_vec4_f32(vec4<f32>(378f, 833f, -1000f, -1096f), vec4<f32>(-369f, -688f, -1275f, 631f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 188f, 787f, 737f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, 1000f, -1460f, -1000f) - vec4<f32>(445f, -2183f, 1337f, -943f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 134f, 1000f, -853f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1634f, 780f, 1101f) * vec4<f32>(1277f, -1935f, 1354f, -128f))))), any(vec3<bool>(!(-5241i == u_input.a.x), any(vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -804f)))));
    let var_2 = Struct_2(firstLeadingBit(max(countOneBits(~0u), firstTrailingBit(var_0.x))), var_0.xy, var_1.c);
    let var_3 = ~(-(u_input.a.x >> (~(0u & var_2.b.x) % 32u)));
    var var_4 = abs(vec4<u32>(_wgslsmith_div_u32(var_0.x, ~var_0.x), min(select(var_2.b.x, 29106u, var_1.d), ~0u), var_2.a, 12536u)) & abs(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, 0u, 4294967295u), 4294967295u, ~1u, ~var_0.x));
    return var_0.x;
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(6690u, 0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 24566u, 41150u), ~1u), ~_wgslsmith_add_u32(39180u, 1u)), firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(18543u, 1u, 1u, 35141u), vec4<u32>(21445u, 9900u, 2120u, 82500u)))), ~max(firstTrailingBit(vec4<u32>(52136u, 52501u, 3178u, 0u)), ~vec4<u32>(60904u, 1u, 66526u, 1u)) | vec4<u32>(1u, func_3(), 1u, 27018u));
    var var_1 = u_input.a;
    var_0 = vec4<u32>(firstLeadingBit(5801u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(47388u, var_0.x, 29204u, 0u), vec4<u32>(var_0.x, 0u, var_0.x, 111314u)) ^ countOneBits(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(48677u, var_0.x, 27490u, 4294967295u), vec4<u32>(4294967295u, 1u, 434u, var_0.x)))) << (~1u % 32u), var_0.x, 4293u);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1101f * arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-423f, 862f) * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1298f, arg_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1078f + _wgslsmith_div_f32(-491f, arg_0.x)) - arg_0.x), -502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f))), vec4<f32>(_wgslsmith_f_op_f32(floor(380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(312f, -1000f, true)), _wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x, arg_0.x), !(!(arg_0.x < 569f) && (_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x));
    var_0 = vec4<u32>(var_0.x, var_0.x, ~var_0.x, var_0.x >> ((25542u >> (firstLeadingBit(_wgslsmith_mult_u32(var_0.x, var_0.x)) % 32u)) % 32u));
    return select(abs(~var_0.yzy), reverseBits(var_0.wwz & var_0.www), !(!vec3<bool>(var_2.d, true, var_2.e >= var_2.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> vec3<u32> {
    return func_2(_wgslsmith_f_op_vec3_f32(-arg_1.a.zww));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(127323u, 1u, ~firstTrailingBit(~27756u)), min(_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 41493u, 1u), vec3<bool>(true, false, false)), vec3<u32>(29715u, 1u, 0u)), reverseBits(func_1(Struct_1(false), Struct_4(vec4<f32>(-220f, -1092f, 1069f, -180f), vec3<f32>(-966f, 698f, -382f), vec4<f32>(1412f, 233f, -1083f, 140f), true, -1000f)))) ^ vec3<u32>(~1u, 1u, firstTrailingBit(min(25400u, 4294967295u))));
    var var_1 = reverseBits(abs(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 103136u) | firstLeadingBit(vec3<u32>(var_0.x, 55797u, var_0.x)))));
    let var_2 = all(vec3<bool>(true, true, (-1597f <= _wgslsmith_f_op_f32(floor(2102f))) & true));
    var_1 = select(vec3<u32>(~_wgslsmith_sub_u32(var_1.x, var_1.x), 1u, var_1.x), ~firstLeadingBit(~vec3<u32>(var_0.x, var_0.x, 1u)), any(vec2<bool>(var_2, var_2)));
    let var_3 = func_3();
    var_1 = _wgslsmith_mod_vec3_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-648f, _wgslsmith_f_op_f32(-729f - 227f), 1943f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, 343f, 581f))))), ~(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_1.x, var_3), vec3<u32>(0u, var_3, 0u))) << (vec3<u32>(~var_0.x, 54238u ^ var_0.x, ~var_1.x) % vec3<u32>(32u))));
    var var_4 = -23161i;
    var var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, 500f, -292f, -187f) - vec4<f32>(1950f, -745f, 569f, 1116f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1691f, 242f, -1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(401f, 1000f, 1000f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(474f, 1000f, 531f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(597f + 1362f), -907f, 120f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(657f, 1000f, 511f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1098f, -880f, -309f), vec3<f32>(-1281f, 1129f, 784f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(517f * 1211f), _wgslsmith_f_op_f32(max(1182f, -352f)), -1266f, _wgslsmith_f_op_f32(f32(-1f) * -1233f))))), select(all(select(vec3<bool>(true, true, true), select(vec3<bool>(var_2, var_2, true), vec3<bool>(var_2, var_2, var_2), var_2), vec3<bool>(var_2, false, var_2))), !var_2, true), 1f);
    let x = u_input.a;
    s_output = StorageBuffer((var_0.zz | (func_1(Struct_1(var_5.d), Struct_4(vec4<f32>(1481f, var_5.b.x, 991f, var_5.e), vec3<f32>(572f, var_5.a.x, var_5.c.x), vec4<f32>(var_5.a.x, var_5.b.x, 834f, 872f), true, 1014f)).yy & var_1.yx)) << (~select(~vec2<u32>(var_1.x, 1u), select(var_0.zy, vec2<u32>(1u, var_1.x), true), false) % vec2<u32>(32u)));
}


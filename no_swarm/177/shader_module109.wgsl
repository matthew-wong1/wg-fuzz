struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1796f * 650f), 934f, _wgslsmith_f_op_f32(f32(-1f) * -311f), -460f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 572f, -1640f, 658f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1872f, 101f, -745f, 447f), vec4<f32>(-885f, 237f, -354f, 635f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(224f - 1177f), -313f, 1f, -337f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-985f, -1388f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(647f, -885f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1301f))))));
    var var_1 = ~_wgslsmith_div_vec4_u32(~min(vec4<u32>(99812u, arg_0, 8190u, 0u) ^ vec4<u32>(15531u, 1u, arg_0, arg_0), vec4<u32>(62299u, 0u, 31843u, 14443u)), countOneBits(firstTrailingBit(vec4<u32>(15535u, 57269u, 1u, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(5653u, 33600u, arg_0, 1u), vec4<u32>(97578u, 4294967295u, 47202u, arg_0))));
    var_1 = ~vec4<u32>(~1u, ~arg_0, ~(var_1.x ^ 1u), 1u);
    var var_2 = vec2<f32>(719f, 358f);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, var_2.x)), _wgslsmith_f_op_f32(var_2.x * 567f)), 877f, false)), 607f, var_0.x) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-679f, 1659f, 751f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-311f, var_2.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-var_0.wwz))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), 287f, var_0.x)));
    return 141f;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1153f, 472f, _wgslsmith_f_op_f32(sign(1000f)), -293f))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-626f, -1159f)), -449f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-306f, 930f)), -1161f < _wgslsmith_f_op_f32(func_3(55905u)))), 1f, _wgslsmith_div_f32(744f, _wgslsmith_f_op_f32(sign(-1152f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f - 340f) * _wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = reverseBits(~firstTrailingBit(vec4<i32>(1i, 1i, 0i, u_input.a.x)));
    var_1 = vec4<i32>(arg_2.b, 1i, 6099i, _wgslsmith_dot_vec2_i32(var_1.zz, vec2<i32>(-1i, 1i) >> (vec2<u32>(~46171u, select(67798u, 21487u, true)) % vec2<u32>(32u))));
    var var_2 = var_0.x;
    let var_3 = 31417u & _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 18777u, 0u, 38516u), vec4<u32>(1u, 1u, 1u, 1u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f - _wgslsmith_div_f32(-1000f, -612f))) * -1017f)));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(u_input.a.zw, _wgslsmith_dot_vec3_i32(u_input.a.zxy, u_input.a.xxz));
    let var_1 = u_input.a.wyz;
    var var_2 = var_0;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, 425f, -1256f, -402f))), vec4<f32>(-892f, _wgslsmith_f_op_f32(f32(-1f) * -2787f), -1841f, _wgslsmith_f_op_f32(f32(-1f) * -581f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-538f, -358f, 449f, -1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-355f, -155f, -196f, -837f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, true, Struct_2(var_0.a, -2147483647i)))) < -2605f);
    var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x - var_3.a.x), _wgslsmith_f_op_f32(var_3.a.x * var_3.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f * var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(291f, var_3.a.x, true)))), -693f, var_3.a.x), true);
    return Struct_4(vec2<bool>(!any(vec2<bool>(var_3.b, true)), !(!var_3.b) && !(true && var_3.b)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> Struct_3 {
    let var_0 = 1i;
    let var_1 = arg_3;
    let var_2 = Struct_2(-vec2<i32>(reverseBits(arg_1) & 1i, ~arg_1), -_wgslsmith_dot_vec2_i32(u_input.a.wz, max(u_input.a.zy, u_input.a.zy) & _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, arg_1), u_input.a.xx, u_input.a.yz)));
    let var_3 = -1i >> (firstTrailingBit(_wgslsmith_clamp_u32(~0u >> (1u % 32u), countOneBits(_wgslsmith_mult_u32(66611u, 10899u)), 4294967295u)) % 32u);
    var var_4 = _wgslsmith_clamp_i32(reverseBits(30367i), -1i >> (1u % 32u), 17206i);
    return Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec4<i32>(1i, var_0, var_2.a.x, -1i), true, Struct_2(vec2<i32>(0i, var_0), 5228i))))), 1219f, -288f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(113f, -1000f, 1437f, 1160f))))))), any(func_1().a));
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_4(vec2<bool>(arg_0.b, !select(!arg_0.b, true, false)));
    let var_1 = -u_input.a.wzy;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) - arg_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1010f)), _wgslsmith_f_op_f32(-arg_0.a.x)) + arg_0.a.x) + -683f));
    var_2 = arg_0.a.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~15768u)))));
    return -1898f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1f)), -461f)), -354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f - 375f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(_wgslsmith_f_op_f32(func_5(func_4(true, -2147483647i, true, func_1()))), -1000f, _wgslsmith_f_op_f32(trunc(-1232f)))));
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-firstTrailingBit(u_input.a), true, Struct_2(max(u_input.a.zx, u_input.a.zw), -2419i))) - -1142f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(931f - _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    var var_2 = vec3<u32>(37169u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(0u, 1u), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 9614u), 4294967295u), ~1u)));
    var_2 = ~vec3<u32>(firstTrailingBit(~29032u), _wgslsmith_sub_u32(var_2.x, _wgslsmith_mod_u32(var_2.x & var_2.x, _wgslsmith_div_u32(var_2.x, var_2.x))), ~firstLeadingBit(~var_2.x));
    var_2 = ~vec3<u32>(var_2.x, min(0u, 4294967295u), _wgslsmith_clamp_u32(31124u, 0u, var_2.x));
    let var_3 = Struct_1(min(~firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(~var_2.xz, _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(var_2.x, var_2.x)), vec2<u32>(9384u, var_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 1006f, true)) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(258f, -671f))) - var_0.x)));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a ^ 1u, var_3.b);
}


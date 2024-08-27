struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    return vec2<u32>(_wgslsmith_div_u32(19832u, (arg_0 << (arg_0 % 32u)) | 39211u), abs(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 0u), vec2<u32>(0u, u_input.b))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = !select(select(any(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, true))), true, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
    var var_1 = select(all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), any(vec3<bool>(true, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), true & any(vec3<bool>(true, false, true)))), false, all(vec4<bool>(true, true, true, true)));
    var_0 = select(_wgslsmith_div_i32(~u_input.a.x, u_input.a.x), countOneBits(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-30831i, arg_0, -1i)), firstTrailingBit(u_input.d))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e, 2147483647i), -1i, ~(-1i)) >= -(~arg_1.a)) != -32135i;
    let var_2 = Struct_1(_wgslsmith_mult_i32(firstTrailingBit(reverseBits(~124i)), arg_1.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, arg_1.b.x), vec4<u32>(29032u, 0u, u_input.b, 16061u)), ~u_input.b), abs(~vec2<u32>(arg_1.b.x, u_input.b))));
    let var_3 = 14906i;
    return ~_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(var_2.b.x, 65925u), ~vec2<u32>(var_2.b.x, u_input.b), vec2<bool>(true, true)), var_2.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(56117u, arg_1.b.x, arg_1.b.x), vec3<u32>(arg_1.b.x, arg_1.b.x, u_input.b)), 23700u)) & var_2.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = arg_3;
    var_0 = Struct_1(_wgslsmith_clamp_i32(0i, i32(-1i) * -12780i, 1i), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b, arg_3.b), var_0.b));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) * arg_2.x)));
    return Struct_1(var_0.a, func_4(_wgslsmith_add_i32(i32(-1i) * -39258i, ~arg_3.a), Struct_1(55005i, _wgslsmith_div_vec2_u32(func_3(1u), abs(var_1.b)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1327f, arg_1.x, arg_3.x, 360f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 690f, arg_1.x) - vec4<f32>(331f, arg_1.x, -202f, 485f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 196f, 1000f, -384f) + vec4<f32>(119f, arg_1.x, arg_1.x, arg_3.x)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(min(-220f, 1000f)), _wgslsmith_div_f32(1067f, 479f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -890f, arg_3.x, 1074f))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(-1143f, var_0.x)), _wgslsmith_f_op_f32(-371f + 790f), arg_3.x, _wgslsmith_f_op_f32(arg_1.x * -264f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_3.x, var_0.x, -237f) * vec4<f32>(1717f, 232f, -453f, -1024f))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1000f, -389f, 217f) * vec4<f32>(var_0.x, var_0.x, -1009f, 1000f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, -110f, -1200f, arg_3.x))))), false)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.x, arg_3.x, 1215f, -712f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1479f, arg_1.x, arg_3.x, arg_3.x) * vec4<f32>(1720f, arg_1.x, 255f, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + arg_1.x), _wgslsmith_f_op_f32(sign(-1530f)), _wgslsmith_div_f32(661f, 763f), 315f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(653f, var_0.x, -899f, 646f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 342f, -145f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -833f, var_0.x, arg_3.x))))))) + vec4<f32>(-2690f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-345f, 1010f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + arg_3.x), -980f));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_1.x, 102f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(106f, -603f) + arg_3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1593f)), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(arg_3.x + 1508f)), _wgslsmith_f_op_f32(max(1159f, _wgslsmith_f_op_f32(arg_1.x + 2690f))))));
    return -(u_input.d << (_wgslsmith_mod_vec3_u32(vec3<u32>(31632u, 4294967295u, ~arg_2), vec3<u32>(arg_2, ~0u, ~7893u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -876f));
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.d, func_5(func_2(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true), any(vec3<bool>(true, true, false)), vec4<f32>(var_0, -1479f, 651f, 332f), arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1227f, -895f))) - vec2<f32>(636f, -481f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, -833f))), 0u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-986f, var_0, -754f), vec3<f32>(383f, var_0, var_0)))), vec3<f32>(-597f, _wgslsmith_div_f32(var_0, 507f), var_0)))));
    var var_2 = Struct_1(-(arg_0.a << (79210u % 32u)), arg_0.b);
    var var_3 = abs(_wgslsmith_mult_vec4_i32(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, var_2.a, u_input.e, var_1), vec4<i32>(1i, var_2.a, arg_2, var_2.a))), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(arg_0.a, u_input.a.x, var_2.a, var_1))));
    return select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)), !select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), !(!(arg_0.b.x == 4294967295u)) && any(vec3<bool>(any(vec3<bool>(false, false, false)), true, true)));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = select(abs(countOneBits(vec4<i32>(arg_2.a, u_input.a.x, u_input.a.x, 0i))) & vec4<i32>(-(i32(-1i) * -8422i), arg_2.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, u_input.a.x), u_input.d.x), arg_2.a), vec4<i32>(-2474i, -(i32(-1i) * -10873i), -2147483647i, -23445i), arg_0);
    var_0 = vec4<i32>(countOneBits(-15861i), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, u_input.d.x), -59821i), u_input.a.x), -var_0.x, u_input.a.x);
    var_0 = vec4<i32>(0i, ~max(1i, -max(2147483647i, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, arg_2.a | -arg_2.a) << (0u % 32u), ~(-1i));
    var_0 = select(-countOneBits(u_input.a), -u_input.a, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(275f, -869f, -485f, 1000f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1731f, 1478f, -726f, 1020f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-769f, -365f)) - _wgslsmith_f_op_f32(144f - 1323f)), -1572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) + _wgslsmith_f_op_f32(select(246f, -253f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -716f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -283f, 382f, 577f))))), !(!(!vec4<bool>(arg_0, true, arg_0, arg_0)))))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1415f)))), 975f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(912f, 623f))), _wgslsmith_div_f32(-517f, var_1.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x), vec4<f32>(-328f, var_1.x, 273f, var_1.x))) * vec4<f32>(-142f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(-var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, 551f, -1329f, 1533f)) * vec4<f32>(_wgslsmith_f_op_f32(474f - 219f), _wgslsmith_f_op_f32(-1650f - 598f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(546f, -528f)))) * _wgslsmith_f_op_vec4_f32(func_6(all(func_1(Struct_1(u_input.e, vec2<u32>(u_input.b, 1u)), u_input.a.yyx, -52973i)), 1u, Struct_1(u_input.d.x, vec2<u32>(4294967295u, 9794u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_6(true, u_input.b | u_input.b, Struct_1(u_input.d.x, vec2<u32>(40160u, u_input.b)))).wy) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -576f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1711f, -715f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1811f, -240f), vec2<f32>(-1709f, 382f), vec2<bool>(false, false)))))))));
}


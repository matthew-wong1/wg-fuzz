struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    let var_0 = vec4<bool>(true, true, true, true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-880f))) - 1f), 714f, _wgslsmith_f_op_f32(step(-1249f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(185f, 1043f), _wgslsmith_f_op_f32(abs(1000f))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = all(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(arg_0.x, arg_1.b.x, -2376f, arg_0.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1654f, arg_1.b.x, 1300f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(1364f, arg_1.c, arg_0.x, 1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * vec4<f32>(arg_1.c, arg_1.b.x, arg_0.x, -161f)))), arg_0);
    var var_2 = firstTrailingBit(vec2<u32>(~arg_1.a.x ^ ~arg_1.d.x, ~(~1u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_div_f32(var_1.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(func_3()).x), arg_1.b.x)), 176f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-686f - -4876f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1530f))));
    let var_4 = Struct_2(Struct_1(vec4<u32>(~(~u_input.c), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_1.a.yxx), max(vec3<u32>(18240u, 222u, arg_1.d.x), vec3<u32>(var_2.x, 1u, 51851u))), _wgslsmith_mod_u32(reverseBits(u_input.c), var_2.x), _wgslsmith_mod_u32(abs(arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(68768u, 1u, 31386u, u_input.b), vec4<u32>(144702u, 70327u, 0u, u_input.c)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1201f, -1217f) + vec2<f32>(326f, -1895f)))), vec2<f32>(-354f, 159f), select(select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), false), !vec2<bool>(var_0, false), select(var_0, var_0, false)))), _wgslsmith_f_op_f32(f32(-1f) * -502f), select(~vec4<u32>(1u, u_input.b, 0u, 4294967295u), vec4<u32>(63238u << (arg_1.d.x % 32u), ~0u, ~var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(7518u, 4294967295u, arg_1.d.x, 1u), vec4<u32>(50083u, arg_1.d.x, 4294967295u, arg_1.a.x))), false)));
    return -1604f;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = 1i;
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = ~arg_0.a.x;
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), u_input.a.x < (u_input.a.x & u_input.a.x), any(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, false))), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)));
}

fn func_1() -> bool {
    let var_0 = 431f;
    let var_1 = select(select(func_4(Struct_1(firstTrailingBit(vec4<u32>(u_input.c, 39628u, u_input.b, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0)), _wgslsmith_f_op_f32(func_2(vec4<f32>(var_0, var_0, -825f, var_0), Struct_1(vec4<u32>(4294967295u, 104550u, 0u, 54328u), vec2<f32>(1256f, var_0), -1026f, vec4<u32>(0u, 54011u, u_input.b, u_input.c)))), vec4<u32>(u_input.b, 29133u, 0u, u_input.c))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true)), select(func_4(Struct_1(~vec4<u32>(1u, u_input.b, 4294967295u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1853f, -777f)), _wgslsmith_f_op_f32(-1605f - var_0), vec4<u32>(18626u, u_input.b, u_input.c, 4294967295u) & vec4<u32>(1u, 17653u, 14293u, u_input.b))), select(vec4<bool>(true, true, true, true), !func_4(Struct_1(vec4<u32>(u_input.c, u_input.b, u_input.b, 16627u), vec2<f32>(-906f, var_0), 1148f, vec4<u32>(0u, 4294967295u, 53870u, 4294967295u))), vec4<bool>(any(vec3<bool>(true, true, false)), func_4(Struct_1(vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.c), vec2<f32>(var_0, var_0), 1451f, vec4<u32>(0u, u_input.c, 65962u, u_input.c))).x, all(vec4<bool>(false, false, false, true)), select(true, true, true))), select(func_4(Struct_1(vec4<u32>(u_input.b, 8161u, 49084u, u_input.c), vec2<f32>(var_0, -1339f), -432f, vec4<u32>(34814u, 4294967295u, u_input.b, 1u))), vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), func_4(Struct_1(vec4<u32>(u_input.c, 0u, u_input.b, 0u), vec2<f32>(737f, var_0), var_0, vec4<u32>(3773u, u_input.b, 48727u, u_input.b))), 379f < var_0))), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), true)));
    var var_2 = !vec3<bool>(any(vec2<bool>(var_1.x, false)), !var_1.x, false);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1321f - 744f), _wgslsmith_f_op_f32(-var_0), -708f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(func_2(vec4<f32>(531f, var_0, 306f, var_0), Struct_1(vec4<u32>(u_input.c, 9791u, 0u, 1u), vec2<f32>(-720f, 700f), var_0, vec4<u32>(4294967295u, 0u, 1u, 1u)))), var_0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, 1252f), vec3<f32>(var_0, var_0, 322f))))))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(36080u, u_input.b, 80444u, u_input.c)), vec4<u32>(~1u, select(u_input.c, u_input.b, false), _wgslsmith_mod_u32(u_input.b, u_input.b), ~14241u), reverseBits(~vec4<u32>(u_input.b, u_input.b, 38470u, 0u))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1947f) - _wgslsmith_f_op_f32(-138f + var_0))), var_0, ~countOneBits(vec4<u32>(1u, u_input.c, u_input.c, u_input.c))));
    return !var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((func_1() || (4294967295u == u_input.b)) || true) || !func_4(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, 85068u), vec4<u32>(u_input.b, 1u, u_input.c, 33182u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 841f))), _wgslsmith_f_op_f32(-408f * -781f), reverseBits(vec4<u32>(48420u, u_input.c, u_input.c, 4294967295u)))).x;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, 1014f, _wgslsmith_f_op_f32(140f * 102f)))), _wgslsmith_f_op_vec4_f32(func_3()).xxw);
    let var_2 = Struct_2(Struct_1(~(~vec4<u32>(u_input.b, u_input.b, 24084u, 71072u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, var_1.x))))), var_1.x, _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(50491u, 45359u, 92948u, u_input.b)), min(vec4<u32>(u_input.c, u_input.c, 100380u, u_input.b) ^ vec4<u32>(u_input.c, 0u, 0u, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(43071u, u_input.b, 4294967295u, 1u), vec4<u32>(u_input.c, 10132u, u_input.b, u_input.b))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a), _wgslsmith_div_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 5780u), var_2.a.d.yy), firstTrailingBit(var_2.a.a.xz), vec2<bool>(false, false)) | ~var_2.a.a.zw, _wgslsmith_add_vec2_u32(select(~vec2<u32>(var_3.a.d.x, 4294967295u), var_3.a.a.zw, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_add_vec2_u32(var_3.a.a.yw & vec2<u32>(u_input.c, var_3.a.a.x), ~var_3.a.a.yy))));
}


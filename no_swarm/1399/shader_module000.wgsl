struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) + _wgslsmith_f_op_f32(f32(-1f) * -918f))))), _wgslsmith_f_op_f32(max(100f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1002f - 1116f)))))));
    var var_1 = vec3<bool>(true, false, select(arg_2.a < -u_input.b.x, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true) || true);
    var_1 = vec3<bool>(false, any(vec2<bool>(true, false)) || true, false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2156f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3005f + 418f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_3 = arg_2;
    return true;
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_2(vec4<u32>(104604u, _wgslsmith_mod_u32(32712u, _wgslsmith_div_u32(arg_0.x, 7047u)), arg_0.x, ~0u) ^ ~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u)), Struct_1(u_input.b.xw, arg_0.zx));
    let var_1 = select(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true & func_3(var_0.a.yy, var_0.b, Struct_3(-2147483647i, Struct_1(var_0.b.a, vec2<u32>(4294967295u, arg_0.x)))), !(false && any(vec4<bool>(false, true, true, false))), false), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true))), vec4<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), !func_3(~vec2<u32>(arg_0.x, arg_0.x), Struct_1(vec2<i32>(-8173i, -48859i), arg_0.zx), Struct_3(-1i, var_0.b)), select(~arg_0.x >= 1u, any(vec4<bool>(false, true, false, false)), true)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(step(-898f, 1990f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1664f)), -1497f)))), _wgslsmith_div_f32(456f, _wgslsmith_f_op_f32(1f * 1138f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1671f, -1471f)), _wgslsmith_f_op_f32(-616f * _wgslsmith_f_op_f32(-353f + -398f))))));
    let var_3 = false;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) - _wgslsmith_f_op_f32(-var_2.x)))), !((var_1.x || false) || !var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f * -135f)), _wgslsmith_f_op_f32(floor(1f)));
    return select(select(select(vec2<bool>(select(var_3, var_3, var_1.x), any(var_1)), vec2<bool>(arg_0.x < 115605u, var_0.b.a.x > u_input.b.x), all(var_1.xwy)), var_1.zz, true), select(vec2<bool>(!var_1.x, false), select(vec2<bool>(true, any(var_1)), vec2<bool>(false | var_3, 0u > arg_0.x), any(!var_1.wzx)), !var_1.x), var_3);
}

fn func_1() -> vec4<u32> {
    var var_0 = select(!select(vec2<bool>(all(vec3<bool>(false, true, false)), false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, false, false)))), vec2<bool>(true, ((u_input.a << (4294967295u % 32u)) | _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) > _wgslsmith_clamp_i32(27420i << (0u % 32u), max(-22991i, u_input.a), select(-1i, u_input.b.x, true))), select(vec2<bool>(true, true), !func_2(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 109346u, 4294967295u, 50375u), vec4<u32>(4294967295u, 7009u, 4294967295u, 4294967295u))), true));
    let var_1 = select(~(countOneBits(vec4<i32>(-2147483647i, u_input.a, -33020i, 5181i)) & vec4<i32>(u_input.b.x | u_input.b.x, 0i << (0u % 32u), _wgslsmith_add_i32(10156i, -42802i), 1i)), u_input.b, vec4<bool>(false, func_2(~countOneBits(vec4<u32>(60914u, 31851u, 93983u, 38516u))).x, !(!all(vec2<bool>(var_0.x, var_0.x))), true));
    var_0 = vec2<bool>(!var_0.x || true, false);
    var_0 = vec2<bool>(true, any(!vec4<bool>(func_2(vec4<u32>(1u, 13606u, 4294967295u, 77320u)).x, var_0.x, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true)));
    var_0 = func_2(firstLeadingBit(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    return ((firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) ^ ~vec4<u32>(0u, 4294967295u, 0u, 5646u)) | vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(20477u, 0u, 4416u)), vec3<u32>(1u, 0u, 0u)), 82312u, _wgslsmith_mult_u32(1u, 1u), select(1u, 36632u, !var_0.x))) ^ ~(~(~(~vec4<u32>(36932u, 22246u, 0u, 0u))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = u_input.b.wyx;
    let var_1 = Struct_2(arg_1, Struct_1(vec2<i32>(18410i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(23662i, u_input.b.x, var_0.x), vec3<i32>(1i, -2147483647i, arg_0)), var_0.x)), ~(~vec2<u32>(0u, 0u)) >> (~vec2<u32>(88064u, arg_1.x) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_mod_vec2_u32(arg_1.xy | var_1.a.zz, ~var_1.a.xz);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1632f)));
    var var_4 = var_1.b;
    return Struct_3(var_4.a.x, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(1f));
    let var_1 = 8878u;
    var var_2 = func_4(-2147483647i, _wgslsmith_mod_vec4_u32((vec4<u32>(var_1, var_1, var_1, var_1) ^ func_1()) & vec4<u32>(~58685u, var_1 << (1u % 32u), 62421u, ~1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(120245u, 4294967295u, var_1, 1u), min(vec4<u32>(var_1, 36375u, var_1, 22078u), vec4<u32>(9748u, var_1, 48624u, 64225u)))));
    var_2 = func_4(select(4532i, ~_wgslsmith_dot_vec4_i32(max(u_input.b, vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.a)), countOneBits(vec4<i32>(u_input.a, u_input.b.x, 2425i, 24786i))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, _wgslsmith_add_u32(var_2.b.b.x, 11534u)), ~max(vec4<u32>(4304u, var_2.b.b.x, var_2.b.b.x, var_1), vec4<u32>(var_2.b.b.x, 52816u, 47058u, 43694u) << (vec4<u32>(15514u, 51757u, var_1, var_1) % vec4<u32>(32u)))));
    var var_3 = func_4(u_input.a, vec4<u32>(abs(4294967295u), _wgslsmith_mod_u32(20996u, ~(60512u >> (0u % 32u))), ~var_2.b.b.x, 4294967295u)).b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-min(-vec4<i32>(66406i, -3522i, -53234i, var_3.a.x), vec4<i32>(23359i, 8141i, var_2.b.a.x, 31315i))), select(~(u_input.b.www >> (firstTrailingBit(vec3<u32>(0u, var_3.b.x, 16607u)) % vec3<u32>(32u))), (u_input.b.wzx ^ u_input.b.xzz) << ((firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 51479u)) ^ ~vec3<u32>(var_1, 80894u, 21282u)) % vec3<u32>(32u)), false));
}


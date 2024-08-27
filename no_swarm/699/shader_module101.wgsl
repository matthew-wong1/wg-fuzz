struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = ~firstTrailingBit(abs(vec2<u32>(1u, 1u)) << (min(vec2<u32>(1u, 1u), max(vec2<u32>(55791u, 0u), vec2<u32>(1u, 0u))) % vec2<u32>(32u)));
    var_0 = ~firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x)) ^ (vec2<u32>(1u, var_0.x) | vec2<u32>(var_0.x, var_0.x))));
    var_0 = vec2<u32>(~_wgslsmith_add_u32(1u, reverseBits(var_0.x)) >> (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, var_0.x), countOneBits(var_0.x)), _wgslsmith_mult_u32(var_0.x, var_0.x)) % 32u), reverseBits(1u));
    return vec3<bool>(true, true, true);
}

fn func_2() -> vec3<u32> {
    let var_0 = countOneBits(~(~min(_wgslsmith_add_u32(38946u, 10309u), 50620u)));
    let var_1 = 4294967295u;
    let var_2 = Struct_5(Struct_4(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1881f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)))), Struct_1(-firstTrailingBit(vec4<i32>(3601i, -38636i, u_input.a.x, 1i)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(578f))), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(808f - -1279f), _wgslsmith_f_op_f32(f32(-1f) * -330f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 314f)));
    var var_3 = var_2.a.a.x;
    let var_4 = _wgslsmith_clamp_u32(18594u, min(~60573u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0) | firstTrailingBit(vec2<u32>(4294967295u, 48938u)), vec2<u32>(firstLeadingBit(0u), ~1u))), ~(~_wgslsmith_add_u32(~var_0, abs(63591u))));
    return vec3<u32>(~(~var_0), ~min(~2116u, 1u), countOneBits(countOneBits(firstLeadingBit(~4294967295u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = (((~vec3<u32>(arg_1.x, 4294967295u, arg_1.x) | _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 14157u, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, arg_1.x))) << (select(_wgslsmith_sub_vec3_u32(vec3<u32>(98667u, 4294967295u, arg_1.x), vec3<u32>(1u, arg_1.x, 0u)), vec3<u32>(75772u, arg_1.x, arg_1.x), true) % vec3<u32>(32u))) ^ vec3<u32>(14091u, ~_wgslsmith_add_u32(0u, arg_1.x), arg_1.x)) << (firstLeadingBit(_wgslsmith_add_vec3_u32(func_2(), abs(vec3<u32>(arg_1.x, arg_1.x, arg_1.x)))) % vec3<u32>(32u));
    let var_1 = abs(~0i);
    var_0 = max(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.x, _wgslsmith_mult_u32(1u, var_0.x)), vec3<u32>(var_0.x, func_2().x, 4294967295u))), _wgslsmith_add_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, 35532u, 4294967295u), vec3<u32>(var_0.x, 4294967295u, 4294967295u)) & select(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(var_0.x, 0u, 0u), true)), ~((vec3<u32>(var_0.x, arg_1.x, 53484u) >> (vec3<u32>(3221u, var_0.x, var_0.x) % vec3<u32>(32u))) >> ((vec3<u32>(36126u, 53453u, 15253u) << (vec3<u32>(var_0.x, 1u, 31232u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_2 = ~vec3<i32>(1i, -68827i, (u_input.a.x & 1i) >> (~arg_1.x % 32u)) & u_input.a.yxz;
    var_2 = ~reverseBits(firstTrailingBit(vec3<i32>(var_1, var_2.x, u_input.a.x))) >> ((~(~(vec3<u32>(10866u, 4294967295u, var_0.x) | vec3<u32>(4294967295u, arg_1.x, arg_1.x))) & ~(~vec3<u32>(arg_1.x, var_0.x, arg_1.x))) % vec3<u32>(32u));
    return Struct_4(!func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(187f - arg_0.x) * _wgslsmith_f_op_f32(round(-1171f)))), -331f, Struct_1(vec4<i32>(2147483647i, u_input.a.x, -_wgslsmith_mod_i32(u_input.a.x, -6039i), _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 8098i))), 27427u, _wgslsmith_f_op_f32(step(-1222f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1545f - -2276f))))), vec4<bool>(false, true, any(vec3<bool>(true, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-567f * 330f) + _wgslsmith_div_f32(113f, 768f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -760f), -1107f))), ~vec2<u32>(1u, 0u));
    let var_1 = -1165f;
    var var_2 = Struct_5(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1)))));
    let var_3 = max(vec4<u32>(~func_1(vec2<f32>(163f, var_0.c.c), vec2<u32>(var_0.c.b, var_2.a.c.b)).c.b, func_2().x, var_0.c.b, (~var_0.c.b >> (_wgslsmith_clamp_u32(var_2.a.c.b, 1u, 4294967295u) % 32u)) << (var_0.c.b % 32u)), _wgslsmith_mult_vec4_u32(min(abs(~vec4<u32>(var_2.a.c.b, var_2.a.c.b, 18139u, 4294967295u)), abs(vec4<u32>(var_2.a.c.b, var_2.a.c.b, var_0.c.b, 0u))), select(~reverseBits(vec4<u32>(51769u, 27708u, 1u, 14032u)), abs(min(vec4<u32>(var_2.a.c.b, 0u, var_0.c.b, 40031u), vec4<u32>(4294967295u, var_2.a.c.b, var_2.a.c.b, 1u))), !var_0.a.x)));
    let var_4 = -1369f;
    let x = u_input.a;
    s_output = StorageBuffer(~25850u, vec4<i32>(-24203i, max(select(833i, var_2.a.c.a.x, var_0.a.x), _wgslsmith_dot_vec4_i32(var_2.a.c.a, var_2.a.c.a)), firstTrailingBit(var_0.c.a.x), ~(-27150i)) ^ var_0.c.a, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1434f + _wgslsmith_f_op_f32(var_2.b - 349f)))), _wgslsmith_dot_vec4_u32(var_3 & firstLeadingBit(firstTrailingBit(vec4<u32>(var_3.x, 0u, var_2.a.c.b, 75752u))), var_3));
}


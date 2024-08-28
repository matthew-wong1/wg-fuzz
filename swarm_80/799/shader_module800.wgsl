struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.d.d, arg_0.b.d))), _wgslsmith_div_f32(arg_0.b.d, -619f)));
    return !arg_0.a.x;
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_3(~abs(_wgslsmith_div_u32(29115u, u_input.b.x >> (u_input.b.x % 32u))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(_wgslsmith_mod_i32(-37363i, 1i), u_input.c, -u_input.c, _wgslsmith_sub_i32(-36188i, u_input.c))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-22159i), u_input.c, ~u_input.c, _wgslsmith_mult_i32(u_input.c, 1i)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 2147483647i, u_input.c), vec4<i32>(38682i, -2147483647i, -2147483647i, 42294i))), (vec4<i32>(u_input.c, 0i, 2147483647i, u_input.c) | vec4<i32>(-16641i, 0i, 0i, 2147483647i)) >> ((vec4<u32>(u_input.b.x, u_input.a.x, 71126u, u_input.a.x) >> (vec4<u32>(17873u, u_input.b.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(u_input.c, _wgslsmith_sub_i32(-1i, 0i), -1801i, -max(u_input.c, -29413i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1134f))))))), 631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))));
    let var_2 = -35553i >> (firstTrailingBit(~(1u ^ _wgslsmith_mult_u32(u_input.a.x, var_0.a))) % 32u);
    var var_3 = -var_0.b.wy;
    return ~(i32(-1i) * -firstLeadingBit(-10022i));
}

fn func_2() -> Struct_3 {
    var var_0 = func_1(Struct_2(!vec2<bool>(1u > u_input.b.x, true), Struct_1(vec3<i32>(-48110i, u_input.c, i32(-1i) * -15120i), ~_wgslsmith_mod_vec3_u32(vec3<u32>(3207u, u_input.a.x, 45107u), vec3<u32>(66073u, u_input.b.x, 63711u)), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1394f, 1666f)) + _wgslsmith_f_op_f32(f32(-1f) * -568f)), -38017i), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.c, -1i), vec3<i32>(0i, 0i, 1726i)) << (~vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 4294967295u, 7373u) | select(vec3<u32>(u_input.a.x, 4294967295u, 37039u), vec3<u32>(41729u, 14314u, u_input.a.x), false), _wgslsmith_div_i32(-4628i, ~2147483647i), _wgslsmith_f_op_f32(trunc(-889f)), u_input.c), Struct_1(-select(vec3<i32>(1i, u_input.c, -2147483647i), vec3<i32>(u_input.c, 0i, -38894i), vec3<bool>(false, true, false)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 80890u), vec3<u32>(u_input.b.x, 3826u, 4294967295u), vec3<u32>(u_input.b.x, u_input.a.x, 20409u)), ~vec3<u32>(13976u, u_input.b.x, u_input.a.x)), -u_input.c, 855f, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c) << (u_input.a % vec2<u32>(32u)), min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))))));
    let var_1 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, -1116f)), vec2<f32>(-1472f, 759f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f + -149f)))));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-1189f, -505f), 2396f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1357f)), _wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(398f - -399f)))));
    var_0 = (_wgslsmith_div_i32(-15118i, var_1) ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(29184i, -12762i), ~vec2<i32>(62459i, 38796i)), var_1)) <= u_input.c;
    return Struct_3(_wgslsmith_mod_u32(~u_input.b.x, 4294967295u) | abs(firstLeadingBit(64660u)), firstLeadingBit(vec4<i32>(1i, select(2147483647i, -1i, false) >> (u_input.a.x % 32u), 35568i, var_1)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1477f), -1258f) - _wgslsmith_f_op_f32(abs(826f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1801f) - arg_3.b.d), arg_3.b.d));
    return _wgslsmith_mod_vec2_i32(arg_1.a.xy, arg_0.b.xz >> (~arg_1.b.xx % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_1(Struct_2(vec2<bool>(all(vec4<bool>(false, false, false, true)), all(vec3<bool>(false, false, false))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(33261i, -2147483647i, u_input.c), vec3<i32>(-4131i, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(0u, 1u, 48864u) ^ vec3<u32>(49097u, 4294967295u, u_input.b.x), max(572i, 31810i), -494f, u_input.c), Struct_1(vec3<i32>(u_input.c, u_input.c, 2147483647i), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), i32(-1i) * -18019i, -401f, 1i), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-58888i, u_input.c, -41554i), vec3<i32>(13323i, u_input.c, 0i), vec3<i32>(-2147483647i, u_input.c, u_input.c)), ~vec3<u32>(u_input.a.x, 1u, 0u), abs(u_input.c), -943f, u_input.c))), countOneBits(abs(~(~vec3<u32>(0u, u_input.a.x, u_input.a.x)))), u_input.b.x, _wgslsmith_div_vec2_i32(-(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 24977i), vec2<i32>(u_input.c, u_input.c))), func_4(func_2(), Struct_1(vec3<i32>(13433i, u_input.c, -1i) << (vec3<u32>(38231u, 6516u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 40764u), vec3<u32>(u_input.b.x, u_input.a.x, 19138u)), u_input.c, _wgslsmith_f_op_f32(step(-2619f, -1068f)), func_3(vec2<f32>(-103f, 557f))), 0i, Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(u_input.c, -22271i, -1i), vec3<u32>(u_input.b.x, 0u, 37159u), u_input.c, 297f, 0i), Struct_1(vec3<i32>(-2147483647i, 36534i, u_input.c), vec3<u32>(u_input.a.x, 1u, 23461u), -26738i, -584f, 1i), Struct_1(vec3<i32>(-21355i, 18733i, u_input.c), vec3<u32>(u_input.a.x, 55935u, 1u), u_input.c, -911f, u_input.c)))));
    let var_1 = -485f;
    let var_2 = ~var_0.d;
    let var_3 = select(select(!(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a))), !select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.a), vec2<bool>(false, var_0.a && var_0.a)), !vec2<bool>(19364u > (1u << (var_0.c % 32u)), var_0.a), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, u_input.a.x & 14269u, 4294967295u), ~max(var_0.b, vec3<u32>(1u, var_0.b.x, 4294967295u))), _wgslsmith_mult_u32(var_0.c | _wgslsmith_mod_u32(34324u, var_0.b.x), var_0.b.x)), u_input.b.x);
}


struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-549f, 590f)))) * 1414f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(296f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(576f, 897f, false)))));
    var var_2 = ~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.a.x, select(arg_0.c.x, u_input.a, true), u_input.a), ~(~vec3<u32>(0u, 22796u, u_input.a))), u_input.a, ~21895u);
    var var_3 = 38749i;
    let var_4 = !var_0;
    return vec3<u32>(firstTrailingBit(28970u), ~_wgslsmith_add_u32(countOneBits(~54534u), ~max(4294967295u, 61446u)), 15566u);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1618f - _wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(f32(-1f) * -271f))));
    var var_1 = Struct_2(abs(abs(0i)), Struct_1(arg_1.ywy, ~16780u, _wgslsmith_mod_vec3_u32(arg_1.zxz, func_3(Struct_1(vec3<u32>(arg_1.x, 0u, 29386u), arg_1.x, vec3<u32>(arg_1.x, 4294967295u, u_input.a)), arg_1.x == arg_1.x))), vec4<bool>((_wgslsmith_f_op_f32(trunc(742f)) != _wgslsmith_f_op_f32(var_0 + 1185f)) == all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, true)), false), vec2<i32>(_wgslsmith_mult_i32(3870i, -1i), -41672i) ^ ((vec2<i32>(1i, 41792i) | (vec2<i32>(31846i, 1i) << (arg_1.wz % vec2<u32>(32u)))) ^ vec2<i32>(~2147483647i, -1i)));
    var var_2 = vec2<u32>(~(~u_input.a), 62434u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-442f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(103f * 122f))))))) * _wgslsmith_f_op_f32(f32(-1f) * -595f));
    let var_4 = !vec4<bool>(all(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), var_1.c, -1963f >= arg_0)), true, (-1557i == var_1.d.x) & true, var_1.c.x);
    return _wgslsmith_dot_vec3_i32(-select(vec3<i32>(-1i) * -vec3<i32>(var_1.a, var_1.d.x, var_1.d.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, var_1.d.x, -1i), vec4<i32>(-2147483647i, var_1.a, -17010i, var_1.d.x)), var_1.d.x & 0i, 0i), select(vec3<bool>(true, false, false), vec3<bool>(false, var_4.x, var_1.c.x), vec3<bool>(true, true, true))), ~(-(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d.x, var_1.d.x, var_1.a), vec3<i32>(var_1.a, var_1.a, var_1.a)) ^ select(vec3<i32>(var_1.a, var_1.a, var_1.d.x), vec3<i32>(var_1.a, 1i, var_1.a), vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(func_2(861f, vec4<u32>(55285u, 0u, 4294967295u, u_input.a) << (vec4<u32>(u_input.a, 18752u, u_input.a, u_input.a) % vec4<u32>(32u))), -9360i), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 0i, -_wgslsmith_mod_i32(0i, 23825i))), -_wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -6801i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 15736i, -37075i), vec3<i32>(1i, 1i, 1i))));
    let var_1 = abs(vec3<u32>(_wgslsmith_div_u32(reverseBits(0u), u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 2838u)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(32321u, 4294967295u))))) << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) | vec3<u32>(u_input.a, 0u, 0u), max(reverseBits(vec3<u32>(4294967295u, 41032u, 77132u)), vec3<u32>(51758u, 0u, 25308u))), ~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(42669u, u_input.a, 32195u), vec3<u32>(u_input.a, u_input.a, 1u))), vec3<bool>(select(true, any(vec2<bool>(false, false)), u_input.a == u_input.a), true, true)) % vec3<u32>(32u));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(335u, _wgslsmith_mult_u32(4294967295u, var_1.x)), ~(~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(16244u, u_input.a, 25866u))), u_input.a), var_1.x, _wgslsmith_sub_vec3_u32(~var_1, var_1));
    var var_3 = _wgslsmith_f_op_f32(trunc(-172f));
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-655f + 1136f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-595f * -576f), _wgslsmith_f_op_f32(-1217f - 917f), true))))), all(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))))));
    return ~(~(-vec3<i32>(1i, var_0, -2147483647i)) & max(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, 0i), vec3<i32>(var_0, -1i, var_0)) & _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, 9272i), vec3<i32>(-2147483647i, 34513i, -18011i)), vec3<i32>(~72329i, 1i, -1i | var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1523i;
    let var_1 = vec3<i32>(-var_0, _wgslsmith_div_i32(var_0, -1i), -_wgslsmith_clamp_i32(var_0, 46365i, var_0) >> (abs(_wgslsmith_sub_u32(u_input.a, 33868u)) % 32u)) & func_1();
    let var_2 = select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), u_input.a, u_input.a), ~(~countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 2854u))), vec4<u32>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), u_input.a, 4294967295u & u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 72176u), vec3<u32>(53281u, u_input.a, u_input.a) & vec3<u32>(0u, u_input.a, u_input.a)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_div_u32(48755u, u_input.a), 4294967295u, u_input.a), ~vec4<u32>(4294967295u, 89883u, 20443u, 17779u)), 1u ^ u_input.a, 1u, 18225u), ~(~1u) <= ~u_input.a);
    var var_3 = i32(-1i) * -2147483647i;
    let var_4 = Struct_2(abs(2710i & ~reverseBits(var_0)), Struct_1(var_2.zzw, ~firstLeadingBit(~48534u), ~(~vec3<u32>(29715u, u_input.a, 29062u))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, !(var_2.x < 50059u) & (true || any(vec2<bool>(true, false))), !all(vec4<bool>(true, true, true, true))), vec2<i32>(~(-var_1.x) >> ((34865u | u_input.a) % 32u), _wgslsmith_mod_i32(var_1.x, ~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(356f, -1915f), 1049f, -1220f, _wgslsmith_div_f32(298f, -953f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, -993f, -823f, -654f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, -1998f, -112f, 364f) - vec4<f32>(771f, 799f, -319f, 131f)))))), -2414f, _wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_2, select(var_2, vec4<u32>(u_input.a, 43604u, var_4.b.b, var_4.b.c.x), false)), reverseBits(firstTrailingBit(var_4.b.a.x))), var_4.b.a.x | u_input.a));
}


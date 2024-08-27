struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    return _wgslsmith_mult_i32(0i, abs(abs(-1679i)) & min(min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -5872i, 14639i), vec3<i32>(2147483647i, 5807i, 0i)), -3166i), -abs(-23329i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec4<bool>(false, arg_1.x, _wgslsmith_div_u32(~0u, ~u_input.b) == ~u_input.a, select(arg_1.x, (0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.b), vec4<u32>(u_input.a, 13079u, 4294967295u, arg_0.c))) || any(vec3<bool>(true, arg_1.x, arg_0.a.x)), true | (_wgslsmith_dot_vec3_i32(vec3<i32>(9190i, -1i, 1i), vec3<i32>(-1i, -27644i, 13079i)) <= countOneBits(-17729i))));
    let var_1 = func_3() << (arg_0.d % 32u);
    var_0 = !select(vec4<bool>(arg_0.a.x, var_0.x, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(all(select(vec4<bool>(var_0.x, arg_1.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), arg_0.a.x)), true, true, any(!arg_1)));
    var var_2 = Struct_4(abs(~vec4<i32>(var_1, -43486i, var_1, -594i) & vec4<i32>(-365i, 0i, var_1, var_1)) & min(~vec4<i32>(38635i, 2147483647i, var_1, var_1) | -vec4<i32>(0i, var_1, var_1, -1i), ~vec4<i32>(var_1, var_1, 60431i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, 1531f, arg_1.x))))) - _wgslsmith_f_op_f32(sign(409f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(max(_wgslsmith_sub_u32(4294967295u, arg_0.b), 0u), _wgslsmith_mod_u32(~19648u, arg_0.d), _wgslsmith_div_u32(u_input.b << (arg_0.d % 32u), reverseBits(u_input.a)), arg_0.d | 0u), vec4<u32>(1u, _wgslsmith_sub_u32(arg_0.b, u_input.b), _wgslsmith_clamp_u32(arg_0.c, 5491u, u_input.a), u_input.b) ^ abs(~vec4<u32>(arg_0.d, u_input.a, 4294967295u, 43500u)), ~vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~35975u, 1u >> (u_input.a % 32u), 1u)));
    let var_3 = Struct_1(~max(_wgslsmith_clamp_vec4_i32(var_2.a, ~vec4<i32>(2147483647i, var_2.a.x, 2147483647i, -1i), _wgslsmith_div_vec4_i32(var_2.a, vec4<i32>(2147483647i, -2147483647i, -2147483647i, var_1))), countOneBits(~vec4<i32>(var_1, var_2.a.x, -2147483647i, var_1))), select(select(var_0.xzz, vec3<bool>(arg_1.x, var_2.b == 246f, select(var_0.x, arg_0.a.x, false)), all(vec3<bool>(true, false, var_0.x))), arg_0.a, any(select(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), !vec4<bool>(arg_1.x, false, false, false), select(vec4<bool>(var_0.x, arg_1.x, var_0.x, var_0.x), vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(var_0.x, false, arg_1.x, arg_1.x))))));
    return ~var_1;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0, 1174f)), 175f, 608f, _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1164f, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, -214f, 372f, var_0)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, var_0, -214f))))))));
    var var_2 = arg_0;
    var var_3 = ~select(vec3<i32>(func_2(Struct_3(vec3<bool>(true, true, false), 81814u, 0u, u_input.a), vec3<bool>(true, false, false)), (arg_0 | -4349i) ^ -arg_0, _wgslsmith_sub_i32(countOneBits(2147483647i), 1i)), ~vec3<i32>(arg_0, -47406i, 21214i), vec3<bool>(false, true, (arg_0 != -15303i) | any(vec3<bool>(false, true, false))));
    var_2 = max(-1i, ~var_3.x);
    return Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, !any(vec4<bool>(true, true, false, false))), 286f < _wgslsmith_f_op_f32(-var_0)));
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = -_wgslsmith_mult_vec4_i32(~(~(~vec4<i32>(18620i, 0i, 1i, 62150i))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-7021i, 26199i, -18892i, -9893i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(0i, -1i, -1i, 0i), vec4<i32>(13310i, -7336i, 10759i, 31833i), true)), vec4<i32>(-1i, ~0i, ~2147483647i, _wgslsmith_div_i32(7208i, 2147483647i))));
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 0i, 2147483647i, var_0.x), vec4<i32>(-1i, 1i, var_0.x, var_0.x) >> (vec4<u32>(1u, u_input.a, 0u, 114744u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.wzx, ~vec3<i32>(-2147483647i, var_0.x, var_0.x)), var_0.x, max(var_0.x, -1i) & -1i, 1i)), ~vec4<i32>(var_0.x, var_0.x, var_0.x, -11599i));
    let var_1 = var_0.zw;
    var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(1i, var_1.x), _wgslsmith_mult_i32(1i, 0i & var_1.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, var_0.x), -1i), var_1.x), vec4<i32>(var_0.x, var_1.x ^ 1i, 1i, var_0.x));
    let var_2 = arg_0;
    return !vec3<bool>(true, true, any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(any(func_4(func_1(1i))), all(vec4<bool>(true, all(vec2<bool>(true, false)), true, true)));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), reverseBits(vec2<u32>(u_input.a, u_input.b))), (vec2<u32>(6292u, 4294967295u) ^ vec2<u32>(u_input.b, 0u)) & vec2<u32>(0u, u_input.b), ~vec2<u32>(u_input.b, u_input.b)) << (~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(99802u, u_input.b)))) % vec2<u32>(32u));
    let var_2 = var_1;
    let var_3 = select(~(~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, var_2.x), vec2<u32>(var_1.x, ~u_input.b)), var_0.x) & u_input.b;
    var var_4 = var_3;
    let var_5 = Struct_1(firstTrailingBit(vec4<i32>(0i, 1i, -175i, countOneBits(-2781i))) >> (vec4<u32>(var_3, _wgslsmith_div_u32(1u, firstTrailingBit(1u)), abs(u_input.a), 1u) % vec4<u32>(32u)), vec3<bool>(all(select(vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), any(vec3<bool>(var_0.x, true, var_0.x)))), true, select(true, var_0.x, any(!vec2<bool>(true, var_0.x)))));
    var_0 = vec2<bool>(true, func_4(func_1(firstLeadingBit(~var_5.a.x))).x);
    var_4 = ~(~0u);
    var_0 = !var_5.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_5.a.yx, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1124i, var_5.a.x), -vec2<i32>(-50741i, -393i)), _wgslsmith_sub_vec2_i32(var_5.a.wz ^ var_5.a.zz, min(vec2<i32>(6380i, 185i), var_5.a.zz)))), -18536i, ~firstTrailingBit(_wgslsmith_sub_vec2_u32(var_2, var_2)));
}


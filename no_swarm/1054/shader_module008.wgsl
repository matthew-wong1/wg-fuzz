struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = vec3<u32>(33269u, 4294967295u, 26552u);
    let var_1 = select(_wgslsmith_add_i32(_wgslsmith_sub_i32(-21956i & ~u_input.a, -2147483647i), select(_wgslsmith_div_i32(u_input.a, ~u_input.a), firstLeadingBit(2147483647i), any(vec2<bool>(true, false)))), reverseBits(~(-22092i)), false);
    var var_2 = var_1;
    return 1019f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(651f * -872f)), abs(u_input.a) > u_input.a, true), 958f), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1435f), true, select(true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-792f, -2159f))) - _wgslsmith_f_op_f32(f32(-1f) * -1376f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.a, var_0.a.b) + var_0.b.b)))), _wgslsmith_f_op_f32(func_3()));
    var var_2 = Struct_1(1f, any(vec2<bool>(all(vec4<bool>(arg_0, arg_1, arg_1, arg_0)), arg_1)), all(select(select(vec4<bool>(false, true, var_0.b.a.c, var_0.a.a.c), !vec4<bool>(arg_1, true, var_0.b.a.c, arg_1), true), vec4<bool>(false, var_0.a.a.c, false, true), select(!vec4<bool>(arg_1, true, true, arg_1), select(vec4<bool>(false, false, arg_1, arg_0), vec4<bool>(true, true, true, false), arg_1), true))));
    var_2 = Struct_1(var_2.a, (var_0.b.a.a == _wgslsmith_div_f32(_wgslsmith_f_op_f32(1246f * -831f), -1000f)) != any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), arg_1)), false);
    let var_3 = Struct_1(-1670f, !((arg_1 | true) == false), var_2.c);
    return Struct_2(Struct_1(var_3.a, all(!select(vec2<bool>(var_0.a.a.c, arg_0), vec2<bool>(true, true), vec2<bool>(true, false))), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.b))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = 2386u;
    var var_1 = Struct_4(func_2(!all(vec2<bool>(true, false)), false, min(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 0u)), vec2<u32>(0u, 48850u)), ~vec2<u32>(0u, 0u))), func_2(func_2(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), all(vec3<bool>(true, arg_0.x, false)), vec2<u32>(49420u ^ var_0, var_0 | 4294967295u)).a.c, select(arg_0.x, true, max(u_input.a, u_input.a) < ~(-2147483647i)), (~vec2<u32>(0u, var_0) & vec2<u32>(0u, 24303u)) | vec2<u32>(var_0, _wgslsmith_mod_u32(var_0, 0u))));
    var var_2 = func_2(false, func_2(!var_1.b.a.b, var_1.a.a.c, select(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 6958u), vec2<u32>(1u, var_0)), vec2<u32>(0u, 4294967295u), arg_0)).a.c || ((all(vec4<bool>(var_1.b.a.c, arg_0.x, arg_0.x, arg_0.x)) || select(arg_0.x, arg_0.x, arg_0.x)) != ((true && arg_0.x) && true)), ~((_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(1u, var_0)) << (firstTrailingBit(vec2<u32>(var_0, 12488u)) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, var_0, 16488u), vec4<u32>(var_0, var_0, 89342u, 4294967295u)), 1u)));
    var var_3 = func_2(!(firstTrailingBit(countOneBits(var_0)) >= var_0), false, vec2<u32>(reverseBits(_wgslsmith_mult_u32(19069u, abs(var_0))), ~36319u));
    let var_4 = min(~firstTrailingBit(~vec4<u32>(1u, 1755u, var_0, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(8923u, 1u), vec2<u32>(4294967295u, var_0)), vec2<u32>(var_0, var_0)), ~var_0, 56684u, var_0)) & vec4<u32>(_wgslsmith_div_u32(41187u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(37979u, 22575u)), ~vec2<u32>(0u, var_0))), abs(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_0, 11397u)), ~vec2<u32>(15428u, var_0))), var_0, 6982u);
    return vec2<bool>(arg_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), u_input.a < 0i), func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1224f, 1229f, 1309f)))), true)) == !all(select(vec2<bool>(true, true), func_1(vec2<bool>(false, true), vec3<f32>(802f, -153f, -1000f)), vec2<bool>(true, true)));
    let var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), 338f)), true | !(!(var_1 | var_1)), !var_1);
    let var_4 = vec2<bool>(false, all(vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-835f, var_3.a), _wgslsmith_f_op_f32(-var_3.a), 1u, vec4<u32>(var_0, _wgslsmith_mod_u32(0u, select(min(var_2, var_2), 5892u, !var_3.c)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 9038u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(34853u, 30129u, var_2), vec3<u32>(76461u, 44457u, var_2)))), _wgslsmith_mod_u32(1u, ~var_2) ^ (countOneBits(var_2) ^ 59088u)), select(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2, 3500u, 4294967295u), ~vec3<u32>(var_0, 1u, var_0), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, 0u, var_2), vec3<u32>(4294967295u, 1u, 1u)))), vec3<u32>(40619u, 5380u, var_2) & ~(~vec3<u32>(45830u, var_0, 63064u)), func_1(var_4, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, var_3.a, var_3.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 708f, 381f) + vec3<f32>(-1645f, var_3.a, 1362f)))).x));
}


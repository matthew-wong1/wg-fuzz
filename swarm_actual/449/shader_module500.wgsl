struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> bool {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, _wgslsmith_div_i32(-arg_2.x, max(u_input.b.x, arg_2.x)), -1i, countOneBits(_wgslsmith_mod_i32(1i, 28085i))), arg_2));
    var var_1 = ~(~752u);
    var_1 = 52255u;
    var_1 = u_input.c.x;
    var var_2 = Struct_1(-8209i & ((arg_2.x & 2147483647i) & ((arg_2.x ^ arg_2.x) << (~u_input.c.x % 32u))), abs(_wgslsmith_div_vec3_u32((u_input.c.zwy ^ u_input.c.zxx) >> (~vec3<u32>(u_input.a.x, u_input.d, u_input.d) % vec3<u32>(32u)), vec3<u32>(~u_input.d, u_input.c.x, ~u_input.a.x))), arg_0, u_input.d, !select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), all(vec3<bool>(true, true, true)) && true));
    return !all(!var_2.e) & all(!select(vec3<bool>(var_2.e.x, var_2.e.x, var_2.e.x), vec3<bool>(true, false, var_2.e.x), select(vec3<bool>(true, var_2.e.x, var_2.e.x), vec3<bool>(var_2.e.x, var_2.e.x, false), false)));
}

fn func_2() -> f32 {
    let var_0 = select(!vec3<bool>(func_3(1142f, _wgslsmith_f_op_f32(1000f * 1385f), abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -17501i))), select(true, true, true), true), !vec3<bool>(!(u_input.b.x > 0i), !select(true, false, false), 1u > ~u_input.c.x), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_sub_vec2_i32(u_input.b, -vec2<i32>(7722i, -2147483647i));
    let var_2 = Struct_1(u_input.b.x, vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.c.x), 1u, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f * -1213f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-306f, -316f, true))))))), abs(max(~1u, ~1u)), vec2<bool>(true, -2147483647i <= ~u_input.b.x));
    var var_3 = Struct_1(-_wgslsmith_mult_i32(1i, var_1.x), min(vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.b.yy, select(vec2<u32>(81867u, 34524u), vec2<u32>(u_input.c.x, u_input.d), vec2<bool>(var_0.x, true))), 1u, reverseBits(var_2.b.x)), var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_u32(8859u, ~_wgslsmith_add_u32(0u, _wgslsmith_div_u32(u_input.a.x, var_2.b.x))), var_2.e);
    let var_4 = _wgslsmith_f_op_f32(-var_2.c);
    return var_4;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(1i, min(u_input.c.xxx, u_input.c.yzx), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -417f))), max(34811u, _wgslsmith_mult_u32(1u, select(4294967295u, u_input.d, true)) | u_input.d), select(vec2<bool>(false, true), select(vec2<bool>(true, 1i > u_input.b.x), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_1 = max(~vec2<u32>(0u, ~89965u) ^ var_0.b.zx, _wgslsmith_mult_vec2_u32(firstLeadingBit(~(~vec2<u32>(72344u, u_input.c.x))), vec2<u32>(~var_0.b.x, u_input.c.x)));
    var var_2 = true;
    var var_3 = vec2<u32>(firstLeadingBit(var_0.b.x), 1u);
    var var_4 = Struct_1(_wgslsmith_clamp_i32(min(u_input.b.x, var_0.a), max(var_0.a, firstLeadingBit(_wgslsmith_mod_i32(-12520i, u_input.b.x))), abs(_wgslsmith_mult_i32(var_0.a, ~u_input.b.x))), ~var_0.b, var_0.c, select(~(~u_input.a.x), firstLeadingBit(1u), var_0.e.x) | ~1u, select(!var_0.e, select(!var_0.e, select(select(vec2<bool>(var_0.e.x, var_0.e.x), var_0.e, var_0.e), !vec2<bool>(false, var_0.e.x), true), select(!var_0.e, vec2<bool>(true, true), select(var_0.e, vec2<bool>(false, true), var_0.e.x))), select(!(!var_0.e), !(!var_0.e), select(var_0.e, vec2<bool>(true, true), !var_0.e.x))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, -572i), min(max(u_input.b.x, u_input.b.x << (4294967295u % 32u)), -63038i)), u_input.c.zxy, 113f, ~u_input.a.x, vec2<bool>(false, (firstTrailingBit(132674u) >= (u_input.c.x << (u_input.d % 32u))) || all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false))));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = var_0;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(~(~2260u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(69035u, var_2.b.x, 4294967295u), _wgslsmith_mod_vec3_u32(var_4.b, vec3<u32>(var_4.d, 4294967295u, var_0.d))), ~vec3<u32>(60289u, var_3.b.x, 20297u)), select(countOneBits(~var_1.b.x), 46871u, var_2.a < -4649i), _wgslsmith_clamp_u32(var_1.b.x, 13109u, firstTrailingBit(u_input.d) & 46916u)), select(var_4.a, 70709i, any(vec2<bool>(true, all(vec4<bool>(var_4.e.x, false, true, true))))), -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_4.a, var_0.a, var_1.a, var_3.a)), ~vec4<i32>(var_4.a, 0i, var_1.a, 1i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_3.c, 3369f), vec3<f32>(var_4.c, -555f, 1701f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1485f, -460f, 2583f), vec3<f32>(var_0.c, var_1.c, var_0.c), vec3<bool>(var_3.e.x, false, var_4.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1808f)), 460f, 207f))));
}


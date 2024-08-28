struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1053f, 344f), -222f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-759f, -759f)), _wgslsmith_div_f32(164f, 988f), true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-232f, 1009f, select(false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f * 664f))), select(true, select(true, all(vec3<bool>(false, false, false)), true), true)))));
    let var_2 = ~(~vec2<u32>(54044u, _wgslsmith_div_u32(30850u, 34221u)) << (firstTrailingBit(min(select(vec2<u32>(7038u, 661u), vec2<u32>(5849u, 1u), false), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u)))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_add_vec2_i32(u_input.a, u_input.a);
    return var_3.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    let var_1 = ~1u;
    let var_2 = arg_0.x;
    let var_3 = var_1;
    var var_4 = Struct_1(-75528i, u_input.a.x, max(vec4<i32>(~0i, ~u_input.a.x, -u_input.a.x, 0i) ^ vec4<i32>(u_input.a.x, ~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 20618i, u_input.a.x), 1i), max(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -11627i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 34437i, -12471i)), select(select(vec4<i32>(u_input.a.x, -1i, -32641i, -2147483647i), vec4<i32>(u_input.a.x, 27842i, -36292i, u_input.a.x), true), -vec4<i32>(-34684i, u_input.a.x, u_input.a.x, u_input.a.x), !vec4<bool>(arg_0.x, var_2, false, true)))), u_input.a.x, 17482i);
    return Struct_1(select(1i, func_3(), true) & 0i, abs(-67646i), -vec4<i32>(~func_3(), 2147483647i, min(var_4.a, firstTrailingBit(u_input.a.x)), 1i), ~firstLeadingBit(-1i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, countOneBits(~(-54836i))), abs(min(_wgslsmith_sub_i32(8457i, 1i), 6120i))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-995f, 1224f, 1000f) - vec3<f32>(-909f, 1073f, 595f)) * vec3<f32>(-1233f, 723f, -1648f)))));
    let var_1 = func_2(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-548f, _wgslsmith_f_op_f32(774f - -1000f))), _wgslsmith_f_op_f32(-521f * 604f), 1525f)));
    let var_2 = _wgslsmith_mod_u32(1u, ~67947u);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = 1i;
    var_0 = func_1(arg_0.c).e & arg_0.c.x;
    var_0 = u_input.a.x;
    let var_1 = Struct_1(firstTrailingBit(-1i & arg_0.a), _wgslsmith_div_i32(countOneBits(~(i32(-1i) * -36078i)), countOneBits(firstTrailingBit(i32(-1i) * -1i))), arg_0.c, 2147483647i, arg_0.e);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1973f))));
    return all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -9226i, u_input.a.x, u_input.a.x), abs(max(vec3<i32>(u_input.a.x, u_input.a.x, -13036i), vec3<i32>(3880i, u_input.a.x, u_input.a.x)))), -(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(2147483647i, -1i, 6826i, u_input.a.x), vec4<i32>(u_input.a.x, -26132i, -1i, 2147483647i)), ~vec4<i32>(0i, u_input.a.x, 5087i, 10513i), vec4<bool>(var_0, false, var_0, var_0))), _wgslsmith_sub_i32(~(-2147483647i), reverseBits(u_input.a.x ^ -30824i)) >> ((select(1u, 43476u, true) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22358u, 103917u, 4294967295u), vec4<u32>(65300u, 1u, 1u, 0u))) % 32u), 1i);
    var var_2 = vec4<bool>(any(vec3<bool>(true, var_0, !var_0)), all(select(vec2<bool>(true, true), vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), true))) != var_0, func_4(func_1((vec4<i32>(0i, u_input.a.x, -36170i, 0i) ^ var_1.c) ^ ~var_1.c), ~select(vec4<u32>(19322u, 4294967295u, 1u, 11713u), vec4<u32>(0u, 53656u, 0u, 0u), select(vec4<bool>(true, true, false, var_0), vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, false, true, true)))), true);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, 230f, 670f, -1000f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(566f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1212f, -1298f), _wgslsmith_f_op_f32(max(453f, -574f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, -346f, 246f, -1074f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2369f, 913f, 1935f, 240f)))))));
    var var_4 = Struct_1(~1i, i32(-1i) * -func_3(), -_wgslsmith_sub_vec4_i32(func_1(var_1.c).c, _wgslsmith_clamp_vec4_i32(var_1.c, select(var_1.c, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -12800i), vec4<bool>(true, var_0, true, false)), var_1.c)), -(-2147483647i ^ -var_1.d), var_1.d >> (select(11006u, _wgslsmith_clamp_u32(max(4294967295u, 1u), 51014u, abs(23341u)), _wgslsmith_f_op_f32(-var_3.x) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)) % 32u));
    let var_5 = select(1u, reverseBits(8402u << (1u % 32u)), true) << (1u % 32u);
    var_4 = Struct_1(countOneBits(-var_1.e), ((_wgslsmith_sub_i32(42114i, var_4.d) >> (66749u % 32u)) | 18843i) >> (~0u % 32u), _wgslsmith_div_vec4_i32(reverseBits(var_1.c), vec4<i32>(-u_input.a.x, var_4.a, 33930i, var_1.d >> (1u % 32u))) & var_1.c, reverseBits(_wgslsmith_mult_i32(-var_1.a, var_4.b) | min(max(var_4.e, u_input.a.x), 0i ^ u_input.a.x)), var_1.c.x);
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -994f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.yz, var_3.ww, vec2<bool>(var_0, var_2.x))) + var_3.yz))), max(u_input.a.x, u_input.a.x), vec2<f32>(709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.x * var_3.x), -687f)))), vec3<u32>(_wgslsmith_sub_u32(~var_5 & _wgslsmith_sub_u32(0u, var_5), ~var_5), var_5, 28332u), 4294967295u);
}


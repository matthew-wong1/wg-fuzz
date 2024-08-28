struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> u32 {
    global0 = 45182u;
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    let var_0 = 527f;
    var var_1 = global1[_wgslsmith_index_u32(abs(~arg_1.x), 4u)];
    return 0u;
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = ~(select(countOneBits(u_input.a.zy), abs(u_input.a.xy), vec2<bool>(any(vec2<bool>(true, true)), true)) | ~u_input.a.zz);
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(28230u, 0u, 0u), vec3<u32>(1u, 1u, 1u))), reverseBits(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(62694u, 14795u), vec2<u32>(1u, 0u))))), _wgslsmith_div_f32(-131f, 1297f), firstLeadingBit(vec4<i32>(~(-17056i), arg_0 | -1i, abs(58858i), ~2147483647i)) & -abs(firstLeadingBit(vec4<i32>(1i, arg_1, -7584i, u_input.a.x))));
    let var_2 = var_1;
    let var_3 = global1[_wgslsmith_index_u32(61837u, 4u)];
    var var_4 = var_2.b;
    return var_1.b;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(~50956u >> (func_2(-14227i, vec2<u32>(~54454u, _wgslsmith_sub_u32(arg_0, 15023u)), vec4<bool>(true, !arg_1, any(vec4<bool>(true, arg_1, arg_1, arg_1)), select(arg_1, arg_1, true))) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(func_3(u_input.a.x, 0i))) * 1f))), select(vec4<i32>(-select(1i, u_input.a.x, arg_1), -(~(-2147483647i)), ~_wgslsmith_add_i32(u_input.a.x, -46080i), abs(1i) >> (1u % 32u)), vec4<i32>(54053i, u_input.a.x, u_input.a.x, -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), select(!(!vec4<bool>(arg_1, true, false, false)), !vec4<bool>(false, false, arg_1, true), select(vec4<bool>(true, arg_1, false, arg_1), !vec4<bool>(arg_1, arg_1, false, arg_1), true))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a, _wgslsmith_sub_u32(arg_0, 51136u & (1u << (var_0.a % 32u)))), 4u)];
    return Struct_1(var_1.a, 1110f, vec4<i32>(~22167i, u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(var_1.c.xzz, u_input.a, vec3<bool>(true, false, arg_1)), vec3<i32>(15648i, var_1.c.x, u_input.a.x)), var_0.c.yxz), -(i32(-1i) * -8226i)));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~vec2<u32>(arg_0.a, _wgslsmith_clamp_u32(55673u, func_1(1u, true).a & 16002u, 57171u));
    let var_1 = vec4<u32>(10397u, firstLeadingBit(7142u), 18854u, ~4294967295u);
    let var_2 = vec2<bool>(true, select(-(4168i << (var_0.x % 32u)) >= select(-37461i, -1i, true), true, any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), all(vec2<bool>(true, false))))));
    global1 = array<Struct_1, 4>();
    var var_3 = ~(~_wgslsmith_div_u32(func_2(-1i, var_1.yz, !vec4<bool>(var_2.x, false, var_2.x, false)), ~1u << (_wgslsmith_clamp_u32(var_1.x, arg_0.a, var_0.x) % 32u)));
    return !(!select(vec4<bool>(true, any(vec3<bool>(false, var_2.x, var_2.x)), false, var_2.x && true), select(select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(true, var_2.x, false, false), var_2.x), !vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, true, true, true)), !(false & var_2.x)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(arg_1.a, 4u)];
    var var_1 = max(_wgslsmith_mult_u32(var_0.a, 1u), _wgslsmith_sub_u32(arg_1.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, arg_1.a), vec2<u32>(4294967295u, arg_1.a)), ~vec2<u32>(arg_1.a, 23329u)), countOneBits(select(vec2<u32>(arg_1.a, arg_1.a), vec2<u32>(69692u, var_0.a), false)))));
    var var_2 = true;
    let var_3 = func_1(min(_wgslsmith_dot_vec3_u32(countOneBits(abs(vec3<u32>(arg_1.a, 1u, 43703u))), ~reverseBits(vec3<u32>(arg_1.a, arg_1.a, 29681u))), 129380u & arg_1.a), true);
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(var_3.a, ~(~76718u)) << (arg_1.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a, ~57478u, ~var_0.a), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a, 48330u, var_0.a)), firstLeadingBit(vec3<u32>(1u, 13230u, var_0.a))) & abs(vec3<u32>(1442u, var_3.a, var_0.a)))), 4u)];
    return !all(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(func_5(func_4(func_1(reverseBits(55717u), true)), Struct_1(firstLeadingBit(1u), 343f, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(26332i, 30251i, 19937i, u_input.a.x), vec4<i32>(-2858i, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(-3290i, u_input.a.x, u_input.a.x, 25117i)))), !((i32(-1i) * -u_input.a.x) == _wgslsmith_sub_i32(~u_input.a.x, firstTrailingBit(u_input.a.x))), true);
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-311f, -892f, true)) * _wgslsmith_f_op_f32(-237f + 1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-263f, _wgslsmith_f_op_f32(-2221f - 419f), !var_0.x)))), _wgslsmith_div_f32(1129f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(317f, -1468f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(923f, 1530f, 391f))), vec3<f32>(-378f, 364f, -1628f)))));
    let var_3 = global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(1u, countOneBits(~49215u)), ~(~reverseBits(58671u))) & select(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1975u, 80u), vec3<u32>(1u, 23773u, 6199u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4541u, 33189u, 52877u, 0u), vec4<u32>(22951u, 65176u, 4294967295u, 17019u)), 4294967295u), _wgslsmith_f_op_f32(-602f + var_2.x) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-687f, var_2.x))))), 4u)];
    var var_4 = var_0.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-161f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(139f)))), var_0.x)));
}


struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-509f - _wgslsmith_f_op_f32(step(-608f, -1017f))))))));
    var var_1 = -max(abs(abs(vec4<i32>(2147483647i, u_input.a, arg_0.x, arg_0.x))), ~(-vec4<i32>(u_input.a, 1455i, 2147483647i, 2067i)) << (select(vec4<u32>(arg_1.x, arg_1.x, 0u, 610u) << (vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x) % vec4<u32>(32u)), ~vec4<u32>(arg_1.x, 1u, arg_1.x, 0u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)) % vec4<u32>(32u)));
    var_1 = ~(vec4<i32>(var_1.x, 35633i, arg_0.x, var_1.x) << (vec4<u32>(arg_1.x, ~arg_1.x, abs(arg_1.x), _wgslsmith_mod_u32(~arg_1.x, arg_1.x)) % vec4<u32>(32u)));
    var_1 = _wgslsmith_add_vec4_i32(-min(vec4<i32>(arg_0.x, 2147483647i, var_1.x, 2147483647i), vec4<i32>(-2147483647i, u_input.a, 0i, arg_0.x)) ^ vec4<i32>(_wgslsmith_sub_i32(-1i, 30325i), _wgslsmith_clamp_i32(-2147483647i, -993i, arg_0.x), -14965i, ~23299i), max(~abs(vec4<i32>(arg_0.x, -22258i, 1i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, 12301i, -22996i) & vec4<i32>(arg_0.x, u_input.a, -12321i, 2792i), -vec4<i32>(-1i, -2147483647i, -14755i, arg_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, arg_0.x, u_input.a, 0i), vec4<i32>(2147483647i, 0i, u_input.a, -26649i))))) << (~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 0u, arg_1.x) & vec4<u32>(34827u, 145219u, 0u, arg_1.x)), (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) << (vec4<u32>(arg_1.x, arg_1.x, 93937u, arg_1.x) % vec4<u32>(32u))) ^ (vec4<u32>(16550u, 0u, 0u, 0u) ^ vec4<u32>(arg_1.x, 60888u, 4294967295u, 1u))) % vec4<u32>(32u));
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -1i, 1i, abs(8928i)), vec4<i32>(97079i, arg_0.x, var_1.x, ~(~var_1.x) << (_wgslsmith_sub_u32(min(0u, 1u), arg_1.x) % 32u)), select(countOneBits(vec4<i32>(min(13310i, 33316i), arg_0.x, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1288i, arg_0.x), vec2<i32>(-2147483647i, 7496i)))), _wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(12268i, u_input.a, -1i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-35863i, 30082i, arg_0.x, var_1.x) | vec4<i32>(1i, u_input.a, var_1.x, var_1.x), vec4<i32>(-20446i, 0i, u_input.a, u_input.a))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))));
    return -254f;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_1), arg_0.x) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -628f, -140f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1000f, arg_1) + vec3<f32>(-1056f, arg_0.x, arg_0.x))))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -277f) - arg_0.x), _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, -1i, u_input.a) << (vec3<u32>(6168u, 31349u, 50712u) % vec3<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(14845u, 1u), vec2<u32>(1u, 86233u))))), _wgslsmith_f_op_f32(floor(-125f)), _wgslsmith_f_op_f32(sign(-921f))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(876f, var_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, var_0.x) * vec3<f32>(-867f, 249f, arg_0.x)), false)))) + vec3<f32>(-469f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-128f)) - var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.x, -946f, all(vec4<bool>(true, true, true, true)))), -1202f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -805f)));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(427f + arg_0.x), var_0.x, -191f))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(var_0.x, arg_1))))));
    let var_1 = 621f;
    return ~(~1u);
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(~(~reverseBits(8190u)), abs(693u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_div_u32(abs(61572u), ~21221u), 57689u, select(40359u, 4294967295u, true) >> (_wgslsmith_mult_u32(37050u, 6277u) % 32u)), ~(~(~vec4<u32>(1u, 1u, 45188u, 4294967295u)))), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(countOneBits(41930u), 55425u, 0u), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -744f), vec2<f32>(453f, 2464f)), 228f)), 4294967295u);
    var_0 = max(vec4<u32>(min(var_0.x, var_0.x), select(_wgslsmith_mult_u32(4294967295u, reverseBits(var_0.x)), 4294967295u, select(true, any(vec4<bool>(false, true, true, false)), var_0.x == var_0.x)), _wgslsmith_add_u32(~var_0.x, ~var_0.x), 63034u), _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(var_0.x, 4294967295u, var_0.x, 2255u)), vec4<u32>(var_0.x, ~39725u, firstTrailingBit(var_0.x), ~abs(4294967295u))));
    var var_1 = ~max(select(~reverseBits(vec3<i32>(-1i, u_input.a, 4591i)), _wgslsmith_div_vec3_i32(vec3<i32>(30709i, u_input.a, 0i), vec3<i32>(0i, -2147483647i, 0i) & vec3<i32>(-1i, u_input.a, u_input.a)), countOneBits(-12075i) > countOneBits(u_input.a)), -vec3<i32>(-6102i, u_input.a | u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -531i, -14605i), vec3<i32>(var_1.x, u_input.a, -2147483647i), vec3<i32>(0i, var_1.x, var_1.x)), vec2<u32>(var_0.x, 97734u))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1900f - 1153f) - -545f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), -369f, _wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(1166f + 167f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1245f, 182f, 1773f, -233f)))) * vec4<f32>(-1557f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1712f, -842f)), -2542f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1736f), _wgslsmith_f_op_f32(211f + -605f)), 1348f)), Struct_1(true, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) - _wgslsmith_f_op_f32(f32(-1f) * -639f)))), var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(select(~var_0.x, 1u, all(vec3<bool>(true, false, false))), select(reverseBits(var_0.x), var_0.x, all(vec4<bool>(false, true, true, true))), 0u, ~25394u), min(vec4<u32>(0u, 51275u, ~var_0.x, 0u), vec4<u32>(var_0.x, ~var_0.x, var_0.x, var_0.x))));
    var var_3 = ~(-_wgslsmith_add_vec2_i32(-countOneBits(var_1.xz), vec2<i32>(0i, max(7465i, var_1.x))));
    return 23416i & _wgslsmith_mod_i32(var_3.x, -61396i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(-(-u_input.a | -u_input.a), ~(reverseBits(15443i) & u_input.a), -(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a) | func_1()), u_input.a);
    let var_1 = var_0.x;
    let var_2 = Struct_3(true, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(func_1(), 1i, var_0.x, i32(-1i) * -1i), abs(~vec4<i32>(var_0.x, u_input.a, var_0.x, u_input.a))), vec4<i32>(-1i, 34523i, abs(-20229i) << (1u % 32u), -select(u_input.a, 32655i, false))), Struct_1(any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), any(vec4<bool>(false, true, true, true)))), select(~var_0.x, var_0.x, false) == -72196i, 789f, countOneBits(~firstTrailingBit(14248u))), true & all(vec4<bool>(any(vec3<bool>(false, true, true)), false, true, all(vec2<bool>(false, true)))));
    var var_3 = false;
    var_0 = var_2.b;
    var_0 = var_2.b;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(select(-686f, var_2.c.c, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.c, var_2.c.c, var_2.c.c, 770f) * vec4<f32>(-375f, 478f, var_2.c.c, -468f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.c, 255f, 258f, var_2.c.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c.c, var_2.c.c, -2286f, -562f), vec4<f32>(var_2.c.c, 1624f, -689f, -468f), vec4<bool>(false, false, true, true))))))), Struct_1(var_2.c.a | all(!vec4<bool>(var_2.c.a, var_2.c.b, var_2.c.b, false)), true, var_2.c.c, var_2.c.d), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, var_2.c.d, var_2.c.d), vec4<u32>(var_2.c.d, 18602u, var_2.c.d, 71165u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.d, var_2.c.d, 63925u, var_2.c.d), vec4<u32>(var_2.c.d, var_2.c.d, var_2.c.d, var_2.c.d)), _wgslsmith_add_u32(var_2.c.d, var_2.c.d), 61169u, 1u)) ^ firstTrailingBit(max(_wgslsmith_mult_vec4_u32(vec4<u32>(14891u, 31327u, 0u, 1u), vec4<u32>(var_2.c.d, 1u, 3207u, 1u)), reverseBits(vec4<u32>(27136u, 0u, var_2.c.d, var_2.c.d)))));
    var var_5 = Struct_1(all(select(vec2<bool>(all(vec3<bool>(var_2.d, true, false)), true), vec2<bool>(!var_2.c.a, true), select(vec2<bool>(true, false), select(vec2<bool>(var_4.c.a, true), vec2<bool>(true, var_4.c.b), var_2.d), vec2<bool>(true, true)))), any(vec4<bool>(true, false, !var_2.c.a, var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)), abs(~14868u));
    let var_6 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_5.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_i32(var_2.b.zxx, var_2.b.xwx), abs(var_4.d.wx)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c)) * var_5.c), -1279f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_6.ww)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c.c, var_6.x) + var_5.c))), var_4.d.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.c.c, var_6.x, var_5.c, -256f), _wgslsmith_f_op_vec4_f32(select(var_4.b, var_6, var_4.c.b)))));
}


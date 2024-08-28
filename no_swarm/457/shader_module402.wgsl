struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, false, false, false, true, true, true, true, false, true, true, true, true);

var<private> global1: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 71422u, 27458u, 1u), vec4<u32>(1u, 0u, 788u, 79280u), vec4<u32>(26078u, 4294967295u, 4294967295u, 8210u), vec4<u32>(1u, 0u, 4294967295u, 228u), vec4<u32>(32186u, 4294967295u, 91807u, 1u), vec4<u32>(0u, 4294967295u, 3413u, 10222u), vec4<u32>(0u, 4406u, 1u, 1u), vec4<u32>(0u, 3379u, 82592u, 4294967295u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, max(2147483647i >> (0u % 32u), abs(3721i)), 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(1i), max(43938i, -2147483647i), i32(-1i) * -5095i), min(~vec3<i32>(-52623i, 7872i, 20627i), ~vec3<i32>(0i, -32928i, 54843i))));
    let var_1 = u_input.a.x;
    let var_2 = true;
    let var_3 = vec3<i32>(~16489i, _wgslsmith_dot_vec4_i32(vec4<i32>(3534i, ~(-22792i), -1i, firstTrailingBit(1i)), vec4<i32>(-1i, firstLeadingBit(-1788i) << ((102639u | u_input.a.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(14530i, 1i, 87484i), vec3<i32>(14341i, -2147483647i, 20812i)), 10232i)), _wgslsmith_add_i32(~(-22562i), -11664i));
    var var_4 = Struct_1(!(!vec4<bool>(var_2, global0[_wgslsmith_index_u32(var_1, 14u)] || true, all(vec4<bool>(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(50992u, 14u)], false)), false)), _wgslsmith_mult_vec3_u32(u_input.a, ~abs(~vec3<u32>(var_1, 4294967295u, 1u))), u_input.a, vec2<i32>(var_3.x, 21533i));
    return var_3.yz & reverseBits(_wgslsmith_div_vec2_i32(var_3.yy, vec2<i32>(0i, abs(-41248i))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    global1 = array<vec4<u32>, 8>();
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_3(!arg_1, select(vec3<bool>(false, arg_0, true), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))), vec2<i32>(_wgslsmith_clamp_i32(-28785i, -2147483647i, 26302i), 1i)), -57031i), ~(~(11274i >> (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(8266i, -4484i), vec2<i32>(-8318i, 877i))), _wgslsmith_clamp_i32(~(~14543i), ~reverseBits(-13187i), 2147483647i) ^ 15310i, i32(-1i) * -32134i);
    var var_1 = vec4<bool>(arg_1, all(vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, u_input.a.x, 27052u), 14u)])), true, global0[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 14u)]);
    let var_2 = 569f;
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-46262i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(35374i, var_0.x, 901i), var_0.x), _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(-35252i, 32092i)), select(-2147483647i, var_0.x >> (u_input.a.x % 32u), -1i == var_0.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -var_0.x, var_0.x, var_0.x), -(vec4<i32>(var_0.x, var_0.x, 6286i, var_0.x) & vec4<i32>(1i, var_0.x, var_0.x, var_0.x))), abs(vec4<i32>(-1i, -(~(-41032i)), _wgslsmith_mod_i32(var_0.x, 1i), var_0.x)));
    return -8132i;
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<bool, 14>();
    var var_0 = Struct_1(!select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false, true, false), false), vec4<bool>(true, global0[_wgslsmith_index_u32(8938u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), true), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], false, false, global0[_wgslsmith_index_u32(arg_0, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(12249u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], false, global0[_wgslsmith_index_u32(19236u, 14u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(67226u, 14u)], false, true)), vec4<bool>(true, true, true, true)), u_input.a, ~u_input.a, vec2<i32>(35609i, ~func_2(global0[_wgslsmith_index_u32(18434u, 14u)], false, vec4<f32>(-408f, -586f, -707f, 181f))) << (~vec2<u32>(~14386u, max(23979u, arg_0)) % vec2<u32>(32u)));
    let var_1 = 1691u;
    let var_2 = vec2<f32>(-1176f, 348f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2);
    return reverseBits(~(~var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 8>();
    global1 = array<vec4<u32>, 8>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(1u | _wgslsmith_div_u32(10412u, firstTrailingBit(10835u)), countOneBits(~abs(59729u))), _wgslsmith_div_u32(~(~(u_input.a.x << (u_input.a.x % 32u))), func_1(u_input.a.x) | ~func_1(u_input.a.x)));
    let var_1 = -931f;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(687f, 1892f))))), -2154f, _wgslsmith_f_op_f32(-var_1), -1490f);
    var_0 = u_input.a.yx;
    var var_3 = any(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<bool>(false, false), true))) | (true | !global0[_wgslsmith_index_u32(~1u, 14u)]);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 * var_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(160f - var_1), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 49211u) ^ vec3<u32>(var_0.x, 11284u, u_input.a.x), firstLeadingBit(~vec3<u32>(12134u, u_input.a.x, var_0.x))), _wgslsmith_div_u32(~u_input.a.x >> ((u_input.a.x << (110314u % 32u)) % 32u), _wgslsmith_mult_u32(~4294967295u, u_input.a.x ^ var_0.x))), -1012f);
}


struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(0i, -1937i, i32(-2147483648), -101331i, 12042i, -1i, 0i, i32(-2147483648), 17752i, -29241i, i32(-2147483648), -30412i, -1i, -1i, 1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = abs(abs(~(-arg_0.a)) << (~_wgslsmith_div_u32(u_input.c.x ^ u_input.a, max(1u, u_input.a)) % 32u));
    var_0 = firstLeadingBit(u_input.b.x);
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    return vec2<bool>(!((all(vec4<bool>(true, true, true, true)) == (29469u != u_input.d)) | all(vec3<bool>(false, false, false))), true);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = Struct_1(abs(-2147483647i));
    var_0 = Struct_1(1i);
    var var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true)), !func_3(Struct_1(var_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 59553u, u_input.a), vec3<u32>(arg_3, 4294967295u, 26265u)) < (~arg_1 & (arg_3 << (arg_3 % 32u))));
    var_1 = vec2<bool>(any(vec2<bool>(!var_1.x, var_1.x)), var_1.x && func_3(Struct_1(u_input.b.x)).x);
    var_1 = vec2<bool>(any(!select(vec4<bool>(false, false, false, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, var_1.x, false, var_1.x))), (223i << (arg_1 % 32u)) <= 1i);
    return 1f <= arg_0;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> f32 {
    global0 = array<i32, 15>();
    var var_0 = any(select(vec3<bool>(false, func_2(_wgslsmith_div_f32(arg_2.x, arg_2.x), firstLeadingBit(u_input.e), abs(u_input.d), u_input.d), (u_input.b.x & -1i) >= global0[_wgslsmith_index_u32(u_input.d, 15u)]), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), !(false & any(vec4<bool>(false, false, false, true)))));
    let var_1 = min(4294967295u, countOneBits(_wgslsmith_add_u32(1u, ~(~u_input.d))));
    var var_2 = vec4<bool>(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), ~var_1, _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, ~var_1), u_input.a | 3830u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1, u_input.d), firstLeadingBit(u_input.a))), var_1), any(vec4<bool>(func_3(Struct_1(arg_0)).x, all(vec4<bool>(true, true, true, true)), func_3(Struct_1(32143i)).x, true)), func_2(175f, 1u, 1u << (~u_input.e % 32u), 0u), (~_wgslsmith_mult_u32(var_1, 3772u) != (select(u_input.e, u_input.c.x, false) << (select(var_1, var_1, true) % 32u))) | (!any(vec2<bool>(true, true)) && func_2(arg_2.x, ~var_1, 59089u, var_1)));
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(u_input.e, u_input.a, 1u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(28320u, 46195u, 67437u), reverseBits(vec3<u32>(7846u, 1u, 52192u))), ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, 84572u, u_input.d), vec3<u32>(0u, u_input.d, 0u)))));
    return 692f;
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    let var_0 = any(select(!vec4<bool>(u_input.c.x > 4294967295u, any(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, true, false, false)), true), vec4<bool>(true, select(false, u_input.c.x > u_input.e, true), false, true), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(true, true, true)))));
    global0 = array<i32, 15>();
    let var_1 = Struct_1(-_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(65145u, 15u)], 631i, global0[_wgslsmith_index_u32(16819u, 15u)])), -max(vec4<i32>(1748i, 1i, global0[_wgslsmith_index_u32(u_input.a, 15u)], -12748i), vec4<i32>(0i, u_input.b.x, u_input.b.x, -41122i))));
    global0 = array<i32, 15>();
    let var_2 = var_1;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    var var_0 = ~vec3<i32>(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.a, 15u)], vec2<f32>(-1941f, -130f), vec3<f32>(-176f, 953f, -178f))), -639f, _wgslsmith_f_op_f32(min(522f, 836f)), 1550f)), 25689i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zy, vec2<i32>(-10019i, 1i)), u_input.b.zx) & 32259i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-730f - 143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(-18455i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-393f, 759f) + vec2<f32>(1299f, -300f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(178f, -268f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(895f, -456f, 415f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-802f, _wgslsmith_f_op_f32(-2016f + -825f))) + _wgslsmith_f_op_f32(abs(864f)))), 578f);
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_0.x >> (1u % 32u), firstTrailingBit(_wgslsmith_sub_i32(-22543i, global0[_wgslsmith_index_u32(15571u, 15u)]))), ~(-19103i >> (u_input.d % 32u)), global0[_wgslsmith_index_u32(u_input.c.x | _wgslsmith_mult_u32(9151u, u_input.d), 15u)]), vec3<i32>(_wgslsmith_mod_i32(reverseBits(var_0.x), max(select(43742i, -13370i, true), ~(-20024i))), -(~(-1i)), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e), 15u)]));
    var_0 = vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d, u_input.c.x | 63313u), 1u), 15u)], u_input.b.x);
    var var_2 = -1i;
    let var_3 = vec3<f32>(-1784f, _wgslsmith_f_op_f32(sign(var_1.x)), -631f);
    var_0 = -abs(u_input.b);
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec4<u32>(1u, 18940u, u_input.a, 1u)))), abs(u_input.c), _wgslsmith_dot_vec3_i32(abs(-u_input.b | -vec3<i32>(u_input.b.x, 7718i, 0i)), u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1 * var_1)))));
}


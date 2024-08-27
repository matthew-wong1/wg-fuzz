struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, arg_1.a.x, 6645u, 5131u), vec4<u32>(0u, ~arg_1.a.x, u_input.b, firstTrailingBit(u_input.b))), vec4<u32>(~1u, u_input.b, abs(arg_1.a.x), u_input.b)), 1u, ~arg_1.a.x, 68348u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(~u_input.b, ~u_input.b) & 67281u, u_input.b, u_input.b), _wgslsmith_div_vec2_i32(-(vec2<i32>(-1i) * -u_input.a.xy), vec2<i32>(_wgslsmith_sub_i32(-u_input.a.x, u_input.a.x), u_input.a.x)), -firstLeadingBit(abs(-vec3<i32>(37052i, 2147483647i, u_input.a.x))), !arg_0);
    let var_1 = var_0;
    var var_2 = select(var_0.d & !arg_0, !var_0.d, any(vec4<bool>(false, true, true && any(vec4<bool>(arg_0, true, true, var_1.d)), all(select(vec4<bool>(var_1.d, arg_0, true, true), vec4<bool>(var_0.d, false, var_1.d, var_0.d), vec4<bool>(false, false, arg_0, var_0.d))))));
    var var_3 = ~(-(_wgslsmith_div_i32(abs(2147483647i), 1i) & (0i & -var_1.b.x)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, 1926f, 526f), vec3<f32>(-2296f, -1210f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1217f, 1151f, -187f) + vec3<f32>(-1154f, arg_1.x, 175f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -548f, arg_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, -411f, 670f), vec3<f32>(-539f, arg_1.x, arg_1.x), vec3<bool>(true, false, var_1.d)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1384f, arg_1.x, arg_1.x))))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1387f, arg_1.x, var_1.d)), 473f), _wgslsmith_f_op_f32(sign(843f)), 1f))));
    return all(vec2<bool>(false & var_0.d, !((arg_0 || false) && false)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = !(!(!func_3(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1167f, 127f) * vec2<f32>(-906f, -1060f)))));
    var_0 = Struct_1(vec3<u32>(~select(firstLeadingBit(var_0.a.x), 0u, false), firstLeadingBit(countOneBits(_wgslsmith_mod_u32(u_input.b, 1u))), _wgslsmith_div_u32(_wgslsmith_sub_u32(select(arg_1.a.x, 4294967295u, arg_1.d), arg_1.a.x & 83692u), ~arg_0 ^ reverseBits(var_0.a.x))), var_0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(firstLeadingBit(var_0.b.x)), arg_1.b.x, var_0.c.x), ~vec3<i32>(-1i ^ arg_2.x, arg_1.c.x, firstLeadingBit(u_input.a.x))), _wgslsmith_add_i32(-32687i, abs(u_input.a.x >> (32995u % 32u))) != 0i);
    var var_2 = true;
    let var_3 = arg_1.a;
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f))))));
    return select(!vec4<bool>(arg_3.d, arg_3.d, false, false && arg_3.d), select(vec4<bool>(max(arg_0.x, 402u) == select(1u, 1541u, true), true, arg_3.d, any(!vec4<bool>(false, arg_1.d, false, false))), vec4<bool>(false, true, arg_1.d, true), !(!select(vec4<bool>(arg_3.d, arg_3.d, arg_1.d, arg_3.d), vec4<bool>(true, false, arg_1.d, true), arg_3.d))), vec4<bool>(!(arg_3.c.x > firstLeadingBit(arg_3.c.x)), func_2(~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x), arg_3, -_wgslsmith_sub_vec3_i32(arg_1.c, vec3<i32>(arg_3.c.x, u_input.a.x, -7104i))).d, any(!(!vec3<bool>(true, true, arg_3.d))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(236u, 35446u, 1u), max(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 1u))), u_input.b) & _wgslsmith_clamp_u32(u_input.b, 1u, _wgslsmith_dot_vec4_u32(func_1(vec2<bool>(true, true), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a.xx, vec3<i32>(-1i, 2147483647i, 1i), false), vec3<bool>(false, false, false), u_input.a), ~vec4<u32>(1u, u_input.b, u_input.b, u_input.b))));
    var_0 = (4294967295u << (min(u_input.b, _wgslsmith_sub_u32(countOneBits(u_input.b), 1u)) % 32u)) >> (u_input.b % 32u);
    let var_1 = true & (any(func_4(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a.yy, vec3<i32>(-25201i, u_input.a.x, 12793i), false), _wgslsmith_f_op_f32(317f - 715f), func_2(42766u, Struct_1(vec3<u32>(1u, 1u, u_input.b), u_input.a.yy, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), false), u_input.a))) || true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-min(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(351i, -2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-1350f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(613f)) - _wgslsmith_f_op_f32(select(1000f, -1517f, var_1))))), func_2(0u, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), firstLeadingBit(vec3<u32>(25377u, u_input.b, u_input.b))), (vec2<i32>(u_input.a.x, 2147483647i) ^ vec2<i32>(u_input.a.x, u_input.a.x)) | select(vec2<i32>(u_input.a.x, 58938i), vec2<i32>(u_input.a.x, u_input.a.x), var_1), ~firstLeadingBit(vec3<i32>(-1i, 63823i, -12111i)), false), func_2(max(~u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b)), Struct_1(~vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec2_i32(u_input.a.xx, u_input.a.xx), -u_input.a, true), firstTrailingBit(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec3<bool>(var_1, var_1, var_1)))).c).c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2311f, -437f), vec2<f32>(273f, 1998f))), vec2<f32>(758f, 254f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, 811f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-753f, -735f), vec2<f32>(710f, -341f), var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1336f, -123f) * vec2<f32>(-1136f, -946f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1917f, 1000f) + vec2<f32>(1552f, -637f)))), !func_4(vec4<u32>(21848u, u_input.b, 30852u, u_input.b), Struct_1(vec3<u32>(4294967295u, u_input.b, 0u), vec2<i32>(9738i, u_input.a.x), u_input.a, true), -579f, Struct_1(vec3<u32>(7709u, u_input.b, 44480u), vec2<i32>(3088i, -67135i), vec3<i32>(u_input.a.x, 36326i, u_input.a.x), var_1)).yz)))));
}


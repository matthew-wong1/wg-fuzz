struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(select(_wgslsmith_dot_vec4_i32((u_input.c & vec4<i32>(u_input.c.x, arg_1.a, u_input.c.x, -28141i)) | -vec4<i32>(-35052i, u_input.c.x, u_input.c.x, u_input.c.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, arg_1.a, 1367i, u_input.c.x), u_input.c, u_input.c)), firstTrailingBit(-u_input.c.x), true), arg_3, _wgslsmith_mult_u32(~(~abs(4294967295u)), ~arg_1.d), firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mult_u32(arg_1.c, arg_1.c) % 32u), 10u)] << (~1u % 32u)), _wgslsmith_f_op_f32(trunc(arg_2.x)));
    var var_1 = ~(~global0[_wgslsmith_index_u32(firstLeadingBit(arg_1.d ^ (arg_1.c & global0[_wgslsmith_index_u32(4294967295u, 10u)])), 10u)]);
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~1u, var_0.c, 31052u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.a), max(vec3<u32>(arg_1.c, var_0.d, 1u), vec3<u32>(var_0.c, 13654u, 0u)))), ~firstLeadingBit(vec2<u32>(1u, 1u)), ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(1154u, 0u), vec2<u32>(25374u, 1u), false), max(vec2<u32>(4294967295u, 7470u), vec2<u32>(arg_1.c, 1u)))), min(select(~vec2<u32>(90465u, 11199u), min(vec2<u32>(u_input.a, 1u) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.a, 1u)), vec2<bool>(true, true)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d, arg_1.c) ^ vec2<u32>(u_input.a, arg_1.d), vec2<u32>(arg_1.d, 1u))));
    var var_2 = -2232f < _wgslsmith_div_f32(var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), 1561f)), -1148f));
    let var_3 = firstTrailingBit(-31862i);
    return !vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_1.c, 10u)], var_0.d), vec2<u32>(u_input.a, u_input.a)) == _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(40416u, 14327u), vec2<u32>(71347u, global0[_wgslsmith_index_u32(var_0.c, 10u)]))), !any(vec4<bool>(true, false, true, false)), true, false);
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = u_input.c.zxx;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1215f - -348f), _wgslsmith_f_op_f32(ceil(arg_0)))))), 1758f, 942f, arg_0);
    let var_2 = min(select(var_0.x, 73038i, 4294967295u > abs(global0[_wgslsmith_index_u32(57679u, 10u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)] % 32u))), var_0.x);
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    return select(!vec4<bool>(!(arg_0 < arg_0), true, select(true, 178f > arg_0, 2147483647i >= var_0.x), false), vec4<bool>(!any(func_3(var_1.x, Struct_1(-2147483647i, var_1.wxy, 39277u, 0u, -662f), vec2<f32>(-568f, 1637f), var_1.zxy)), true, 8795u >= abs(select(0u, u_input.a, true)), (-538f <= var_1.x) & true), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)), vec4<bool>(false, true, false, func_3(var_1.x, Struct_1(var_2, var_1.zyz, global0[_wgslsmith_index_u32(1u, 10u)], 63660u, -532f), vec2<f32>(-1011f, -822f), var_1.ywx).x | true), false));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec3<f32> {
    global0 = array<u32, 10>();
    let var_0 = select(select(!select(!vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(true, false, true, true)), func_2(1800f)), select(!(!vec4<bool>(arg_1, arg_1, false, arg_1)), vec4<bool>(arg_1, false, true, !arg_1), vec4<bool>(false, any(vec4<bool>(false, false, false, arg_1)), all(vec4<bool>(arg_1, true, arg_1, arg_1)), !arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(648f)) - 1378f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2826f))), !vec4<bool>(true, any(vec2<bool>(arg_1, true)), true, true), !(!(!vec4<bool>(arg_1, true, arg_1, true))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2427f, -211f, -1142f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1268f, 602f, -958f)), vec3<bool>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, -1523f, -739f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(18288i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-48275i, u_input.c.x, 13462i, 1i)), all(vec4<bool>(false, true, true, true)))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, ~0u) >> ((firstTrailingBit(vec2<u32>(0u, 11848u)) | ~vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)), vec2<u32>(~global0[_wgslsmith_index_u32(abs(60947u), 10u)], (0u | u_input.b) ^ reverseBits(global0[_wgslsmith_index_u32(947u, 10u)]))), ~firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1347f, -1157f)) - 1242f), _wgslsmith_f_op_f32(trunc(-616f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), 1851f)));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-620f, var_0.b.x, var_0.b.x) - vec3<f32>(-1000f, -1071f, -1227f)), true)))), min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, u_input.b), vec2<u32>(var_0.c, var_0.d)), vec2<u32>(var_0.c, var_0.c)), global0[_wgslsmith_index_u32(35010u, 10u)], 14592u), ~(~(~var_0.d))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(46171u, ~0u, 22739u, 1u), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(var_0.c, 10u)], 19570u, 44790u, global0[_wgslsmith_index_u32(0u, 10u)]))), ~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_0.d, 48783u, u_input.b)), ~vec4<u32>(13235u, var_0.d, var_0.c, 4294967295u))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1099f)));
    var_0 = var_1;
    let var_2 = !(!func_3(var_1.e, Struct_1(reverseBits(-36269i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.e, -192f, var_0.e))), 0u, _wgslsmith_clamp_u32(1u, 1u, 98070u), var_1.e), var_1.b.zx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_div_vec3_f32(var_1.b, var_0.b))));
    var_0 = Struct_1((-7703i & _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.a, 13581i), 13947i)) >> (0u % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) + var_0.b))), 0u, 78518u, var_0.e);
    var_0 = var_1;
    var var_3 = Struct_1((_wgslsmith_mult_i32(-u_input.c.x, var_1.a) << (firstLeadingBit(1u) % 32u)) & _wgslsmith_div_i32((var_1.a >> (var_1.c % 32u)) >> (~u_input.a % 32u), u_input.c.x), var_0.b, (_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a), abs(43291u)) & countOneBits(abs(var_1.c))) << (countOneBits(~1u) % 32u), select((72309u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, var_1.c, 4294967295u, 0u), vec4<u32>(4294967295u, var_0.d, var_1.d, var_1.c))) << (~var_1.d % 32u), ~0u, true), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_mod_i32(~0i, select(var_1.a, -9387i, true)), 0i, u_input.c.x, var_3.a));
}


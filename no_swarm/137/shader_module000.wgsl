struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: array<f32, 2> = array<f32, 2>(1659f, 390f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(81805u, ~21342u), ~(~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), global0.x), 2u)], vec2<bool>(global0.x, true), vec4<u32>(~(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, 0u, 67196u)) << ((u_input.a >> (20897u % 32u)) % 32u)), firstTrailingBit(24171u), 4294967295u, ~(~u_input.a)), u_input.b.x, _wgslsmith_sub_vec4_u32(max(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1724u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 13817u), vec4<u32>(0u, 46248u, 18565u, 52613u)), vec4<u32>(0u, u_input.a, 0u, 1u) >> (vec4<u32>(33319u, u_input.a, 2288u, 30377u) % vec4<u32>(32u))), vec4<u32>(reverseBits(u_input.b.x), u_input.b.x | u_input.a, ~51853u, 68338u)), ~vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.b.x, 37688u), 1u, ~u_input.a)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(944f, 1946f)), vec2<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a, 2u)], 921f)), 909f), global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_f32(645f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.e.x, 2u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a, var_0.a))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1033f))))))));
    return reverseBits((_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(10210i, 0i), vec2<i32>(0i, -33044i)), select(vec2<i32>(-2147483647i, 49916i), vec2<i32>(30847i, -1i), false)) << (~(~u_input.a) % 32u)) << (75184u % 32u));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-1i, func_3(all(vec4<bool>(false, global0.x, false, false))), max(-29728i, _wgslsmith_clamp_i32(-1i, ~(-1i), i32(-1i) * -48248i))), reverseBits(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-2939i, 1i, -1i, -1i) << (vec4<u32>(0u, arg_0, 0u, arg_0) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(1i, 1i, 589i, 0i)) & vec4<i32>(-2147483647i, 0i, -26380i, 2147483647i))));
    var var_1 = max(_wgslsmith_sub_vec2_u32(select(~firstLeadingBit(u_input.b.zz), vec2<u32>(53415u, 3279u), select(global0.yx, select(vec2<bool>(global0.x, global0.x), global0.wx, global0.x), global0.x)), u_input.b.zz), u_input.b.zy);
    var_1 = u_input.b.zz | _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.zz, u_input.b.yy), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 107116u), u_input.b.xz)), ~vec2<u32>(firstLeadingBit(var_1.x), arg_0));
    global0 = !select(vec4<bool>(false, true, any(!global0.xxw), select(any(global0.xww), global0.x || global0.x, true)), select(select(vec4<bool>(true, global0.x, true, true), select(vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, false, true, false)), true), vec4<bool>(global0.x, any(vec2<bool>(global0.x, global0.x)), true, true), vec4<bool>(false, global0.x, !global0.x, true)), !(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, false, true))));
    let var_2 = -(~_wgslsmith_dot_vec3_i32(min(firstTrailingBit(vec3<i32>(-1i, var_0.x, var_0.x)), vec3<i32>(var_0.x, 2147483647i, -1i)), vec3<i32>(~(-2147483647i), -2147483647i, 1i)));
    return !(!vec3<bool>(all(!global0.wz), true, all(vec2<bool>(true, global0.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) * arg_1.a.a), !vec2<bool>(any(select(vec4<bool>(arg_1.a.b.x, true, global0.x, true), vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, global0.x, arg_0, true))), any(func_2(u_input.a))), ~vec4<u32>(arg_2.c.x, u_input.a << (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), ~max(arg_2.c.x, 4294967295u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(32488u, arg_2.d, 4294967295u, arg_2.e.x), arg_2.c))), arg_2.c.x | ~(~arg_1.a.d), vec4<u32>(_wgslsmith_mult_u32(arg_1.a.e.x, ~53993u), countOneBits(reverseBits(~u_input.a)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, arg_2.d, u_input.a)), _wgslsmith_sub_vec4_u32(arg_1.a.c | vec4<u32>(u_input.a, 4294967295u, arg_2.d, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.e.x, arg_1.a.c.x, 3488u, 28157u), vec4<u32>(u_input.b.x, u_input.b.x, arg_1.a.e.x, 0u), vec4<u32>(0u, u_input.b.x, 0u, arg_2.c.x)))), 4294967295u));
    global1 = array<f32, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, 361f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1988f, var_0.a))), true))), vec2<bool>(any(select(!vec4<bool>(true, false, global0.x, false), !vec4<bool>(true, arg_0, false, arg_0), !arg_2.b.x)), arg_1.a.b.x), arg_1.a.c, max(u_input.b.x, ~(~_wgslsmith_div_u32(0u, 1u))), vec4<u32>(arg_1.a.d, ~_wgslsmith_div_u32(arg_2.e.x, arg_2.d), u_input.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a.c.x, 4294967295u, 75705u), vec3<u32>(1u, arg_2.d, u_input.a)), max(_wgslsmith_mod_u32(arg_1.a.d, arg_1.a.e.x), _wgslsmith_dot_vec3_u32(u_input.b, var_0.c.xyx)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-430f * arg_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a + -318f))), _wgslsmith_f_op_f32(-var_1.a)), 387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-551f)))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1087f, 318f, 923f, arg_2.a))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, var_0.a, arg_2.a)))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), vec2<bool>(true, all(vec2<bool>(false, arg_3))), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, ~47063u), abs(u_input.a) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38268u, u_input.b.x, 84723u), vec4<u32>(4294967295u, 51317u, u_input.a, 4294967295u)), firstTrailingBit(u_input.b.x ^ u_input.a), 9320u), (~u_input.b.x & ~u_input.b.x) ^ (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) | 42238u), vec4<u32>((0u >> (u_input.b.x % 32u)) | _wgslsmith_add_u32(u_input.b.x, u_input.a), 4294967295u, u_input.b.x, ~(6914u << (u_input.a % 32u)))));
    var var_1 = !arg_3;
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, var_0.a.a, arg_2), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.wxy)), arg_1.xyx));
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~abs(-(~vec2<i32>(-4407i, 10259i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global0.x, Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 2u)], global0.yz, vec4<u32>(u_input.a, 0u, 27592u, 51711u), u_input.b.x, vec4<u32>(u_input.b.x, 48563u, u_input.b.x, u_input.b.x))), Struct_1(global1[_wgslsmith_index_u32(27003u, 2u)], vec2<bool>(global0.x, global0.x), vec4<u32>(1291u, u_input.a, u_input.a, u_input.a), u_input.a, vec4<u32>(u_input.b.x, 72957u, u_input.b.x, u_input.a)))) - vec4<f32>(678f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 2u)] - global1[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(931f + global1[_wgslsmith_index_u32(u_input.a, 2u)]), -1176f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), 1000f, -1245f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(-1f)))), true);
    global1 = array<f32, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, 2410f, var_0.a.a, global1[_wgslsmith_index_u32(u_input.b.x, 2u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, global1[_wgslsmith_index_u32(4294967295u, 2u)], 1461f, var_0.a.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, -590f, -610f, var_0.a.a) + vec4<f32>(-952f, 1895f, -273f, 1046f)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-189f, 1000f)) * _wgslsmith_f_op_f32(trunc(757f))), 699f, 856f)));
    var var_2 = 58158u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-119f, -1081f, all(vec4<bool>(true, true, true, global0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1511f, -321f, var_1.x, var_1.x)), var_0.a.a, func_2(var_0.a.e.x).x).a.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-236f + -1241f), _wgslsmith_f_op_f32(f32(-1f) * -1166f))))));
    let x = u_input.a;
    s_output = StorageBuffer(31031u);
}


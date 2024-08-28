struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: Struct_4 = Struct_4(true);

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1062f, 313f, -482f), vec3<f32>(-539f, -1288f, 430f), vec3<f32>(606f, -218f, 1000f), vec3<f32>(1000f, -761f, -435f), vec3<f32>(1637f, 707f, 1000f), vec3<f32>(671f, 1000f, 512f), vec3<f32>(-1255f, -472f, -949f), vec3<f32>(258f, -1363f, -1249f));

var<private> global2: array<bool, 27>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = !vec4<bool>(all(vec4<bool>(u_input.c < 0u, true, global2[_wgslsmith_index_u32(4294967295u, 27u)], true)), global2[_wgslsmith_index_u32(u_input.c, 27u)], all(!vec2<bool>(global0.a, global0.a)), true);
    global1 = array<vec3<f32>, 8>();
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.c, u_input.c, ~u_input.c), vec3<u32>(11623u, 46365u, ~(~1u)));
    global2 = array<bool, 27>();
    global1 = array<vec3<f32>, 8>();
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(select(u_input.a, u_input.a, global0.a && (u_input.a >= u_input.a)), 24769i), -u_input.a | (i32(-1i) * -10866i));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> vec3<i32> {
    global1 = array<vec3<f32>, 8>();
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.b << (u_input.b % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(u_input.b.x), u_input.c) ^ (u_input.b | u_input.b)), 27u)];
    let var_1 = -arg_1;
    let var_2 = select(!global2[_wgslsmith_index_u32(abs(0u), 27u)], !(!(!(global2[_wgslsmith_index_u32(u_input.c, 27u)] & false))), true);
    global1 = array<vec3<f32>, 8>();
    return vec3<i32>(30235i, select(-9475i, ~_wgslsmith_mod_i32(1i, -2147483647i), !var_2), var_1 | 0i);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_4(select(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global0.a, true));
    let var_1 = all(arg_1.yx);
    let var_2 = 1289f;
    var var_3 = select(func_4(-251f, _wgslsmith_add_i32(max(func_3(), ~0i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -25704i), vec2<i32>(-8084i, u_input.a)), -vec2<i32>(44223i, arg_3))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(arg_2.a.a, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * arg_2.b) + _wgslsmith_f_op_f32(arg_2.a.a + -1025f))), Struct_3(false, abs(arg_0.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(408f, arg_2.a.a, arg_2.b, 2567f) * vec4<f32>(arg_2.a.a, var_2, arg_2.b, 1704f)))), -1i, 1u)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_3, -1i), -1i) & abs(i32(-1i) * -30066i), -countOneBits(arg_3 ^ -3193i), ~countOneBits(-2147483647i) << (1u % 32u)), false);
    global1 = array<vec3<f32>, 8>();
    return Struct_1(var_2);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_3(global0.a, 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(vec2<u32>(5767u, 82341u), vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], global0.a, false, false), Struct_2(Struct_1(263f), arg_2.a), u_input.a).a, -1000f, -250f, arg_1.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, -1144f, arg_1.a, arg_1.a)))), vec4<f32>(-1503f, -205f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1.a, 1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1015f + -2032f), -317f, select(global2[_wgslsmith_index_u32(0u, 27u)], false, true))))), max(u_input.a, ~1i) | _wgslsmith_clamp_i32(arg_0, 35270i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0, u_input.a), vec3<i32>(arg_0, 0i, u_input.a)), ~u_input.a)), u_input.b.x);
    let var_1 = max(var_0.b, 1u) << (var_0.b % 32u);
    return 4294967295u;
}

fn func_1() -> f32 {
    let var_0 = ~((~_wgslsmith_div_u32(25246u, u_input.c) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 12716u, u_input.c), vec3<u32>(u_input.b.x, 0u, 4294967295u)) % 32u)) >> (func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -36029i, 0i), vec3<i32>(u_input.a, u_input.a, 903i)) ^ _wgslsmith_mult_i32(2147483647i, u_input.a), Struct_1(_wgslsmith_f_op_f32(sign(264f))), func_2(vec2<u32>(u_input.c, u_input.b.x), vec4<bool>(global0.a, global0.a, false, global2[_wgslsmith_index_u32(47100u, 27u)]), Struct_2(Struct_1(183f), 1000f), u_input.a & 0i)) % 32u));
    global1 = array<vec3<f32>, 8>();
    global0 = Struct_4(global0.a);
    global2 = array<bool, 27>();
    var var_1 = ~vec3<u32>(~_wgslsmith_mult_u32(abs(var_0), var_0), 1u, u_input.b.x);
    return 865f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, _wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-455f, 784f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2024f, 958f), vec2<f32>(2580f, 1298f), true))))));
    var var_1 = select(select(!vec2<bool>(all(vec2<bool>(global0.a, global2[_wgslsmith_index_u32(u_input.b.x, 27u)])), !global2[_wgslsmith_index_u32(100370u, 27u)]), select(vec2<bool>(global0.a, global2[_wgslsmith_index_u32(abs(u_input.b.x), 27u)]), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 27u)], global0.a), vec2<bool>(global2[_wgslsmith_index_u32(6332u, 27u)], global0.a), vec2<bool>(true, true)), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 27u)], false), select(vec2<bool>(true, global0.a), vec2<bool>(false, global2[_wgslsmith_index_u32(61383u, 27u)]), vec2<bool>(global0.a, true)), !vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 27u)]))), select(vec2<bool>(select(true, global2[_wgslsmith_index_u32(u_input.c, 27u)], global2[_wgslsmith_index_u32(22165u, 27u)]), true), select(select(vec2<bool>(global0.a, global2[_wgslsmith_index_u32(56932u, 27u)]), vec2<bool>(global0.a, true), global0.a), !vec2<bool>(global0.a, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !vec2<bool>(all(vec4<bool>(global0.a, false, global2[_wgslsmith_index_u32(u_input.c, 27u)], false)) | true, global0.a), select(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(15804u, 27u)], false), vec2<bool>(global0.a, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), global0.a), vec2<bool>(false, false)), !(!select(vec2<bool>(global0.a, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global0.a), vec2<bool>(false, false))), false));
    var var_2 = !any(vec2<bool>(false, true));
    var_1 = !(!(!(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 27u)])))));
    let var_3 = Struct_2(Struct_1(279f), 877f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(-1010f - 1686f))), 590f, true))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(func_1()))));
    let var_5 = ~firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_5), _wgslsmith_clamp_i32(var_5, ~1i, ~u_input.a ^ -2147483647i), ~var_5, var_5));
}


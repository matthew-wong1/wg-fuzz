struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-1i, 47283i, 2147483647i, 1095i, 1i, 11764i, 50824i, 2147483647i, -5220i, 0i, 29062i, -29784i, 2147483647i, -1i, 40128i, -1i, -30425i, i32(-2147483648), 57069i, 6977i, 18065i, 2147483647i, 44450i, -21267i);

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 23521u), vec2<u32>(20391u, 4294967295u), vec2<u32>(4294967295u, 5723u), vec2<u32>(17155u, 4294967295u), vec2<u32>(4294967295u, 9037u), vec2<u32>(38610u, 33613u), vec2<u32>(6322u, 0u), vec2<u32>(79454u, 1u), vec2<u32>(11567u, 4294967295u), vec2<u32>(32458u, 0u), vec2<u32>(10074u, 17049u), vec2<u32>(56765u, 26592u), vec2<u32>(0u, 66570u), vec2<u32>(36384u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 3077u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 92627u), vec2<u32>(0u, 0u), vec2<u32>(68534u, 35326u), vec2<u32>(0u, 86311u), vec2<u32>(56225u, 1u));

var<private> global3: array<vec2<u32>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    global3 = array<vec2<u32>, 10>();
    let var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 11827u), arg_0.c, u_input.a.x, 0u & u_input.a.x), firstLeadingBit(min(u_input.a, vec4<u32>(arg_0.c, 52018u, 56358u, arg_0.c)))), ~min(vec4<u32>(~arg_0.c, _wgslsmith_mult_u32(0u, u_input.a.x), reverseBits(42677u), u_input.a.x), u_input.a));
    global1 = array<vec2<bool>, 8>();
    var var_1 = 4294967295u;
    let var_2 = Struct_1(true != (_wgslsmith_f_op_f32(f32(-1f) * -716f) < arg_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(arg_0.b * vec2<f32>(676f, 634f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.x, -865f)))))), ~1u);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) + var_2.b.x)), arg_0.b.x), _wgslsmith_f_op_f32(min(278f, arg_0.b.x)));
}

fn func_2() -> vec4<bool> {
    global2 = array<vec2<u32>, 24>();
    global3 = array<vec2<u32>, 10>();
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1012f * -443f)) < _wgslsmith_f_op_f32(func_3(Struct_1(true, vec2<f32>(-1000f, 103f), u_input.a.x), vec4<i32>(u_input.d, -31006i, -1i, -20432i))), false, true || all(select(global1[_wgslsmith_index_u32(26976u, 8u)], global1[_wgslsmith_index_u32(u_input.e.x, 8u)], false)), false);
    return vec4<bool>(all(select(var_0.wzz, select(!var_0.wxy, vec3<bool>(true, true, var_0.x), true), true)), var_0.x, global0[_wgslsmith_index_u32(select(~u_input.a.x, max(_wgslsmith_sub_u32(1403u, u_input.a.x), 0u), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), 24u)] <= u_input.d, var_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    global1 = array<vec2<bool>, 8>();
    return !(_wgslsmith_sub_i32(u_input.d & -6847i, 0i) <= u_input.c.x);
}

fn func_1() -> f32 {
    global3 = array<vec2<u32>, 10>();
    global0 = array<i32, 24>();
    let var_0 = u_input.e.x;
    var var_1 = Struct_1(func_4(func_2(), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, _wgslsmith_f_op_f32(-1498f + 236f)))), 41482u);
    var var_2 = Struct_1(!func_2().x && (_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(11989i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)])), countOneBits(vec4<i32>(-18183i, global0[_wgslsmith_index_u32(77761u, 24u)], 2147483647i, u_input.b))) != 47161i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(2348f + 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + var_2.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))));
    let var_1 = vec4<bool>(true, true, true, true);
    global3 = array<vec2<u32>, 10>();
    let var_2 = Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(442f - -2575f), _wgslsmith_f_op_f32(trunc(-1423f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1356f, 798f), vec2<f32>(130f, 848f)))), (u_input.d & -1i) < u_input.d))), u_input.e.x >> (~max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 291u), vec2<u32>(4175u, 1u)), ~u_input.e.x) % 32u));
    let var_3 = Struct_1(var_2.c == (~1u ^ (4098u ^ u_input.a.x)), vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1391f)), select(var_2.c | _wgslsmith_div_u32(~1u, 26757u), _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(~var_2.c, 10u)] >> (~vec2<u32>(13635u, var_2.c) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.e.x, var_2.c), u_input.a), var_2.c), 24u)]), true));
    let var_4 = var_2;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f + 1453f) + var_3.b.x)))), _wgslsmith_f_op_f32(abs(var_5.b.x)), _wgslsmith_f_op_f32(step(-1260f, _wgslsmith_f_op_f32(exp2(var_3.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.x, -635f, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.b.x, var_2.b.x, 191f)))))), firstTrailingBit(u_input.e.xwz));
}


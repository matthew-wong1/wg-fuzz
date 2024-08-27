struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 857f;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(381f, -1414f, -311f), vec3<f32>(768f, -732f, -1000f), vec3<f32>(102f, -1000f, 576f), vec3<f32>(-1000f, 698f, 570f), vec3<f32>(-764f, 123f, -2126f), vec3<f32>(-707f, -483f, 196f), vec3<f32>(270f, 1925f, -469f), vec3<f32>(192f, 316f, 1612f), vec3<f32>(262f, -978f, -658f), vec3<f32>(1369f, -689f, 222f), vec3<f32>(733f, 1000f, -359f), vec3<f32>(848f, 959f, 712f), vec3<f32>(-1655f, -924f, -3009f));

var<private> global2: Struct_1 = Struct_1(-21137i, vec3<bool>(false, false, true), 16748u, 596f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = ~(~abs(~_wgslsmith_add_u32(global2.c, arg_3.c)));
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~4294967295u, 13u)], vec3<f32>(_wgslsmith_f_op_f32(1709f * -544f), 119f, _wgslsmith_f_op_f32(-644f * var_1.d)))) * vec3<f32>(500f, _wgslsmith_f_op_f32(-625f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) + _wgslsmith_f_op_f32(step(global2.d, 1f)))));
    let var_3 = false;
    var var_4 = var_1.c;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d * var_1.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * -919f), _wgslsmith_div_f32(-680f, arg_1))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -130f, arg_3.d)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-239f - var_1.d), _wgslsmith_f_op_f32(step(arg_0.x, -184f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_2)), arg_0, vec3<bool>(var_3, var_1.b.x, false))))));
}

fn func_3() -> f32 {
    let var_0 = select(vec3<bool>(global2.b.x, false, true), global2.b, any(!(!(!vec4<bool>(false, true, global2.b.x, true)))));
    var var_1 = select(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(-5295i, max(u_input.a.x, -49275i), 17149i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, 31469i), vec2<i32>(u_input.b.x, 1i)), 1i) >> (vec4<u32>(_wgslsmith_add_u32(1u, u_input.d), global2.c, 1u, abs(_wgslsmith_div_u32(30959u, global2.c))) % vec4<u32>(32u)), select(select(!select(vec4<bool>(false, global2.b.x, var_0.x, false), vec4<bool>(var_0.x, true, global2.b.x, var_0.x), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, global2.b.x, false, false), vec4<bool>(false, false, global2.b.x, false), vec4<bool>(false, var_0.x, var_0.x, global2.b.x)), true), vec4<bool>(true, true, false, true), !select(vec4<bool>(global2.b.x, true, false, true), select(vec4<bool>(var_0.x, global2.b.x, true, var_0.x), vec4<bool>(false, global2.b.x, false, true), vec4<bool>(global2.b.x, global2.b.x, false, true)), !vec4<bool>(false, false, true, global2.b.x))));
    let var_2 = true;
    let var_3 = Struct_1(reverseBits(~abs(global2.a & u_input.a.x)), vec3<bool>(true, all(select(!vec3<bool>(global2.b.x, global2.b.x, global2.b.x), select(vec3<bool>(true, true, var_2), vec3<bool>(global2.b.x, false, var_2), vec3<bool>(true, true, true)), !vec3<bool>(false, true, var_2))), all(!vec4<bool>(global2.b.x, false, true, false))), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1632f)), global2.d))))));
    var var_4 = Struct_1(-13063i & (-(i32(-1i) * -1i) | -global2.a), vec3<bool>(true, var_3.b.x, global2.b.x), abs(reverseBits(global2.c << (~var_3.c % 32u))), global2.d);
    return _wgslsmith_f_op_f32(round(global2.d));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global2 = arg_2;
    let var_0 = arg_2;
    let var_1 = select(countOneBits(global2.a | (i32(-1i) * -40440i)) >> (global2.c % 32u), -_wgslsmith_clamp_i32(~abs(u_input.a.x), firstTrailingBit(_wgslsmith_add_i32(-1i, -2147483647i)), 9964i), true);
    global1 = array<vec3<f32>, 13>();
    var var_2 = -8450i;
    return arg_2;
}

fn func_1() -> vec2<u32> {
    global1 = array<vec3<f32>, 13>();
    let var_0 = func_4(true, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, _wgslsmith_f_op_f32(-global2.d), global2.d) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.d, global2.d, global2.d), vec3<f32>(-1455f, global2.d, global2.d))), global1[_wgslsmith_index_u32(global2.c, 13u)], vec3<bool>(true, true, global2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * 1000f)) + global2.d), true, Struct_1(-u_input.a.x, select(select(global2.b, vec3<bool>(true, true, global2.b.x), true), global2.b, true), u_input.d | u_input.d, 374f))), Struct_1(max(global2.a, -39416i), global2.b, global2.c, _wgslsmith_f_op_f32(func_3())));
    var var_1 = !vec4<bool>(true, false, false, !(~u_input.d > ~0u));
    global1 = array<vec3<f32>, 13>();
    let var_2 = -18699i;
    return abs(~vec2<u32>(func_4(global2.b.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], var_0).c, 14912u)) | abs(vec2<u32>(abs(_wgslsmith_clamp_u32(4294967295u, global2.c, 4294967295u)), ~u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, (select(true, all(vec3<bool>(true, false, false)), true) | any(vec4<bool>(global2.b.x, true, true, false))) | true, false, true);
    var var_1 = _wgslsmith_add_u32(~u_input.d << (4294967295u % 32u), _wgslsmith_dot_vec2_u32(func_1(), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, global2.c), vec2<u32>(u_input.d, global2.c) << (vec2<u32>(u_input.d, 37741u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -933f);
    global1 = array<vec3<f32>, 13>();
    global1 = array<vec3<f32>, 13>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2));
    let var_4 = func_4(false, vec3<f32>(var_2, global2.d, 1635f), Struct_1(1i, func_4(true, _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(2753u, 13u)], _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(1u, 13u)]), global2.b.x)), Struct_1(45221i, !vec3<bool>(true, var_0.x, true), 17613u, -939f)).b, ~global2.c, 2959f));
    var var_5 = _wgslsmith_f_op_f32(-var_4.d);
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, var_4.c), ~var_4.c), 19026u, ~firstLeadingBit(global2.c));
}


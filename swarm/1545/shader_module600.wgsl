struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(i32(-2147483648), vec4<bool>(false, false, false, true), 1u, vec2<i32>(1i, -27420i), 33714u), Struct_1(-1i, vec4<bool>(false, true, false, true), 26643u, vec2<i32>(2147483647i, 23645i), 4294967295u), Struct_1(0i, vec4<bool>(false, false, true, true), 1u, vec2<i32>(i32(-2147483648), 28837i), 3707u), Struct_1(2211i, vec4<bool>(false, false, false, true), 0u, vec2<i32>(1i, 2023i), 0u), Struct_1(8069i, vec4<bool>(false, false, false, false), 4294967295u, vec2<i32>(-13713i, 47189i), 65728u), Struct_1(i32(-2147483648), vec4<bool>(false, true, true, true), 0u, vec2<i32>(1i, 0i), 0u), Struct_1(0i, vec4<bool>(true, false, true, false), 26334u, vec2<i32>(24999i, 54580i), 4294967295u), Struct_1(2147483647i, vec4<bool>(true, false, false, true), 1u, vec2<i32>(26653i, 17254i), 0u), Struct_1(0i, vec4<bool>(false, false, true, true), 1u, vec2<i32>(i32(-2147483648), -43416i), 4294967295u), Struct_1(-31341i, vec4<bool>(false, false, true, false), 51633u, vec2<i32>(2147483647i, 33698i), 26802u), Struct_1(5204i, vec4<bool>(false, false, false, true), 44191u, vec2<i32>(17601i, -18141i), 0u), Struct_1(1i, vec4<bool>(true, true, true, true), 43680u, vec2<i32>(2147483647i, -12391i), 4294967295u), Struct_1(-24972i, vec4<bool>(false, true, false, true), 9734u, vec2<i32>(0i, 24572i), 7027u), Struct_1(8784i, vec4<bool>(false, true, false, true), 67282u, vec2<i32>(0i, -10931i), 0u), Struct_1(1i, vec4<bool>(true, true, false, true), 59980u, vec2<i32>(1i, -1i), 39426u), Struct_1(9885i, vec4<bool>(true, false, false, false), 0u, vec2<i32>(0i, 2147483647i), 0u), Struct_1(-8799i, vec4<bool>(true, false, false, true), 1u, vec2<i32>(-40737i, -4234i), 60702u), Struct_1(5487i, vec4<bool>(true, false, true, true), 0u, vec2<i32>(1i, -6044i), 1u), Struct_1(48953i, vec4<bool>(false, false, false, true), 29293u, vec2<i32>(-1i, 0i), 44220u));

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(23330i, 40751i, 0i), vec3<i32>(-35292i, i32(-2147483648), 7253i), vec3<i32>(i32(-2147483648), 5550i, -9230i), vec3<i32>(-12939i, i32(-2147483648), -42510i), vec3<i32>(2147483647i, 56703i, 1i), vec3<i32>(2425i, 1i, 1i), vec3<i32>(-18555i, -1i, 10963i), vec3<i32>(-7281i, 1i, -25246i));

var<private> global3: array<bool, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    global2 = array<vec3<i32>, 8>();
    let var_0 = Struct_2(true, -vec2<i32>(1i, -3128i));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = var_0;
    let var_3 = false;
    return vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(23148u, 0u), ~vec2<u32>(arg_1.c, arg_1.c)), ~(~vec2<u32>(u_input.a, arg_1.e) ^ (vec2<u32>(arg_1.c, 0u) | vec2<u32>(1u, u_input.a)))), abs(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.a, 59290u, 0u, arg_1.e) | vec4<u32>(arg_1.c, 4294967295u, 1u, 98210u)) ^ (vec4<u32>(arg_1.e, 21340u, 44712u, arg_1.e) & vec4<u32>(arg_1.c, arg_1.e, 1u, arg_1.e)), vec4<u32>(arg_1.c, 1u, 1u, u_input.a) | ~vec4<u32>(1u, u_input.a, arg_1.c, arg_1.e))), select(min(reverseBits(73093u), firstLeadingBit(firstTrailingBit(arg_1.c))), ~abs(7022u), var_0.a || false));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = select(any(select(vec3<bool>(false, global0.a, global0.a), select(select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(42472u, 20u)]), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), !vec3<bool>(true, global3[_wgslsmith_index_u32(14407u, 20u)], global0.a), true), any(select(vec3<bool>(true, global0.a, true), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 20u)], global0.a), false)))), global0.a, all(!select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(arg_2.x, 20u)], true), select(vec2<bool>(true, true), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a)))));
    var var_1 = ~firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(42768u, 0u), arg_1.yw));
    global0 = Struct_2(global3[_wgslsmith_index_u32(~firstTrailingBit(~0u), 20u)], min(min(vec2<i32>(arg_0.x, global0.b.x), global0.b) & ~arg_0, global0.b));
    let var_2 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.b.x, arg_0.x, _wgslsmith_mod_i32(arg_0.x, 0i)), _wgslsmith_add_vec4_i32(min(countOneBits(vec4<i32>(global0.b.x, global0.b.x, 15187i, arg_0.x)), firstTrailingBit(vec4<i32>(1i, global0.b.x, global0.b.x, arg_0.x))), reverseBits(vec4<i32>(0i, -2147483647i, arg_0.x, global0.b.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-358f * -316f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f * 795f) * _wgslsmith_f_op_f32(trunc(-594f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_f_op_f32(min(-490f, -603f)), false)), -1456f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, -1000f, 375f, 212f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-202f, -307f, -1743f, -2175f), vec4<f32>(-834f, 1481f, 966f, -1171f), global0.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, 1854f, 273f, -373f)))));
    return -22377i;
}

fn func_2() -> f32 {
    let var_0 = min(2147483647i, func_4(global0.b, vec4<u32>(_wgslsmith_add_u32(3324u, ~u_input.a), u_input.a, ~(~u_input.a), ~_wgslsmith_add_u32(46699u, u_input.a)), _wgslsmith_div_vec4_u32(firstTrailingBit(func_3(global0.b.x, global1[_wgslsmith_index_u32(53404u, 19u)])), select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a) | vec4<u32>(18196u, 13077u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 42145u, 14578u) | vec4<u32>(1u, 7831u, 1u, 65834u), select(false, global3[_wgslsmith_index_u32(29540u, 20u)], false)))));
    var var_1 = true;
    var var_2 = _wgslsmith_div_i32(i32(-1i) * -21706i, var_0);
    global2 = array<vec3<i32>, 8>();
    var var_3 = _wgslsmith_f_op_f32(1240f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -314f))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2312f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(682f, -306f) * -2656f)) - _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(592f)))))));
}

fn func_1() -> u32 {
    let var_0 = reverseBits(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~0u), vec2<u32>(u_input.a, u_input.a) | (vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 44318u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 222f), -451f, _wgslsmith_f_op_f32(-400f * _wgslsmith_f_op_f32(-393f + -1175f))))));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_add_vec2_u32(var_0, abs(var_0));
    let var_4 = -global2[_wgslsmith_index_u32(var_0.x, 8u)];
    return _wgslsmith_mod_u32(var_2, _wgslsmith_div_u32(_wgslsmith_mod_u32(~69285u, _wgslsmith_clamp_u32(15467u, var_2, reverseBits(var_0.x))), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    var var_0 = func_1();
    let var_1 = 1447f;
    var var_2 = Struct_2(false, vec2<i32>(_wgslsmith_mult_i32(-8999i, -1i), 33856i));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, -536f, _wgslsmith_f_op_f32(trunc(380f)), _wgslsmith_f_op_f32(floor(var_1)))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 + var_1))))), -830f, var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(789f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-277f, var_1)) * _wgslsmith_f_op_f32(-1000f - 585f))))), vec4<bool>(true, (!global3[_wgslsmith_index_u32(4294967295u, 20u)] || (var_1 >= var_1)) | all(vec4<bool>(true, global0.a, global3[_wgslsmith_index_u32(u_input.a, 20u)], false)), !any(vec3<bool>(true, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1620f, 1627f), vec2<f32>(_wgslsmith_f_op_f32(var_3.x * -457f), var_1), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 20u)], global0.a))))), ~vec4<u32>(u_input.a, select(u_input.a, u_input.a, false), 1u, _wgslsmith_mult_u32(u_input.a, u_input.a)) & vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 5261u, 1u), vec3<u32>(u_input.a, 1u, u_input.a)), 119710u, u_input.a));
}


struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 7> = array<i32, 7>(20026i, 2147483647i, 42772i, 43532i, -21952i, -65503i, 26075i);

var<private> global2: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -24952i), vec2<i32>(-35432i, 19564i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 41594i), vec2<i32>(7582i, 37441i), vec2<i32>(1i, 70231i), vec2<i32>(1i, 15307i), vec2<i32>(i32(-2147483648), -655i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(7689i, -13305i), vec2<i32>(0i, -4641i));

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, false, vec2<bool>(true, false)), Struct_1(false, false, vec2<bool>(false, false)), Struct_1(true, false, vec2<bool>(false, true)), Struct_1(true, true, vec2<bool>(false, false)), Struct_1(true, true, vec2<bool>(true, false)), Struct_1(true, false, vec2<bool>(false, false)), Struct_1(true, false, vec2<bool>(false, true)), Struct_1(false, false, vec2<bool>(true, true)), Struct_1(true, false, vec2<bool>(true, true)));

var<private> global4: array<u32, 4> = array<u32, 4>(4294967295u, 30164u, 0u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    return _wgslsmith_div_f32(780f, arg_1);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(822f, 115f)) + _wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), -667f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1227f)))))));
    var var_1 = Struct_1(global0.a, any(vec4<bool>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(100613u, 4u)], 4u)] == 1u, false, !(!global0.c.x), false)), select(!vec2<bool>(0u <= u_input.d, true), !vec2<bool>(any(global0.c), false), !(countOneBits(-32936i) == ~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 4u)], 7u)])));
    var var_2 = vec2<bool>(!global0.c.x || any(!select(vec4<bool>(false, var_1.a, global0.a, true), vec4<bool>(true, global0.b, global0.a, false), true)), !(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, global0.c.x, global0.c.x, var_1.c.x), vec4<bool>(global0.c.x, true, var_1.a, false)))));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1113f * _wgslsmith_div_f32(-1437f, -384f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-784f, _wgslsmith_f_op_f32(abs(-816f))) + -373f), -468f));
    let var_4 = !select(!vec3<bool>(var_1.b, select(false, true, true), var_3.x > var_0), select(!select(vec3<bool>(true, var_1.b, var_2.x), vec3<bool>(global0.b, var_2.x, var_2.x), false), vec3<bool>(var_1.c.x, 44159i >= global1[_wgslsmith_index_u32(u_input.e.x, 7u)], var_3.x < var_0), any(vec3<bool>(true, true, true))), u_input.c > _wgslsmith_mult_u32(14151u, _wgslsmith_clamp_u32(u_input.e.x, global4[_wgslsmith_index_u32(1u, 4u)], global4[_wgslsmith_index_u32(0u, 4u)])));
    return 738f;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = -1142f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - var_0));
    let var_2 = min(~_wgslsmith_clamp_u32(~0u, u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4682u, global4[_wgslsmith_index_u32(29644u, 4u)]), vec2<u32>(u_input.c, global4[_wgslsmith_index_u32(40658u, 4u)])) ^ ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 4u)], 4u)]), _wgslsmith_mult_u32((_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(74322u, 4294967295u, global4[_wgslsmith_index_u32(27825u, 4u)], u_input.d)) | u_input.c) >> (~u_input.d % 32u), 35463u));
    let var_3 = firstTrailingBit(u_input.e.yxy);
    global2 = array<vec2<i32>, 13>();
    return global3[_wgslsmith_index_u32(~0u ^ _wgslsmith_clamp_u32(~var_3.x, var_2, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(var_3.xz, vec2<u32>(u_input.e.x, global4[_wgslsmith_index_u32(5853u, 4u)])), _wgslsmith_dot_vec3_u32(~var_3, ~u_input.e.xyx))), 9u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> bool {
    global0 = arg_0;
    global3 = array<Struct_1, 9>();
    let var_0 = Struct_1(select(all(select(arg_2, !arg_2, vec3<bool>(false, false, arg_0.a))), all(!arg_2), 17217u >= global4[_wgslsmith_index_u32(reverseBits(1u), 4u)]), _wgslsmith_clamp_u32(1u, 0u, countOneBits(global4[_wgslsmith_index_u32(u_input.c, 4u)] ^ u_input.d)) > u_input.e.x, vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1)), -956f)) == 343f, true));
    let var_1 = global2[_wgslsmith_index_u32(u_input.e.x, 13u)];
    global0 = var_0;
    return !(global0.c.x && global0.a);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec2<i32>, 13>();
    global2 = array<vec2<i32>, 13>();
    global4 = array<u32, 4>();
    var var_0 = global3[_wgslsmith_index_u32(~1u, 9u)];
    var_0 = func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(~firstTrailingBit(4698i), -(i32(-1i) * -27571i), _wgslsmith_clamp_i32(-14328i, global1[_wgslsmith_index_u32(0u, 7u)], ~u_input.a), 1i), -_wgslsmith_add_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 7u)], 33506i, u_input.a, global1[_wgslsmith_index_u32(u_input.d, 7u)]), ~vec4<i32>(5356i, 0i, global1[_wgslsmith_index_u32(u_input.c, 7u)], -7285i)), abs(~(~vec4<i32>(u_input.b, -29015i, -54580i, 2147483647i)))));
    return arg_0;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -arg_1.xz;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.c, 4u)];
    global4 = array<u32, 4>();
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.e.zy, ~u_input.e.wx), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.c, 4u)], u_input.c), 4u)], ~min(4294967295u, 23146u)) & 1u), 4u)];
    return Struct_1(all(vec3<bool>(arg_2.c.x, any(!global0.c), select(global0.a, global0.b | global0.a, true))), func_1(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-15396i, global1[_wgslsmith_index_u32(u_input.e.x, 7u)], 2147483647i, u_input.b), vec4<i32>(-23862i, 7630i, arg_1.x, 22320i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_0.x, global1[_wgslsmith_index_u32(43808u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<i32>(-2147483647i, 22278i, -953i, global1[_wgslsmith_index_u32(u_input.d, 7u)]))))).c.x, arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec4<u32>(29331u << (reverseBits(u_input.e.x) % 32u), ~(~1u), 79507u, ~0u) ^ vec4<u32>(reverseBits(4294967295u), 4294967295u, 20419u, global4[_wgslsmith_index_u32(u_input.c, 4u)])) << (~u_input.e % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-914f)));
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(2147483647i, u_input.b));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-53066i, u_input.a), -1i << (abs(0u) % 32u), -_wgslsmith_div_i32(1i, 1427i), ~(-global1[_wgslsmith_index_u32(1442u, 7u)])), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, -1i, 69711i, u_input.b), abs(-vec4<i32>(u_input.b, 0i, global1[_wgslsmith_index_u32(4294967295u, 7u)], 2147483647i)))), countOneBits(-1i));
    global0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1000f, 2505f) + vec3<f32>(-1237f, -1126f, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)), select(-1i >= u_input.b, true, false)))), ~vec3<i32>(~_wgslsmith_sub_i32(-32978i, -2147483647i), -29451i, -u_input.a), func_5(global3[_wgslsmith_index_u32(~reverseBits(countOneBits(global4[_wgslsmith_index_u32(var_0.x, 4u)])), 9u)], 34410u, func_4(func_1(~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 2147483647i, 6578i, -24720i)), -3010f, !(!vec3<bool>(global0.c.x, global0.c.x, false))), func_1(~vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.c, 7u)], 1i, 2147483647i) >> (vec4<u32>(2981u, global4[_wgslsmith_index_u32(var_0.x, 4u)], 92248u, 4294967295u) % vec4<u32>(32u)))));
    global3 = array<Struct_1, 9>();
    var var_4 = Struct_1(!all(select(select(vec4<bool>(global0.b, global0.a, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, global0.a, true, global0.a), false || global0.a)), true, vec2<bool>(global0.c.x, (abs(-2147483647i) == max(u_input.b, 12935i)) || (false & global0.b)));
    var var_5 = vec2<u32>(~reverseBits(reverseBits(global4[_wgslsmith_index_u32(abs(0u), 4u)])), _wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec2_u32(u_input.e.ww, vec2<u32>(1u, 117917u))), _wgslsmith_add_u32(var_0.x, u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, ~u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(953f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-485f, var_1), vec2<f32>(442f, 1171f), any(vec3<bool>(global0.a, true, true))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2042f) - var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 + 104f), _wgslsmith_div_f32(119f, var_1)))), all(!select(vec4<bool>(true, true, global0.b, var_4.a), vec4<bool>(true, true, var_4.b, true), vec4<bool>(var_4.b, var_4.b, global0.a, true))))), abs(~17340u));
}


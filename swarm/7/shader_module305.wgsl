struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<Struct_2, 5>;

var<private> global3: array<i32, 32> = array<i32, 32>(1i, 0i, -18019i, 2147483647i, -45973i, 2147483647i, 31245i, 7450i, 0i, i32(-2147483648), -1i, i32(-2147483648), -1i, 0i, 34606i, i32(-2147483648), 892i, 33146i, -13435i, 10833i, 1i, 2147483647i, i32(-2147483648), -26224i, 2147483647i, 25023i, 20088i, 3188i, -1i, 0i, 15275i, 0i);

var<private> global4: vec2<f32> = vec2<f32>(777f, 1275f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec4<u32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(arg_1, 22486u, 24408u)), vec3<u32>(global0.a, abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 4294967295u), vec2<u32>(47713u, 7359u)))), vec3<u32>(_wgslsmith_mod_u32(1u, global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1, ~0u, ~0u, ~0u), select(vec4<u32>(4294967295u, global0.a, 4294967295u, global0.a), vec4<u32>(0u, 1u, 58360u, 1u), select(vec4<bool>(global0.b, true, false, global0.c), vec4<bool>(global0.b, global0.c, global0.b, global0.b), vec4<bool>(false, global0.b, global0.b, true)))), ~global0.a)), 32u)];
    var var_1 = Struct_2(Struct_1(~reverseBits(_wgslsmith_mult_u32(19374u, 15714u)), select(!(!vec3<bool>(false, true, global0.c)), !vec3<bool>(true, global0.c, global0.b), !global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global4.x * -1019f)) - arg_0.x)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~global0.a, ~global0.a), ~(~vec2<u32>(51206u, 4294967295u))), ~vec2<u32>(~4294967295u, abs(global0.a))), Struct_1(_wgslsmith_sub_u32(~global0.a, arg_1), vec3<bool>(global0.c & (arg_1 != 0u), global0.c, true), 996f), arg_1);
    global3 = array<i32, 32>();
    global0 = Struct_3(_wgslsmith_mod_u32(25418u, min(~select(29937u, global0.a, global0.b), max(_wgslsmith_mult_u32(var_1.d, 4294967295u), _wgslsmith_div_u32(global0.a, 0u)))), true, true);
    var var_2 = Struct_2(var_1.c, var_1.b, Struct_1(79912u, vec3<bool>(select(true, true, global0.c), all(select(vec2<bool>(true, false), var_1.a.b.zy, var_1.c.b.xy)), any(var_1.c.b.yx)), global4.x), _wgslsmith_add_u32(~0u, reverseBits(firstTrailingBit(global0.a)) & 4294967295u));
    return ~(~vec4<u32>(~_wgslsmith_div_u32(var_2.c.a, global0.a), ~_wgslsmith_add_u32(var_1.d, global0.a), 0u, _wgslsmith_div_u32(min(arg_1, 4294967295u), var_2.d)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<i32, 32>();
    var var_0 = arg_3;
    let var_1 = abs(global3[_wgslsmith_index_u32(countOneBits(global0.a), 32u)]);
    var var_2 = func_3(vec3<f32>(-395f, arg_2.x, -732f), ~_wgslsmith_dot_vec2_u32(arg_0.b, arg_0.b));
    global3 = array<i32, 32>();
    return arg_1.a;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> bool {
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2370f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, _wgslsmith_div_f32(-1000f, 357f)))));
    var var_0 = Struct_2(Struct_1(~(func_3(vec3<f32>(1091f, global4.x, arg_2.c), global0.a).x << (1u % 32u)), vec3<bool>(!arg_0, true || global0.b, arg_0), 2365f), abs(vec2<u32>(7966u, _wgslsmith_mod_u32(45065u, countOneBits(27104u)))), func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(arg_2.a, 81106u), firstTrailingBit(4294967295u)), select(firstLeadingBit(vec2<u32>(arg_2.a, global0.a)), vec2<u32>(global0.a, global0.a), any(vec3<bool>(global0.c, false, false)))), 26u)], Struct_2(func_2(Struct_2(Struct_1(global0.a, arg_2.b, global4.x), vec2<u32>(1u, 26132u), Struct_1(84887u, vec3<bool>(global0.c, false, false), arg_2.c), 4294967295u), Struct_2(Struct_1(18166u, vec3<bool>(false, arg_0, true), 565f), vec2<u32>(22697u, global0.a), arg_2, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, -2219f, arg_2.c)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.a, arg_2.a), abs(vec2<u32>(global0.a, arg_2.a))), func_2(global2[_wgslsmith_index_u32(~1u, 5u)], global1[_wgslsmith_index_u32(2318u, 26u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, arg_2.c, arg_2.c, -668f)), ~vec3<i32>(1i, u_input.a.x, 0i)), 4294967295u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(111f, 983f, global4.x, global4.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1023f, arg_2.c, -394f) - vec4<f32>(-465f, 1057f, 913f, arg_2.c)), !vec4<bool>(false, true, global0.c, false))))), min(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 0i, 84488i), vec3<i32>(u_input.a.x, arg_1, -6255i), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(29945u, 32u)], global3[_wgslsmith_index_u32(arg_2.a, 32u)])), select(vec3<i32>(-31292i, arg_1, 1i), vec3<i32>(u_input.a.x, -34849i, -8615i), arg_0)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a.x, 32241i, u_input.a.x), vec3<i32>(1i, u_input.a.x, global3[_wgslsmith_index_u32(arg_2.a, 32u)]), arg_3), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(arg_2.a, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<i32>(global3[_wgslsmith_index_u32(global0.a, 32u)], arg_1, 0i)), vec3<i32>(1i, 2147483647i, 2147483647i) ^ vec3<i32>(3672i, -1632i, arg_1)))), abs(global0.a) & _wgslsmith_mult_u32(47129u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, 94232u, global0.a), vec4<u32>(4294967295u, 52653u, 4294967295u, arg_2.a))));
    let var_1 = ~_wgslsmith_clamp_u32(~(~global0.a), arg_2.a, 1u) << (~global0.a % 32u);
    let var_2 = vec2<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~var_0.b, vec2<u32>(global0.a, arg_2.a)), 32u)], _wgslsmith_div_i32(-20689i, arg_1));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, arg_2.c, var_0.c.c)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2.c * arg_2.c), -821f, -272f)));
    return false;
}

fn func_1() -> Struct_3 {
    global0 = Struct_3(global0.a, false, true);
    global0 = Struct_3(~(~(1u ^ global0.a)) << (1u % 32u), global0.c, (1u == _wgslsmith_add_u32(_wgslsmith_div_u32(global0.a, 4294967295u), ~global0.a)) || (true & func_4(true, u_input.a.x, func_2(Struct_2(Struct_1(0u, vec3<bool>(false, true, global0.c), global4.x), vec2<u32>(global0.a, 40781u), Struct_1(global0.a, vec3<bool>(global0.b, false, global0.b), global4.x), global0.a), global1[_wgslsmith_index_u32(4294967295u, 26u)], vec4<f32>(2905f, -1000f, -1000f, 1130f), vec3<i32>(-1i, global3[_wgslsmith_index_u32(global0.a, 32u)], 2147483647i)), func_2(Struct_2(Struct_1(4294967295u, vec3<bool>(global0.b, global0.b, true), 119f), vec2<u32>(global0.a, 16015u), Struct_1(0u, vec3<bool>(false, global0.b, global0.c), global4.x), global0.a), Struct_2(Struct_1(0u, vec3<bool>(false, global0.b, false), -572f), vec2<u32>(global0.a, global0.a), Struct_1(76370u, vec3<bool>(false, global0.b, true), global4.x), 77488u), vec4<f32>(global4.x, global4.x, global4.x, global4.x), vec3<i32>(-45051i, global3[_wgslsmith_index_u32(global0.a, 32u)], 0i)).b.x)));
    global4 = vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1024f))));
    let var_0 = vec3<bool>(any(vec4<bool>(true, true, any(vec3<bool>(global0.b, global0.b, false)), func_4(select(global0.c, global0.c, true), -2147483647i, Struct_1(global0.a, vec3<bool>(global0.c, true, global0.c), global4.x), global4.x == -258f))), select(any(!select(vec4<bool>(false, global0.b, global0.c, false), vec4<bool>(true, false, true, false), global0.b)), global0.c, false), false);
    let var_1 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a, 0u), 5u)], Struct_2(Struct_1(~_wgslsmith_sub_u32(global0.a, global0.a), select(!var_0, !vec3<bool>(var_0.x, true, global0.c), var_0.x), _wgslsmith_f_op_f32(1f * -288f)), max(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(11947u, global0.a)), vec2<u32>(46674u, 29180u)), vec2<u32>(4294967295u, abs(88886u))), Struct_1(global0.a, !func_2(global1[_wgslsmith_index_u32(global0.a, 26u)], Struct_2(Struct_1(global0.a, var_0, -1831f), vec2<u32>(global0.a, 59520u), Struct_1(global0.a, vec3<bool>(true, global0.c, global0.c), 1293f), 4294967295u), vec4<f32>(-915f, global4.x, -2051f, global4.x), vec3<i32>(55757i, u_input.a.x, -2147483647i)).b, _wgslsmith_f_op_f32(f32(-1f) * -717f)), ~global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), 1080f, _wgslsmith_f_op_f32(1644f * global4.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, -515f, global4.x, global4.x), vec4<f32>(global4.x, -1000f, -1848f, 1578f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, global4.x, 455f, 1191f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global4.x)), 1000f, _wgslsmith_f_op_f32(-global4.x), -532f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.x, -512f, global4.x, 724f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1124f, global4.x, global4.x, global4.x)), all(vec3<bool>(var_0.x, false, false)))))), countOneBits(vec3<i32>(1i, 1i, 1i) ^ -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -5071i, -2732i), vec3<i32>(1083i, u_input.a.x, -1i))));
    return Struct_3(~global0.a << (~83598u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-3001f)))) <= global4.x, !(!any(select(vec2<bool>(var_0.x, false), vec2<bool>(true, global0.b), global0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global2 = array<Struct_2, 5>();
    global0 = Struct_3(global0.a, !all(vec2<bool>(true, global0.c)), all(vec2<bool>(true, !global0.b && true)));
    global0 = Struct_3(global0.a, (global3[_wgslsmith_index_u32(98953u, 32u)] <= 1i) | !(firstTrailingBit(u_input.a.x) >= firstTrailingBit(global3[_wgslsmith_index_u32(79495u, 32u)])), global0.b);
    var var_0 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, 0u);
}


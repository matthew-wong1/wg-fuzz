struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: array<vec2<bool>, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_5(-1i | u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1707f * -192f) * _wgslsmith_f_op_f32(trunc(239f))) - -494f));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(399f, -938f))))));
    let var_2 = true;
    global0 = array<vec2<i32>, 2>();
    let var_3 = var_1;
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, max(u_input.b, 44248u)), 11u)];
}

fn func_2() -> Struct_2 {
    let var_0 = select(u_input.b, 4294967295u, -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(641f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f))));
    let var_1 = Struct_1(!global1[_wgslsmith_index_u32(u_input.b, 11u)], true, func_3(), 1i);
    global1 = array<vec2<bool>, 11>();
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1401f, -985f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1740f, -1556f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -313f))))) * vec2<f32>(1f, 1f)));
    let var_3 = !all(!select(!vec3<bool>(var_1.b, false, var_1.b), select(vec3<bool>(var_1.c.x, var_1.b, var_1.c.x), vec3<bool>(var_1.a.x, false, false), true), var_1.a.x));
    return Struct_2(~(vec3<i32>(-1i) * -abs(vec3<i32>(var_1.d, 0i, 40400i))), Struct_1(vec2<bool>(!(var_0 >= 9962u), var_3), var_1.b, global1[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, var_1.d)), firstTrailingBit(select(vec3<i32>(2147483647i, u_input.c.x, var_1.d), vec3<i32>(var_1.d, var_1.d, 0i), var_3)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -2147483647i, 2147483647i), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, var_1.d, -2840i)), countOneBits(max(1i, -u_input.c.x)), max(~943i, u_input.c.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(18828u, 40636u, 0u, arg_1.a.x), vec4<u32>(17043u, 50471u, u_input.b, arg_1.a.x))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_1.a.x, 102654u, 160u) | _wgslsmith_add_u32(10813u, 25968u), ~(~25824u))), u_input.b);
    var var_1 = Struct_5(-56573i, _wgslsmith_f_op_f32(select(895f, 1f, true)));
    var var_2 = arg_1.d.b;
    global0 = array<vec2<i32>, 2>();
    var var_3 = _wgslsmith_mult_u32(31406u, 90607u);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_2(-vec3<i32>(arg_0, _wgslsmith_div_i32(arg_0 & -12051i, reverseBits(u_input.c.x)), u_input.c.x), Struct_1(global1[_wgslsmith_index_u32(~1u, 11u)], true || (true || (true | arg_1)), vec2<bool>(!any(vec3<bool>(true, arg_1, false)), true), arg_0), arg_0);
    let var_1 = func_4(var_0.c, Struct_3(u_input.d.yyw, func_2(), var_0.b, Struct_2(abs(~var_0.a), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 11u)], true, select(global1[_wgslsmith_index_u32(43370u, 11u)], var_0.b.c, global1[_wgslsmith_index_u32(u_input.d.x, 11u)]), 24773i), _wgslsmith_div_i32(-16123i, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-407f, -1607f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f))))), select(-3670i, ~(-arg_0 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 49155u), u_input.d.wxz) % 32u)), true));
    var_0 = func_2();
    let var_2 = var_1.c.d;
    let var_3 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(957f, -1000f) - vec2<f32>(-180f, -843f)) - vec2<f32>(1019f, -1423f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-348f, -154f), vec2<f32>(-313f, 819f))), vec2<f32>(-634f, -493f), 1u < u_input.b)) + vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1163f)))));
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~0i, 14101i);
    var var_1 = Struct_1(func_1(~((var_0.x & -22187i) >> (~u_input.d.x % 32u)), true), all(vec2<bool>(true, true)) && true, vec2<bool>(false, true), u_input.c.x);
    var var_2 = func_2();
    var_2 = func_4(3133i, func_4(-1i, func_4(var_1.d, Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(3380u, u_input.b, 2743u), u_input.d.ywz), func_4(-49519i, Struct_3(vec3<u32>(45950u, u_input.b, 1u), Struct_2(vec3<i32>(2147483647i, 1i, -1i), Struct_1(vec2<bool>(false, var_2.b.b), var_1.a.x, vec2<bool>(true, false), u_input.c.x), 37420i), var_2.b, Struct_2(vec3<i32>(u_input.c.x, 0i, var_1.d), var_2.b, -44322i)), 384f, var_2.c).d, var_2.b, func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1962f - 246f) * _wgslsmith_f_op_f32(-233f - -811f)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, var_1.d, -1i, 1i), vec4<i32>(var_2.c, 0i, 0i, u_input.c.x)), select(21993i, var_1.d, var_2.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-642f, -1000f)))), -1i), _wgslsmith_div_f32(-1627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1185f, -1071f)))), u_input.c.x).d;
    global1 = array<vec2<bool>, 11>();
    global0 = array<vec2<i32>, 2>();
    var_2 = func_4(-2147483647i, func_4(var_2.c, func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, 19355i, -2147483647i), vec4<i32>(var_0.x, var_2.b.d, 1i, u_input.c.x)), func_4(_wgslsmith_dot_vec3_i32(var_2.a, var_2.a), Struct_3(u_input.d.zyz, Struct_2(var_2.a, var_2.b, var_2.b.d), var_2.b, Struct_2(vec3<i32>(33297i, 1i, 25430i), var_2.b, 1i)), _wgslsmith_f_op_f32(1692f + 347f), -6657i), -1000f, countOneBits(var_0.x)), 776f, reverseBits(var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f), -256f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-735f))))), ~21545i).d;
    let var_3 = Struct_1(func_1(_wgslsmith_dot_vec2_i32(~var_2.a.yy, -var_2.a.zz >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 67257u), vec2<u32>(u_input.a.x, u_input.b)) % vec2<u32>(32u))), true), true || !(u_input.b <= u_input.d.x), var_1.a, -var_2.c);
    var_2 = func_4(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-18621i, 12493i), firstTrailingBit(var_2.a.yz)), _wgslsmith_sub_vec2_i32(reverseBits(global0[_wgslsmith_index_u32(25418u, 2u)]), abs(vec2<i32>(18987i, -1i)))) | (i32(-1i) * -_wgslsmith_sub_i32(u_input.c.x, -2147483647i)), func_4(-4692i, func_4(_wgslsmith_dot_vec4_i32(select(vec4<i32>(58270i, 0i, var_1.d, 1i), vec4<i32>(-81235i, u_input.c.x, var_2.b.d, var_3.d), vec4<bool>(var_1.a.x, false, true, var_2.b.c.x)), vec4<i32>(1i, 0i, 41109i, -22664i)), Struct_3(vec3<u32>(20784u, u_input.b, u_input.d.x), Struct_2(vec3<i32>(u_input.c.x, 1i, var_1.d), Struct_1(vec2<bool>(true, false), false, var_1.c, var_1.d), -2147483647i), var_3, Struct_2(vec3<i32>(var_0.x, 1220i, var_3.d), Struct_1(global1[_wgslsmith_index_u32(u_input.d.x, 11u)], var_1.a.x, global1[_wgslsmith_index_u32(23595u, 11u)], var_3.d), -11997i)), 382f, (var_2.b.d ^ var_3.d) | _wgslsmith_dot_vec4_i32(vec4<i32>(46710i, u_input.c.x, var_3.d, u_input.c.x), vec4<i32>(var_3.d, u_input.c.x, var_1.d, 2147483647i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1300f + _wgslsmith_div_f32(-964f, 258f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(306f, 443f, true)) * _wgslsmith_f_op_f32(1420f * 1175f)))), u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(-3199f + 760f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(627f, -916f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(565f, 291f) - -1919f))), var_3.d).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.x, ~abs(~_wgslsmith_clamp_i32(30222i, var_1.d, 26143i)), u_input.d.x, u_input.a.x, ~select(~(~u_input.d), u_input.d, !(!vec4<bool>(var_1.c.x, false, var_1.c.x, var_2.b.c.x))));
}


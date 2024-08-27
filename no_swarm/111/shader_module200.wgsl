struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true));

var<private> global1: vec3<u32>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 28>;

var<private> global4: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(493f, 447f), vec2<f32>(1280f, -2049f), vec2<f32>(-719f, 334f), vec2<f32>(633f, -941f), vec2<f32>(449f, -1891f), vec2<f32>(1000f, -208f), vec2<f32>(759f, -1000f), vec2<f32>(752f, 763f), vec2<f32>(-612f, 527f), vec2<f32>(1000f, -552f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = true;
    var var_1 = arg_1.c;
    let var_2 = arg_1.d;
    var var_3 = 1i;
    let var_4 = true;
    return global0[_wgslsmith_index_u32(arg_0.a.x, 8u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-341f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.e, arg_2.e))) * -747f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(288f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x <= -562f)))), -1740f);
    global2 = (!(arg_2.c.a == _wgslsmith_clamp_i32(u_input.a.x, arg_2.c.a, u_input.c.x)) & (44882u == u_input.b.x)) || !any(select(!arg_3.b.yzy, arg_3.b.wxw, true));
    global3 = array<Struct_2, 28>();
    var var_1 = arg_1.d.x | !arg_3.d.x;
    var_1 = arg_1.d.x;
    return arg_2.c;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-38008i, u_input.a.x, arg_0), u_input.c.yyz), vec3<i32>(arg_0, 1i, u_input.c.x) << (arg_2.a.yxx % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 0i, arg_0), -vec3<i32>(56555i, 2147483647i, 35028i))) & min(abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a.wzx), u_input.a.xzz)), arg_0);
    var var_1 = _wgslsmith_dot_vec4_u32(max(u_input.b, abs(u_input.b)), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.b, arg_1.a), ~(~(~arg_2.a))));
    global4 = array<vec2<f32>, 10>();
    let var_2 = -1649f;
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, global1.x, _wgslsmith_mod_u32(0u, 1u), abs(u_input.b.x)), vec4<u32>(_wgslsmith_clamp_u32(~1u, u_input.e, arg_2.a.x >> (_wgslsmith_mod_u32(8158u, arg_1.a.x) % 32u)), _wgslsmith_dot_vec2_u32(global1.yx, vec2<u32>(_wgslsmith_clamp_u32(arg_1.a.x, 892u, global1.x), _wgslsmith_sub_u32(global1.x, arg_1.a.x))), 22422u, select(arg_1.a.x, ~(~17820u), true)));
    return _wgslsmith_sub_u32(~firstLeadingBit(1u), countOneBits(_wgslsmith_mod_u32(0u, u_input.b.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> bool {
    var var_0 = func_4(-_wgslsmith_dot_vec3_i32(u_input.c.yxy, ~abs(vec3<i32>(1i, 1i, u_input.a.x))), Struct_3(vec4<u32>(arg_3.x, arg_1.x, abs(arg_1.x), 36893u) << (_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(21983u, global1.x, global1.x, 59537u)) % vec4<u32>(32u)), func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.x - -890f), _wgslsmith_f_op_f32(-arg_2.x)), Struct_2(~(-26472i), func_2(Struct_3(u_input.b, Struct_1(u_input.a.x)), Struct_2(u_input.a.x, global0[_wgslsmith_index_u32(10729u, 8u)], Struct_1(1i), vec3<bool>(arg_0, arg_0, true), arg_2.x), Struct_3(u_input.b, Struct_1(u_input.a.x)), Struct_1(u_input.c.x)), Struct_1(1i), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0), false), arg_2.x), Struct_2(u_input.a.x, vec4<bool>(true, arg_0, arg_0, arg_0), Struct_1(u_input.c.x), !vec3<bool>(arg_0, arg_0, arg_0), 373f), Struct_2(u_input.c.x | u_input.c.x, func_2(Struct_3(vec4<u32>(55327u, u_input.e, arg_1.x, 0u), Struct_1(u_input.c.x)), global3[_wgslsmith_index_u32(u_input.d.x, 28u)], Struct_3(vec4<u32>(arg_1.x, 45329u, arg_3.x, 3509u), Struct_1(-21951i)), Struct_1(u_input.c.x)), Struct_1(-3391i), vec3<bool>(arg_0, arg_0, arg_0), -131f))), Struct_3(~u_input.b, func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-791f, -1619f, arg_2.x) + vec3<f32>(arg_2.x, arg_2.x, 668f)))), Struct_2(u_input.a.x, !vec4<bool>(arg_0, arg_0, arg_0, false), Struct_1(u_input.a.x), select(vec3<bool>(true, false, arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, true)), _wgslsmith_div_f32(1292f, 169f)), Struct_2(u_input.c.x ^ 55741i, !global0[_wgslsmith_index_u32(u_input.e, 8u)], Struct_1(1i), vec3<bool>(false, arg_0, true), -1311f), global3[_wgslsmith_index_u32(1u, 28u)])));
    let var_1 = _wgslsmith_mod_u32(arg_1.x | countOneBits(_wgslsmith_mod_u32(u_input.d.x, global1.x)), 12473u) << (_wgslsmith_sub_u32((max(0u, 3157u) ^ select(arg_3.x, arg_1.x, false)) >> (arg_1.x % 32u), 1651u) % 32u);
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1802f), arg_2.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.x, 406f) * vec3<f32>(-685f, arg_2.x, -1330f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, arg_2.x, arg_2.x))))), Struct_2(-12586i, global0[_wgslsmith_index_u32(102631u ^ _wgslsmith_div_u32(~30056u, var_1 >> (18575u % 32u)), 8u)], func_3(vec3<f32>(_wgslsmith_f_op_f32(max(279f, arg_2.x)), _wgslsmith_f_op_f32(sign(1860f)), _wgslsmith_f_op_f32(-arg_2.x)), Struct_2(firstTrailingBit(2147483647i), vec4<bool>(arg_0, false, true, arg_0), Struct_1(u_input.a.x), vec3<bool>(true, arg_0, arg_0), _wgslsmith_f_op_f32(-arg_2.x)), global3[_wgslsmith_index_u32(max(43981u, ~1u), 28u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1.x, ~39282u), 28u)]), vec3<bool>(u_input.a.x < (i32(-1i) * -1i), _wgslsmith_mult_u32(u_input.d.x, global1.x) > 39242u, all(vec3<bool>(false, arg_0, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x)))), Struct_2(_wgslsmith_mult_i32(u_input.a.x, -u_input.a.x) >> (_wgslsmith_add_u32(~arg_3.x, global1.x) % 32u), global0[_wgslsmith_index_u32(95009u, 8u)], Struct_1(2147483647i), vec3<bool>((arg_1.x >> (global1.x % 32u)) > min(arg_3.x, arg_3.x), false, !all(vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(-arg_2.x)), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(u_input.a.x, -3489i), ~u_input.c.x, u_input.c.x), min(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -1i) << (u_input.b % vec4<u32>(32u)), u_input.a | vec4<i32>(1i, -3616i, u_input.c.x, 2147483647i))), !(!vec4<bool>(arg_0, true, false, arg_0)), Struct_1(func_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, -1000f, arg_2.x))), Struct_2(u_input.c.x, vec4<bool>(arg_0, arg_0, arg_0, true), Struct_1(-29590i), vec3<bool>(arg_0, arg_0, false), 877f), global3[_wgslsmith_index_u32(abs(arg_1.x), 28u)], Struct_2(23967i, vec4<bool>(false, false, false, true), Struct_1(1i), vec3<bool>(arg_0, arg_0, arg_0), -676f)).a), vec3<bool>(!arg_0, true, arg_0), arg_2.x));
    global3 = array<Struct_2, 28>();
    global0 = array<vec4<bool>, 8>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    let var_0 = ~u_input.c.x;
    var var_1 = vec3<bool>(func_1(_wgslsmith_mod_u32(global1.x, u_input.b.x) == _wgslsmith_div_u32(global1.x, 1u), ~(global1.yy << (max(global1.yx, vec2<u32>(global1.x, 57305u)) % vec2<u32>(32u))), global4[_wgslsmith_index_u32(firstLeadingBit(countOneBits(abs(53273u))), 10u)], max(vec3<u32>(42138u, firstTrailingBit(u_input.e), global1.x), ~_wgslsmith_add_vec3_u32(u_input.b.zzy, u_input.d))), any(func_2(Struct_3(~vec4<u32>(global1.x, 25813u, 26668u, 33485u), func_3(vec3<f32>(1599f, -501f, 482f), global3[_wgslsmith_index_u32(global1.x, 28u)], Struct_2(66513i, vec4<bool>(true, false, true, false), Struct_1(u_input.c.x), vec3<bool>(true, false, false), -767f), Struct_2(var_0, global0[_wgslsmith_index_u32(48939u, 8u)], Struct_1(var_0), vec3<bool>(false, true, true), -444f))), Struct_2(abs(var_0), global0[_wgslsmith_index_u32(~25060u, 8u)], func_3(vec3<f32>(1473f, 2183f, 1091f), global3[_wgslsmith_index_u32(global1.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], Struct_2(u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], Struct_1(var_0), vec3<bool>(false, false, true), 495f)), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(ceil(480f))), Struct_3(u_input.b & vec4<u32>(73588u, global1.x, global1.x, u_input.e), func_3(vec3<f32>(333f, 1200f, 663f), global3[_wgslsmith_index_u32(global1.x, 28u)], global3[_wgslsmith_index_u32(global1.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)])), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, 647f, 475f)), Struct_2(var_0, vec4<bool>(false, false, false, false), Struct_1(var_0), vec3<bool>(false, false, false), -348f), Struct_2(u_input.a.x, global0[_wgslsmith_index_u32(43089u, 8u)], Struct_1(2147483647i), vec3<bool>(true, true, true), -1287f), global3[_wgslsmith_index_u32(~u_input.d.x, 28u)]))), !func_1(true, global1.zz, global4[_wgslsmith_index_u32((u_input.e | 4294967295u) >> (_wgslsmith_sub_u32(global1.x, 54025u) % 32u), 10u)], ~(~u_input.d)));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(512f, -745f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(165f, -542f)) * -168f))))));
    var var_3 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, var_2.x, 535f)), Struct_2(1i, !vec4<bool>(!var_1.x, func_2(Struct_3(u_input.b, Struct_1(2147483647i)), Struct_2(-30898i, global0[_wgslsmith_index_u32(1u, 8u)], Struct_1(-1i), vec3<bool>(false, var_1.x, var_1.x), var_2.x), Struct_3(vec4<u32>(global1.x, 9439u, 33458u, 1u), Struct_1(-1i)), Struct_1(u_input.c.x)).x, true, true), func_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(149f, var_2.x, var_2.x))), global3[_wgslsmith_index_u32(global1.x, 28u)], Struct_2(abs(u_input.c.x), global0[_wgslsmith_index_u32(23522u, 8u)], Struct_1(2147483647i), !vec3<bool>(var_1.x, false, var_1.x), var_2.x), global3[_wgslsmith_index_u32(109319u, 28u)]), vec3<bool>(true, var_1.x, any(vec3<bool>(var_1.x, false, var_1.x)) & var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -382f))))), Struct_2(firstTrailingBit(var_0), select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !vec4<bool>(true, var_1.x, false, false), vec4<bool>(true, false, var_1.x, true)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1913f))), Struct_2(var_0, global0[_wgslsmith_index_u32(global1.x, 8u)], Struct_1(22108i), !vec3<bool>(var_1.x, var_1.x, true), -642f), Struct_2(var_0, vec4<bool>(var_1.x, false, true, true), func_3(vec3<f32>(var_2.x, var_2.x, var_2.x), Struct_2(0i, vec4<bool>(var_1.x, true, false, var_1.x), Struct_1(u_input.a.x), vec3<bool>(false, var_1.x, var_1.x), 120f), global3[_wgslsmith_index_u32(global1.x, 28u)], Struct_2(u_input.c.x, global0[_wgslsmith_index_u32(global1.x, 8u)], Struct_1(var_0), vec3<bool>(false, var_1.x, false), var_2.x)), vec3<bool>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_f32(floor(579f))), global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), !(!vec3<bool>(true, var_1.x, var_1.x)), var_2.x), global3[_wgslsmith_index_u32(~1u, 28u)]);
    let var_4 = global3[_wgslsmith_index_u32(min(reverseBits(global1.x) >> (u_input.e % 32u), _wgslsmith_sub_u32(4294967295u, global1.x)), 28u)];
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(global1.xy | vec2<u32>(0u, global1.x), u_input.d.yz)), ~u_input.b.x, global1.x, func_4(var_3.a, Struct_3(vec4<u32>(u_input.e, 85941u, u_input.d.x, global1.x) >> (u_input.b % vec4<u32>(32u)), func_3(vec3<f32>(-1089f, var_4.e, -1882f), global3[_wgslsmith_index_u32(u_input.d.x, 28u)], Struct_2(u_input.c.x, vec4<bool>(var_1.x, false, true, var_1.x), var_4.c, vec3<bool>(false, true, var_4.b.x), var_4.e), global3[_wgslsmith_index_u32(27810u, 28u)])), Struct_3(u_input.b, Struct_1(u_input.a.x)))), _wgslsmith_mult_u32(27048u, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u >> (u_input.b.x % 32u), global1.x), ~1u)), vec2<u32>(_wgslsmith_mod_u32(abs(reverseBits(global1.x)), func_4(1i, Struct_3(u_input.b, var_4.c), Struct_3(u_input.b, var_4.c))), select(global1.x, 85233u, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.e))));
}


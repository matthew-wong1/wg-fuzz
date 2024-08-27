struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(33358u, 1u), vec2<u32>(2793u, 4294967295u), vec2<u32>(25885u, 32165u), vec2<u32>(9852u, 3657u), vec2<u32>(37828u, 10370u), vec2<u32>(1u, 1u), vec2<u32>(62754u, 72268u), vec2<u32>(4294967295u, 86275u), vec2<u32>(66708u, 1u), vec2<u32>(4294967295u, 60017u), vec2<u32>(0u, 1u), vec2<u32>(68327u, 42060u), vec2<u32>(0u, 9726u), vec2<u32>(1u, 30091u), vec2<u32>(73726u, 24760u), vec2<u32>(30886u, 0u), vec2<u32>(44063u, 0u));

var<private> global1: array<vec3<f32>, 25>;

var<private> global2: array<Struct_3, 16>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(17351u, 1u, 0u, 16698u), true), vec2<f32>(1142f, -453f), vec4<f32>(414f, 174f, -160f, 1935f), vec2<bool>(true, true), -362f);

var<private> global4: array<vec3<i32>, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x));
    let var_1 = Struct_2(Struct_1(~vec4<u32>(global3.a.a.x, 1u, global3.a.a.x, global3.a.a.x), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global3.c.yz)) + vec2<f32>(-831f, _wgslsmith_f_op_f32(exp2(global3.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(311f, global3.e, -454f, -220f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e, var_0, -1383f, -1073f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 403f, var_0, global3.c.x)) + vec4<f32>(global3.b.x, 444f, global3.c.x, -1276f)))), vec2<bool>(!all(!global3.d), (true || (global3.a.b | global3.a.b)) && global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1294f));
    var var_2 = global3.c.x;
    let var_3 = Struct_2(Struct_1(countOneBits(var_1.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global3.b.x)), -199f)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-800f + -980f), _wgslsmith_f_op_f32(790f - var_0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1615f, -232f), global3.b)) - _wgslsmith_f_op_vec2_f32(var_1.b * var_1.b)) + vec2<f32>(_wgslsmith_f_op_f32(129f - var_1.e), var_1.c.x)), var_1.b, false)), var_1.c, select(!(!select(global3.d, vec2<bool>(false, true), global3.d.x)), !(!select(vec2<bool>(true, global3.a.b), global3.d, vec2<bool>(global3.d.x, false))), _wgslsmith_clamp_u32(4294967295u, 0u | u_input.a, u_input.a) == ~0u), _wgslsmith_f_op_f32(-467f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x)))));
    global4 = array<vec3<i32>, 29>();
    return true;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = !select(!select(select(vec3<bool>(global3.d.x, global3.a.b, global3.a.b), vec3<bool>(false, global3.a.b, global3.d.x), vec3<bool>(global3.a.b, false, global3.d.x)), !vec3<bool>(false, global3.d.x, true), func_3()), vec3<bool>(global3.d.x, true, !any(vec4<bool>(false, true, false, global3.d.x))), !(!vec3<bool>(global3.d.x, global3.d.x, global3.d.x)));
    var var_1 = 9753u;
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(~_wgslsmith_sub_u32(0u, global3.a.a.x), max(u_input.b, 49874u << (global3.a.a.x % 32u))), firstLeadingBit(~(~(~u_input.a))));
    var_1 = ~var_2;
    var_0 = vec3<bool>(var_0.x, false, any(!select(global3.d, vec2<bool>(global3.a.b, false), global3.d)) || var_0.x);
    return all(select(!(!(!vec3<bool>(true, var_0.x, true))), !select(!vec3<bool>(var_0.x, var_0.x, global3.a.b), vec3<bool>(var_0.x, global3.a.b, false), select(vec3<bool>(true, global3.a.b, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(global3.d.x, true, true))), select(-1i, select(u_input.d, 0i, false), true) > u_input.d));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = !vec3<bool>(global3.a.b, !(func_2(vec3<f32>(820f, -1003f, global3.c.x)) == false), !global3.a.b);
    global2 = array<Struct_3, 16>();
    global1 = array<vec3<f32>, 25>();
    global0 = array<vec2<u32>, 17>();
    global4 = array<vec3<i32>, 29>();
    return Struct_2(Struct_1(~(~vec4<u32>(arg_0.a.x, global3.a.a.x, arg_0.a.x, 82114u) | vec4<u32>(arg_0.a.x, 18794u, global3.a.a.x, 0u)), arg_0.a.x < ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.a.x, 1u, 23034u, global3.a.a.x), vec4<u32>(4294967295u, arg_0.a.x, global3.a.a.x, u_input.c.x))), global3.b, global3.c, !var_0.yy, _wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global3.b.x, global3.e, false)), -689f, 1u > u_input.c.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    global2 = array<Struct_3, 16>();
    var var_0 = max(global3.a.a, abs(~vec4<u32>(max(27756u, arg_0.a.a.x), _wgslsmith_clamp_u32(u_input.b, 23650u, arg_1.x), 14564u & u_input.c.x, global3.a.a.x)));
    global1 = array<vec3<f32>, 25>();
    var var_1 = arg_0.a;
    let var_2 = Struct_3(arg_2.a, ~(arg_0.a.a.x << (~var_0.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(func_1(Struct_1(vec4<u32>(global3.a.a.x, 4294967295u, arg_0.a.a.x, 1u), global3.d.x)).a).c.x)));
    return u_input.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_4 {
    return Struct_4(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.c.yzz, global3.c.zyz, global3.d.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e, -213f, arg_1.c))))), !(((0u <= global3.a.a.x) | true) && (_wgslsmith_dot_vec2_i32(vec2<i32>(3388i, -2147483647i), arg_0.xy) != u_input.d)), func_1(arg_1.a), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(303f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e) - arg_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 17>();
    let var_0 = global3.c.x;
    let var_1 = vec3<f32>(global3.c.x, -301f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1388f, global3.c.x))))), 370f));
    var var_2 = func_5(vec3<i32>(u_input.d, _wgslsmith_mult_i32(func_4(func_1(global3.a), vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u), Struct_3(global3.a, 0u, global3.e)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d, u_input.d), -u_input.d)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d, -2147483647i, 0i) << (global3.a.a % vec4<u32>(32u)), -vec4<i32>(-20335i, u_input.d, 1i, u_input.d)))), Struct_3(global3.a, global3.a.a.x, 371f));
    var var_3 = vec4<u32>(var_2.a.a.x, ~(_wgslsmith_dot_vec3_u32(global3.a.a.wzz, vec3<u32>(u_input.a, var_2.d.a.a.x, 1u)) & global3.a.a.x), countOneBits(countOneBits(11242u)), ~(~(~4294967295u << (firstLeadingBit(var_2.a.a.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-633f, var_2.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_2.d.c.x) * _wgslsmith_f_op_f32(var_1.x - var_2.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-1312f + global3.e)))), vec2<i32>(40192i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, -15889i, u_input.d), vec4<i32>(u_input.d, u_input.d, -31306i, u_input.d))), -31621i)), u_input.c.x);
}


struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(i32(-2147483648), 1i, -20981i, 10282i), vec4<i32>(2147483647i, 0i, -1i, 0i), vec4<i32>(26722i, 1i, 1057i, 1406i), vec4<i32>(1i, i32(-2147483648), -16202i, 17815i), vec4<i32>(25553i, 1i, 0i, 1i), vec4<i32>(-1i, 84299i, 1i, 16410i), vec4<i32>(31675i, -30485i, 60919i, 59420i), vec4<i32>(-10200i, 11617i, i32(-2147483648), -1i), vec4<i32>(-7743i, 81976i, 2147483647i, 26530i), vec4<i32>(-1i, 2147483647i, 2147483647i, 16493i), vec4<i32>(-1i, -11035i, i32(-2147483648), 3941i), vec4<i32>(i32(-2147483648), 7759i, 7657i, 16067i), vec4<i32>(1i, 0i, 37554i, -39341i), vec4<i32>(1i, 1i, -39742i, 29486i), vec4<i32>(-24098i, 1722i, 398i, 2147483647i), vec4<i32>(21668i, -1i, 11830i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -38046i, 1i, i32(-2147483648)));

var<private> global2: u32 = 98041u;

var<private> global3: i32;

var<private> global4: Struct_2 = Struct_2(vec4<bool>(true, false, true, true), 388f, vec4<f32>(-287f, -1000f, -994f, 1163f), 1000f, Struct_1(-27328i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    global1 = array<vec4<i32>, 17>();
    global3 = max(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2.a.ywy, vec3<i32>(-5430i, arg_2.a.x, 0i)), u_input.c)), -7755i);
    global3 = ~global4.e.a;
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(max(min(u_input.e.x, 1u), 13763u), ~1u ^ abs(u_input.e.x), global0.x, global0.x), vec4<u32>(23025u, u_input.e.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(50099u, global0.x, global0.x), vec3<u32>(arg_2.c, 9532u, arg_2.c)), reverseBits(~select(118097u, 4294967295u, false))));
    global2 = global0.x;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: i32) -> i32 {
    var var_0 = -1528f;
    let var_1 = 15548u;
    global1 = array<vec4<i32>, 17>();
    let var_2 = Struct_2(vec4<bool>(global4.a.x, !(false & global4.a.x), func_3(Struct_3(global4.e, Struct_2(global4.a, arg_1, vec4<f32>(-136f, -267f, arg_1, global4.b), 890f, arg_0), Struct_1(arg_3), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d, -335f))), Struct_3(arg_0, Struct_2(vec4<bool>(global4.a.x, false, true, false), arg_1, global4.c, global4.c.x, Struct_1(arg_3)), Struct_1(global4.e.a), _wgslsmith_f_op_vec2_f32(global4.c.zx * vec2<f32>(593f, global4.d))), Struct_4(global1[_wgslsmith_index_u32(arg_2, 17u)] | global1[_wgslsmith_index_u32(0u, 17u)], Struct_3(Struct_1(-2147483647i), Struct_2(global4.a, arg_1, global4.c, -182f, global4.e), Struct_1(12254i), global4.c.yx), countOneBits(arg_2), _wgslsmith_f_op_f32(arg_1 + 2299f))), true & ((global0.x < 1u) && true)), global4.b, global4.c, _wgslsmith_f_op_f32(-438f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.c.x))), _wgslsmith_f_op_f32(-global4.d)))), global4.e);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, -1094f)) + _wgslsmith_f_op_vec2_f32(-var_2.c.wx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.c.wy)), !(1i < var_2.e.a) & func_3(Struct_3(Struct_1(0i), Struct_2(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, global4.a.x), 162f, global4.c, 288f, arg_0), arg_0, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, global4.d)))), Struct_3(Struct_1(-50635i), var_2, Struct_1(u_input.b.x), _wgslsmith_f_op_vec2_f32(-var_2.c.zx)), Struct_4(global1[_wgslsmith_index_u32(~var_1, 17u)], Struct_3(Struct_1(-8300i), Struct_2(vec4<bool>(true, var_2.a.x, var_2.a.x, global4.a.x), var_2.d, global4.c, arg_1, arg_0), Struct_1(2147483647i), vec2<f32>(arg_1, 976f)), abs(arg_2), _wgslsmith_f_op_f32(ceil(global4.c.x))))));
    return i32(-1i) * -_wgslsmith_add_i32(2147483647i, -13877i);
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.c * _wgslsmith_f_op_vec4_f32(global4.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.c) + global4.c))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x);
    global0 = reverseBits(~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, global0.x)), vec2<u32>(global0.x, u_input.a.x)), vec2<u32>(4294967295u, 7801u) & countOneBits(vec2<u32>(45000u, u_input.a.x))));
    let var_2 = func_2(global4.e, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_sub_u32(1u, global0.x), u_input.b.x);
    global1 = array<vec4<i32>, 17>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.c.yz ^ vec2<i32>(0i, ~global4.e.a), u_input.c.zx);
    let var_1 = !global4.a;
    var var_2 = !func_1(!vec2<bool>(false, !var_1.x));
    let var_3 = Struct_3(Struct_1(~1i), Struct_2(!global4.a, -832f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.d, 401f, global4.d, global4.d), global4.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.b))) + global4.c.x), Struct_1(global4.e.a)), global4.e, vec2<f32>(_wgslsmith_f_op_f32(-614f + _wgslsmith_f_op_f32(global4.d * -1000f)), global4.c.x));
    let var_4 = -1316f;
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<f32>(1004f, 368f, global4.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, 762f) * _wgslsmith_f_op_f32(1000f - -256f)))), _wgslsmith_clamp_i32(-1i, global4.e.a, -_wgslsmith_dot_vec2_i32(var_0, u_input.c.xy)), u_input.e.zz);
}


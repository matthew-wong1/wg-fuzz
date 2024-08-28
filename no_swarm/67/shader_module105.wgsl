struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 32> = array<i32, 32>(-15036i, 2147483647i, 10645i, 1i, 7867i, 1i, -20008i, 2757i, i32(-2147483648), i32(-2147483648), 0i, 7348i, 20432i, -808i, 26473i, 1i, 0i, 9297i, -23420i, -37729i, 106i, 0i, 2147483647i, i32(-2147483648), 1i, -73658i, -1i, 2147483647i, i32(-2147483648), -46515i, -16496i, 0i);

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 32>();
    let var_0 = !(u_input.a.x > global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 32u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a));
    let var_2 = vec4<bool>(true, var_0, true, true);
    global1 = array<i32, 32>();
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(117f)), global0.a.x));
    global1 = array<i32, 32>();
    global3 = array<vec3<i32>, 21>();
    var var_1 = Struct_1(func_2().a);
    let var_2 = arg_1.a.x;
    return func_2();
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = ~select(~vec4<u32>(~u_input.c.x, u_input.c.x, abs(34118u), firstTrailingBit(29192u)), firstTrailingBit(u_input.c), vec4<bool>(true, select(true, any(vec4<bool>(true, true, false, true)), true), true, any(vec3<bool>(true, true, true))));
    var var_1 = func_3(arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a)), var_0.x, func_2());
    var var_2 = reverseBits(select(1i, -2147483647i, all(vec2<bool>(true, true))));
    let var_3 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))) | true;
    var var_4 = -1i;
    return u_input.c << (abs(vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(25090u, 35396u), u_input.c.ww), max(vec2<u32>(u_input.b, var_0.x), vec2<u32>(u_input.b, u_input.b))), u_input.c.x, 1u)) % vec4<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 4294967295u;
    global0 = func_2();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().a.x, 146f, -1000f, _wgslsmith_f_op_f32(trunc(arg_1.a.x))) * _wgslsmith_f_op_vec4_f32(-global0.a)))));
    let var_1 = max(_wgslsmith_div_vec3_u32(firstLeadingBit(min(vec3<u32>(u_input.b, u_input.c.x, u_input.b), vec3<u32>(4294967295u, 1u, u_input.b))), vec3<u32>(30630u, u_input.c.x, u_input.c.x)), vec3<u32>(~u_input.c.x, min(reverseBits(47593u << (0u % 32u)), ~39405u), 1u >> (~u_input.b % 32u)));
    global2 = func_2();
    return func_3(func_2(), arg_1, 1u, arg_1);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(func_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(594f, global0.a.x, global0.a.x, global0.a.x))), func_3(Struct_1(global2.a), Struct_1(arg_1.a), 0u, Struct_1(vec4<f32>(global0.a.x, global0.a.x, global2.a.x, -324f))).a)), arg_1, 0u, func_2()).a.x));
    global2 = arg_1;
    global2 = arg_1;
    var var_1 = arg_1;
    global3 = array<vec3<i32>, 21>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -608f, _wgslsmith_div_f32(global2.a.x, -672f), 931f) * _wgslsmith_div_vec4_f32(arg_1.a, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~11497u, func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 1u, 0u), func_1(global2.a.x, global0.a.x, Struct_1(vec4<f32>(-1000f, global0.a.x, 998f, 1347f)))) == _wgslsmith_sub_u32(1u, u_input.c.x | u_input.b), func_2()));
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(153f)), _wgslsmith_f_op_f32(-global0.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 769f, 367f, global0.a.x) + vec4<f32>(global2.a.x, global0.a.x, -182f, -1203f))))))).x;
    let var_1 = vec4<f32>(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, global2.a.x, 350f, -388f))), func_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global2.a)))), ~12630u, Struct_1(global2.a)).a.x, global2.a.x, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a.x, global2.a.x, true)), func_2().a.x))))));
    global1 = array<i32, 32>();
    global0 = func_3(func_2(), func_5(~var_0, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1073f, global0.a.x, global0.a.x, -1588f) * global2.a))))), 107642u << (1u % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -295f, 1503f, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_add_i32(u_input.e.x, u_input.a.x), ~min(~global1[_wgslsmith_index_u32(0u, 32u)], i32(-1i) * -37458i), 1i & u_input.a.x, max(reverseBits(global1[_wgslsmith_index_u32(u_input.b, 32u)]), global1[_wgslsmith_index_u32(u_input.c.x, 32u)] | global1[_wgslsmith_index_u32(4649u, 32u)]) & 2147483647i), vec2<i32>(-6369i, global1[_wgslsmith_index_u32(~1u, 32u)]));
}


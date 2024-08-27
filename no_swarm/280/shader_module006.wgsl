struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<u32>, 21>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-114f, 0i, 0u, 19080u, 25784u), Struct_1(1347f, i32(-2147483648), 11028u, 0u, 4294967295u), Struct_1(1084f, -1i, 8068u, 4294967295u, 2768u), Struct_1(946f, -16385i, 4294967295u, 41734u, 8856u), Struct_1(166f, i32(-2147483648), 4294967295u, 0u, 0u), Struct_1(1000f, -79836i, 16705u, 13648u, 1u), Struct_1(176f, -29269i, 4294967295u, 0u, 0u), Struct_1(726f, 18107i, 0u, 28955u, 4294967295u), Struct_1(-420f, -93350i, 13224u, 4294967295u, 0u), Struct_1(298f, -28437i, 39604u, 0u, 1u), Struct_1(-481f, 0i, 4294967295u, 86671u, 1u), Struct_1(-1143f, -59i, 1u, 44226u, 60249u), Struct_1(-2349f, 12159i, 24245u, 4294967295u, 22499u), Struct_1(-1249f, 35348i, 41620u, 67232u, 0u), Struct_1(663f, -42168i, 0u, 0u, 11389u), Struct_1(-2346f, -114i, 27008u, 13972u, 4294967295u), Struct_1(-998f, 10808i, 1u, 1u, 0u), Struct_1(-721f, i32(-2147483648), 4294967295u, 59508u, 1u), Struct_1(-229f, 2219i, 86256u, 0u, 1u), Struct_1(-1663f, -11722i, 0u, 4294967295u, 4294967295u), Struct_1(139f, 2147483647i, 0u, 22481u, 0u), Struct_1(-1186f, 46682i, 13809u, 1u, 4294967295u), Struct_1(1090f, 24656i, 0u, 24545u, 72388u));

var<private> global3: Struct_1;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    global1 = array<vec3<u32>, 21>();
    global2 = array<Struct_1, 23>();
    let var_0 = arg_3;
    return -1401f;
}

fn func_3() -> vec3<bool> {
    let var_0 = !any(!select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x), vec3<bool>(false, false, false), true));
    global0 = vec3<bool>(~firstLeadingBit(reverseBits(0u)) > (_wgslsmith_sub_u32(6502u ^ global3.c, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])) << (~(~29352u) % 32u)), any(vec3<bool>(all(!vec3<bool>(var_0, global0.x, true)), (global3.b < global3.b) && true, true)), !var_0);
    var var_1 = Struct_2(false, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 23u)], global2[_wgslsmith_index_u32(global3.d & firstLeadingBit(1u), 23u)], true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, global3.a, -441f) - vec3<f32>(global3.a, -1000f, global3.a)) - vec3<f32>(471f, -202f, global3.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -568f, global3.a))))));
    let var_2 = Struct_2(global0.x != (true && (_wgslsmith_f_op_f32(floor(1624f)) < var_1.c.a)), global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(~var_1.b.c, 23u)], var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e - var_1.e) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.e + var_1.e))))));
    global4 = 75766u >> (_wgslsmith_clamp_u32(min(0u >> (_wgslsmith_mult_u32(global3.c, var_1.c.c) % 32u), 1u), 37876u, 0u) % 32u);
    return !(!select(select(vec3<bool>(false, false, var_2.a), select(vec3<bool>(global0.x, var_1.d, false), vec3<bool>(var_1.a, var_0, true), vec3<bool>(false, var_1.a, var_0)), vec3<bool>(var_0, false, global0.x)), vec3<bool>(true, true, true), false));
}

fn func_1() -> bool {
    global0 = select(select(!select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, false), vec3<bool>(true, true, global0.x)), !vec3<bool>(global0.x, true, true), 1u < global3.c), !vec3<bool>(-1893f != global3.a, any(vec4<bool>(false, global0.x, true, global0.x)), -1i >= global3.b), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global3.a), global0.x, -vec3<i32>(-1i, 22073i, 572i), Struct_2(global0.x, Struct_1(-524f, u_input.c, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(global3.a, -36308i, u_input.b.x, 20577u, global3.d), true, vec3<f32>(1219f, global3.a, global3.a)))) >= _wgslsmith_f_op_f32(select(400f, 391f, all(vec4<bool>(true, true, global0.x, true))))), func_3(), global0.x);
    global0 = vec3<bool>(true, true, !(!global0.x || true) || global0.x);
    let var_0 = Struct_2(all(vec3<bool>(!global0.x, all(!vec4<bool>(true, global0.x, global0.x, false)), true)), global2[_wgslsmith_index_u32(global3.e, 23u)], global2[_wgslsmith_index_u32(~u_input.b.x, 23u)], global0.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-359f, global3.a, global3.a))));
    let var_1 = var_0.c;
    var var_2 = ~vec2<u32>(~_wgslsmith_add_u32(1u, global3.e & 1u), 30521u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(1136f)), 1943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.a, global3.a, false)), _wgslsmith_f_op_f32(-252f + global3.a)))), global3.a);
    let var_1 = -848f;
    let var_2 = _wgslsmith_f_op_f32(-global3.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.yw);
    var var_4 = (global3.b >> (4294967295u % 32u)) & select(1i, 29018i, false);
    global4 = u_input.b.x;
    let var_5 = !vec4<bool>(true, true, !func_1(), true);
    global0 = !select(var_5.wxx, vec3<bool>(all(vec2<bool>(var_5.x, global0.x)), !any(vec4<bool>(true, true, true, global0.x)), global0.x), var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, -1022f, global3.a)), vec3<f32>(707f, 1493f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global3.d);
}


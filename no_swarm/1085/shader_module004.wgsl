struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<Struct_2, 27>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-546f, false, Struct_1(1u, 9803i, 18207u, -13422i)), Struct_2(-205f, true, Struct_1(4294967295u, -24066i, 37946u, 23476i)), Struct_2(-127f, true, Struct_1(53447u, i32(-2147483648), 0u, 1i)), Struct_2(-706f, true, Struct_1(23277u, -1i, 4294967295u, 1i)), Struct_2(-1705f, false, Struct_1(100357u, i32(-2147483648), 2151u, 39502i)), Struct_2(543f, false, Struct_1(4294967295u, -35510i, 0u, -36232i)), Struct_2(-823f, false, Struct_1(39181u, 0i, 49289u, 0i)), Struct_2(866f, true, Struct_1(1u, 16741i, 0u, -55969i)), Struct_2(-1765f, true, Struct_1(51408u, -44219i, 47120u, i32(-2147483648))), Struct_2(-423f, true, Struct_1(51467u, 2147483647i, 0u, -5722i)), Struct_2(-1179f, false, Struct_1(0u, 57595i, 0u, 63054i)), Struct_2(-591f, false, Struct_1(6807u, 1i, 4294967295u, 0i)), Struct_2(-1298f, false, Struct_1(27907u, -38316i, 0u, 18018i)), Struct_2(261f, false, Struct_1(92442u, -1i, 61076u, 2147483647i)), Struct_2(-731f, true, Struct_1(4294967295u, -1i, 1u, -23552i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    return arg_2.c;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: u32) -> Struct_1 {
    global1 = array<Struct_2, 27>();
    var var_0 = select(true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) <= 1000f);
    global2 = all(vec3<bool>(true, any(vec3<bool>(false, arg_1, 34850u == arg_0.c.a)), !(!arg_0.b)));
    global2 = arg_0.b;
    let var_1 = abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(arg_3, 4294967295u)), 16931u) ^ ~_wgslsmith_mod_u32(1u, 37553u));
    return func_2(arg_0.c.d, ~u_input.b, Struct_2(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-1377f - _wgslsmith_f_op_f32(-arg_0.a))), !arg_1, arg_0.c), u_input.a.x);
}

fn func_3() -> u32 {
    global1 = array<Struct_2, 27>();
    let var_0 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(u_input.b >> (0u % 32u), min(24038u, 65721u)))), 15u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, -281f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, var_0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(114f, 457f) * vec2<f32>(-233f, -732f)))))));
    var var_2 = !(!vec3<bool>(var_0.b, 1u <= _wgslsmith_sub_u32(4294967295u, u_input.b), _wgslsmith_f_op_f32(1099f * var_1.x) < -1000f));
    global2 = !var_0.b;
    return ~select(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(50393u, 50709u, 1u, var_0.c.a) | vec4<u32>(4294967295u, var_0.c.c, 0u, 1u)), vec4<u32>(~u_input.b, _wgslsmith_add_u32(1u, 1u), select(37894u, var_0.c.a, true), ~var_0.c.a)), 0u, false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<Struct_2, 15>();
    global1 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(min(arg_0.a, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1095f * arg_0.a) - -269f), 2019f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_f_op_f32(select(-2297f, -418f, arg_0.b)), arg_2.b && true)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) + _wgslsmith_f_op_f32(round(arg_2.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1713f, arg_0.a))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, -779f, 1024f, arg_0.a)))));
    let var_1 = !arg_2.b;
    let var_2 = Struct_1(1u, arg_2.c.d, u_input.b << (_wgslsmith_mult_u32(func_3(), func_3()) % 32u), ~10831i);
    return func_1(arg_2, true, var_2.c, ~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(61645u, 8392u, u_input.b) >> (vec3<u32>(0u, 34487u, arg_1.c) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, var_2.c)))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 1>();
    var var_0 = ~countOneBits(vec2<u32>(arg_0.c.c, arg_0.c.c));
    var var_1 = !(!vec3<bool>(!arg_0.b, any(select(vec3<bool>(true, false, arg_0.b), vec3<bool>(true, true, arg_0.b), vec3<bool>(true, false, arg_0.b))), arg_0.b));
    var_0 = select(~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, arg_0.c.a), vec2<u32>(var_0.x, arg_0.c.a))), ~vec2<u32>(max(0u, 0u), 1u), vec2<bool>(arg_0.b, select(true, false, all(var_1.zz)))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(30085u, 4294967295u) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 28142u), vec2<u32>(4294967295u, var_0.x)), vec2<u32>(_wgslsmith_div_u32(u_input.b, var_0.x), ~1u), vec2<u32>(~4294967295u, 0u)), vec2<u32>(~func_3(), abs(var_0.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u) >> (abs(vec2<u32>(15649u, arg_0.c.a)) % vec2<u32>(32u)), vec2<u32>(abs(0u), 16962u << (1u % 32u))));
    var_0 = (~(vec2<u32>(arg_0.c.a, 48074u) << (select(vec2<u32>(arg_0.c.c, 1u), vec2<u32>(u_input.b, 1u), var_1.x) % vec2<u32>(32u))) | ~min(abs(vec2<u32>(arg_0.c.c, arg_0.c.a)), abs(vec2<u32>(4294967295u, var_0.x)))) & ~vec2<u32>(~73790u, arg_0.c.a);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b, min(52746u, u_input.b));
    global1 = array<Struct_2, 27>();
    let var_1 = -980f;
    let var_2 = func_5(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, -330f)) + _wgslsmith_f_op_f32(416f - var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-var_1))), false, func_4(Struct_2(var_1, false, func_1(Struct_2(-572f, false, Struct_1(u_input.b, 1i, u_input.b, -1i)), true, 1u, 22123u)), Struct_1(var_0.x, min(u_input.a.x, 11829i), func_3(), 22785i), global1[_wgslsmith_index_u32(4294967295u, 27u)], vec3<i32>(-1i) * -u_input.a)));
    global1 = array<Struct_2, 27>();
    var var_3 = Struct_1(u_input.b, var_2.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(38350u, ~u_input.b, u_input.b), ~(~vec3<u32>(4294967295u, 17164u, var_2.a))), ~(~(~(-16024i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.x), ~var_2.a, ~vec2<i32>(1i, func_4(global0[_wgslsmith_index_u32(1u, 1u)], var_2, Struct_2(var_1, false, var_2), ~vec3<i32>(var_2.d, -2147483647i, -1i)).b));
}


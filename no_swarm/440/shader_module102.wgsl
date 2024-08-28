struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(24241u, 12549u, 25947u);

var<private> global1: Struct_1;

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 18673i);

var<private> global3: bool = false;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(35882u, 1i, vec4<f32>(-337f, 1393f, -1453f, 433f), 24136u), Struct_1(19339u, 1i, vec4<f32>(339f, -1452f, 716f, 599f), 30790u), Struct_1(34290u, 2147483647i, vec4<f32>(-443f, 604f, 111f, 122f), 27071u), Struct_1(1u, -1i, vec4<f32>(-1236f, -1000f, 121f, -996f), 1u), Struct_1(1u, 2147483647i, vec4<f32>(-1313f, 1362f, -1000f, -1069f), 29121u), Struct_1(1692u, 0i, vec4<f32>(177f, 1642f, 1343f, 487f), 31969u), Struct_1(16044u, 3519i, vec4<f32>(-559f, -687f, 1000f, -887f), 21142u), Struct_1(4294967295u, -1i, vec4<f32>(732f, -829f, 561f, -1227f), 88571u), Struct_1(0u, 1i, vec4<f32>(-1870f, -1588f, 2413f, -174f), 4294967295u), Struct_1(0u, 7329i, vec4<f32>(1000f, -124f, 166f, -328f), 1u), Struct_1(12315u, 381i, vec4<f32>(536f, -202f, 533f, -1114f), 4294967295u), Struct_1(1u, 27018i, vec4<f32>(-486f, 1203f, -532f, 797f), 28051u), Struct_1(33006u, 1507i, vec4<f32>(-1346f, 578f, -328f, 366f), 0u), Struct_1(4727u, 2147483647i, vec4<f32>(1471f, 1335f, 1084f, -682f), 36424u), Struct_1(1u, -5857i, vec4<f32>(-1367f, 264f, 2427f, 582f), 0u), Struct_1(4294967295u, 1i, vec4<f32>(-756f, 232f, -128f, -952f), 39803u), Struct_1(4294967295u, -5774i, vec4<f32>(624f, 656f, -1116f, -142f), 32599u), Struct_1(47379u, 59093i, vec4<f32>(145f, -520f, -614f, -978f), 44732u), Struct_1(10135u, 4159i, vec4<f32>(1818f, -135f, 1874f, 157f), 1u), Struct_1(26823u, i32(-2147483648), vec4<f32>(444f, 806f, -1113f, -719f), 1u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    return vec2<u32>(u_input.b, ~(~(~(arg_1.a << (arg_0.x % 32u)))));
}

fn func_2() -> vec4<u32> {
    let var_0 = (~_wgslsmith_mod_vec3_u32(vec3<u32>(46141u, 4294967295u, global0.x), ~vec3<u32>(global1.d, 4294967295u, 37390u)) & reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(30609u, 0u, 4294967295u), vec3<u32>(global1.a, 4294967295u, 1u)) | vec3<u32>(u_input.c, u_input.b, global0.x))) >> (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.x ^ global0.x, select(4294967295u, global0.x, true)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global1.a, 4294967295u), vec3<u32>(29591u, 74942u, 33398u), vec3<u32>(global1.a, global1.a, 49285u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global1.a, 55409u), vec3<u32>(57952u, u_input.c, 3379u))), ~(~vec3<u32>(global1.a, 4294967295u, 80226u))), ~min(~vec3<u32>(1u, u_input.b, 62255u), vec3<u32>(global1.d, global0.x, 766u))) % vec3<u32>(32u));
    let var_1 = vec2<f32>(-488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c.x)) + -868f)))));
    global3 = true;
    global2 = vec3<i32>(global2.x, 0i, _wgslsmith_mult_i32(max(-global1.b, 1i), ~(-8751i)));
    let var_2 = Struct_1(~min(global1.a, 406u), global1.b, _wgslsmith_f_op_vec4_f32(-global1.c), ~u_input.c);
    return vec4<u32>(~firstLeadingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, u_input.c, global1.d, var_0.x), vec4<u32>(global0.x, global0.x, 4294967295u, 1u)), ~vec4<u32>(u_input.c, var_0.x, 6511u, 0u))), ~select(106112u, var_2.a, -3081f < _wgslsmith_f_op_f32(-678f - var_2.c.x)), ~(global1.d & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.b, 1u))), ~var_0.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>) -> u32 {
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<i32>(1i, 51658i, _wgslsmith_add_i32(~41464i, _wgslsmith_add_i32(-1i, -28272i)));
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.b), ~u_input.c) | countOneBits(func_1(vec2<u32>(79299u, 4294967295u), Struct_1(1u, 0i, global1.c, 1522u), global1.b)), global0.yy >> (vec2<u32>(global0.x, firstTrailingBit(global1.d)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1290f + _wgslsmith_f_op_f32(-global1.c.x))))) - _wgslsmith_f_op_f32(-543f - global1.c.x));
    let var_2 = _wgslsmith_div_vec4_u32(func_2(), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), global0.x, func_3(vec2<bool>(false, false), vec2<bool>(true, true)), 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 70816u, global1.a, global0.x), vec4<u32>(2598u, global1.d, global0.x, u_input.b))));
    global4 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(-(-(~vec4<i32>(global2.x, 2147483647i, 5950i, 5038i)) ^ vec4<i32>(1i, min(global2.x, global2.x), -26965i, abs(-14284i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.x, 473f), global1.c.x), global1.c.x)));
}


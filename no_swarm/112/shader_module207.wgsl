struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(1326f, 502f, 790f, -231f), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<f32>(-214f, -384f, 381f, 1391f), vec3<u32>(0u, 6991u, 0u)), Struct_1(vec4<f32>(-258f, 1399f, -859f, 1137f), vec3<u32>(4294967295u, 57922u, 8159u)), Struct_1(vec4<f32>(-1000f, 1000f, 159f, 1797f), vec3<u32>(0u, 11355u, 40808u)), Struct_1(vec4<f32>(-660f, -250f, -666f, -1538f), vec3<u32>(15994u, 0u, 21635u)), Struct_1(vec4<f32>(426f, -510f, -2464f, -532f), vec3<u32>(3123u, 1u, 50633u)), Struct_1(vec4<f32>(-2805f, -475f, -292f, 343f), vec3<u32>(6075u, 7616u, 95747u)), Struct_1(vec4<f32>(950f, 1017f, -210f, -550f), vec3<u32>(44978u, 1u, 4294967295u)), Struct_1(vec4<f32>(670f, -309f, 999f, -1000f), vec3<u32>(36292u, 1u, 0u)), Struct_1(vec4<f32>(453f, -1254f, 376f, 228f), vec3<u32>(1u, 40267u, 4294967295u)), Struct_1(vec4<f32>(1000f, 486f, 680f, 509f), vec3<u32>(4294967295u, 4294967295u, 57365u)), Struct_1(vec4<f32>(-425f, 2290f, -235f, 518f), vec3<u32>(4294967295u, 24707u, 81805u)), Struct_1(vec4<f32>(-1328f, 1091f, -1463f, -592f), vec3<u32>(68166u, 0u, 42158u)), Struct_1(vec4<f32>(1933f, -308f, 644f, -1000f), vec3<u32>(31959u, 0u, 0u)), Struct_1(vec4<f32>(-1498f, -828f, -1099f, -1000f), vec3<u32>(1u, 1u, 0u)), Struct_1(vec4<f32>(290f, -675f, -299f, -553f), vec3<u32>(0u, 11856u, 1u)), Struct_1(vec4<f32>(1251f, -412f, 1000f, -1349f), vec3<u32>(29414u, 1u, 4294967295u)), Struct_1(vec4<f32>(1362f, 267f, 505f, -406f), vec3<u32>(8357u, 0u, 7356u)), Struct_1(vec4<f32>(1499f, -587f, 1000f, -631f), vec3<u32>(30928u, 1u, 4294967295u)), Struct_1(vec4<f32>(-1000f, 633f, 1177f, -353f), vec3<u32>(54216u, 75558u, 51269u)), Struct_1(vec4<f32>(-477f, -712f, 488f, -633f), vec3<u32>(6376u, 1u, 33434u)));

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    return u_input.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 21>();
    let var_0 = 58123i;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)), arg_0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -106f))))));
    global2 = 451f;
    global2 = 1000f;
    return ~1u;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = abs(15378u & (~countOneBits(0u) ^ func_2(_wgslsmith_f_op_f32(sign(arg_0)), arg_0)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), ~(~vec3<u32>(~global1.b.x, 69050u, ~u_input.a.x)));
    var var_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-739f, -566f), _wgslsmith_f_op_f32(588f - arg_0))), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(122f, var_1.a.x))), -1004f), vec3<u32>(firstLeadingBit(func_3(Struct_2(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(global1.b.x, 21u)]), vec3<i32>(u_input.b, -6995i, -10860i))), firstLeadingBit(func_2(1000f, 772f)), 54554u)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.a.x, var_1.a.x, arg_0)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, 960f, 645f, global1.a.x))))), true)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(55428u, u_input.a.x, 0u) << (vec3<u32>(var_1.b.x, u_input.a.x, 25681u) % vec3<u32>(32u)), global1.b | var_1.b), vec3<u32>(10676u, reverseBits(1u), ~global1.b.x))));
    global0 = array<Struct_1, 21>();
    let var_3 = Struct_2(vec2<bool>(var_2.a.x && var_2.a.x, !(!(40905u <= u_input.a.x))), var_2.b, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_1.b.x), u_input.a), var_1.b.x, _wgslsmith_mod_u32(abs(1u), abs(global1.b.x))), 21u)]);
    return vec4<f32>(_wgslsmith_f_op_f32(round(1093f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 + var_3.c.a.x))) - _wgslsmith_f_op_f32(-var_2.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_div_f32(var_3.c.a.x, -2511f)) - var_3.b.a.x)), -399f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x), 6728u, abs(~40998u)), global1.b), ~reverseBits(~_wgslsmith_mod_vec3_u32(global1.b, vec3<u32>(0u, global1.b.x, u_input.a.x))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, !all(vec3<bool>(true, true, false)))) - 2137f);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x))))))), var_0);
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1787f, global1.a.x, global1.a.x, 611f)) + _wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(global1.a.x, global1.a.x, 523f, -1145f)))) - vec4<f32>(global1.a.x, -947f, _wgslsmith_f_op_f32(global1.a.x * global1.a.x), _wgslsmith_f_op_f32(abs(-1000f)))), global1.a)), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec4<u32>(4294967295u, _wgslsmith_sub_u32(var_1.b.x, ~(23147u | var_1.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(func_2(var_1.a.x, -164f), ~0u, 4294967295u), vec3<u32>(48183u, _wgslsmith_add_u32(0u, var_0.x), 0u)), ~25765u), -346f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(var_1.a.wz)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.a.ww, global1.a.xz, vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(506f, var_1.a.x) * var_1.a.xw)))), max(var_0.yz, ~_wgslsmith_clamp_vec2_u32(var_0.yz, _wgslsmith_mult_vec2_u32(var_0.xz, global1.b.yx), vec2<u32>(var_0.x, global1.b.x))));
}


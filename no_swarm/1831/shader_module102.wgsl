struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-1302f, 11664i, 839f, vec4<bool>(false, false, false, true)), Struct_2(-671f, 0i, -1000f, vec4<bool>(true, true, true, true)), Struct_2(157f, -7923i, -1200f, vec4<bool>(false, false, false, true)), Struct_2(-331f, 11686i, 1000f, vec4<bool>(false, true, false, true)), Struct_2(-1539f, i32(-2147483648), -1418f, vec4<bool>(false, true, false, false)), Struct_2(533f, 2147483647i, 309f, vec4<bool>(false, true, true, false)), Struct_2(1163f, -1i, -220f, vec4<bool>(false, true, false, false)), Struct_2(418f, 0i, -1947f, vec4<bool>(true, false, true, true)), Struct_2(1000f, i32(-2147483648), 1770f, vec4<bool>(true, false, true, false)), Struct_2(-1099f, 13365i, -2958f, vec4<bool>(true, false, true, true)), Struct_2(-2292f, i32(-2147483648), -436f, vec4<bool>(true, true, true, false)), Struct_2(401f, 1i, -507f, vec4<bool>(false, true, false, false)), Struct_2(-564f, -28225i, 1116f, vec4<bool>(false, false, true, true)), Struct_2(392f, 0i, 948f, vec4<bool>(true, true, true, false)), Struct_2(597f, 51276i, 2138f, vec4<bool>(true, true, false, false)), Struct_2(-400f, 33060i, -308f, vec4<bool>(false, false, false, true)), Struct_2(-1000f, 10579i, -300f, vec4<bool>(false, true, true, false)));

var<private> global1: u32 = 45138u;

var<private> global2: array<u32, 26>;

var<private> global3: array<vec2<bool>, 7>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    return vec3<u32>(_wgslsmith_mod_u32(~1u & u_input.c, min((u_input.c & 50057u) << (1u % 32u), 43676u)), u_input.b.x, 21812u);
}

fn func_1() -> Struct_2 {
    global1 = ~(~15499u);
    global2 = array<u32, 26>();
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(max(vec3<u32>(_wgslsmith_add_u32(0u, 32976u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(u_input.d, 26u)], 78396u, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)], u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25044u, 26u)], 26u)])), 26u)], 1u), max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.c, 4294967295u, global2[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 20781u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 0u, global2[_wgslsmith_index_u32(u_input.d, 26u)]))))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec3<u32>(u_input.a, 0u, u_input.b.x)), vec3<u32>(65369u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 1u) << (~vec3<u32>(0u, u_input.a, 4294967295u) % vec3<u32>(32u))), ~(firstTrailingBit(vec3<u32>(u_input.a, 11093u, u_input.d)) << (func_2(-1414f, Struct_2(1659f, -12012i, 1525f, vec4<bool>(true, true, false, true))) % vec3<u32>(32u))))), 17u)];
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1;
    global0 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_f_op_f32(abs(717f));
    var var_2 = any(global3[_wgslsmith_index_u32(u_input.a, 7u)]);
    global1 = ~(~(~(~4294967295u)));
    return 2147483647i;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = 16233i;
    let var_1 = Struct_1(abs(-5607i), 0u, 80890u);
    let var_2 = max(-2147483647i, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_2.b), -arg_2.b) << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1, var_1.b, var_1.b)), select(vec3<u32>(var_1.b, var_1.b, arg_1), vec3<u32>(0u, u_input.b.x, u_input.d), arg_0.x) << (vec3<u32>(4294967295u, 11986u, 1u) % vec3<u32>(32u))) % 32u));
    let var_3 = var_1;
    let var_4 = var_1;
    return vec3<i32>(arg_2.b, arg_2.b, ~(var_2 ^ var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select((global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 21096u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], global2[_wgslsmith_index_u32(59561u, 26u)], 28738u, 1u)) ^ 1u, 26u)] >> (abs(global2[_wgslsmith_index_u32(4294967295u, 26u)] | 4294967295u) % 32u)) & _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, ~vec2<u32>(63735u, 39051u)), u_input.b), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~1u), 1u), _wgslsmith_f_op_f32(f32(-1f) * -351f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) * _wgslsmith_f_op_f32(123f + 1094f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-910f, -1358f)) * _wgslsmith_f_op_f32(ceil(506f)))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1389f)), _wgslsmith_f_op_f32(floor(1f)), false)) - _wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1378f * 536f) + _wgslsmith_f_op_f32(trunc(-436f)))))));
    var var_1 = func_1();
    global1 = u_input.b.x;
    global2 = array<u32, 26>();
    let var_2 = ~func_4(!var_1.d.xxx, global2[_wgslsmith_index_u32(~45553u, 26u)], Struct_2(2176f, -func_3(1976f, global0[_wgslsmith_index_u32(0u, 17u)]), 852f, vec4<bool>(true, select(var_1.d.x, true, var_1.d.x), true, var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(751u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1257f, var_1.c, 253f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -450f, var_1.c))))));
}


struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 4195u, 35446u), vec3<u32>(90670u, 4294967295u, 0u), vec3<u32>(38532u, 4294967295u, 53043u), vec3<u32>(4294967295u, 46389u, 12924u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 119547u, 1507u), vec3<u32>(4294967295u, 125432u, 0u), vec3<u32>(1u, 33277u, 1u));

var<private> global2: Struct_2;

var<private> global3: array<f32, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = Struct_2(any(select(global0[_wgslsmith_index_u32(~39550u, 13u)], global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 13u)], vec3<bool>(false, all(vec4<bool>(false, true, true, false)), true))), global2.b, Struct_1(-1i), true, vec4<i32>(global2.c.a, -min(max(global2.c.a, global2.c.a), 8152i), -1764i, 1i));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x * global2.b.x))));
    let var_3 = 12433u;
    return -1i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global2.c.a);
    var var_1 = global2.c;
    var var_2 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(720f - 479f), -1080f, _wgslsmith_f_op_f32(sign(976f))) * vec3<f32>(-1072f, _wgslsmith_f_op_f32(-105f - global3[_wgslsmith_index_u32(u_input.a, 6u)]), -1000f))), Struct_1(~(~var_1.a | var_1.a)), true, min(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, func_3(), -global2.e.x, -21521i), _wgslsmith_mod_vec4_i32(vec4<i32>(-4248i, 0i, global2.e.x, 10025i), global2.e)), -vec4<i32>(func_3(), _wgslsmith_div_i32(0i, global2.c.a), var_1.a, -1i)));
    var var_3 = Struct_3(var_2.c);
    var_1 = global2.c;
    return var_2.c;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = arg_0;
    let var_1 = func_2();
    var var_2 = Struct_3(func_2());
    let var_3 = Struct_3(func_2());
    global3 = array<f32, 6>();
    return all(vec3<bool>(~_wgslsmith_dot_vec4_i32(global2.e, global2.e) < ((i32(-1i) * -2147483647i) ^ ~var_0), false, 4294967295u != (firstLeadingBit(u_input.b.x) ^ 38313u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(global2.d && func_1(49062i), false, true) && any(select(select(vec3<bool>(false, global2.d, global2.d), global0[_wgslsmith_index_u32(u_input.a, 13u)], true), vec3<bool>(true, false, true), false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b))), vec3<f32>(403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-271f))), -298f)), func_2(), global2.d, vec4<i32>(global2.e.x, global2.e.x, ~(global2.e.x ^ global2.e.x) ^ ~global2.c.a, ~(min(6502i, global2.e.x) >> (u_input.a % 32u))));
    let var_1 = Struct_3(func_2());
    var var_2 = ~_wgslsmith_sub_u32(u_input.a, ~(~(~u_input.b.x)));
    var_2 = ~(((_wgslsmith_add_u32(u_input.b.x, 12495u) << (34192u % 32u)) << (_wgslsmith_dot_vec2_u32(u_input.b.xy | u_input.b.ww, vec2<u32>(u_input.a, 32650u)) % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(abs(22122u), _wgslsmith_add_u32(30106u, u_input.a), 8591u << (1u % 32u), u_input.b.x), vec4<u32>(1u, ~9097u, _wgslsmith_mod_u32(u_input.b.x, u_input.a), 4294967295u)));
    var var_3 = Struct_2(all(select(vec2<bool>(false, var_0.a), !(!vec2<bool>(false, var_0.d)), var_0.e.x > min(0i, -2147483647i))), global2.b, global2.c, true, reverseBits(abs(global2.e)));
    let var_4 = 378f;
    let x = u_input.a;
    s_output = StorageBuffer(68345u, 2147483647i);
}


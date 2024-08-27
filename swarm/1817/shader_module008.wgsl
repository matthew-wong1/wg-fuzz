struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<Struct_4, 20>;

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(-1i, true), 66985u), Struct_3(Struct_2(-8223i, true), 0u), Struct_3(Struct_2(30558i, false), 1u), Struct_3(Struct_2(-1i, true), 46043u), Struct_3(Struct_2(i32(-2147483648), true), 1u), Struct_3(Struct_2(55988i, true), 4294967295u), Struct_3(Struct_2(61498i, true), 18196u), Struct_3(Struct_2(59004i, false), 33239u), Struct_3(Struct_2(611i, true), 0u), Struct_3(Struct_2(2147483647i, false), 1u), Struct_3(Struct_2(2147483647i, true), 0u), Struct_3(Struct_2(-1i, true), 50880u), Struct_3(Struct_2(27746i, true), 48365u), Struct_3(Struct_2(22418i, false), 64474u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> u32 {
    global3 = array<Struct_4, 20>();
    global0 = array<bool, 12>();
    var var_0 = ~(u_input.a << (20356u % 32u));
    let var_1 = global2[_wgslsmith_index_u32(arg_0, 28u)];
    global4 = array<Struct_3, 14>();
    return arg_0 ^ 4294967295u;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    global2 = array<Struct_2, 28>();
    var var_0 = arg_2;
    global1 = array<Struct_1, 2>();
    var var_1 = -352f;
    let var_2 = func_2(u_input.c.x);
    return Struct_2(~_wgslsmith_add_i32(_wgslsmith_div_i32(1i << (0u % 32u), var_0.a), arg_1.x), arg_0);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_2 {
    return arg_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_3(Struct_1(select(true, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]))), ~firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_4(Struct_3(func_1(true, vec2<i32>(1i, u_input.a), Struct_2(u_input.a, true)), _wgslsmith_mult_u32(1u, 0u)), -927f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(max(u_input.b, u_input.c.x), u_input.c.x) >> (_wgslsmith_mod_u32(~0u, 0u ^ u_input.b) % 32u), 20u)], vec4<i32>(~u_input.a, u_input.a, -5184i, u_input.a << (7462u % 32u)) ^ select(vec4<i32>(0i, u_input.a, 62064i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(-1i, 26504i, -35229i, u_input.a)), true)), u_input.c.x);
    let var_1 = global4[_wgslsmith_index_u32(u_input.c.x, 14u)];
    var var_2 = Struct_1(all(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(99u, 12u)], global0[_wgslsmith_index_u32(85465u, 12u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 12u)], var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, false)), vec3<bool>(var_1.a.b, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(var_0.b, 12u)]), true), !select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(42191u, 12u)]), vec3<bool>(var_0.a.b, global0[_wgslsmith_index_u32(var_1.b, 12u)], false), global0[_wgslsmith_index_u32(15212u, 12u)]), !var_1.a.b)), ~firstLeadingBit(~min(vec3<i32>(u_input.a, u_input.a, var_0.a.a), vec3<i32>(12203i, 2147483647i, var_1.a.a))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(-829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1268f)) + -1160f)), _wgslsmith_f_op_f32(select(-1634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1104f + -969f)))), any(!select(vec3<bool>(var_1.a.b, global0[_wgslsmith_index_u32(43441u, 12u)], true), vec3<bool>(true, false, true), vec3<bool>(var_2.a, false, true))))));
    var var_4 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(~u_input.b, var_1.b)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, 257f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xx - var_3.xz))), vec2<f32>(_wgslsmith_f_op_f32(step(-200f, -1115f)), _wgslsmith_f_op_f32(sign(948f))))), u_input.c.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f * 180f)), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1132f))), 611f, _wgslsmith_f_op_f32(select(305f, -161f, var_2.a))), false)), ~min(u_input.c, u_input.c >> (vec4<u32>(11118u, var_1.b, var_1.b, u_input.c.x) % vec4<u32>(32u))));
}


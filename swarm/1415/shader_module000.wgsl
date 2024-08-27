struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-10822i, vec3<f32>(-472f, -240f, 539f)), Struct_1(i32(-2147483648), vec3<f32>(1279f, 922f, -1200f)), Struct_1(0i, vec3<f32>(-574f, 984f, -1327f)), Struct_1(1i, vec3<f32>(667f, 1150f, 1314f)), Struct_1(1i, vec3<f32>(-237f, -333f, 1709f)), Struct_1(i32(-2147483648), vec3<f32>(-1497f, -561f, -424f)), Struct_1(-9255i, vec3<f32>(1631f, -623f, -707f)), Struct_1(-7165i, vec3<f32>(-714f, 152f, -1052f)), Struct_1(-11058i, vec3<f32>(-324f, -2169f, 583f)));

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = vec2<u32>(0u, 54498u);
    var var_1 = -165f;
    var var_2 = 1025f;
    global0 = global3.b;
    let var_3 = arg_3.d;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-293f * 1315f)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    var var_0 = Struct_2(select(-global3.a, global3.a, any(select(select(vec4<bool>(arg_0.x, false, true, true), arg_0, vec4<bool>(arg_0.x, false, arg_0.x, false)), arg_0, !vec4<bool>(true, arg_0.x, false, true)))), false, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(global3.a, global3.b));
    let var_1 = Struct_2(-393i, false, var_0.c & ~vec3<u32>(var_0.c.x << (17455u % 32u), u_input.a.x, var_0.c.x), Struct_1(1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(min(global3.b.x, -1638f)), arg_1) - var_0.d.b)));
    var var_2 = !(!arg_0.xyz);
    var var_3 = -1531f;
    var var_4 = _wgslsmith_f_op_f32(sign(135f));
    return ~var_0.c.x >> (1u % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = any(!vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, true, true))));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(!select(select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, false, false, true)), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(!var_0, true, vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_2(global3.a, true, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), Struct_1(global3.a, vec3<f32>(global3.b.x, -1396f, -413f)))))))), ~max(0u, func_4(vec4<bool>(false, var_0, true, var_0), 100f))), 9u)];
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.x * _wgslsmith_div_f32(373f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(863f + -1459f))) < global3.b.x);
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~firstLeadingBit(u_input.a)), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(54209u, 4294967295u, u_input.a.x, 0u), u_input.a), countOneBits(u_input.a)))), 9u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<f32> {
    var var_0 = false;
    global3 = func_2();
    return _wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(-func_2().b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2250f, -205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1002f - global0.x))), _wgslsmith_f_op_vec3_f32(global3.b * _wgslsmith_f_op_vec3_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), 9u)], ~494i & _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, global3.a, global3.a), vec3<i32>(-33780i, global3.a, global3.a))))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, select(false, false, false)), true)));
    let var_1 = -_wgslsmith_div_i32(global3.a, func_2().a);
    var var_2 = func_2();
    global3 = Struct_1(_wgslsmith_dot_vec4_i32(~((vec4<i32>(-8745i, var_2.a, var_1, -31912i) ^ vec4<i32>(var_1, var_2.a, -2147483647i, global3.a)) << (~vec4<u32>(94000u, 26510u, 4294967295u, 365u) % vec4<u32>(32u))), max(max(vec4<i32>(var_1, var_1, var_1, var_2.a) | vec4<i32>(global3.a, var_1, -1i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(48664i, global3.a, -1i, global3.a), vec4<i32>(var_1, var_1, global3.a, -2147483647i), vec4<i32>(global3.a, global3.a, var_1, 0i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-54222i, 2147483647i, var_1, -2147483647i), select(vec4<i32>(-2147483647i, var_1, -21911i, var_2.a), vec4<i32>(0i, var_1, -20817i, -1i), vec4<bool>(true, true, false, true))))), global3.b);
    var var_3 = global2[_wgslsmith_index_u32(~(~u_input.a.x), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1253f)) - 683f), _wgslsmith_mod_i32(-8769i, var_3.a), 27456i);
}


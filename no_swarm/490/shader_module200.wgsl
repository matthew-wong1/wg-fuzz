struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: i32;

var<private> global2: array<Struct_4, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_4 {
    global2 = array<Struct_4, 19>();
    global2 = array<Struct_4, 19>();
    let var_0 = -1000f;
    var var_1 = global0[_wgslsmith_index_u32(arg_0.x, 4u)];
    var var_2 = Struct_3(0u, Struct_2(true, ~vec3<u32>(23838u, _wgslsmith_sub_u32(53887u, 0u), ~7220u), Struct_1(arg_0.wx, _wgslsmith_sub_vec4_u32(~vec4<u32>(9584u, u_input.a.x, 42018u, 0u), var_1.b << (vec4<u32>(35071u, var_1.a.x, 46334u, var_1.b.x) % vec4<u32>(32u))))), var_0, -1i, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(15037u, u_input.a.x), vec2<u32>(0u, var_1.a.x)) >> (1u % 32u), 15317u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_0, vec4<u32>(58721u, 0u, 8744u, arg_0.x)), ~arg_0)));
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> vec2<u32> {
    global2 = array<Struct_4, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, 256f, 1215f, 1283f) + vec4<f32>(-720f, -1205f, -1149f, -358f)) * _wgslsmith_div_vec4_f32(vec4<f32>(214f, 2114f, -1463f, 689f), vec4<f32>(760f, 309f, 1000f, -1114f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, 525f, 370f, -1130f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-946f + 875f), -640f, 383f, _wgslsmith_f_op_f32(-376f * -429f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-604f, -1138f, 1000f, -1485f) * vec4<f32>(349f, -1089f, 764f, -177f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1512f, 433f, -1511f, -137f)))))));
    global2 = array<Struct_4, 19>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-415f))), 1168f);
    global1 = -2147483647i;
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, arg_0), u_input.a.x), 11158u ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.a.x) >> (_wgslsmith_clamp_u32(0u, arg_0, arg_0) % 32u), 4294967295u));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 4>();
    var var_0 = func_2(arg_2.b, global2[_wgslsmith_index_u32(arg_2.a.x ^ abs(arg_0.c.b.x), 19u)], u_input.c);
    global0 = array<Struct_1, 4>();
    let var_1 = vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_0.c.a.x), ~74082u, _wgslsmith_dot_vec2_u32(func_3(~1u, u_input.c), arg_0.c.b.yx), ~(~countOneBits(51715u)) ^ arg_2.a.x);
    var var_2 = ~select(arg_2.b.xy, arg_2.a, vec2<bool>(true, arg_0.a));
    return Struct_2(arg_0.a, ~_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(20516u, arg_0.b.x, 18349u), arg_0.c.b.zxx), vec3<u32>(arg_2.a.x ^ 50595u, abs(51286u), ~arg_2.a.x)), Struct_1(u_input.a.xx, ~(~vec4<u32>(u_input.a.x, arg_2.b.x, arg_0.c.a.x, var_1.x))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(abs(arg_0) ^ (u_input.a.x ^ arg_3.b.x)), 4294967295u), _wgslsmith_clamp_u32(arg_3.b.x ^ reverseBits(86016u), _wgslsmith_div_u32(~arg_3.c.b.x, ~_wgslsmith_clamp_u32(1u, 0u, u_input.a.x)), select(_wgslsmith_div_u32(u_input.a.x, 4294967295u) | ~34175u, 52541u, !(!arg_1))), _wgslsmith_div_u32(~_wgslsmith_mult_u32(~48842u, arg_3.b.x << (arg_2 % 32u)), abs(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(arg_2, arg_3.c.b.x))))), 19u)];
    var var_1 = !all(select(select(vec4<bool>(true, arg_1, false, arg_1), !vec4<bool>(arg_1, false, true, arg_3.a), true), select(vec4<bool>(arg_3.a, arg_1, true, arg_1), select(vec4<bool>(arg_3.a, arg_1, true, arg_1), vec4<bool>(arg_3.a, arg_1, arg_3.a, false), vec4<bool>(true, false, arg_1, arg_1)), select(vec4<bool>(true, false, arg_3.a, false), vec4<bool>(arg_1, false, true, arg_1), false)), vec4<bool>(-464f != var_0.b.x, true, false, arg_1)));
    var_1 = true;
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1453f);
    return -534f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(51379u, true, u_input.a.x, func_1(Struct_2(true, vec3<u32>(u_input.a.x, u_input.a.x, 25519u), Struct_1(u_input.a.zx, vec4<u32>(u_input.a.x, 35811u, u_input.a.x, u_input.a.x))), -1150f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))))), -284f)));
}


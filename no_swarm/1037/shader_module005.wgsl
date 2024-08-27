struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<Struct_1, 30>;

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1, -953f)))))));
    var var_1 = global1[_wgslsmith_index_u32(global0.a.x, 6u)];
    var_1 = Struct_2(~abs(_wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(global0.a.x, 4294967295u, 813u, var_1.a.x) | var_1.a)), min(0u, 778u));
    let var_2 = 672f;
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 6u)];
    return ~global0.a.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = Struct_2(_wgslsmith_mod_vec4_u32(global0.a, select(max(max(vec4<u32>(u_input.e.x, global0.a.x, arg_2.a.x, arg_1.a.x), vec4<u32>(arg_1.a.x, 4294967295u, u_input.e.x, u_input.e.x)), ~arg_1.a), arg_1.a, false)), select(~abs(17436u), arg_2.b, !(!all(vec4<bool>(true, false, true, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2359f, _wgslsmith_f_op_f32(791f - -847f))), -1085f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = global0.b;
    global3 = all(vec2<bool>(true, true));
    global3 = false;
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(13323u >= global0.a.x, true, arg_2 != _wgslsmith_f_op_f32(-846f + -145f)), any(vec3<bool>(true, any(vec2<bool>(false, false)), false)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(func_4(~(-u_input.c.x), Struct_2(vec4<u32>(u_input.e.x, global0.a.x, 0u, 1u), _wgslsmith_mod_u32(1u, 102787u)), global1[_wgslsmith_index_u32(func_3(61284i, arg_0.a.x, ~vec4<i32>(8527i, -1829i, 0i, u_input.d), vec2<i32>(u_input.c.x, arg_1.x)), 6u)]))));
    return u_input.e.x;
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = ~vec4<u32>(_wgslsmith_add_u32(~select(26719u, 0u, false), u_input.e.x), 2064u, 1u, func_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x, arg_0.b), 30u)], vec2<i32>(2147483647i, u_input.b) << (max(global0.a.xx, vec2<u32>(10969u, u_input.e.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1684f * -299f) - 1f)));
    global2 = array<Struct_1, 30>();
    global1 = array<Struct_2, 6>();
    global3 = false;
    var var_1 = Struct_1(vec3<f32>(-246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-201f, -1000f) - -2690f)));
    return ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(u_input.b), select(u_input.b, u_input.c.x, false) >> (_wgslsmith_dot_vec4_u32(global0.a, global0.a) % 32u)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -10647i, -2147483647i, 0i)), ~vec4<i32>(-1i, u_input.d, 38169i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 6>();
    var var_0 = u_input.e;
    let var_1 = false;
    var var_2 = vec3<i32>(u_input.b << (_wgslsmith_mult_u32(var_0.x, 0u) % 32u), -(~func_1(Struct_2(vec4<u32>(4294967295u, 50506u, var_0.x, 123347u), 99631u))), ~(~(-23429i & _wgslsmith_sub_i32(21087i, u_input.d))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1131f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(286f * -968f), _wgslsmith_f_op_f32(f32(-1f) * -444f))), -2728f, var_1)), (-155f == _wgslsmith_f_op_f32(floor(-986f))) | true)) - -1627f);
    var var_4 = ~(-1i) >> (u_input.e.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), 1i), ~(~0u), _wgslsmith_sub_i32(var_2.x, -13186i), _wgslsmith_f_op_f32(select(-185f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(211f - var_3))), 1000f), !(!(u_input.b >= var_2.x)))));
}


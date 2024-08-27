struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec2<i32>, 27>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 19>();
    global1 = array<vec2<i32>, 27>();
    var var_0 = -36324i;
    let var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f + 1666f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2150f, -1672f)), -979f, true))))));
    global1 = array<vec2<i32>, 27>();
    return _wgslsmith_mod_u32(4294967295u, 1u);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = select(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(), ~0u, ~43162u, 1u >> (0u % 32u)), select(vec4<u32>(35542u, arg_0.c.x, arg_0.c.x, 44175u), vec4<u32>(5240u, arg_0.c.x, arg_0.c.x, 21915u), arg_0.c.x == arg_0.c.x)), ~(8129u ^ arg_0.c.x), _wgslsmith_sub_u32(4294967295u, 1u)), max(~vec4<u32>(_wgslsmith_add_u32(arg_0.c.x, arg_0.c.x), ~arg_0.c.x, 4294967295u, arg_0.c.x), ~(~(~vec4<u32>(4294967295u, 0u, 36662u, 0u)))), !any(vec2<bool>(true, true)));
    global1 = array<vec2<i32>, 27>();
    let var_1 = ~arg_0.e.x;
    let var_2 = firstLeadingBit(_wgslsmith_div_i32(-7385i, -1i));
    global2 = array<Struct_1, 20>();
    return _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(-arg_0.d.x)));
}

fn func_1() -> vec3<bool> {
    let var_0 = !(!(!all(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1926f * -903f)), _wgslsmith_f_op_f32(min(-305f, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(23042u, 19u)])))), 579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(784f, -342f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), 725f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(368f - _wgslsmith_div_f32(253f, -520f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-703f + 1000f) + _wgslsmith_f_op_f32(floor(-761f)))), 897f), !vec4<bool>(false, !all(vec3<bool>(var_0, false, var_0)), var_0, _wgslsmith_sub_i32(u_input.a.x, -2147483647i) == -u_input.b.x)));
    global1 = array<vec2<i32>, 27>();
    global1 = array<vec2<i32>, 27>();
    var var_2 = any(select(vec3<bool>(true, var_0, all(vec2<bool>(false, false))), vec3<bool>(all(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), false)), all(!vec3<bool>(var_0, var_0, true)), false && !var_0), !vec3<bool>(true, all(vec3<bool>(var_0, var_0, var_0)), false)));
    return vec3<bool>(firstLeadingBit(firstTrailingBit(0i) >> (1u % 32u)) != u_input.d, all(!select(vec3<bool>(false, var_0, var_0), !vec3<bool>(var_0, var_0, var_0), var_0)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), all(vec2<bool>(!select(true, false, true), any(func_1()))), select(all(vec4<bool>(false, any(vec4<bool>(false, true, false, true)), u_input.d == u_input.a.x, true)), true, false));
    global0 = array<Struct_1, 19>();
    global2 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1397f), _wgslsmith_f_op_f32(-1092f - -376f))), 921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(138f, 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f - 671f))), 1323f), 63097u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-240f, -395f)), _wgslsmith_f_op_f32(-158f + -1575f))), 1231f)));
}


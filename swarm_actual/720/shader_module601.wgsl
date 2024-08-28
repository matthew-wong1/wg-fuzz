struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(1426u, 1u);

var<private> global2: array<i32, 28>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -863f, _wgslsmith_f_op_f32(arg_2 * arg_0.b), arg_2)))));
}

fn func_1() -> bool {
    global1 = min(countOneBits(~_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(4294967295u, 30169u))) << (select(u_input.c, u_input.c, true) % vec2<u32>(32u)), u_input.c);
    global2 = array<i32, 28>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(458f - 843f) + _wgslsmith_f_op_f32(select(711f, 669f, false))))), 237f);
    var var_1 = global2[_wgslsmith_index_u32(23049u, 28u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(vec2<bool>(true, true), u_input.a, vec4<bool>(false, false, true, true), u_input.a.x), var_0, u_input.a), true, -2901f, global2[_wgslsmith_index_u32(0u, 28u)])))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(var_0 - 724f)))), all(vec2<bool>(u_input.c.x > 1929u, true))))));
    return var_0 >= 928f;
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = select(!vec4<bool>(false, !(!arg_0), arg_0, true), select(!select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), vec4<bool>(false, arg_0, true, arg_0), select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, false, arg_0, true))), select(!select(vec4<bool>(false, false, true, arg_0), vec4<bool>(true, arg_0, arg_0, false), arg_0), !(!vec4<bool>(true, false, false, arg_0)), arg_0), !all(vec4<bool>(true, false, arg_0, arg_0))), !(!select(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, false, arg_0, true), arg_0), vec4<bool>(false, arg_0, false, true), all(vec4<bool>(false, true, arg_0, arg_0)))));
    global2 = array<i32, 28>();
    global0 = var_0.x;
    let var_1 = vec2<f32>(1407f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(523f)))))));
    global2 = array<i32, 28>();
    return _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u ^ _wgslsmith_mod_u32(u_input.c.x, min(global1.x, 1u)), ~global1.x), vec3<u32>(global1.x, ~global1.x, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, !(!(!func_1())));
    var_0 = vec3<bool>(!(!(71340u == u_input.c.x)), true | all(var_0.zy), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(select(~_wgslsmith_div_u32(global1.x, global1.x), u_input.c.x, var_0.x && true), 0u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(64387u, u_input.c.x), 1u, global1.x), vec3<u32>(u_input.c.x | 0u, u_input.c.x, 0u)), func_3(func_1() || true), select(select(vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), true)), vec3<bool>(true, true, true), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(229f))), 1196f))), _wgslsmith_mult_u32(~67193u, u_input.c.x ^ u_input.c.x));
}


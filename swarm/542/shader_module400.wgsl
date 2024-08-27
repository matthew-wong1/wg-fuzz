struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 68i;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<u32, 6>;

var<private> global3: bool = true;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    return Struct_1(~vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.b, ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 0u)), 4294967295u, global4.a.x, select(1u >> (1u % 32u), _wgslsmith_add_u32(27328u, u_input.b.x), false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1546f - 621f), -374f))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = func_2();
    global3 = !(((arg_1.x <= arg_1.x) & all(vec4<bool>(false, false, false, false))) & true) && any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global2 = array<u32, 6>();
    global4 = Struct_2(arg_2.a);
    let var_1 = arg_2;
    return !(~0u < global4.a.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = select(select(vec2<bool>(all(!vec4<bool>(true, arg_0, false, arg_0)), !arg_0), !select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true), !arg_0), select(vec2<bool>(!arg_0, true), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, true), global2[_wgslsmith_index_u32(3181u, 6u)] > global2[_wgslsmith_index_u32(84563u, 6u)]), arg_0)), select(select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), select(!select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(true, false)), vec2<bool>(true, true), !arg_0), !arg_0), arg_0);
    global4 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, 23834u, global4.a.x), vec3<u32>(global4.a.x, global2[_wgslsmith_index_u32(arg_1.a.x, 6u)], 28947u)), ~countOneBits(arg_1.a.zww)), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(23703u, 6u)], countOneBits(arg_1.a.x))));
    var var_1 = arg_1.a;
    let var_2 = func_2();
    var var_3 = Struct_2(arg_1.a.xwy);
    return select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0, var_0.x, arg_0), true), select(!select(!vec4<bool>(arg_0, arg_0, true, arg_0), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(false, arg_0, var_0.x, false), arg_0), true), vec4<bool>(arg_0, all(vec2<bool>(true, true)), ~var_3.a.x >= var_1.x, arg_0), all(vec4<bool>(var_0.x, arg_0, false, func_3(vec3<u32>(var_2.a.x, 1u, 39992u), vec3<i32>(1i, u_input.a.x, 2147483647i), global1[_wgslsmith_index_u32(24921u, 30u)])))), vec4<bool>(all(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false))), var_0.x, arg_0, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(select(global2[_wgslsmith_index_u32(~countOneBits(u_input.b.x), 6u)], ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 6u)], 4294967295u), _wgslsmith_mult_u32(0u, 1u) != ~global4.a.x), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global2[_wgslsmith_index_u32(0u, 6u)]), vec3<u32>(33650u, global2[_wgslsmith_index_u32(7739u, 6u)], 1u)), 6u)], 6u)], 50459u) & global4.a;
    let var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 6u)];
    var_0 = abs(global4.a);
    global3 = all(!select(!func_1(true, Struct_1(vec4<u32>(global4.a.x, 1u, var_0.x, u_input.b.x), vec2<f32>(-251f, -317f)), var_0.x), vec4<bool>(true, true, func_1(false, Struct_1(vec4<u32>(global4.a.x, global4.a.x, 29064u, var_0.x), vec2<f32>(166f, 499f)), u_input.b.x).x, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = -694f;
    global2 = array<u32, 6>();
    var var_3 = global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(min(global4.a.x, ~var_0.x), ~global4.a.x), global4.a.x), 6u)], 6u)], 30u)];
    var var_4 = Struct_2(~vec3<u32>(var_0.x, ~(~global4.a.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(101876u, 1u), global4.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(6826u, var_4.a.x), -320f, ~(~func_2().a), var_2);
}


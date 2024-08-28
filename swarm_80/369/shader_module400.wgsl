struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: array<u32, 30> = array<u32, 30>(0u, 54196u, 60085u, 16001u, 0u, 4294967295u, 70447u, 4294967295u, 4294967295u, 4294967295u, 2059u, 19253u, 54154u, 57957u, 22269u, 2290u, 39595u, 10772u, 4294967295u, 0u, 62732u, 4294967295u, 4294967295u, 53405u, 4294967295u, 76931u, 4294967295u, 4294967295u, 4294967295u, 61846u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)));
    global2 = Struct_2(global2.a, _wgslsmith_f_op_vec4_f32(-global2.b), vec3<bool>(arg_0, arg_0, false), vec4<bool>(true, !(global2.c.x && all(global2.d.wxy)), global2.d.x, true), ~(u_input.a.x << (4294967295u % 32u)));
    var var_1 = ~(-(~(~vec4<i32>(-33528i, -32973i, 10251i, -1i))));
    global0 = 0u;
    let var_2 = -(~(~vec4<i32>(2147483647i, var_1.x, 92430i, var_1.x) >> (vec4<u32>(1u, max(12275u, 31288u), _wgslsmith_div_u32(8566u, global2.e), ~global3[_wgslsmith_index_u32(u_input.b, 30u)]) % vec4<u32>(32u))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - -378f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(668f * global2.a), global2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~4294967295u;
    let var_0 = global2.e;
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1715f - _wgslsmith_f_op_f32(min(-689f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.b.x, global2.a), 1466f))))));
    let var_3 = func_1(global2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(25832u, 3999u, global3[_wgslsmith_index_u32(4294967295u ^ (global3[_wgslsmith_index_u32(u_input.b, 30u)] << (u_input.a.x % 32u)), 30u)]), (countOneBits(vec3<u32>(33105u, u_input.b, 1u)) << (vec3<u32>(var_1.x, 0u, global2.e) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_sub_u32(var_1.x, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)), ~global2.e)));
}


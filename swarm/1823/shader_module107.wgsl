struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<f32>, 9>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec3<bool>(global1.x, global3.d > global3.c.x, false), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.d * global3.c.x), _wgslsmith_div_f32(2132f, global3.d)) > 324f, false, !global1.x), true);
    global0 = vec3<u32>(~countOneBits(~_wgslsmith_mult_u32(21686u, global0.x)), global3.b.x, ~global3.b.x);
    global0 = vec3<u32>(4294967295u, 31258u | global3.b.x, ~((15300u << (u_input.a % 32u)) << ((u_input.c & global3.b.x) % 32u)) >> (_wgslsmith_mult_u32(~(75092u << (global3.b.x % 32u)), 1u) % 32u));
    var var_0 = vec2<bool>(any(!vec4<bool>(select(true, false, true), global3.d == global3.c.x, false, global1.x)), global1.x);
    global1 = !(!select(select(vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, global1.x), !var_0.x), !(!vec3<bool>(true, global1.x, false)), select(select(vec3<bool>(global1.x, global1.x, var_0.x), vec3<bool>(false, false, global1.x), global1.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(global1.x, global1.x, var_0.x), vec3<bool>(var_0.x, false, global1.x)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(max(global3.b, ~global3.b));
}


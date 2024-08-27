struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: Struct_3 = Struct_3(-859i, -29346i, 1325f);

var<private> global2: array<vec4<bool>, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    global2 = array<vec4<bool>, 27>();
    global2 = array<vec4<bool>, 27>();
    global2 = array<vec4<bool>, 27>();
    global2 = array<vec4<bool>, 27>();
    global2 = array<vec4<bool>, 27>();
    return _wgslsmith_f_op_f32(-global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~_wgslsmith_add_i32(firstLeadingBit(global1.b), ~abs(1i)), abs(min(global1.a, 0i)), -26536i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(1u, reverseBits(39102u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x & u_input.c.x, ~u_input.a.x, _wgslsmith_mult_u32(24044u, u_input.c.x)), ~u_input.c), 0u, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-772f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * global1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, ~vec2<i32>(0i, var_0.x))) - global1.c), global1.c));
}


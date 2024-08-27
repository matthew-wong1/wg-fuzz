struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16>;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(72050u, 1915u, 0u, 1u), vec4<u32>(1u, 31734u, 1u, 0u), vec4<u32>(0u, 16272u, 37772u, 14477u), vec4<u32>(43492u, 5026u, 51209u, 1u), vec4<u32>(32990u, 4294967295u, 1u, 5138u), vec4<u32>(48410u, 0u, 17270u, 1u), vec4<u32>(34191u, 79392u, 4294967295u, 0u), vec4<u32>(15372u, 1u, 15644u, 4294967295u), vec4<u32>(1u, 32234u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 20926u), vec4<u32>(64809u, 25765u, 44661u, 86827u), vec4<u32>(0u, 62305u, 53412u, 38298u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-449f, 1090f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1772f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -981f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)))));
    var var_1 = abs(u_input.b);
    var_1 = u_input.b;
    global0 = array<vec4<i32>, 16>();
    var_1 = _wgslsmith_sub_i32(-2147483647i, -8792i);
    global0 = array<vec4<i32>, 16>();
    var var_2 = Struct_1(select(select(vec3<bool>(true, u_input.a == u_input.d, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), false), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), _wgslsmith_mult_u32(~(~u_input.a << (~1u % 32u)), 2095u), vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-839f + _wgslsmith_div_f32(534f, var_0)))), vec3<i32>(-_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.d, 16u)] & vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.a), 16u)]), -(21970i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 17565u), u_input.c.zy) % 32u)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c.x);
}


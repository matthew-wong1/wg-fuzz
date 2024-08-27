struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-173f, 1i, vec4<u32>(0u, 2365u, 95271u, 4294967295u)), Struct_1(-436f, 2147483647i, vec4<u32>(4294967295u, 0u, 0u, 19640u)), Struct_1(-710f, 51637i, vec4<u32>(45502u, 4294967295u, 52209u, 21971u)), true, 1615f);

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-579f, 1456f), vec2<f32>(164f, 1189f));

var<private> global2: vec2<bool>;

var<private> global3: f32 = -619f;

var<private> global4: array<vec4<bool>, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_1() -> f32 {
    let var_0 = global0.b.b;
    let var_1 = Struct_4(global0.a);
    var var_2 = _wgslsmith_div_f32(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a))))));
    let var_3 = reverseBits(vec4<u32>(var_1.a.c.x, 30782u, var_1.a.c.x & global0.a.c.x, 52108u));
    var var_4 = var_1;
    return -617f;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = -(-arg_1.b.b | arg_2.c.x);
    let var_1 = 1610f;
    return ~(~arg_3);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = vec3<u32>(40261u, _wgslsmith_div_u32(global0.c.c.x, global0.b.c.x), ~global0.b.c.x);
    global3 = global0.b.a;
    global2 = !vec2<bool>(arg_1.x, true);
    let var_1 = min(29540u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(select(var_0.zz, vec2<u32>(var_0.x, var_0.x), !vec2<bool>(true, arg_0)), global0.a.c.zz)));
    let var_2 = global0.c.c.x;
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.a), global0.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f * _wgslsmith_f_op_f32(func_1()))))));
    global0 = Struct_3(func_3(!(!(47793u <= global0.c.c.x)), !select(global4[_wgslsmith_index_u32(func_2(vec4<bool>(true, true, global2.x, false), Struct_3(Struct_1(global0.a.a, global0.b.b, vec4<u32>(global0.c.c.x, global0.b.c.x, global0.b.c.x, 8859u)), global0.c, global0.b, true, var_0.x), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, global0.a.b), 1000f, u_input.a), 0u), 14u)], global4[_wgslsmith_index_u32(~67866u, 14u)], !global4[_wgslsmith_index_u32(18430u, 14u)]), false), global0.a, Struct_1(-1000f, 2147483647i, vec4<u32>(~1u, _wgslsmith_mod_u32(0u >> (global0.b.c.x % 32u), global0.b.c.x), global0.a.c.x, ~(13u >> (global0.c.c.x % 32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-435f - global0.c.a))) == 1125f, _wgslsmith_div_f32(1599f, var_0.x));
    var var_1 = ~(~reverseBits(global0.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, vec2<i32>(u_input.a.x, -58938i)), 1u, global1[_wgslsmith_index_u32(~(~4294967295u), 2u)]);
}


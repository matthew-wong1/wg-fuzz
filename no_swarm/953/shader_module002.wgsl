struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 9>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-1105f, -909f, -1611f), vec3<bool>(true, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(186f < _wgslsmith_f_op_f32(step(global3.a.x, 1242f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.xz));
    var var_2 = !global3.b.x == (33702u >= (u_input.a ^ 0u));
    var_2 = (_wgslsmith_add_u32(~(u_input.a | u_input.a), countOneBits(0u)) & ~(~0u)) <= u_input.a;
    global2 = array<vec3<f32>, 9>();
    var var_3 = vec3<u32>(0u, u_input.a, _wgslsmith_div_u32(u_input.a, 64701u) ^ u_input.a);
    var_3 = ~(~(vec3<u32>(var_3.x, 1u, var_3.x) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 60754u, var_3.x), vec4<u32>(62147u, var_3.x, var_3.x, 4294967295u)), var_3.x, 67339u)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_div_vec3_u32(abs(firstTrailingBit(reverseBits(vec3<u32>(3122u, var_3.x, var_3.x)))), vec3<u32>(var_3.x, ~func_1(vec3<i32>(u_input.d, 32926i, u_input.b), Struct_2(global2[_wgslsmith_index_u32(0u, 9u)], global3.b)), ~16487u)));
}


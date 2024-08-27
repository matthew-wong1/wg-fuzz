struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<f32>(-1593f, -635f, 843f), vec4<f32>(-861f, -645f, 591f, -1507f));

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    var var_1 = ~(u_input.c.zzy << (u_input.b.yxz % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 50627u), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(99945u, 0u, 0u, u_input.c.x), u_input.b), max(u_input.b.x, u_input.c.x))), ~12639u >> (~(~u_input.b.x) % 32u));
    let var_2 = -2147483647i;
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.c.x, max(u_input.c.x, u_input.a.x)), 4031u), 19u)];
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstTrailingBit(u_input.c.x), u_input.a.x >> (var_1.x % 32u)), _wgslsmith_div_u32(~55911u, abs(u_input.a.x)), _wgslsmith_clamp_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 19217u), vec2<u32>(u_input.a.x, u_input.b.x)), _wgslsmith_div_u32(var_1.x, u_input.c.x))), _wgslsmith_mod_u32(1u, ~u_input.a.x)), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec4_f32(var_4.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global0.c + global2.c))))), firstLeadingBit(-59965i));
}


struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-154f);

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: array<u32, 29> = array<u32, 29>(0u, 22876u, 1u, 33077u, 0u, 1u, 96782u, 24516u, 0u, 1u, 1u, 1u, 0u, 1u, 1u, 1u, 0u, 33049u, 54805u, 0u, 4294967295u, 85040u, 79623u, 10001u, 1u, 0u, 1u, 16849u, 4294967295u);

var<private> global3: Struct_1 = Struct_1(-500f);

var<private> global4: array<f32, 16>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 16>();
    global3 = Struct_1(-152f);
    let var_0 = _wgslsmith_f_op_f32(-296f + global4[_wgslsmith_index_u32(52329u, 16u)]);
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 47101u, global2[_wgslsmith_index_u32(u_input.b.x, 29u)])) << (vec4<u32>(abs(0u), u_input.b.x, 38824u, ~u_input.b.x) % vec4<u32>(32u)), u_input.b), u_input.b);
    let var_2 = ~(~select(var_1.yx, _wgslsmith_div_vec2_u32(~vec2<u32>(var_1.x, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x) >> (u_input.b.yz % vec2<u32>(32u))), vec2<bool>(true, true)));
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, _wgslsmith_f_op_f32(min(var_0, 2075f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, -187f)) + vec2<f32>(126f, -402f)))))));
}


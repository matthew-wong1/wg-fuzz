struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec3<f32>;

var<private> global2: vec4<i32> = vec4<i32>(35194i, -1i, 47513i, -12463i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(361f, _wgslsmith_f_op_f32(global1.x * 1705f), global1.x);
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, _wgslsmith_f_op_f32(min(global1.x, 1000f)), _wgslsmith_f_op_f32(trunc(327f))))))));
    var var_0 = ~82042u;
    global0 = array<u32, 1>();
    var var_1 = vec2<i32>(u_input.a.x, u_input.c.x << ((1924u & countOneBits(_wgslsmith_add_u32(4137u, u_input.b.x))) % 32u));
    var_1 = global2.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(131f, global1.x, -876f, -394f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 983f, global1.x) * vec4<f32>(1301f, -270f, 756f, global1.x)) * vec4<f32>(global1.x, global1.x, global1.x, -773f))))), ~u_input.c, firstLeadingBit(reverseBits(vec3<u32>(35029u, 4294967295u, 1u))) | ~vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30571u, 1u)], 1u)], 1u)]), 1u, u_input.b.x));
}


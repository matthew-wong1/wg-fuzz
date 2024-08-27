struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: array<i32, 16> = array<i32, 16>(-17939i, 0i, 45505i, i32(-2147483648), 0i, 17562i, 2147483647i, -68123i, 56818i, -16380i, 2102i, 600i, -1i, 8816i, i32(-2147483648), 1i);

var<private> global2: array<bool, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 29304u, 1u, u_input.d.x), vec4<u32>(u_input.d.x, 100596u, u_input.d.x, 4294967295u)) & firstTrailingBit(vec4<u32>(43187u, u_input.a, 4294967295u, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.d.x, firstLeadingBit(18000u), u_input.d.x)) >> (vec4<u32>(~u_input.d.x, u_input.a, 0u, _wgslsmith_mod_u32(~121968u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f + 524f)))) - -342f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~1u) ^ select(~4294967295u, 62603u, global2[_wgslsmith_index_u32(33898u & u_input.d.x, 20u)]), u_input.a), 1u)]);
}


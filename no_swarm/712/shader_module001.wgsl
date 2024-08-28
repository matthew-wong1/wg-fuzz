struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(u_input.a, u_input.a);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(~67975u, 1u), firstLeadingBit(~1u)) > _wgslsmith_dot_vec3_u32(reverseBits(max(vec3<u32>(40129u, u_input.a, 4294967295u) << (vec3<u32>(61155u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<u32>(20937u, u_input.a, u_input.a))), countOneBits(~(vec3<u32>(u_input.a, u_input.a, 18042u) ^ vec3<u32>(4294967295u, u_input.a, 28458u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 224f) * _wgslsmith_f_op_f32(select(-1000f, 978f, true)))))) - _wgslsmith_f_op_f32(min(567f, -273f)));
    global0 = Struct_3(global0.a);
    var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -523f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f - _wgslsmith_f_op_f32(-169f + 2318f))))), _wgslsmith_f_op_f32(f32(-1f) * -486f));
}


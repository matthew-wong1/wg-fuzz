struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: array<u32, 26> = array<u32, 26>(0u, 0u, 1u, 17021u, 9623u, 1u, 4294967295u, 63826u, 4294967295u, 1u, 59640u, 59644u, 4294967295u, 19671u, 7801u, 4294967295u, 16356u, 2125u, 105827u, 4294967295u, 1u, 17609u, 11137u, 0u, 25790u, 13350u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10733u, 26u)], 26u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36374u, 26u)], 26u)], 25658u) | vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32878u, 26u)], 26u)]))), 0u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f * _wgslsmith_f_op_f32(f32(-1f) * -1127f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - -865f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-533f + 131f), _wgslsmith_f_op_f32(305f * -632f))), _wgslsmith_f_op_f32(f32(-1f) * -1402f), 960f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, -260f, -2034f) * vec3<f32>(657f, 215f, -1056f))))));
}


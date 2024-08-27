struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 2>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~(u_input.a.x << (u_input.a.x % 32u)))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(u_input.a.x ^ (max(83526u, global0.a) << (25513u % 32u)), ~global0.a));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1606f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f - 351f)))) + _wgslsmith_f_op_f32(round(-658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1386f, 574f, true))), _wgslsmith_f_op_f32(ceil(-988f))))));
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.a << (60247u % 32u)), ~firstLeadingBit(u_input.a)), (var_1.a >> (23665u % 32u)) | 1u, _wgslsmith_dot_vec2_u32(~(~u_input.a), ~(vec2<u32>(var_1.a, 2735u) ^ vec2<u32>(global0.a, 0u))), ~(abs(var_1.a) & (u_input.a.x | 89153u)));
    var_1 = Struct_1(select(countOneBits(0u), 1u, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(594i, global1[_wgslsmith_index_u32(var_1.a, 2u)], -20690i, reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 2u)])));
}


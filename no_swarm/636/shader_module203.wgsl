struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    global1 = array<Struct_2, 21>();
    global0 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1821f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 26u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(2042u, u_input.a), u_input.e.yx), 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -796f), !all(global2[_wgslsmith_index_u32(52739u, 21u)]))) - global0[_wgslsmith_index_u32(countOneBits(~(u_input.e.x & u_input.c)), 26u)]));
    let var_1 = reverseBits(u_input.b.x);
    let var_2 = global0[_wgslsmith_index_u32(abs(0u), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]), ~reverseBits(vec2<u32>(u_input.d, 5443u)) | vec2<u32>(~var_1, ~(~u_input.c)));
}


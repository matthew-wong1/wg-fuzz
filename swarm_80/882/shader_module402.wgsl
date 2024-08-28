struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(global0.x, 81275u);
    var var_0 = firstTrailingBit(_wgslsmith_mod_u32(0u, abs(~6770u))) < ~4294967295u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f * -711f) + _wgslsmith_f_op_f32(step(-2009f, -1150f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global2 = array<vec2<u32>, 4>();
    var_1 = 1100f;
    let var_2 = Struct_2(!all(select(!vec3<bool>(true, true, global1.c.a), vec3<bool>(false, true, global1.a.a), vec3<bool>(true, true, true))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-368f * 245f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-957f - -1944f) + -344f), 874f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f * 1176f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -751f), -539f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) + _wgslsmith_f_op_f32(select(-1023f, 1137f, true))))));
}


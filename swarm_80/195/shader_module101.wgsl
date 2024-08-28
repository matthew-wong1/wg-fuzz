struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, 0u, 1926f, vec2<u32>(42258u, 81606u)), Struct_1(false, 4294967295u, 1267f, vec2<u32>(0u, 1319u)), Struct_1(false, 73299u, -254f, vec2<u32>(0u, 32984u)), Struct_1(true, 20734u, -476f, vec2<u32>(1u, 22533u)), Struct_1(false, 16648u, 291f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(false, 11572u, -655f, vec2<u32>(0u, 14502u)), Struct_1(false, 91476u, 530f, vec2<u32>(66830u, 1u)), Struct_1(true, 0u, 778f, vec2<u32>(1u, 7421u)), Struct_1(true, 67624u, -601f, vec2<u32>(32929u, 7769u)), Struct_1(false, 56550u, 1000f, vec2<u32>(4294967295u, 0u)), Struct_1(true, 4294967295u, 983f, vec2<u32>(59364u, 0u)), Struct_1(true, 90556u, 281f, vec2<u32>(0u, 1u)), Struct_1(true, 4294967295u, -111f, vec2<u32>(61038u, 20234u)), Struct_1(true, 41901u, -740f, vec2<u32>(1u, 79350u)), Struct_1(true, 1621u, -497f, vec2<u32>(1u, 5520u)), Struct_1(true, 0u, -270f, vec2<u32>(4294967295u, 0u)), Struct_1(false, 0u, -559f, vec2<u32>(19265u, 4294967295u)), Struct_1(true, 1u, -143f, vec2<u32>(1u, 7219u)), Struct_1(false, 5713u, -827f, vec2<u32>(1u, 1u)), Struct_1(true, 72941u, 1546f, vec2<u32>(4294967295u, 44113u)));

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec3<f32>, 19>;

var<private> global3: array<vec2<i32>, 16>;

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a | 0u), var_0.x, ~(~4294967295u) >> (u_input.c.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-800f - _wgslsmith_f_op_f32(136f - 771f)) + 227f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-252f, 884f, -875f, 1589f), vec4<f32>(-294f, 378f, 119f, -277f), true)), _wgslsmith_div_vec4_f32(vec4<f32>(-152f, -1000f, -460f, -184f), vec4<f32>(-1129f, -798f, 908f, -331f)), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-115f, 1772f, 589f, 1000f), vec4<f32>(-1134f, -479f, -403f, -1000f), vec4<bool>(true, true, false, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(799f, -2476f, -717f, 1813f) - vec4<f32>(462f, 1533f, -1174f, 1742f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(1216f, 352f, -1558f, 317f)), vec4<f32>(_wgslsmith_f_op_f32(-980f - 530f), 287f, _wgslsmith_f_op_f32(trunc(-339f)), _wgslsmith_f_op_f32(1619f - -777f)))));
}


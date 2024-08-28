struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(1391f, 1160f, 1241f, -672f), vec4<f32>(395f, 1066f, -1004f, -531f), vec4<f32>(1202f, 901f, -288f, 705f), vec4<f32>(-1048f, 1000f, -1934f, -764f), vec4<f32>(210f, 190f, 475f, -1069f), vec4<f32>(-958f, -1358f, 1268f, 348f), vec4<f32>(-785f, -1777f, -119f, -231f), vec4<f32>(-163f, -197f, 258f, 1976f), vec4<f32>(1052f, 788f, 248f, 376f), vec4<f32>(1721f, -553f, -774f, -174f), vec4<f32>(515f, -1000f, 638f, -408f), vec4<f32>(645f, 537f, 177f, 2272f), vec4<f32>(176f, -960f, -1402f, -2077f), vec4<f32>(-2131f, -1000f, 335f, -1638f), vec4<f32>(436f, 1575f, -1201f, -283f), vec4<f32>(809f, -2161f, 2079f, 518f), vec4<f32>(-1086f, -1328f, 1760f, 1000f), vec4<f32>(615f, -425f, 140f, -713f), vec4<f32>(691f, 1070f, 239f, 816f), vec4<f32>(-512f, -161f, 122f, -828f), vec4<f32>(856f, -1000f, -530f, 303f), vec4<f32>(-207f, 998f, 170f, 524f), vec4<f32>(-594f, -628f, 1305f, 1000f), vec4<f32>(-1012f, 571f, 272f, -1185f), vec4<f32>(780f, -466f, -1000f, -349f), vec4<f32>(-489f, -1000f, 1071f, 686f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~min(17100u << (u_input.a.x % 32u), 123513u), 1u);
    var var_1 = vec2<bool>(false, any(vec4<bool>(true, !(67477u > var_0.x), true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)))));
    var_1 = vec2<bool>(true, true);
    var var_2 = -u_input.d;
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(44148i, ~4294967295u, firstTrailingBit(-27420i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f - 1291f) + _wgslsmith_f_op_f32(-1176f - 450f)), -1000f, _wgslsmith_f_op_f32(686f + -1620f))));
}


struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(259f, 274f, -1006f), vec3<f32>(1575f, -1687f, -637f), vec3<f32>(-665f, -190f, -923f), vec3<f32>(-2932f, -767f, 130f), vec3<f32>(279f, -568f, -1000f), vec3<f32>(1865f, -1387f, -820f), vec3<f32>(-898f, -1032f, 1000f), vec3<f32>(206f, -417f, 891f), vec3<f32>(356f, 1557f, -1912f), vec3<f32>(1018f, 196f, -193f), vec3<f32>(-180f, -766f, -1348f), vec3<f32>(-639f, -2072f, -110f), vec3<f32>(-498f, 1225f, 252f), vec3<f32>(-799f, -465f, 687f), vec3<f32>(-845f, 231f, 1327f), vec3<f32>(-2796f, -1135f, 913f), vec3<f32>(1287f, 1085f, 181f), vec3<f32>(401f, 722f, 1412f), vec3<f32>(1475f, 1941f, 2098f), vec3<f32>(-1016f, 415f, 502f), vec3<f32>(991f, -233f, -1020f));

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<i32>, 17>;

var<private> global4: array<f32, 22> = array<f32, 22>(696f, -2898f, 1000f, 1319f, -2248f, 569f, -801f, -260f, -1000f, 344f, 690f, 927f, -646f, -251f, 993f, 274f, 1188f, 189f, 435f, 1355f, -722f, 1000f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 21>();
    global2 = vec2<u32>(~(~4294967295u), global2.x);
    global3 = array<vec3<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(4294967295u, 21u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(global2.x, 22u)], 739f, 1342f) - _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(global2.x, 21u)], global1[_wgslsmith_index_u32(57695u, 21u)]))))), u_input.a.xz);
}


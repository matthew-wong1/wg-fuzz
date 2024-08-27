struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 29783u), vec3<u32>(0u, 55805u, 54443u));

var<private> global1: u32;

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<vec2<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(0u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-41265i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), -591f, 153f, -275f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(497f, -852f, -1558f, 829f) - vec4<f32>(1184f, -775f, -1413f, 1914f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1685f, 400f, 317f, -1291f) - vec4<f32>(-802f, -1073f, 1347f, -588f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-839f, -879f, -1000f, 460f), vec4<f32>(225f, -520f, -399f, -1357f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 775f, -633f, -3181f) * vec4<f32>(-289f, -1000f, 687f, -411f)), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))))), ~1u);
}


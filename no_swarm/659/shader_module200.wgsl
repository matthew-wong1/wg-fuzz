struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -29430i;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), Struct_1(-2969i, true, vec2<f32>(-440f, -662f), vec3<bool>(false, false, true), -1275f), vec3<bool>(false, true, false)), Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), Struct_1(-1i, false, vec2<f32>(634f, -573f), vec3<bool>(true, false, true), -210f), vec3<bool>(false, true, true)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), Struct_1(-5216i, false, vec2<f32>(-1089f, -379f), vec3<bool>(false, true, false), 601f), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), Struct_1(0i, false, vec2<f32>(-1383f, -1005f), vec3<bool>(false, true, true), -834f), vec3<bool>(false, true, false)), Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), Struct_1(228i, false, vec2<f32>(-1000f, 737f), vec3<bool>(true, true, true), 723f), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), Struct_1(-26460i, false, vec2<f32>(-248f, 970f), vec3<bool>(false, false, false), -1000f), vec3<bool>(false, true, false)), Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), Struct_1(29751i, false, vec2<f32>(-951f, 496f), vec3<bool>(false, true, false), 1103f), vec3<bool>(true, false, false)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), Struct_1(-30441i, false, vec2<f32>(-132f, -1258f), vec3<bool>(false, false, true), -152f), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), Struct_1(29614i, false, vec2<f32>(360f, 1737f), vec3<bool>(true, false, false), 1365f), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), Struct_1(0i, false, vec2<f32>(-138f, 953f), vec3<bool>(true, true, false), 352f), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), Struct_1(77253i, false, vec2<f32>(1015f, -558f), vec3<bool>(true, false, false), 628f), vec3<bool>(true, false, false)), Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), Struct_1(0i, false, vec2<f32>(-1089f, 939f), vec3<bool>(false, false, false), 1162f), vec3<bool>(true, false, false)), Struct_2(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false), Struct_1(1i, false, vec2<f32>(1022f, -706f), vec3<bool>(true, false, true), 177f), vec3<bool>(true, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(766f))) - _wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1914f, _wgslsmith_f_op_f32(ceil(-786f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)) + -1965f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) - -1502f) - -364f));
}


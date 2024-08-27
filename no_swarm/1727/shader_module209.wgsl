struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 21>;

var<private> global3: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(1i, 1i, -59333i), vec3<i32>(-1i, -1i, -10124i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(16710i, 0i, 1i), vec3<i32>(19667i, 2858i, 1i), vec3<i32>(-40240i, i32(-2147483648), -8782i), vec3<i32>(46825i, i32(-2147483648), 62i), vec3<i32>(1i, -14516i, 59870i), vec3<i32>(1i, -71273i, 2147483647i), vec3<i32>(1i, 8736i, -1i), vec3<i32>(298i, 2147483647i, 41757i), vec3<i32>(i32(-2147483648), -1i, 24266i), vec3<i32>(2147483647i, -14844i, 26146i), vec3<i32>(-4582i, 25072i, -79020i), vec3<i32>(1i, 2147483647i, 22077i), vec3<i32>(1i, 31066i, 11672i), vec3<i32>(1i, 1i, 15940i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-1i, i32(-2147483648), 45556i), vec3<i32>(-1i, -12922i, 2147483647i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(i32(-2147483648), 0i, -9254i), vec3<i32>(i32(-2147483648), 2147483647i, -5029i), vec3<i32>(15928i, -29701i, 11576i), vec3<i32>(-100875i, 0i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.d.x, ~34123u, ~12027u);
    var_0 = u_input.d;
    let var_1 = u_input.e;
    global2 = array<f32, 21>();
    var var_2 = 29354u;
    global3 = array<vec3<i32>, 26>();
    var var_3 = vec3<i32>(-u_input.c, var_1.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 351f, -1123f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~u_input.d.x, 21u)]))))), ~u_input.e, -55215i, _wgslsmith_f_op_f32(f32(-1f) * -1090f));
}


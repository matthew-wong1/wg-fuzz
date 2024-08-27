struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1061f, 177f), vec2<f32>(-554f, -922f), vec2<f32>(-283f, -935f), vec2<f32>(-116f, 821f), vec2<f32>(-687f, -1554f));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(59849i), Struct_2(247i), Struct_2(1i), Struct_2(1i), Struct_2(-2061i), Struct_2(30115i), Struct_2(1i), Struct_2(0i), Struct_2(1i), Struct_2(-48462i), Struct_2(8910i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(11353i), Struct_2(23078i), Struct_2(31691i));

var<private> global2: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 5>();
    global2 = array<vec3<bool>, 3>();
    global1 = array<Struct_2, 16>();
    let var_0 = u_input.d.x;
    var var_1 = -449f;
    var var_2 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-885f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-682f, -2968f) - vec2<f32>(-674f, 285f)), global0[_wgslsmith_index_u32(u_input.c.x & var_0, 5u)])))));
}


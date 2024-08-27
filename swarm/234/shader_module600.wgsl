struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: vec4<bool>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13>;

var<private> global1: i32 = 45106i;

var<private> global2: Struct_4 = Struct_4(325f, vec3<i32>(13424i, -29086i, i32(-2147483648)), Struct_2(0u, Struct_1(-1874f, true, vec4<f32>(724f, -1642f, -1043f, 337f), vec2<i32>(0i, 21946i), vec2<i32>(30380i, -41720i)), Struct_1(-485f, false, vec4<f32>(1157f, 1614f, -1193f, -1815f), vec2<i32>(-5452i, i32(-2147483648)), vec2<i32>(22369i, -43341i)), Struct_1(1000f, true, vec4<f32>(-179f, 988f, -434f, 2266f), vec2<i32>(2147483647i, -57017i), vec2<i32>(0i, -23654i)), 26650i), vec3<bool>(false, false, false));

var<private> global3: array<u32, 16> = array<u32, 16>(48129u, 4294967295u, 4294967295u, 34640u, 4294967295u, 38065u, 1u, 4294967295u, 59175u, 1u, 0u, 4294967295u, 27649u, 4294967295u, 26151u, 16373u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -269f, 134f, global2.c.c.a)) * global2.c.d.c) + global2.c.c.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1230f, -688f, global2.a) + global2.c.b.c)), global2.c.d.c.xw, -47752i, u_input.a);
}


struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(2147483647i, -15444i, 21543i, 5516i, -26134i, 0i, -39178i, 1i, 6292i, -64770i, -1i, 0i, -31874i, -1971i, 1i, 1i, i32(-2147483648), -16312i, -39580i, -35157i, 32452i, 51970i, -16322i, 0i, 1i, 0i, 2147483647i, 31436i);

var<private> global1: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(0u, 3583u), vec2<u32>(78785u, 41911u), vec2<u32>(71232u, 44479u), vec2<u32>(4294967295u, 10686u), vec2<u32>(4294967295u, 0u), vec2<u32>(6431u, 1u));

var<private> global2: Struct_3;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!global3.zyz));
    var_0 = !global2.b.wyz;
    global0 = array<i32, 28>();
    var var_1 = ~global2.a;
    var_0 = !global2.b.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, -35596i);
}


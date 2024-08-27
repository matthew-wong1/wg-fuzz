struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 40339u);

var<private> global1: Struct_2 = Struct_2(Struct_1(1u));

var<private> global2: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global3: array<vec4<f32>, 8>;

var<private> global4: f32;

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}


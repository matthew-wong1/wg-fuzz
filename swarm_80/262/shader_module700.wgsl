struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, true)));

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 17> = array<bool, 17>(true, false, false, true, false, true, true, true, true, false, false, true, false, true, true, false, true);

var<private> global3: array<vec4<i32>, 15>;

var<private> global4: array<bool, 18>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(firstTrailingBit(countOneBits(vec4<u32>(31686u, global1.x, u_input.a, global1.x))))));
}


struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-8754i, 17590i, -1i);

var<private> global1: u32;

var<private> global2: array<Struct_2, 30>;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1u, vec4<u32>(1u, 0u, 44582u, 25465u), true, vec2<bool>(true, true), 25541i), Struct_1(41347u, vec4<u32>(46461u, 0u, 28555u, 16046u), false, vec2<bool>(true, true), -43643i), Struct_1(4294967295u, vec4<u32>(1u, 40199u, 41463u, 0u), false, vec2<bool>(true, true), -1695i), Struct_1(4294967295u, vec4<u32>(24549u, 22505u, 20108u, 21682u), false, vec2<bool>(false, false), 0i), Struct_1(1u, vec4<u32>(0u, 4294967295u, 1u, 10953u), false, vec2<bool>(false, true), -1i), Struct_1(10792u, vec4<u32>(43564u, 4294967295u, 1u, 19995u), true, vec2<bool>(false, false), 13464i), Struct_1(0u, vec4<u32>(1u, 4294967295u, 75098u, 1922u), false, vec2<bool>(false, true), 1i), Struct_1(1u, vec4<u32>(70103u, 4294967295u, 29973u, 0u), false, vec2<bool>(true, true), 1i), Struct_1(5188u, vec4<u32>(4294967295u, 47749u, 1u, 0u), true, vec2<bool>(true, false), -8739i), Struct_1(40596u, vec4<u32>(0u, 21106u, 1u, 11396u), false, vec2<bool>(true, false), 0i), Struct_1(1u, vec4<u32>(0u, 0u, 50483u, 3035u), true, vec2<bool>(false, false), i32(-2147483648)), Struct_1(4294967295u, vec4<u32>(4294967295u, 94240u, 105741u, 72312u), true, vec2<bool>(true, true), 3760i), Struct_1(17198u, vec4<u32>(42316u, 1u, 1u, 72639u), true, vec2<bool>(false, true), 35262i), Struct_1(20450u, vec4<u32>(18511u, 4294967295u, 26716u, 8147u), false, vec2<bool>(false, false), i32(-2147483648)), Struct_1(16773u, vec4<u32>(0u, 4294967295u, 4294967295u, 35769u), false, vec2<bool>(false, false), -32977i), Struct_1(4294967295u, vec4<u32>(1u, 67348u, 1u, 31849u), true, vec2<bool>(true, false), -3725i), Struct_1(1u, vec4<u32>(0u, 1u, 75231u, 4294967295u), false, vec2<bool>(true, true), 47272i), Struct_1(74163u, vec4<u32>(1u, 0u, 0u, 6405u), true, vec2<bool>(true, false), i32(-2147483648)), Struct_1(75942u, vec4<u32>(1u, 4294967295u, 14472u, 32636u), true, vec2<bool>(true, false), -1i), Struct_1(88960u, vec4<u32>(0u, 44111u, 37405u, 0u), true, vec2<bool>(true, true), -18338i), Struct_1(582u, vec4<u32>(0u, 4294967295u, 6443u, 5119u), true, vec2<bool>(true, true), 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(33735u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}


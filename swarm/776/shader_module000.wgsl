struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<u32, 19>;

var<private> global1: array<bool, 25>;

var<private> global2: array<bool, 9>;

var<private> global3: vec3<f32> = vec3<f32>(153f, -702f, 605f);

var<private> global4: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(false, 1u, vec3<bool>(false, false, false), 4294967295u)), Struct_2(Struct_1(false, 10256u, vec3<bool>(true, false, true), 9617u)), Struct_2(Struct_1(false, 74785u, vec3<bool>(true, false, false), 35305u)), Struct_2(Struct_1(false, 4294967295u, vec3<bool>(false, true, true), 0u)), Struct_2(Struct_1(false, 0u, vec3<bool>(false, false, true), 334u)), Struct_2(Struct_1(true, 0u, vec3<bool>(true, false, true), 15831u)), Struct_2(Struct_1(true, 24832u, vec3<bool>(true, true, false), 0u)), Struct_2(Struct_1(true, 1u, vec3<bool>(true, false, false), 0u)), Struct_2(Struct_1(false, 67857u, vec3<bool>(false, false, false), 7546u)), Struct_2(Struct_1(true, 37130u, vec3<bool>(false, true, true), 0u)), Struct_2(Struct_1(false, 4294967295u, vec3<bool>(true, false, false), 0u)), Struct_2(Struct_1(false, 3330u, vec3<bool>(false, false, true), 73147u)), Struct_2(Struct_1(true, 85150u, vec3<bool>(false, false, true), 4294967295u)), Struct_2(Struct_1(false, 27134u, vec3<bool>(true, false, true), 26861u)), Struct_2(Struct_1(false, 46608u, vec3<bool>(false, false, true), 1229u)), Struct_2(Struct_1(false, 14249u, vec3<bool>(true, true, true), 4294967295u)), Struct_2(Struct_1(true, 1u, vec3<bool>(true, false, false), 1u)), Struct_2(Struct_1(true, 21448u, vec3<bool>(true, true, false), 11079u)), Struct_2(Struct_1(false, 3202u, vec3<bool>(true, true, false), 0u)), Struct_2(Struct_1(true, 61759u, vec3<bool>(false, true, true), 1u)), Struct_2(Struct_1(false, 4294967295u, vec3<bool>(true, false, true), 4294967295u)), Struct_2(Struct_1(false, 4294967295u, vec3<bool>(true, true, false), 32759u)), Struct_2(Struct_1(true, 12166u, vec3<bool>(true, true, true), 13283u)), Struct_2(Struct_1(false, 0u, vec3<bool>(false, false, false), 132100u)), Struct_2(Struct_1(true, 14959u, vec3<bool>(false, false, false), 4294967295u)), Struct_2(Struct_1(false, 45521u, vec3<bool>(false, false, false), 4294967295u)), Struct_2(Struct_1(true, 70282u, vec3<bool>(true, true, true), 90816u)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}


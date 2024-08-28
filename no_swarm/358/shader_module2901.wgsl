struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
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

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(91267u, 46796u), vec2<u32>(1u, 7947u), vec2<u32>(24567u, 1396u), vec2<u32>(34366u, 71305u), vec2<u32>(76095u, 4294967295u), vec2<u32>(8374u, 38566u), vec2<u32>(4294967295u, 63322u), vec2<u32>(0u, 27902u), vec2<u32>(4294967295u, 1u), vec2<u32>(41991u, 4294967295u), vec2<u32>(29964u, 5125u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4305u, 36517u), vec2<u32>(0u, 48741u), vec2<u32>(57961u, 82408u), vec2<u32>(9804u, 31913u), vec2<u32>(61551u, 68522u), vec2<u32>(11853u, 1u), vec2<u32>(50826u, 31687u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(41427u, 0u), vec2<u32>(1u, 1714u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 45271u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(3651u, 51602u));

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-107f);
}


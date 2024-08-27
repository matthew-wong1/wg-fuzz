struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<u32>(0u, 1u, 4294967295u), 1u, 69826u), Struct_4(vec3<u32>(4294967295u, 4294967295u, 424u), 0u, 0u), Struct_4(vec3<u32>(11501u, 0u, 19323u), 15482u, 17626u), Struct_4(vec3<u32>(101309u, 4294967295u, 46243u), 71793u, 3182u), Struct_4(vec3<u32>(4294967295u, 0u, 0u), 52028u, 0u), Struct_4(vec3<u32>(6081u, 4294967295u, 1u), 1u, 43195u), Struct_4(vec3<u32>(52849u, 1u, 0u), 53104u, 0u), Struct_4(vec3<u32>(1u, 4294967295u, 35272u), 51165u, 1u), Struct_4(vec3<u32>(0u, 0u, 5701u), 4294967295u, 0u), Struct_4(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 35837u, 72932u), Struct_4(vec3<u32>(62106u, 42286u, 82667u), 50389u, 1u), Struct_4(vec3<u32>(0u, 15946u, 0u), 4294967295u, 4294967295u), Struct_4(vec3<u32>(37093u, 12956u, 4294967295u), 56291u, 1u), Struct_4(vec3<u32>(4294967295u, 17144u, 57346u), 1u, 32703u), Struct_4(vec3<u32>(97875u, 3761u, 21195u), 4294967295u, 14760u), Struct_4(vec3<u32>(0u, 0u, 17787u), 17720u, 0u), Struct_4(vec3<u32>(1u, 4294967295u, 44951u), 21497u, 49252u), Struct_4(vec3<u32>(84118u, 27820u, 0u), 1u, 0u), Struct_4(vec3<u32>(22328u, 8909u, 98857u), 63013u, 5579u), Struct_4(vec3<u32>(4294967295u, 51628u, 26859u), 0u, 9497u), Struct_4(vec3<u32>(22525u, 0u, 3356u), 124816u, 41445u), Struct_4(vec3<u32>(40423u, 14192u, 0u), 4294967295u, 1u), Struct_4(vec3<u32>(20486u, 4294967295u, 13216u), 4294967295u, 0u), Struct_4(vec3<u32>(64901u, 4294967295u, 1u), 77654u, 12996u), Struct_4(vec3<u32>(14120u, 4294967295u, 28062u), 98478u, 1u), Struct_4(vec3<u32>(19773u, 38753u, 52501u), 59392u, 41186u), Struct_4(vec3<u32>(31496u, 1u, 0u), 47381u, 1u), Struct_4(vec3<u32>(4294967295u, 41457u, 0u), 4294967295u, 0u), Struct_4(vec3<u32>(8284u, 29892u, 1u), 4294967295u, 4294967295u), Struct_4(vec3<u32>(4294967295u, 1u, 0u), 46879u, 113757u), Struct_4(vec3<u32>(0u, 25835u, 1u), 4294967295u, 1u), Struct_4(vec3<u32>(99175u, 1u, 1u), 12373u, 4294967295u));

var<private> global1: u32 = 0u;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: vec2<f32> = vec2<f32>(-974f, -1230f);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a));
}


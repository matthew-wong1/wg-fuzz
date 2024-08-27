struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, false, true, false, false, false, false, true, false, false, true, false, false, true, true, true, false, true, true, true, true, false, false, false, true, false, true);

var<private> global1: vec3<i32> = vec3<i32>(1i, 2147483647i, 15542i);

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(i32(-2147483648), 176f, 4294967295u, vec3<f32>(-1000f, 1184f, -1758f)), Struct_2(11565i, 1000f, 4294967295u, vec3<f32>(326f, 1554f, -1680f)), Struct_2(1i, -1000f, 4294967295u, vec3<f32>(1809f, 1566f, -915f)), Struct_2(31126i, -635f, 4294967295u, vec3<f32>(-1146f, 777f, 183f)), Struct_2(4836i, -348f, 0u, vec3<f32>(-1079f, 745f, -152f)), Struct_2(-48018i, 281f, 0u, vec3<f32>(342f, -1391f, -914f)), Struct_2(1i, -2079f, 0u, vec3<f32>(273f, 110f, -244f)), Struct_2(-34789i, 542f, 51552u, vec3<f32>(-633f, 1494f, 1734f)), Struct_2(2147483647i, -618f, 120187u, vec3<f32>(-428f, -1000f, -690f)), Struct_2(79155i, 494f, 36759u, vec3<f32>(-2809f, -448f, 769f)), Struct_2(-39526i, 1091f, 4294967295u, vec3<f32>(-1000f, 589f, -225f)), Struct_2(i32(-2147483648), 1000f, 6233u, vec3<f32>(-1067f, -2218f, -505f)), Struct_2(1i, 120f, 22100u, vec3<f32>(-1252f, 120f, -807f)), Struct_2(2147483647i, -1005f, 68466u, vec3<f32>(-1058f, 130f, -1020f)), Struct_2(10201i, 1725f, 66976u, vec3<f32>(-144f, 1010f, -687f)), Struct_2(2147483647i, 865f, 4294967295u, vec3<f32>(-1264f, -1000f, -310f)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}


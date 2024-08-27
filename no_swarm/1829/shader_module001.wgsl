struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
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

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<f32>(-1000f, 547f, -380f)), Struct_1(vec3<f32>(-196f, 1814f, -452f)), Struct_1(vec3<f32>(159f, 826f, 850f)), Struct_1(vec3<f32>(588f, -1847f, 498f)), Struct_1(vec3<f32>(683f, -177f, -329f)), Struct_1(vec3<f32>(1221f, 749f, -619f)), Struct_1(vec3<f32>(-534f, 1150f, -639f)), Struct_1(vec3<f32>(-539f, -1601f, -791f)), Struct_1(vec3<f32>(-139f, 437f, 141f)), Struct_1(vec3<f32>(497f, -932f, -644f)));

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_3(vec2<i32>(-1i, -1i))), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), 24666i))), Struct_4(Struct_3(vec2<i32>(-1i, i32(-2147483648)))), Struct_4(Struct_3(vec2<i32>(24050i, 0i))));

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-1534f, 631f, -776f, 1066f), vec4<f32>(168f, -389f, -953f, -1122f), vec4<f32>(-1165f, -1251f, -720f, -2363f), vec4<f32>(879f, 517f, -298f, 391f), vec4<f32>(-373f, -1076f, 714f, 1413f), vec4<f32>(460f, -312f, 202f, -596f), vec4<f32>(611f, -1000f, 968f, -429f), vec4<f32>(-263f, 2940f, -1000f, -481f), vec4<f32>(-600f, 1000f, 779f, 1211f), vec4<f32>(-1164f, 1202f, -724f, -112f), vec4<f32>(290f, 694f, -100f, 213f), vec4<f32>(312f, 509f, -309f, 939f), vec4<f32>(-631f, 567f, 981f, 1328f), vec4<f32>(110f, -782f, -1218f, -139f), vec4<f32>(664f, 899f, -159f, 761f), vec4<f32>(733f, -1288f, -586f, 266f));

var<private> global3: array<vec3<bool>, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, true, !all(select(global3[_wgslsmith_index_u32(82989u, 11u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)], false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(15947i, u_input.a.x, -2147483647i, -u_input.a.x), vec4<i32>(firstTrailingBit(u_input.a.x), u_input.a.x, i32(-1i) * -4299i, u_input.e))));
}


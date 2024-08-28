struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)));

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(48930u, 51190u, 0u, 35547u), vec4<u32>(22360u, 6079u, 1u, 7677u), vec4<u32>(1u, 35566u, 1u, 115113u), vec4<u32>(0u, 41900u, 32934u, 52466u), vec4<u32>(54933u, 55006u, 1u, 2466u), vec4<u32>(16857u, 0u, 0u, 4294967295u), vec4<u32>(1u, 59239u, 0u, 4294967295u), vec4<u32>(25645u, 6983u, 0u, 4539u), vec4<u32>(1u, 112975u, 9556u, 0u), vec4<u32>(71157u, 45843u, 47118u, 4294967295u), vec4<u32>(4294967295u, 0u, 156420u, 0u), vec4<u32>(31992u, 55759u, 47938u, 1u), vec4<u32>(0u, 0u, 55589u, 1u), vec4<u32>(4167u, 4971u, 24925u, 4294967295u), vec4<u32>(21692u, 17789u, 61007u, 29267u), vec4<u32>(97354u, 19232u, 0u, 1u), vec4<u32>(1890u, 0u, 4294967295u, 21366u), vec4<u32>(4294967295u, 111517u, 1u, 59435u), vec4<u32>(11721u, 12762u, 16467u, 4294967295u));

var<private> global3: u32 = 57847u;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 461f;
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(27035i, -u_input.a.x, u_input.a.x));
}


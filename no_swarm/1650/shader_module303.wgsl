struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-27445i, -6959i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 26856i), vec2<i32>(0i, 27264i), vec2<i32>(43453i, 9501i), vec2<i32>(2147483647i, 27318i), vec2<i32>(2147483647i, 16965i), vec2<i32>(-42360i, 7129i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-91141i, -11510i), vec2<i32>(42852i, 8726i), vec2<i32>(2147483647i, 12138i));

var<private> global1: array<i32, 17> = array<i32, 17>(2147483647i, -14313i, i32(-2147483648), 0i, i32(-2147483648), 29993i, 0i, 0i, 51446i, 2147483647i, 18353i, 0i, i32(-2147483648), 2147483647i, -26489i, -1i, -32936i);

var<private> global2: u32 = 25939u;

var<private> global3: Struct_1 = Struct_1(true, 17558i);

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, -38052i), Struct_1(true, 32848i), Struct_1(false, 33574i), Struct_1(true, -20500i), Struct_1(true, 11656i), Struct_1(true, 45111i), Struct_1(true, 1i), Struct_1(false, 2147483647i), Struct_1(false, 4760i), Struct_1(false, 2147483647i), Struct_1(true, 2147483647i), Struct_1(true, 27097i), Struct_1(false, -30063i), Struct_1(true, 1i), Struct_1(false, -24318i), Struct_1(true, 108i), Struct_1(false, -581i), Struct_1(false, -1i), Struct_1(true, 22559i), Struct_1(false, 25802i), Struct_1(true, 2147483647i));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 82712i, u_input.e.x, u_input.c.x, 84137u);
}


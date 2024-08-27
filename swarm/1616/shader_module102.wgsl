struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 50618u, 1u);

var<private> global1: i32 = -8238i;

var<private> global2: array<Struct_4, 16>;

var<private> global3: Struct_2 = Struct_2(true, 63741u, Struct_1(4573u, 46877u, 77262u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<bool>(false, true, true, false));

@compute
@workgroup_size(1)
fn main() {
    global1 = -6745i;
    global2 = array<Struct_4, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(max(vec4<i32>(0i, -21291i, -21621i, -2147483647i), vec4<i32>(2147483647i, 8576i, 55428i, 1i)) >> (u_input.a % vec4<u32>(32u))));
}


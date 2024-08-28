struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, true, false, true, true, true, false, true, false, false, false, true, true, false, true, true, true, true, true, true, true, false, false, false, true, true, true);

var<private> global1: i32;

var<private> global2: i32 = -1i;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~37122u;
    return StorageBuffer(~u_input.c.x, u_input.a.xyw, select(1i, -18482i, true) << (~13810u % 32u), reverseBits(~(~_wgslsmith_add_vec2_u32(u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}


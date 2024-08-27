struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<bool>(true, false, false, true), vec4<i32>(2054i, -1787i, 0i, i32(-2147483648))), Struct_3(vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 0i, 10604i, 0i)), Struct_3(vec4<bool>(true, true, false, true), vec4<i32>(2315i, i32(-2147483648), -6760i, -1i)), Struct_3(vec4<bool>(false, true, false, true), vec4<i32>(-37814i, -9521i, -1i, 55237i)), Struct_3(vec4<bool>(true, true, true, false), vec4<i32>(1i, -47027i, 1i, 1i)), Struct_3(vec4<bool>(true, true, true, true), vec4<i32>(1i, i32(-2147483648), -17132i, 2147483647i)), Struct_3(vec4<bool>(false, false, false, true), vec4<i32>(-43882i, 1i, -47834i, 16658i)), Struct_3(vec4<bool>(true, false, false, false), vec4<i32>(1i, 2147483647i, 27980i, 0i)), Struct_3(vec4<bool>(true, false, true, true), vec4<i32>(-35635i, 1i, 2147483647i, -8863i)), Struct_3(vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, i32(-2147483648), -42403i, -6698i)), Struct_3(vec4<bool>(false, true, true, true), vec4<i32>(9921i, 1926i, -32702i, 2147483647i)));

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(81164u, _wgslsmith_mod_u32(4294967295u, 48120u), firstTrailingBit(vec4<i32>(2147483647i, 1i, ~1i, ~1i)));
}


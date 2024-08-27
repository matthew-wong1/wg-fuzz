struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, true, false, true, false, false, false, true, false, true, false, true);

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(14682u, 21886i, Struct_3(vec3<u32>(3447u, 15282u, 0u))), Struct_4(71249u, -11166i, Struct_3(vec3<u32>(28138u, 4294967295u, 41007u))), Struct_4(1u, 32556i, Struct_3(vec3<u32>(101330u, 18594u, 43149u))), Struct_4(0u, 30084i, Struct_3(vec3<u32>(1u, 0u, 84436u))), Struct_4(1u, -1i, Struct_3(vec3<u32>(0u, 43437u, 1u))), Struct_4(1u, 576i, Struct_3(vec3<u32>(0u, 1u, 7222u))), Struct_4(3582u, 0i, Struct_3(vec3<u32>(8767u, 68049u, 21869u))), Struct_4(0u, i32(-2147483648), Struct_3(vec3<u32>(62749u, 33711u, 1u))), Struct_4(4294967295u, 1i, Struct_3(vec3<u32>(11466u, 1u, 0u))), Struct_4(33218u, 582i, Struct_3(vec3<u32>(50903u, 0u, 4294967295u))), Struct_4(1u, 26111i, Struct_3(vec3<u32>(41558u, 0u, 1u))), Struct_4(5627u, 2147483647i, Struct_3(vec3<u32>(22701u, 1u, 4294967295u))), Struct_4(1u, 0i, Struct_3(vec3<u32>(0u, 4294967295u, 19032u))), Struct_4(24687u, 1327i, Struct_3(vec3<u32>(0u, 4930u, 8868u))), Struct_4(4294967295u, 2147483647i, Struct_3(vec3<u32>(4294967295u, 0u, 5984u))), Struct_4(1u, -10774i, Struct_3(vec3<u32>(0u, 1u, 4086u))), Struct_4(0u, 0i, Struct_3(vec3<u32>(4294967295u, 5836u, 1836u))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 17>();
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    var var_0 = u_input.d.xx;
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 12u)];
    var var_2 = firstLeadingBit(reverseBits(countOneBits(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_i32(13052i, u_input.c)), u_input.d.zy);
}


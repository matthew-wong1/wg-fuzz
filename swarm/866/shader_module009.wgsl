struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, true, false, false, true, false, true);

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, true), Struct_1(34106i, -19036i, vec4<bool>(false, false, false, false), 78964u), Struct_1(30174i, 11643i, vec4<bool>(true, false, false, false), 0u), Struct_1(2147483647i, 23270i, vec4<bool>(false, false, false, true), 1u));

var<private> global2: vec3<u32>;

var<private> global3: Struct_2 = Struct_2(vec2<bool>(false, true), Struct_1(-1i, 1i, vec4<bool>(false, false, false, false), 1u), Struct_1(1i, 16261i, vec4<bool>(false, false, true, true), 1u), Struct_1(-19159i, -15703i, vec4<bool>(true, true, true, true), 4294967295u));

var<private> global4: Struct_3 = Struct_3(4294967295u, 27146u, Struct_2(vec2<bool>(true, false), Struct_1(1i, 31687i, vec4<bool>(true, false, false, true), 7324u), Struct_1(24156i, 11421i, vec4<bool>(false, true, false, true), 1u), Struct_1(-24397i, 0i, vec4<bool>(false, false, false, false), 0u)), vec4<f32>(465f, 1014f, -1246f, -178f), vec4<bool>(false, true, true, false));

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    var var_0 = ~global3.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(reverseBits(vec3<i32>(global4.c.d.a, 0i, global1.d.b))));
}


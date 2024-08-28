struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<i32>(-19064i, 1i), -1294f, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 61037u), true), vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<u32>(56302u, 0u, 3917u, 3608u), true)), Struct_1(vec4<u32>(41320u, 41080u, 0u, 0u), true));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: Struct_3 = Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), 2455f, Struct_1(vec4<u32>(66195u, 55029u, 1u, 1u), true), vec3<u32>(4294967295u, 21423u, 19655u), Struct_1(vec4<u32>(7440u, 0u, 37011u, 83678u), true)), Struct_1(vec4<u32>(1u, 104397u, 550u, 30257u), false));

var<private> global3: Struct_2 = Struct_2(vec2<i32>(15407i, 10764i), 138f, Struct_1(vec4<u32>(1u, 23374u, 13845u, 106357u), true), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec4<u32>(4294967295u, 53711u, 0u, 55195u), true));

var<private> global4: vec2<i32> = vec2<i32>(-12342i, 0i);

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global4 = vec2<i32>(var_0.x, firstTrailingBit(firstTrailingBit(max(-2147483647i, global0.a.a.x))));
    global4 = vec2<i32>(0i, select(global4.x, var_0.x, any(select(select(global1.yz, global1.yw, false), global1.wx, global0.a.e.b | global3.c.b))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -33842i);
}


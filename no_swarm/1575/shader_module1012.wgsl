struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(2147483647i, vec4<bool>(true, false, true, false), false, Struct_1(true), Struct_1(true)), Struct_2(i32(-2147483648), vec4<bool>(true, false, false, true), true, Struct_1(false), Struct_1(true)), Struct_2(-17869i, vec4<bool>(false, true, true, false), true, Struct_1(false), Struct_1(true)), Struct_2(0i, vec4<bool>(true, true, false, false), false, Struct_1(true), Struct_1(false)), Struct_2(0i, vec4<bool>(true, false, false, true), true, Struct_1(true), Struct_1(false)), Struct_2(i32(-2147483648), vec4<bool>(true, false, true, true), true, Struct_1(true), Struct_1(true)), Struct_2(1i, vec4<bool>(true, false, false, true), false, Struct_1(true), Struct_1(true)), Struct_2(821i, vec4<bool>(false, true, false, true), true, Struct_1(true), Struct_1(true)), Struct_2(-53976i, vec4<bool>(false, true, true, false), false, Struct_1(true), Struct_1(false)), Struct_2(i32(-2147483648), vec4<bool>(true, false, true, false), false, Struct_1(true), Struct_1(false)), Struct_2(-1i, vec4<bool>(false, true, true, false), false, Struct_1(true), Struct_1(true)), Struct_2(7502i, vec4<bool>(false, false, true, false), false, Struct_1(false), Struct_1(false)), Struct_2(1i, vec4<bool>(false, false, true, false), true, Struct_1(true), Struct_1(true)), Struct_2(i32(-2147483648), vec4<bool>(true, true, false, false), false, Struct_1(true), Struct_1(false)), Struct_2(19627i, vec4<bool>(false, true, false, true), true, Struct_1(false), Struct_1(false)), Struct_2(1i, vec4<bool>(false, true, true, false), true, Struct_1(false), Struct_1(false)), Struct_2(2147483647i, vec4<bool>(false, true, true, true), false, Struct_1(true), Struct_1(false)), Struct_2(18505i, vec4<bool>(false, false, true, false), true, Struct_1(false), Struct_1(false)), Struct_2(17897i, vec4<bool>(true, true, true, true), true, Struct_1(false), Struct_1(false)), Struct_2(26265i, vec4<bool>(true, false, false, true), true, Struct_1(true), Struct_1(false)), Struct_2(1i, vec4<bool>(false, true, true, false), true, Struct_1(false), Struct_1(true)), Struct_2(-10189i, vec4<bool>(false, true, true, true), false, Struct_1(false), Struct_1(true)), Struct_2(-21676i, vec4<bool>(true, true, false, true), true, Struct_1(true), Struct_1(false)), Struct_2(12264i, vec4<bool>(true, true, true, false), false, Struct_1(false), Struct_1(true)), Struct_2(-24663i, vec4<bool>(false, false, false, false), false, Struct_1(false), Struct_1(true)));

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var_0 = false;
    var var_1 = ~(~u_input.a.x << (u_input.b.x % 32u));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, u_input.b.x, -11142i, u_input.a.x);
}


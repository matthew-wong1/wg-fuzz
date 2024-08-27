struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_1 {
    global0 = ~(~global1.a.wy);
    return Struct_1(~firstTrailingBit(vec4<u32>(36661u, u_input.c.x, 0u, 47677u) | abs(vec4<u32>(global1.a.x, 74406u, 0u, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.wy, vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, ~(~u_input.d)), u_input.d, -2147483647i));
}


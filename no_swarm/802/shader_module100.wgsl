struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: Struct_1;

fn func_1() -> Struct_1 {
    var var_0 = ~vec3<u32>(~53659u, u_input.a, ~abs(~u_input.b.x));
    var var_1 = u_input.b;
    return Struct_1(~var_1.x, global0.b, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(firstLeadingBit(114626u), global0.b, vec2<bool>(!global0.b.x, !(!(global0.b.x | true))));
    var var_0 = 43805u;
    let var_1 = func_1();
    var_0 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(0i, u_input.c, u_input.c << (~2196u % 32u))));
}


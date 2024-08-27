struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<f32, 28> = array<f32, 28>(-1000f, 879f, 899f, -1148f, 269f, -1053f, -367f, 822f, 1687f, 1564f, -897f, -230f, -1000f, -2922f, 997f, 766f, -795f, -611f, 1092f, 713f, -501f, -195f, 1000f, 124f, -1107f, -484f, 221f, -614f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> StorageBuffer {
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    global0 = array<Struct_2, 23>();
    global1 = array<f32, 28>();
    var var_0 = Struct_2(u_input.c);
    return StorageBuffer(-1159f, vec4<i32>(var_0.a, _wgslsmith_mod_i32(u_input.c, ~(u_input.c & var_0.a)), 836i, var_0.a), ~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}


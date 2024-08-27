struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-584f, 1591f, 587f);

var<private> global1: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(33838u, Struct_2(Struct_1(false, 33626i, true, i32(-2147483648)), Struct_1(false, -24466i, true, 2147483647i)), 13315u, Struct_3(1384f, true), Struct_4(vec3<bool>(false, false, true), -516f, Struct_2(Struct_1(true, i32(-2147483648), true, -33360i), Struct_1(true, -8899i, true, -15472i)))), Struct_5(0u, Struct_2(Struct_1(false, 5889i, true, -1i), Struct_1(false, 8771i, false, -8286i)), 0u, Struct_3(-1620f, true), Struct_4(vec3<bool>(true, false, true), 248f, Struct_2(Struct_1(true, 0i, true, 15949i), Struct_1(false, -33603i, true, 5690i)))), Struct_5(12783u, Struct_2(Struct_1(false, i32(-2147483648), true, 10809i), Struct_1(true, -17205i, false, 12854i)), 105820u, Struct_3(-1000f, true), Struct_4(vec3<bool>(false, false, false), 1274f, Struct_2(Struct_1(true, 0i, true, -41565i), Struct_1(false, -1i, true, -1i)))), Struct_5(50804u, Struct_2(Struct_1(true, 7634i, false, 10818i), Struct_1(true, 2147483647i, false, -27180i)), 0u, Struct_3(1000f, false), Struct_4(vec3<bool>(true, true, false), -884f, Struct_2(Struct_1(false, 19075i, true, -16620i), Struct_1(true, 2147483647i, true, -30315i)))));

var<private> global2: array<i32, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.c, u_input.c & 7838u, ~u_input.d.x, 62708u), ~vec4<u32>(1u, u_input.d.x, 61392u, u_input.c)) & max(vec4<u32>(u_input.d.x, ~u_input.d.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c, 355u, ~103213u, u_input.c));
    global2 = array<i32, 26>();
    var_0 = vec4<u32>(var_0.x, var_0.x, var_0.x, 32841u);
    let x = u_input.a;
    s_output = StorageBuffer(global0.zx, global0.x, u_input.b, ~abs(var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)));
}


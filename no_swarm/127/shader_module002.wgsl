struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, true, false, true, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, true, true, true, true, true, false, true, true, false, false, false);

var<private> global1: Struct_4 = Struct_4(false, -965f, 607f, vec2<u32>(0u, 23424u), -39468i);

var<private> global2: vec2<u32> = vec2<u32>(37472u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~3448u), ~0u, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(trunc(-522f)));
    let var_2 = Struct_1(~global2.x, vec2<i32>(-12589i, 33690i));
    let var_3 = ~u_input.a.ywx;
    global2 = var_0.zx;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yz);
}


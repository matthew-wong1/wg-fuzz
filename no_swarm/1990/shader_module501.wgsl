struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), false, vec3<f32>(410f, -1000f, 943f));

var<private> global1: array<f32, 30>;

var<private> global2: u32 = 55520u;

var<private> global3: vec2<f32> = vec2<f32>(-1594f, 1000f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_u32(~4294967295u, abs(u_input.b.x));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global3.x, 1f))));
    var var_1 = firstTrailingBit(3845i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}


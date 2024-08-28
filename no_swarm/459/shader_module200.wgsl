struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: bool;

var<private> global2: Struct_5 = Struct_5(Struct_3(false), vec3<bool>(false, false, true), true, 38018u);

var<private> global3: Struct_4;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 1u, 75948u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<u32>(abs(min(_wgslsmith_mult_u32(global2.d, 12430u), 16012u)), 1u, 1u);
    global1 = u_input.d < _wgslsmith_sub_i32(u_input.d, countOneBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.c.yz, global4.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
}


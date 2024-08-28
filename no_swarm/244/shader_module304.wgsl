struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec4<f32>, 18>;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1301f, 760f, true, -4081i), Struct_1(-393f, 1472f, true, i32(-2147483648)), Struct_1(-550f, -266f, false, i32(-2147483648)), Struct_1(-247f, -617f, true, -12595i), Struct_1(-679f, 509f, true, -82411i), Struct_1(1000f, 1197f, true, i32(-2147483648)), Struct_1(-787f, 1244f, true, 1i), Struct_1(-1878f, -326f, false, 16763i), Struct_1(1000f, -1877f, true, -10893i), Struct_1(-466f, -540f, false, 13126i), Struct_1(-1686f, -474f, true, 2147483647i), Struct_1(568f, 290f, false, -8521i), Struct_1(-755f, 219f, true, 29198i), Struct_1(-810f, -593f, true, 0i), Struct_1(-1384f, 1542f, true, 3513i), Struct_1(-1000f, 1119f, false, i32(-2147483648)), Struct_1(608f, -1000f, false, -13124i), Struct_1(-653f, -703f, true, 2147483647i), Struct_1(-475f, -588f, true, -56273i), Struct_1(156f, -1510f, true, i32(-2147483648)), Struct_1(-857f, 1024f, true, 1i), Struct_1(-586f, -675f, false, -49192i), Struct_1(130f, -1413f, true, -1i), Struct_1(-743f, 2658f, false, -2920i), Struct_1(655f, 2610f, false, 19826i), Struct_1(-569f, 601f, false, i32(-2147483648)), Struct_1(404f, -1062f, true, 45603i));

var<private> global4: Struct_1 = Struct_1(494f, -604f, true, -34995i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global4.c, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~86888u, _wgslsmith_add_i32(~(global4.d ^ 2147483647i), abs(~global4.d)) << (~u_input.a % 32u), vec2<f32>(global4.a, _wgslsmith_f_op_f32(floor(global4.b))), ~(-1i), vec3<i32>(~global4.d, -7695i, global4.d));
}


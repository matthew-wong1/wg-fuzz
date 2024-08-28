struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(1i, i32(-2147483648), -19455i, i32(-2147483648)), vec2<f32>(-1008f, -473f), Struct_1(vec4<u32>(4294967295u, 3263u, 4294967295u, 32418u), -1309f, false, false, vec4<f32>(434f, -2000f, -554f, 565f)), 2147483647i, true);

var<private> global1: array<u32, 26>;

var<private> global2: array<i32, 27>;

var<private> global3: array<Struct_3, 18>;

var<private> global4: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = global0.c.a;
    global1 = array<u32, 26>();
    global4 = u_input.c.x & u_input.c.x;
    var var_1 = arg_0.c;
    global3 = array<Struct_3, 18>();
    return StorageBuffer(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_2(global0.a, _wgslsmith_div_vec2_f32(global0.c.e.yy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.x, global0.c.b), vec2<f32>(global0.b.x, -810f)))))), global0.c, 1i, true));
}


struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: bool;

var<private> global1: i32 = -1i;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 18>;

var<private> global4: vec4<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    global3 = array<Struct_3, 18>();
    return Struct_1(global4.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a - global2.a))))), -1877f, global4.x, _wgslsmith_add_vec3_i32(-vec3<i32>(global4.x & 2147483647i, global2.b.d, global4.x), vec3<i32>(0i, 0i, global4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = global2.b.e;
    var var_2 = u_input.e;
    let var_3 = func_1();
    var var_4 = func_1();
    global1 = -_wgslsmith_div_i32(-26863i, i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-1950f);
}


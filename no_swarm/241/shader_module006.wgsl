struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: vec4<f32> = vec4<f32>(335f, -1261f, -958f, -255f);

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(12075i, 1i, vec4<f32>(-177f, -638f, -599f, 548f), vec3<f32>(-610f, 318f, 644f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> vec3<i32> {
    return -firstTrailingBit(~_wgslsmith_sub_vec3_i32(~vec3<i32>(-13036i, 12064i, global3.a), select(vec3<i32>(global3.a, 2147483647i, global3.b), vec3<i32>(-9212i, 2147483647i, -2147483647i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(-361f, global3.d.x));
    global0 = array<Struct_2, 9>();
    global2 = any(select(vec4<bool>(true, select(false, false, u_input.a.x < global3.b), false, !(global3.b <= 5897i)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, false, false), 1i == global3.a), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false)))));
    global2 = true;
    global2 = false;
    let var_1 = 9883u;
    global0 = array<Struct_2, 9>();
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.x, reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3.a, 1i, u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(global3.b, u_input.a.x, u_input.a.x), vec3<i32>(-27021i, 11829i, global3.b))), abs(func_1()))));
}


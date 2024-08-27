struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>) -> vec4<u32> {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-543f, arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x)));
    var var_1 = !(!any(vec2<bool>(arg_0.x, true))) && false;
    var var_2 = min(i32(-1i) * -23548i, ~1i);
    return abs(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(1u, u_input.b.x), ~14376u, 9431u), ~vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    let var_0 = _wgslsmith_add_vec4_u32(func_2(!vec2<bool>(arg_0, true), 2756f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1563f, -483f, -160f, -1940f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-406f, -2610f, -1000f, -384f), vec4<f32>(212f, 456f, -956f, 1388f), arg_0)), true))) ^ arg_2, func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-342f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1372f, 387f, _wgslsmith_div_f32(-883f, -1000f), _wgslsmith_f_op_f32(-263f + 406f)))));
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    return Struct_1(true, true, arg_2.zwx, true);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> vec2<i32> {
    let var_0 = func_3(any(arg_1.a.a), any(!arg_0.b), ~(~func_2(!global0[_wgslsmith_index_u32(u_input.b.x, 32u)], -1062f, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.c, 1169f, 223f, 1000f), arg_1.a.b))));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = arg_0;
    var var_4 = -242f;
    return _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(arg_1.a.d.xx, -var_2.a.d.zy), _wgslsmith_mult_vec2_i32(~vec2<i32>(44167i, 1i), reverseBits(-_wgslsmith_sub_vec2_i32(arg_1.a.d.yx, var_1.a.d.wy))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(firstTrailingBit(func_1(Struct_3(1584f, global0[_wgslsmith_index_u32(4294967295u, 32u)]), Struct_4(Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(-1106f, 1188f, 163f, -207f), -1000f, vec4<i32>(1i, -23957i, 0i, -1i)), -1000f))), min(~countOneBits(vec2<i32>(38138i, 0i)), -vec2<i32>(1i, -2147483647i) ^ select(vec2<i32>(0i, -10507i), vec2<i32>(23347i, 11826i), vec2<bool>(true, true)))));
}


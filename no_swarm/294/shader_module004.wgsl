struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: f32;

var<private> global2: array<bool, 23>;

var<private> global3: array<vec4<u32>, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 23>();
    global0 = u_input.a.x;
    global0 = u_input.a.x;
    global3 = array<vec4<u32>, 6>();
    let var_0 = u_input.c;
    return Struct_1(u_input.c);
}

fn func_3() -> vec4<f32> {
    let var_0 = -u_input.c;
    let var_1 = _wgslsmith_div_u32(~1u, 19099u);
    var var_2 = Struct_4(Struct_3(all(!select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(24768u, 23u)], global2[_wgslsmith_index_u32(var_1, 23u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)]))), Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(28315i, u_input.c, 1i), vec3<i32>(var_0, 0i, 21719i), vec3<i32>(u_input.c, u_input.c, var_0)), ~vec3<i32>(var_0, var_0, -16091i)))));
    var var_3 = !var_2.a.a;
    var var_4 = vec4<bool>(var_2.a.a, var_2.a.a | false, true, any(select(vec4<bool>(false, true, !var_2.a.a, false), !(!vec4<bool>(false, var_2.a.a, true, global2[_wgslsmith_index_u32(var_1, 23u)])), global2[_wgslsmith_index_u32(20071u, 23u)])));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1312f, -594f, 2173f, 1576f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-435f, 704f, -1094f, 1021f), vec4<f32>(378f, -422f, -421f, -1000f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1533f, 1222f, -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(543f, -774f, -861f, 128f))) * vec4<f32>(-1393f, 2212f, 1187f, 531f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.a, -1i, u_input.c), vec3<i32>(arg_0.a, 0i, 26817i))), firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, countOneBits(u_input.b.x), -6573i))));
    let var_1 = global2[_wgslsmith_index_u32(~u_input.a.x, 23u)] == false;
    global0 = _wgslsmith_mod_u32(101175u, u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3())));
    global3 = array<vec4<u32>, 6>();
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1437f * var_2.x), var_2.x), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 6>();
    var var_0 = func_1();
    let var_1 = func_2(func_1(), !select(vec2<bool>(all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 23u)], false, false)), true), select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), false), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false), true), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(49367u, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(32558u, 23u)]), vec2<bool>(true, false))), any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false, false), global2[_wgslsmith_index_u32(79425u, 23u)]))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)));
    global3 = array<vec4<u32>, 6>();
    var var_3 = vec2<u32>(u_input.a.x, u_input.a.x);
    let var_4 = ~firstLeadingBit(~(~(-var_1.a.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32((min(vec4<i32>(var_1.a.b.a.x, var_0.a, 1i, -16362i), vec4<i32>(-1i, var_1.a.b.a.x, -46708i, 31279i)) & vec4<i32>(var_4, var_1.a.b.a.x, var_1.a.b.a.x, 20048i)) & firstLeadingBit(vec4<i32>(var_4, var_4, var_4, var_4)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.b.a.x, u_input.b.x, 21517i, 0i), vec4<i32>(var_1.a.b.a.x, var_4, -1i, var_4)), vec4<i32>(-2147483647i, var_4, -2147483647i, -33322i), ~vec4<i32>(1i, -6983i, 41406i, -1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)), -1472f, 1123f)));
}


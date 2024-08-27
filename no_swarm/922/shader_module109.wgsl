struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(-1176f - 473f);
    global0 = array<i32, 13>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1195f);
    global0 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_f32(-2157f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-699f - _wgslsmith_f_op_f32(f32(-1f) * -689f)))))));
    return -126f;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -583f) != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.c.x, -464f)), 1238f), 352f, false)), arg_1.b, ~(~countOneBits(abs(vec4<u32>(0u, u_input.d, 7461u, 4294967295u)))));
    return _wgslsmith_mult_i32(-_wgslsmith_mult_i32(2147483647i, -24453i ^ arg_3.a), (i32(-1i) * -1i) & -_wgslsmith_sub_i32(8440i, arg_2.a)) < _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~21113u), 13u)], arg_2.a);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec2<i32> {
    global1 = arg_0;
    global1 = arg_2.x;
    let var_0 = Struct_2(all(vec2<bool>(func_3(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), Struct_1(global0[_wgslsmith_index_u32(56152u, 13u)], -462f, vec2<f32>(arg_0, arg_2.x)), Struct_1(u_input.b.x, -1742f, vec2<f32>(arg_2.x, arg_2.x)), Struct_1(u_input.b.x, arg_0, vec2<f32>(arg_2.x, 563f))), true)), arg_2.x, vec4<u32>(_wgslsmith_div_u32(arg_1.x, 68687u), ~0u, arg_1.x, arg_1.x));
    let var_1 = -_wgslsmith_add_i32(u_input.b.x, -(select(global0[_wgslsmith_index_u32(var_0.c.x, 13u)], -2147483647i, true) & global0[_wgslsmith_index_u32(51112u | arg_1.x, 13u)]));
    return _wgslsmith_add_vec2_i32(u_input.c.zz, u_input.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(70130u, 13u)];
    let var_1 = vec2<i32>(-1i) * -func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -827f))), vec2<u32>(4294967295u, ~u_input.e), vec2<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(54431u, 13u)])), -767f));
    global0 = array<i32, 13>();
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32((vec2<i32>(global0[_wgslsmith_index_u32(0u, 13u)], -24378i) >> (vec2<u32>(107989u, 1u) % vec2<u32>(32u))) & u_input.b.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a)), u_input.b.zz), true, min(u_input.b.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-611f, -595f) * _wgslsmith_f_op_f32(sign(-377f))), -802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1049f)) * -1000f), 981f)));
    let var_3 = false;
    global1 = var_2.d.x;
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2.d.x)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1694f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1454f - var_2.d.x))))), -(26462i ^ global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e), 13u)]) | _wgslsmith_mod_i32(1i ^ var_2.c, ~(-28274i)), var_2.d.yy);
}


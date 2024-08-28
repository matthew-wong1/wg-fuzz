struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: Struct_1 = Struct_1(-807f, vec3<bool>(false, true, false), 49676u, vec2<bool>(false, true), vec4<u32>(28349u, 17254u, 8776u, 24565u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) - global1.a);
    global0 = array<bool, 19>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(global1.e.x), _wgslsmith_sub_u32(abs(1447u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global1.e.x, 4294967295u), u_input.c.x, u_input.c.x, select(u_input.c.x, global1.c, true)), vec4<u32>(_wgslsmith_dot_vec3_u32(global1.e.wwz, vec3<u32>(0u, 69112u, 4294967295u)), _wgslsmith_add_u32(u_input.a, u_input.c.x), global1.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, 1u), vec2<u32>(u_input.c.x, global1.c)))))), 19u)];
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(-2026f)), _wgslsmith_div_f32(-1108f, 1f), _wgslsmith_f_op_f32(1015f * 2255f));
    var var_2 = 29314i;
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(floor(-644f));
    return !vec2<bool>(all(!(!vec3<bool>(false, var_0, var_3))), !var_0);
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = ~vec2<u32>(min(~(~u_input.c.x), u_input.c.x), u_input.a);
    global0 = array<bool, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -554f))))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-240f + var_1)), arg_0.a.a.a.b, global1.c, arg_0.a.a.b.d, vec4<u32>(4294967295u, var_0.x, 68140u, ~13503u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(304f)) * var_1), select(global1.b, select(vec3<bool>(true, arg_0.a.a.b.d.x, global0[_wgslsmith_index_u32(4294967295u, 19u)]), global1.b, vec3<bool>(true, arg_0.a.a.b.b.x, global0[_wgslsmith_index_u32(global1.c, 19u)])), arg_0.a.a.b.b), global1.e.x, func_3(Struct_4(Struct_3(arg_0.a.a, vec2<i32>(arg_0.a.d, 43132i), global1.c, -2147483647i, arg_0.a.e), global1.e.x, vec2<u32>(var_0.x, 8592u), u_input.c.x, 4427u), Struct_2(Struct_1(var_1, vec3<bool>(false, true, true), var_0.x, vec2<bool>(arg_0.a.a.d.b.x, false), global1.e), Struct_1(var_1, arg_0.a.a.a.b, 45874u, vec2<bool>(global0[_wgslsmith_index_u32(arg_0.e, 19u)], global0[_wgslsmith_index_u32(arg_0.c.x, 19u)]), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, var_0.x)), global1.c, Struct_1(var_1, global1.b, 94602u, arg_0.a.a.d.b.xx, vec4<u32>(0u, 1u, 21096u, 1u)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(5906u, 4294967295u, 29999u, 1u), vec4<u32>(4294967295u, var_0.x, var_0.x, arg_0.e), vec4<u32>(1u, 1u, 4294967295u, var_0.x)), select(vec4<u32>(u_input.c.x, arg_0.a.c, arg_0.e, global1.c), vec4<u32>(28335u, 4294967295u, 2357u, global1.e.x), vec4<bool>(false, false, arg_0.a.a.b.b.x, global1.d.x)), vec4<u32>(39796u, 1u, 19844u, 0u))), u_input.a, arg_0.a.a.a), select(vec2<i32>(u_input.b, u_input.b), -arg_0.a.b, false), min(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, _wgslsmith_add_u32(12472u, arg_0.e)), vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0.a.a.a.e, vec4<u32>(arg_0.e, 0u, 0u, 4294967295u)), var_0.x)), countOneBits(min(arg_0.b & 0u, var_0.x))), arg_0.a.b.x, arg_0.a.e);
    let var_3 = var_2.a;
    return arg_0.a;
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x))), vec3<bool>(all(select(vec4<bool>(global1.b.x, true, arg_0.a.d.d.x, global1.b.x), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], false, false), !vec4<bool>(true, true, arg_0.a.a.b.x, false))), func_3(Struct_4(arg_0, 2801u << (arg_0.a.d.c % 32u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.c, global1.c), vec2<u32>(arg_0.a.d.e.x, 136785u), global1.e.yz), abs(arg_0.a.c), _wgslsmith_sub_u32(u_input.c.x, 4294967295u)), func_2(Struct_4(arg_0, 1u, vec2<u32>(4294967295u, global1.e.x), arg_0.c, 8856u)).a).x, (min(arg_0.b.x, arg_0.d) << (global1.c % 32u)) < arg_0.b.x), global1.c, !arg_0.a.b.d, select(vec4<u32>(u_input.a, 0u, ~(~1u), _wgslsmith_div_u32(u_input.a, 2030u) | 1u), vec4<u32>(arg_0.a.d.c, 4294967295u << ((0u | global1.e.x) % 32u), arg_0.a.d.e.x, _wgslsmith_dot_vec3_u32(global1.e.xxx, vec3<u32>(4294967295u, u_input.a, u_input.a)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(22104u, global1.c, 4294967295u, 0u), arg_0.a.b.e)), !(global0[_wgslsmith_index_u32(min(15206u, arg_0.a.b.c), 19u)] && !global0[_wgslsmith_index_u32(arg_0.a.d.e.x, 19u)])));
    var var_0 = ~_wgslsmith_add_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0.b.x, -24684i, arg_0.d), vec4<i32>(33515i, 2147483647i, u_input.b, -2147483647i)) | abs(vec4<i32>(u_input.b, -66897i, -39924i, u_input.b))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.d, u_input.b, u_input.b, -2147483647i), vec4<i32>(arg_0.b.x, -45094i, u_input.b, -2147483647i)), -vec4<i32>(1i, -60083i, 64033i, 2147483647i)), abs(abs(vec4<i32>(u_input.b, arg_0.b.x, -22617i, arg_0.b.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, global1.e.x, 44207u, 0u), arg_0.a.a.e) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e.yxw * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2091f, global1.a, arg_0.e.x)) - vec3<f32>(arg_0.e.x, global1.a, arg_0.a.a.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e.zxw) - _wgslsmith_f_op_vec3_f32(arg_0.e.xyx - arg_0.e.zxy)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b, u_input.b, u_input.b);
    let var_1 = !((func_1(vec2<i32>(u_input.b, u_input.b) & var_0.xz) && !(var_0.x > -1i)) & true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1066f), _wgslsmith_f_op_f32(1000f - 632f)) - vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(163f + global1.a)))));
    var var_3 = -633f;
    let var_4 = max(~_wgslsmith_sub_u32(global1.c, reverseBits(global1.c)), ~abs(0u));
    var var_5 = _wgslsmith_div_vec3_u32(~vec3<u32>(~(~u_input.a), var_4, 89156u << (1u % 32u)), ~(~abs(countOneBits(global1.e.zxy))));
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -518f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.xx, global1.e.yzz >> (global1.e.xzw % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_4(Struct_3(Struct_2(Struct_1(var_6.x, vec3<bool>(true, false, true), 70597u, vec2<bool>(false, global1.b.x), vec4<u32>(9818u, var_4, 104046u, 59686u)), Struct_1(var_6.x, vec3<bool>(global1.d.x, var_1, global1.d.x), u_input.c.x, global1.d, vec4<u32>(4294967295u, var_5.x, global1.e.x, global1.c)), 33210u, Struct_1(1102f, global1.b, 12858u, global1.b.zx, vec4<u32>(var_5.x, var_5.x, var_4, 22397u))), var_0.yx, var_5.x, u_input.b, vec4<f32>(-188f, 2577f, var_6.x, -516f)), u_input.c.x, u_input.c, 4294967295u, var_5.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2289f, -1569f, -764f)) - vec3<f32>(408f, 226f, var_6.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-414f, _wgslsmith_div_f32(784f, var_2.x), _wgslsmith_f_op_f32(select(global1.a, -1000f, false))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-638f, 218f, global1.a))))))), _wgslsmith_div_vec2_i32(firstTrailingBit(select(select(var_0.xx, var_0.zy, var_1), var_0.xz, !global1.d)), -min(_wgslsmith_mult_vec2_i32(var_0.yy, vec2<i32>(var_0.x, 2147483647i)), firstLeadingBit(vec2<i32>(var_0.x, -34122i)))), _wgslsmith_mult_u32(global1.e.x, ~abs(~u_input.a)));
}


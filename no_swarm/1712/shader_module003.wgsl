struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(1427f, -239f, 822f, 2106f), vec4<f32>(-993f, -930f, -738f, -302f), vec4<f32>(-346f, -1424f, 1093f, 746f), vec4<f32>(1000f, 1583f, 920f, -319f), vec4<f32>(168f, 1526f, 1103f, 499f), vec4<f32>(1285f, 969f, 726f, -1002f), vec4<f32>(-1000f, -510f, 632f, 643f), vec4<f32>(1581f, -150f, 970f, 735f), vec4<f32>(440f, 1039f, 382f, 463f), vec4<f32>(1369f, -719f, 1147f, -1000f), vec4<f32>(794f, -341f, -293f, 252f), vec4<f32>(602f, 1000f, 958f, 692f), vec4<f32>(785f, 1188f, 596f, -1187f), vec4<f32>(-1504f, -415f, -981f, -575f), vec4<f32>(787f, -623f, -640f, -1441f), vec4<f32>(-525f, 165f, 573f, 123f), vec4<f32>(1000f, -473f, 239f, -1169f));

var<private> global1: vec3<f32> = vec3<f32>(1081f, 547f, 333f);

var<private> global2: array<bool, 23>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.a.e.x != arg_0.a.e.x;
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    global0 = array<vec4<f32>, 17>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-718f - 1324f))) + 808f)), _wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_f_op_f32(max(-1854f, 1299f)) > arg_0.a.e.x));
    return arg_0.a.d;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = vec2<bool>(all(select(!func_3(Struct_3(Struct_1(vec3<i32>(u_input.c, 2147483647i, u_input.c), u_input.c, false, vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 23u)], false), global1.xy), vec4<i32>(u_input.c, 8784i, u_input.c, u_input.c), vec2<u32>(1u, 0u))), func_3(Struct_3(Struct_1(vec3<i32>(u_input.c, -14748i, u_input.c), u_input.c, global2[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(false, true, true, false), arg_0.zx), vec4<i32>(-36247i, 23138i, u_input.c, u_input.c), vec2<u32>(u_input.a, 86892u))), true)), any(vec3<bool>(false, !global2[_wgslsmith_index_u32(u_input.a & 5887u, 23u)], true)));
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, 398f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, 1015f, arg_0.x))))) * arg_0)));
    global0 = array<vec4<f32>, 17>();
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 0i, 1i, u_input.c), vec4<i32>(1i, 5284i, u_input.c, 2147483647i)), select(vec4<i32>(-47261i, u_input.c, -1i, -4669i), vec4<i32>(u_input.c, 22884i, u_input.c, 26210i), vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(22454u, 23u)], false))) << (abs(u_input.a) % 32u), max(u_input.c, firstLeadingBit(min(-36783i, -2147483647i))), i32(-1i) * -1i), reverseBits(firstLeadingBit(vec3<i32>(2147483647i, u_input.c, u_input.c) ^ vec3<i32>(-38211i, 10389i, 1i))) ^ reverseBits(vec3<i32>(u_input.c, _wgslsmith_add_i32(1i, u_input.c), i32(-1i) * -29413i)));
    let var_2 = _wgslsmith_clamp_i32(abs(2147483647i), ~(-2147483647i), -4801i) ^ -(~var_1.x);
    return Struct_3(Struct_1(firstTrailingBit(~var_1), var_1.x, any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 23u)], var_0.x)), select(select(func_3(Struct_3(Struct_1(var_1, u_input.c, true, vec4<bool>(var_0.x, false, false, false), vec2<f32>(-354f, global1.x)), vec4<i32>(var_1.x, 1i, var_2, var_2), vec2<u32>(u_input.a, 69879u))), vec4<bool>(false, true, true, var_0.x), !vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(45668u, 23u)], false, var_0.x)), vec4<bool>(any(vec3<bool>(false, var_0.x, true)), true, !var_0.x, all(vec3<bool>(var_0.x, false, true))), select(func_3(Struct_3(Struct_1(var_1, 7442i, global2[_wgslsmith_index_u32(u_input.b, 23u)], vec4<bool>(true, true, false, true), vec2<f32>(arg_0.x, 1722f)), vec4<i32>(u_input.c, 17261i, 23208i, var_2), vec2<u32>(22595u, 0u))), !vec4<bool>(true, true, false, var_0.x), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], var_0.x, var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_0.x)))), abs(vec4<i32>(abs(max(-16447i, var_2)), _wgslsmith_add_i32(var_2, i32(-1i) * -10878i), var_1.x, abs(~(-2147483647i)))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a & u_input.a, ~u_input.a), firstLeadingBit(select(u_input.a, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 23u)]))), countOneBits(vec2<u32>(u_input.a, u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global2 = array<bool, 23>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-547f, -1115f, -1017f))) * vec3<f32>(arg_0.e.x, 188f, -579f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-988f, 504f, arg_0.e.x), vec3<f32>(745f, 367f, -366f), true)) - vec3<f32>(1000f, 580f, global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1080f, 444f, global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), global1.x)), -527f, _wgslsmith_f_op_f32(1730f - 480f)));
    global0 = array<vec4<f32>, 17>();
    var var_0 = arg_1.x;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, arg_0.e.x, -406f), vec3<f32>(global1.x, global1.x, 1000f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, global1.x, 1418f)))));
    return _wgslsmith_add_u32(abs(4594u), ~(~133904u) >> (1u % 32u)) | var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 17>();
    var var_0 = vec4<i32>(u_input.c, ~1i, 1i, firstLeadingBit(u_input.c));
    global0 = array<vec4<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(func_1(Struct_1(vec3<i32>(0i, u_input.c, -1i), var_0.x, global2[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], false, global2[_wgslsmith_index_u32(u_input.b, 23u)]), global1.yx), -var_0.zw), 17u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 453f, 309f, -271f) - global0[_wgslsmith_index_u32(~86303u, 17u)])) * vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -673f), -300f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x - -132f)))), var_0.wy);
}


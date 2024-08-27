struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(758f, -663f, -307f), -1851f, vec3<f32>(-1778f, 1174f, 339f), 0i), Struct_1(vec3<f32>(-640f, 394f, -2063f), 586f, vec3<f32>(525f, -632f, 117f), 17407i), Struct_1(vec3<f32>(-456f, 1381f, 1049f), -148f, vec3<f32>(-315f, -1169f, -639f), -4076i), Struct_1(vec3<f32>(2125f, -139f, 266f), 1331f, vec3<f32>(846f, -170f, 915f), i32(-2147483648)), Struct_1(vec3<f32>(-794f, 875f, -440f), 1332f, vec3<f32>(2039f, 200f, 233f), 34252i));

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    let var_0 = any(vec4<bool>(all(!(!arg_3.yz)), any(arg_3.wxy), _wgslsmith_dot_vec4_i32(max(u_input.e, vec4<i32>(u_input.a.x, arg_0.x, -2147483647i, arg_0.x)), select(vec4<i32>(u_input.a.x, -10273i, u_input.e.x, 21041i), u_input.e, arg_1)) == -(~(-2147483647i)), arg_1));
    var var_1 = vec3<bool>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -451f) > arg_2, ((_wgslsmith_add_u32(global3.a, global3.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 59969u, global3.a, 0u), vec4<u32>(global3.a, global3.a, 46182u, global3.a)) % 32u)) >= ~(~4294967295u)) | false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, 1f, true))) != 852f;
    let var_3 = vec2<u32>(~firstLeadingBit(_wgslsmith_mult_u32(global3.a, _wgslsmith_clamp_u32(31182u, global3.a, global3.a))), ~abs(43829u));
    global0 = arg_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2)));
}

fn func_2() -> Struct_3 {
    global3 = Struct_3(~global3.a);
    global0 = !vec4<bool>(!any(vec2<bool>(global0.x, global0.x)), !global0.x, !global0.x, false);
    var var_0 = -2147483647i;
    var var_1 = Struct_4(-1000f, vec2<i32>(2147483647i, u_input.d), !(!vec4<bool>(any(global0.zy), global0.x, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(491f, _wgslsmith_f_op_f32(ceil(1429f)), _wgslsmith_f_op_f32(step(1530f, 206f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a.x, -1i), false, -1000f, !vec4<bool>(global0.x, global0.x, global0.x, global0.x))) * 1f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-236f, _wgslsmith_f_op_f32(select(648f, -917f, true)), -493f))), 0i));
    var var_2 = ~(~(vec2<u32>(0u, global3.a) ^ abs(vec2<u32>(global3.a, 0u))));
    return Struct_3(min(89315u, ~((4294967295u ^ var_2.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1551u, 0u), vec3<u32>(4294967295u, 0u, global3.a)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_3 {
    global2 = ~global3.a;
    return func_2();
}

fn func_4(arg_0: Struct_3) -> f32 {
    global3 = Struct_3(global3.a);
    var var_0 = (~max(vec4<u32>(4294967295u, global3.a, 0u, arg_0.a) << (vec4<u32>(1u, 0u, 0u, 57064u) % vec4<u32>(32u)), vec4<u32>(20757u, 30710u, arg_0.a, arg_0.a)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a), vec2<u32>(25819u, global3.a)), global3.a, ~2903u, global3.a) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(abs(arg_0.a), global3.a, global3.a, 0u)) % vec4<u32>(32u));
    global0 = !(!(!vec4<bool>(u_input.d >= u_input.a.x, false, all(vec4<bool>(global0.x, global0.x, false, true)), !global0.x)));
    global1 = array<Struct_1, 5>();
    var var_1 = func_2().a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-959f)) * -171f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(global0.x, -1758f == _wgslsmith_f_op_f32(func_4(func_1(u_input.a.yx, vec4<f32>(-574f, -985f, 1000f, 323f), vec3<bool>(global0.x, global0.x, global0.x)))), false & !global0.x);
    var var_1 = Struct_1(vec3<f32>(1253f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(583f, -606f)), _wgslsmith_f_op_f32(f32(-1f) * -2152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - 1000f)) - -1247f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), ~_wgslsmith_add_i32(-(u_input.c.x & 28222i), 0i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(max(min(-u_input.b.zy, vec2<i32>(var_1.d, var_1.d)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.d, var_1.d), vec2<i32>(0i, u_input.e.x))), !(u_input.b.x >= 42679i) & var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.b)), !vec4<bool>(var_1.a.x < -1553f, global0.x, u_input.c.x != 0i, !var_0.x))) + var_1.a.x);
    global2 = 4294967295u;
    global0 = vec4<bool>(all(select(var_0, vec3<bool>(false, false, global0.x), select(true, global0.x, var_0.x))) & global0.x, !((true != select(var_0.x, false, false)) | global0.x), true, var_0.x);
    global0 = select(!(!(!vec4<bool>(global0.x, var_0.x, true, true))), vec4<bool>(var_0.x, !(!global0.x) && true, any(!select(vec4<bool>(false, global0.x, false, true), vec4<bool>(var_0.x, true, true, var_0.x), global0.x)), all(select(!vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, var_0.x, false), var_0.x), !vec4<bool>(global0.x, var_0.x, false, true)))), !(!vec4<bool>(true, true, select(false, global0.x, var_0.x), any(vec4<bool>(false, var_0.x, global0.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2, 652f, var_1.a.x), min(i32(-1i) * -u_input.b.x, reverseBits(~countOneBits(-1i))));
}


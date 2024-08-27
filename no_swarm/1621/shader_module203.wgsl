struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(1640f, -690f, -1007f, -1340f), vec4<f32>(-719f, -690f, 1000f, 561f), vec4<f32>(569f, -130f, -1000f, 1863f), vec4<f32>(1819f, -1156f, -1296f, -552f), vec4<f32>(-942f, 385f, -266f, -1236f), vec4<f32>(158f, -1568f, -800f, -1822f), vec4<f32>(-179f, 694f, -120f, 2160f), vec4<f32>(810f, 991f, -292f, 605f), vec4<f32>(1000f, -899f, 452f, 1094f), vec4<f32>(-454f, -1135f, 1221f, 802f), vec4<f32>(-852f, -670f, 1000f, 661f), vec4<f32>(-424f, -799f, -156f, -534f), vec4<f32>(1000f, 2820f, 806f, 112f), vec4<f32>(1128f, -729f, -401f, -463f), vec4<f32>(-1438f, 1795f, -1266f, 632f), vec4<f32>(-110f, 181f, -303f, 1000f), vec4<f32>(-807f, -1198f, -1372f, -1000f), vec4<f32>(-1000f, 1081f, 682f, 179f), vec4<f32>(-760f, -355f, -1469f, 1116f), vec4<f32>(-1000f, 151f, -172f, -1449f), vec4<f32>(385f, 553f, -511f, 461f));

var<private> global1: array<vec3<u32>, 15>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global1 = array<vec3<u32>, 15>();
    global1 = array<vec3<u32>, 15>();
    let var_0 = arg_1.x;
    var var_1 = arg_0;
    var var_2 = false;
    return -u_input.c.x | u_input.c.x;
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = -2147483647i;
    global0 = array<vec4<f32>, 21>();
    let var_1 = ~_wgslsmith_dot_vec3_i32(-(~vec3<i32>(-13360i, u_input.c.x, u_input.c.x)), vec3<i32>(func_3(Struct_1(false), vec2<f32>(251f, -930f)), _wgslsmith_dot_vec2_i32(vec2<i32>(-11829i, -3779i), u_input.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, -1i), -13214i)));
    let var_2 = Struct_1(!select(true, false & arg_0, true) == ((true & !arg_0) || ((2147483647i >= u_input.c.x) & (false & arg_0))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-604f * 3353f), _wgslsmith_f_op_f32(abs(-828f)))), -2136f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-283f, -965f, -535f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2376f, 2484f, -2119f))))));
    return select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.c.x, u_input.c.x, 33095i), abs(vec4<i32>(-2147483647i, -2147483647i, -30215i, var_1))), abs(1i) | (var_1 ^ -9281i)) | abs(u_input.c), countOneBits(firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(1i, 1i)))) & (u_input.c >> (u_input.b.xx % vec2<u32>(32u))), any(vec4<bool>(!arg_0, var_2.a, true, false)) | var_2.a);
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = Struct_1(u_input.c.x <= u_input.c.x);
    global0 = array<vec4<f32>, 21>();
    var var_1 = Struct_1(!all(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)) && (true && !any(vec4<bool>(true, var_0.a, var_0.a, var_0.a))));
    let var_2 = -(~_wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(-12114i, u_input.c.x)) ^ select(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.c), -vec2<i32>(u_input.c.x, u_input.c.x), !vec2<bool>(var_1.a, var_0.a))) | ~func_2(any(select(vec4<bool>(var_1.a, var_1.a, var_0.a, var_0.a), vec4<bool>(true, false, true, true), vec4<bool>(true, true, var_0.a, true))));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    global0 = array<vec4<f32>, 21>();
    var var_2 = 24643i;
    global0 = array<vec4<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-471f)), _wgslsmith_f_op_f32(f32(-1f) * -894f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1044f, -1656f), vec2<f32>(-1148f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-908f, -1445f) * vec2<f32>(895f, 174f)))))), u_input.c.x);
}


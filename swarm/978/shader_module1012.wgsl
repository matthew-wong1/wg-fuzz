struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-617f, 1489f, -532f, 760f), vec4<f32>(-873f, 313f, -1000f, -937f), vec4<f32>(1093f, 880f, 1208f, 1248f), vec4<f32>(1000f, 678f, -424f, -183f), vec4<f32>(-518f, 653f, 423f, -1000f), vec4<f32>(-226f, -1000f, 730f, -313f), vec4<f32>(1182f, -1535f, 1469f, -311f), vec4<f32>(1312f, 2033f, 191f, -402f), vec4<f32>(-631f, -459f, 1000f, 564f), vec4<f32>(-2090f, -1000f, 947f, 1076f), vec4<f32>(1398f, -2317f, 487f, -1770f), vec4<f32>(-146f, 1000f, 1000f, 1042f), vec4<f32>(-1353f, -1295f, -306f, 188f), vec4<f32>(780f, -133f, 2237f, 1490f), vec4<f32>(305f, -311f, -271f, -440f), vec4<f32>(-548f, -177f, -1554f, 1000f), vec4<f32>(902f, 2788f, -757f, -864f), vec4<f32>(-435f, -1279f, -891f, -1880f), vec4<f32>(-960f, -517f, -349f, 481f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = arg_0;
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    let var_1 = var_0;
    return vec3<bool>(true, !(!(!(var_0.a.x | false))), true);
}

fn func_2() -> Struct_1 {
    var var_0 = 4294967295u;
    global0 = select(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), func_3(Struct_1(vec2<bool>(false, true)), global0.x, u_input.d.zw), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec4<bool>(false, false, true, true)), global0.x), global0.x || (global0.x && false)), select(!(!func_3(Struct_1(vec2<bool>(false, global0.x)), global0.x, vec2<i32>(u_input.e.x, -40807i))), vec3<bool>(all(global0.zz), all(!global0.zz), false), true), select(vec3<bool>(!global0.x, global0.x, u_input.c.x < abs(u_input.c.x)), vec3<bool>(!(!global0.x), true, !global0.x), func_3(Struct_1(select(vec2<bool>(global0.x, false), vec2<bool>(false, false), global0.x)), global0.x, u_input.e.zx)));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.d.ww << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), u_input.d.xz), reverseBits(firstTrailingBit(u_input.d.zy))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f));
    return Struct_1(vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    global1 = array<vec4<f32>, 19>();
    let var_0 = !vec3<bool>((func_2().a.x & false) && true, any(vec3<bool>(true, true, false)), false);
    global1 = array<vec4<f32>, 19>();
    var var_1 = (vec3<i32>(-1i) * -firstLeadingBit(~u_input.d.yww)) ^ abs(-select(-vec3<i32>(0i, arg_2, -9248i), u_input.e, !var_0));
    global0 = vec3<bool>(any(!(!select(vec4<bool>(var_0.x, true, global0.x, false), vec4<bool>(true, global0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, false)))), false, var_0.x);
    return func_2();
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    let var_0 = u_input.e.x;
    var var_1 = var_0;
    var var_2 = vec3<f32>(977f, 948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1625f - _wgslsmith_f_op_f32(-938f - -1183f))))));
    var var_3 = select(vec4<bool>(false, !select(global0.x && false, true, !global0.x), all(vec2<bool>(!arg_0, false)), arg_1.a.x), select(!(!select(vec4<bool>(true, global0.x, true, true), vec4<bool>(false, true, false, arg_0), vec4<bool>(false, true, false, true))), select(select(vec4<bool>(false, global0.x, arg_0, false), vec4<bool>(true, false, false, true), select(vec4<bool>(false, arg_0, arg_1.a.x, arg_0), vec4<bool>(arg_1.a.x, arg_0, arg_0, arg_0), vec4<bool>(global0.x, true, arg_0, arg_1.a.x))), vec4<bool>(arg_1.a.x, func_2().a.x, all(vec4<bool>(true, arg_0, arg_1.a.x, false)), arg_0), vec4<bool>(true, false, u_input.c.x < 22699i, select(arg_0, arg_1.a.x, arg_0))), arg_1.a.x), true);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + 861f), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -755f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1317f, var_2.x, var_2.x) * vec3<f32>(var_2.x, var_2.x, 1279f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1669f, -880f)), true)), global0.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 1759f) * vec3<f32>(var_2.x, var_2.x, -2321f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, -1000f, var_2.x))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -380f, var_2.x), vec3<f32>(-158f, -415f, var_2.x)), vec3<f32>(-959f, 747f, var_2.x), select(var_3.yyy, var_3.zww, true))))));
    return _wgslsmith_sub_i32(1i, -1i);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<u32> {
    var var_0 = global0.xx;
    global1 = array<vec4<f32>, 19>();
    return firstTrailingBit(vec2<u32>(~select(u_input.b, ~4294967295u, true), arg_1));
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(false, func_4(func_2(), abs(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u), vec4<u32>(u_input.b, 15665u, 53105u, u_input.b), vec4<u32>(82829u, 0u, u_input.a, u_input.b)) % vec4<u32>(32u)), -u_input.c.x), ~vec4<u32>(firstLeadingBit(u_input.a), 16288u & u_input.b, countOneBits(0u), 1u)), ~(~_wgslsmith_mult_u32(~u_input.b, 44040u)), Struct_1(!global0.xz), abs(vec4<u32>(45808u, 4294967295u, 1u, ~(~48393u))));
    global0 = !vec3<bool>(global0.x, _wgslsmith_mult_u32(var_0.x, ~1u) != u_input.a, false);
    global1 = array<vec4<f32>, 19>();
    let var_1 = vec2<i32>(max(_wgslsmith_div_i32(u_input.e.x, 33829i), -2147483647i ^ u_input.d.x), ~(-reverseBits(~8683i)));
    var var_2 = !(!(!(!(!vec4<bool>(global0.x, global0.x, false, true)))));
    return Struct_1(!vec2<bool>(global0.x, func_2().a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    global1 = array<vec4<f32>, 19>();
    global0 = vec3<bool>(!global0.x, global0.x, true);
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(427f, 248f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, -251f) + vec2<f32>(-1088f, -726f)), var_0.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -413f)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, -875f) + vec2<f32>(-896f, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, -1125f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, 261f))), !global0.x)))));
    let var_2 = var_0;
    let var_3 = select(!(!func_2().a.x), any(!vec3<bool>(!var_2.a.x, var_0.a.x, var_1.x == var_1.x)), all(global0.yz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xw, countOneBits(vec3<u32>(reverseBits(u_input.b), _wgslsmith_sub_u32(~u_input.a, u_input.a & u_input.b), _wgslsmith_mult_u32(~32317u, 1u))));
}


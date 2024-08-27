struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32) -> vec2<bool> {
    global0 = _wgslsmith_mod_vec2_u32(arg_0.d.yx, arg_0.d.xz);
    let var_0 = arg_0.c.a.x;
    let var_1 = firstLeadingBit(2147483647i);
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1098f), -281f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.c.x, -312f, false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.b.c.yxw - vec3<f32>(-1455f, 1591f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(abs(arg_0.a.c.yyw)))), arg_0.a.c.xzy, !select(select(!vec3<bool>(arg_0.c.a.x, false, false), select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, true), var_0), select(vec3<bool>(true, arg_0.c.a.x, var_0), vec3<bool>(true, true, var_0), false)), vec3<bool>(arg_0.c.a.x, any(vec3<bool>(false, arg_0.c.a.x, var_0)), all(vec3<bool>(var_0, false, true))), vec3<bool>(all(arg_0.c.a), false, -4530i < var_1))));
    return vec2<bool>(true, any(!(!vec3<bool>(arg_0.c.a.x, false, true))) != false);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_u32(global0.x, u_input.a);
    global0 = min(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, 86421u), vec2<u32>(var_0, u_input.a)), vec2<u32>(var_0, var_0) | vec2<u32>(global0.x, 1u)), vec2<u32>(countOneBits(var_0), _wgslsmith_mod_u32(43691u, 1u)), vec2<u32>(0u, 1u)), ~(~countOneBits(vec2<u32>(0u, 1u)))), ~(~vec2<u32>(var_0 | u_input.a, 57406u)));
    global0 = abs(~abs(select(vec2<u32>(18725u, var_0), vec2<u32>(57009u, 66357u), vec2<bool>(arg_1.x, true))) ^ ~(~(vec2<u32>(1u, global0.x) | vec2<u32>(var_0, 1u))));
    return arg_1.yz;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_2.zy;
    var_0 = func_4(arg_1.b.x > _wgslsmith_f_op_f32(round(252f)), select(select(arg_2, vec4<bool>(true, true, var_0.x, var_0.x), var_0.x), vec4<bool>(true, all(!vec3<bool>(arg_2.x, arg_2.x, false)), any(func_3(Struct_4(Struct_1(-33478i, 4472i, arg_1.b, 0u, arg_0.x), -48435i, Struct_3(arg_2.wz, Struct_1(arg_0.x, 31642i, vec4<f32>(arg_1.b.x, -716f, arg_1.b.x, arg_1.b.x), global0.x, -1i), vec3<i32>(arg_0.x, u_input.b, u_input.b), arg_0), vec3<u32>(14935u, 4294967295u, global0.x), vec3<i32>(u_input.b, arg_0.x, 31583i)), arg_1.b.yy, -192f)), var_0.x), !(!var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, 684f, 648f) * arg_1.b.zwx), _wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -482f))))));
    var var_1 = Struct_2(u_input.b, 4294967295u, arg_1.b, Struct_1(max(u_input.b, _wgslsmith_mod_i32(u_input.b << (43352u % 32u), u_input.b)), u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.b.x, true)), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x), _wgslsmith_div_f32(1642f, 206f), arg_1.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 1355f, arg_1.b.x, -555f)), vec4<f32>(323f, 1111f, -941f, arg_1.b.x))), arg_2)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~4294967295u, ~u_input.a), 0u, firstLeadingBit(1u | global0.x)), ~arg_0.x), _wgslsmith_add_i32(-51421i, ~(~arg_0.x)));
    let var_2 = 42037u;
    let var_3 = var_1.d.c.zxw;
    return 4294967295u;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    global0 = vec2<u32>(abs(~(0u << (func_2(vec4<i32>(u_input.b, -21756i, 0i, -1i), Struct_5(vec2<u32>(global0.x, 1u), vec4<f32>(-1194f, -521f, -424f, arg_2.x)), vec4<bool>(true, arg_0.a.x, false, arg_0.a.x)) % 32u))), ~_wgslsmith_mult_u32(~arg_0.b.d, ~_wgslsmith_sub_u32(4294967295u, 0u)));
    var var_0 = -378f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x));
    let var_2 = Struct_1(arg_0.d.x, i32(-1i) * -1i, arg_0.b.c, 1u, _wgslsmith_mod_i32(1i, -2147483647i));
    var var_3 = arg_0.c;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(min(~_wgslsmith_div_i32(2147483647i, -53117i), -19267i & countOneBits(~u_input.b)), ~1i);
    let var_1 = vec2<u32>(firstTrailingBit(firstLeadingBit(u_input.a)), 14629u);
    let var_2 = !select(vec2<bool>(select(false, true, true), true), vec2<bool>(select(false, true, false) & (0u >= global0.x), all(vec3<bool>(false, false, false)) && all(vec2<bool>(true, false))), any(vec2<bool>(true, true)));
    var var_3 = Struct_2(~(-(1i ^ ~u_input.b)), ~_wgslsmith_div_u32(var_1.x, func_1(Struct_3(var_2, Struct_1(0i, var_0.x, vec4<f32>(-1362f, -1884f, -461f, 772f), 1u, u_input.b), vec3<i32>(var_0.x, 2243i, 25539i), vec4<i32>(u_input.b, var_0.x, u_input.b, u_input.b)), var_0, vec4<f32>(-573f, 3047f, -1000f, 614f), -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-395f, 652f, -546f, 965f))), vec4<f32>(125f, -253f, 408f, -1040f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-495f, 168f, 1212f, 1064f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1074f, -1635f, 1556f, -2359f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, -622f, 1184f, -352f)), all(var_2))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, 2244f, 639f, 685f)), vec4<f32>(-194f, -1063f, 321f, 1014f))))), Struct_1(abs(-9298i), u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1193f - 1096f), _wgslsmith_div_f32(569f, 753f), _wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_div_f32(-1564f, -250f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1109f, -1000f, -573f, 633f), vec4<f32>(-1666f, 1318f, -1027f, 115f)))), u_input.a, -54096i), _wgslsmith_div_i32(2385i, _wgslsmith_sub_i32(-2147483647i, 1i)));
    var var_4 = var_3.d;
    var var_5 = (reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.b, 2147483647i) | vec2<i32>(var_0.x, 1i), -vec2<i32>(53674i, 0i))) << (u_input.a % 32u)) | _wgslsmith_clamp_i32(-(~(i32(-1i) * -1i)), -u_input.b, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_1, var_1), ~(~var_1))), -2075f);
}


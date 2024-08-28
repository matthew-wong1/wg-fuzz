struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = Struct_5(Struct_4(max(_wgslsmith_div_u32(u_input.c, 21348u), ~u_input.b.x) != select(~u_input.b.x, max(u_input.b.x, u_input.c), select(true, global0.b, global0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1503f), 396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f) * _wgslsmith_f_op_f32(-651f - 623f))));
    global0 = Struct_5(Struct_4(global0.b), global0.a.a);
    global0 = Struct_5(Struct_4(true), global0.b);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2698f)))), _wgslsmith_f_op_f32(-1f))) + -101f);
    global0 = Struct_5(global0.a, all(!vec2<bool>(all(vec3<bool>(true, false, global0.b)), -468f == var_0)));
    return select(!select(vec2<bool>(true, true), !(!vec2<bool>(true, global0.a.a)), ~u_input.c < 0u), select(select(select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.a.a, false), vec2<bool>(global0.a.a, global0.a.a)), select(vec2<bool>(true, true), vec2<bool>(global0.b, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(select(vec2<bool>(false, global0.a.a), vec2<bool>(global0.a.a, false), global0.a.a), !vec2<bool>(global0.b, false), vec2<bool>(true, true)), select(var_0 < var_0, 33018u > u_input.c, !global0.b)), !select(vec2<bool>(global0.a.a, true), !vec2<bool>(global0.b, false), all(vec3<bool>(true, true, global0.b))), true), false);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    global0 = Struct_5(global0.a, all(select(vec4<bool>(true, arg_0.b, !arg_1.a, global0.a.a), select(!vec4<bool>(false, arg_0.b, arg_0.b, arg_1.a), select(vec4<bool>(true, global0.b, arg_1.a, global0.a.a), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), false), !vec4<bool>(true, arg_1.a, false, false)), !vec4<bool>(true, arg_1.a, true, global0.a.a))));
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, 818f))) * vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-853f + 876f), 128f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2165f, -957f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(374f, -404f), vec2<f32>(712f, 261f))), arg_1.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(445f - 330f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-713f, -441f), vec2<f32>(1161f, -586f))))))));
    global0 = Struct_5(Struct_4(true), false);
    var var_1 = Struct_5(Struct_4(!arg_1.a), global0.b | !arg_1.a);
    var var_2 = ~(~firstTrailingBit(~4294967295u));
    return all(select(select(vec2<bool>(var_1.a.a, arg_0.c.x < arg_0.a.a), select(!vec2<bool>(arg_0.b, true), !vec2<bool>(arg_1.a, false), false), vec2<bool>(false, arg_0.a.b == arg_0.a.c)), select(select(vec2<bool>(false, false), select(vec2<bool>(false, var_1.b), vec2<bool>(true, arg_0.b), vec2<bool>(arg_1.a, arg_1.a)), !var_1.a.a), !select(vec2<bool>(false, true), vec2<bool>(true, global0.a.a), arg_0.b), func_3()), var_1.b || false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 646f) * _wgslsmith_f_op_f32(-582f - 515f)) * _wgslsmith_f_op_f32(-1176f * _wgslsmith_f_op_f32(sign(468f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(913f))))), _wgslsmith_div_f32(-1583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f + -921f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1573f, _wgslsmith_div_f32(-1440f, -565f)))))));
    var var_1 = vec3<i32>(arg_2.a.b, 1i, 20217i);
    var var_2 = _wgslsmith_div_vec2_i32(var_1.zy, _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, -3890i) ^ ~vec2<i32>(-1i, 0i), ~max(var_1.xx, vec2<i32>(u_input.a, -21315i)))) << (vec2<u32>(arg_2.a.a, 0u) % vec2<u32>(32u));
    var var_3 = Struct_5(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1205f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(911f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -2265f))));
    var_3 = Struct_5(global0.a, var_3.b & all(arg_0.xxy));
    return arg_0.wz;
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(~select(vec2<i32>(select(1744i, u_input.a, global0.b), -3187i | u_input.a), vec2<i32>(-2147483647i, ~(-12687i)), select(select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(global0.a.a, false), false), vec2<bool>(true, true), all(vec4<bool>(global0.a.a, true, false, true)))), _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.x & 151i, 8274i), arg_0));
    global0 = Struct_5(global0.a, !any(vec2<bool>(true || global0.a.a, !global0.a.a)));
    var_0 = arg_0;
    var_0 = min(arg_0, _wgslsmith_add_vec2_i32(arg_0, arg_0));
    let var_1 = 1i;
    return !(!func_4(select(vec4<bool>(global0.b, false, true, true), vec4<bool>(false, global0.b, global0.b, global0.a.a), vec4<bool>(true, global0.b, true, false)), select(min(vec4<u32>(0u, u_input.b.x, 105204u, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, u_input.c, 4984u)), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 43042u), func_2(Struct_3(Struct_1(11999u, -1256i, var_1), true, vec4<u32>(u_input.b.x, 108159u, 4294967295u, 4033u)), Struct_4(global0.a.a))), Struct_3(Struct_1(u_input.c, 1i, arg_0.x), false, ~vec4<u32>(u_input.c, 12725u, u_input.b.x, 49779u))));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_4((((15655u > u_input.c) && !arg_2.x) & true) || true);
    var var_1 = -237f;
    let var_2 = ~vec4<u32>(u_input.b.x, 1u, ~_wgslsmith_mod_u32(1u, u_input.b.x), u_input.c);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yz), 36395u, u_input.b.x, 0u) | _wgslsmith_clamp_vec4_u32(~(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)) >> (vec4<u32>(1u, u_input.b.x, u_input.c, 18939u) % vec4<u32>(32u))), ~(~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 1u))), func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-434f - -435f))), select(!vec2<bool>(global0.a.a, global0.a.a), func_1(vec2<i32>(2147483647i, u_input.a)), func_3().x), select(!vec3<bool>(global0.b, true, global0.b), select(vec3<bool>(true, global0.a.a, global0.b), vec3<bool>(global0.b, global0.b, true), global0.b), vec3<bool>(true, global0.b, true))));
    var var_1 = Struct_3(Struct_1(select(0u, ~select(0u, 19108u, true), global0.a.a), ~select(u_input.a, -1i, false), u_input.a), true, ~vec4<u32>(53078u, ~u_input.c, 0u, ~0u));
    let var_2 = select(!(!(!(!vec4<bool>(global0.a.a, true, false, var_1.b)))), vec4<bool>(var_1.b, !(!func_3().x), false, 6935u > _wgslsmith_div_u32(max(64172u, 9048u), select(37858u, 0u, global0.a.a))), func_4(!select(vec4<bool>(var_1.b, var_1.b, true, false), vec4<bool>(var_1.b, false, global0.b, false), vec4<bool>(false, true, false, global0.b)), var_1.c, Struct_3(Struct_1(0u, -1513i, var_1.a.b), true, ~vec4<u32>(0u, var_0.x, u_input.c, 1u))).x & !func_2(Struct_3(var_1.a, var_1.b, vec4<u32>(var_1.c.x, var_0.x, var_0.x, 0u)), global0.a));
    let var_3 = -5324i;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1113f, 1000f, -1559f) * vec3<f32>(-1077f, 110f, 630f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(695f, 1000f, 473f))), !var_2.yzz)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 1540f, -166f), vec3<f32>(-1554f, 349f, 1425f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(335f, -1807f, 1560f), vec3<f32>(-1013f, -864f, -487f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(732f, 1648f, -123f) + vec3<f32>(228f, -1099f, -1118f))))));
    global0 = Struct_5(Struct_4(true), global0.a.a);
    var_1 = Struct_3(var_1.a, !(_wgslsmith_f_op_f32(min(-211f, var_4.x)) < var_4.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), ~var_0.x, var_1.c.x, _wgslsmith_clamp_u32(0u, 0u, var_1.a.a)), var_1.c), vec4<u32>(~68848u << (0u % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_1.a.a, 31175u, var_1.a.a), ~var_0.x), 1u, u_input.c)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(f32(-1f) * -1883f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_mod_i32(var_3, 6837i) << (0u % 32u), abs(u_input.c));
}


struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(13451i, 57038i, -10803i, 0i);

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.a, 4294967295u)), ~(~u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1626f) - 540f), _wgslsmith_f_op_f32(trunc(-451f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1113f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(max(-1000f, -904f))))), vec3<i32>(global0.x, u_input.c, firstLeadingBit(-32079i) & _wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.x, 22507i), -27511i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, -823f, -333f, 230f) + _wgslsmith_div_vec4_f32(vec4<f32>(-136f, 1388f, 304f, -293f), vec4<f32>(-361f, 2406f, 219f, 119f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-518f, -1767f, -984f, 1934f), vec4<f32>(-1000f, -891f, -2238f, -1036f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1831f, -676f, -1231f, 1080f)))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(780f, _wgslsmith_div_f32(-1358f, -2821f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1684f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f - 2458f))) - vec4<f32>(_wgslsmith_div_f32(-1372f, 294f), _wgslsmith_div_f32(-1930f, _wgslsmith_f_op_f32(max(301f, 1283f))), _wgslsmith_f_op_f32(283f + _wgslsmith_f_op_f32(max(-279f, 800f))), _wgslsmith_f_op_f32(-997f + _wgslsmith_f_op_f32(-491f * 1933f)))));
    var_0 = Struct_1(var_0.a, -633f, var_0.c, vec4<f32>(var_0.d.x, 999f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_0.d.x, var_0.e.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.d * var_0.e)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, 1501f, 1000f, -2104f) + vec4<f32>(var_0.d.x, var_0.e.x, -1307f, 2407f))), var_0.d), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + var_0.b)) - var_0.d.x));
    var var_2 = var_0.d.zyy;
    let var_3 = firstLeadingBit(firstLeadingBit(vec4<u32>(0u, ~(~59216u), _wgslsmith_div_u32(u_input.b.x, u_input.a), _wgslsmith_mod_u32(var_0.a, countOneBits(var_0.a)))));
    return reverseBits(reverseBits(vec3<u32>(var_0.a, u_input.b.x, _wgslsmith_mod_u32(abs(7175u), 0u & var_3.x))));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec4<f32> {
    let var_0 = !((_wgslsmith_dot_vec3_u32(~u_input.b, func_3()) > func_3().x) == true);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-850f + -253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -143f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f + _wgslsmith_f_op_f32(step(-2018f, -264f)))))));
    var var_2 = Struct_1(~1u, 1299f, -max(~(~global0.zxx), reverseBits(global0.zyz) | -vec3<i32>(54330i, u_input.c, global0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1104f, _wgslsmith_f_op_f32(-849f - 432f), _wgslsmith_div_f32(1000f, 1422f), _wgslsmith_f_op_f32(1650f + -1753f)) * vec4<f32>(_wgslsmith_f_op_f32(max(-1912f, -2138f)), _wgslsmith_f_op_f32(select(1000f, 1106f, true)), _wgslsmith_f_op_f32(min(-1552f, -377f)), -622f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-830f, -393f, -702f, 1063f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1535f)), _wgslsmith_f_op_f32(f32(-1f) * -358f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1475f)) - _wgslsmith_f_op_f32(f32(-1f) * -1855f)) * _wgslsmith_f_op_f32(f32(-1f) * -139f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(238f, -1556f) - _wgslsmith_div_f32(-754f, 1109f))));
    let var_3 = var_2.e;
    var var_4 = Struct_1(~1u, var_2.d.x, _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(-994i, global0.x), _wgslsmith_dot_vec3_i32(var_2.c & global0.xzw, var_2.c), -2147483647i), var_2.c >> (countOneBits(vec3<u32>(var_2.a, 4294967295u, 11245u)) % vec3<u32>(32u))), var_2.e, var_2.d);
    return var_4.d;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(697f))), -_wgslsmith_mult_vec3_i32(global0.zzz, firstTrailingBit(vec3<i32>(u_input.c, u_input.c, global0.x) >> (u_input.b % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(564f, 1000f, 858f, 1782f) - vec4<f32>(-1002f, -341f, 963f, -480f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1920f, 315f, -1245f, -633f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-532f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a, 1i))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1211f, -151f, -929f, 1704f) + vec4<f32>(164f, -1916f, -123f, 1142f)))))));
    var var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-var_0.b), global0.yyx, var_0.d, var_0.d);
    let var_2 = false;
    let var_3 = func_3().x;
    let var_4 = Struct_1(var_3, _wgslsmith_f_op_f32(abs(var_0.d.x)), ~var_1.c, var_1.e, var_0.d);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec2<bool>(~u_input.c <= -1i, any(vec4<bool>(true, true, true, true))));
    var var_1 = func_1();
    var var_2 = vec3<bool>(true, all(vec2<bool>(false, true)), select(!all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(var_1.b)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.x))), !(true | any(vec3<bool>(true, false, true)))));
    var var_3 = var_2.x;
    let var_4 = func_1().c.x;
    var_0 = false;
    let var_5 = Struct_1(_wgslsmith_div_u32(45344u, ~reverseBits(61628u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))) + var_1.e.x), firstTrailingBit(func_1().c ^ global0.ywz), var_1.d, vec4<f32>(1192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(568f))) * func_1().d.x), _wgslsmith_f_op_f32(max(1134f, _wgslsmith_f_op_f32(-961f * 435f))), _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(492f, -180f, false))))));
    var_2 = !vec3<bool>(global0.x <= -1i, _wgslsmith_div_u32(_wgslsmith_clamp_u32(15258u, 4294967295u, u_input.b.x), ~u_input.a) <= _wgslsmith_mult_u32(u_input.b.x, func_1().a), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.b))))) + var_5.e.x), _wgslsmith_f_op_f32(floor(1000f)));
}


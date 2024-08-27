struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = vec2<u32>(arg_0.b, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~arg_0.b, _wgslsmith_mult_u32(32321u, arg_0.b)), reverseBits(vec3<u32>(u_input.b, 4294967295u, 0u)) | (vec3<u32>(0u, u_input.a, 19445u) & vec3<u32>(48947u, arg_0.b, arg_0.b)))));
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, _wgslsmith_div_u32(4294967295u, var_0.x), 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 2106u, 1u, 1u), vec4<u32>(arg_0.b, u_input.b, 4294967295u, 1u)), firstLeadingBit(vec4<u32>(arg_0.b, var_0.x, 1u, 51489u)))), arg_0.b, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~31216u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_0.b, var_0.x)), ~var_0), 97385u), select(~vec3<u32>(54119u, u_input.b, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(54222u, u_input.b, 4294967295u, var_0.x), vec4<u32>(arg_0.b, var_0.x, u_input.b, var_0.x)), 0u), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), false))));
    let var_2 = arg_0;
    var var_3 = Struct_4(Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 0u, 0u) & var_1.wxy, vec3<u32>(var_0.x, 0u, var_1.x)) | countOneBits(vec3<u32>(81282u, 4294967295u, u_input.a)), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b, 1u, arg_0.b) & var_1.xyw, var_1.wyz), vec4<u32>(8130u | var_0.x, reverseBits(_wgslsmith_sub_u32(5115u, var_1.x)), var_1.x, reverseBits(37651u))));
    var var_4 = -206f;
    return var_3.a.c;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(vec3<bool>((_wgslsmith_div_i32(27575i, -21509i) ^ select(-63490i, -5269i, false)) < 1i, false, true));
    var var_1 = Struct_3(~reverseBits(~select(vec3<u32>(u_input.b, 54071u, u_input.a), vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<bool>(false, var_0.a.x, false))), vec3<u32>(62476u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(0u, 4294967295u, u_input.b, 21632u)) | ~vec4<u32>(u_input.a, 58408u, 0u, u_input.b), ~func_3(Struct_2(1i, u_input.b))), ~max(reverseBits(4294967295u), 1u)), vec4<u32>(~abs(4294967295u), 33443u >> (u_input.a % 32u), abs(u_input.a), ~_wgslsmith_add_u32(0u, max(u_input.b, u_input.a))));
    var_1 = Struct_3(~_wgslsmith_sub_vec3_u32(var_1.b, max(countOneBits(var_1.a), var_1.a)), ~var_1.b, vec4<u32>(u_input.b, 1u, 1u, 11057u & var_1.a.x));
    var_1 = Struct_3(func_3(Struct_2(reverseBits(-2147483647i << (var_1.a.x % 32u)), _wgslsmith_div_u32(31734u, u_input.a))).wzw, var_1.a, vec4<u32>(countOneBits((1u << (var_1.c.x % 32u)) & _wgslsmith_add_u32(u_input.a, u_input.b)), func_3(Struct_2(1i, ~16818u)).x, abs(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(u_input.a, 67524u))), abs(u_input.b)));
    let var_2 = vec2<bool>(any(!vec2<bool>(var_0.a.x, var_0.a.x && var_0.a.x)), false);
    return Struct_5(false, _wgslsmith_div_i32(-69709i, 1i));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> Struct_4 {
    let var_0 = vec3<bool>(all(vec4<bool>(arg_0.a, !(true && arg_2), true, arg_0.a)), true, !(!(arg_0.a & !arg_0.a)));
    let var_1 = arg_0.a;
    let var_2 = !(!vec4<bool>(false, true, !(!arg_2), any(vec3<bool>(true, arg_0.a, var_0.x)) | true));
    var var_3 = func_2();
    return Struct_4(Struct_3(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, u_input.b)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 2721u, 12843u), vec3<u32>(48227u, 8672u, 1u)) % vec3<u32>(32u)), max(vec3<u32>(u_input.a, u_input.a, u_input.b) << (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 48703u), vec3<u32>(56715u, u_input.a, 1u)))), vec3<u32>(u_input.a, u_input.a, u_input.a), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(23845u, u_input.b, u_input.b, 82860u), ~vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.b))));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_5) -> Struct_4 {
    let var_0 = arg_1;
    var var_1 = arg_3;
    let var_2 = arg_0.a.a.zx;
    var var_3 = ~vec4<u32>(4294967295u, ~1u, _wgslsmith_div_u32(_wgslsmith_div_u32(47965u, 39917u), var_2.x << (22517u % 32u)), ~var_2.x ^ 4294967295u) | arg_0.a.c;
    let var_4 = !select(!arg_3.a, !(arg_1 < firstLeadingBit(-13208i)), !((-504f <= arg_2.x) && false));
    return func_4(func_2(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 208f)) * arg_2.x))), true);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4) -> vec4<i32> {
    var var_0 = vec4<bool>(any(!vec3<bool>(true, any(vec3<bool>(true, true, false)), true)), false & any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), !any(vec3<bool>(false, false, false)))), _wgslsmith_add_u32(4294967295u >> (u_input.b % 32u), func_1(arg_1, _wgslsmith_sub_i32(11829i, 1i), vec3<f32>(arg_0.x, 1383f, 707f), Struct_5(true, 1i)).a.c.x) > ~u_input.b);
    let var_1 = abs(func_2().b) ^ (select(1i, ~abs(1i), all(select(var_0.zw, var_0.zx, vec2<bool>(false, true)))) << (~u_input.b % 32u));
    var_0 = !vec4<bool>(false, var_0.x, any(var_0.xz), true);
    var_0 = vec4<bool>(any(select(vec2<bool>(var_0.x, true), vec2<bool>(true, !var_0.x), any(vec3<bool>(true, false, true)))), !any(!vec4<bool>(false, var_0.x, var_0.x, true)), true, true);
    let var_2 = Struct_4(arg_1.a);
    return vec4<i32>(-32665i, 0i, abs(var_1), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20433i, 0i, 10142i), vec3<i32>(18181i, -542i, -2147483647i)), max(-25682i, 0i), 1i, i32(-1i) * -10247i), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1528f, 901f, 740f, -1139f) - vec4<f32>(-639f, -1698f, -473f, 412f)), func_1(Struct_4(Struct_3(vec3<u32>(u_input.a, 24821u, u_input.b), vec3<u32>(u_input.b, 48802u, u_input.b), vec4<u32>(8423u, 4294967295u, u_input.a, u_input.b))), 33386i, vec3<f32>(-214f, -353f, -1040f), Struct_5(false, 1i)))), -5764i);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(218f, 277f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(788f)))) + -773f), _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -495f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -609f, 1341f, -225f) - vec4<f32>(var_1, var_1, var_1, 561f)), vec4<f32>(1000f, var_1, var_1, 643f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, 911f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 2084f, -1000f, 832f)))))));
    let var_3 = countOneBits(-(~(~select(-1i, -18016i, true))));
    var var_4 = Struct_2(var_3, u_input.b);
    var_0 = (-2147483647i >> (func_1(Struct_4(func_1(Struct_4(Struct_3(vec3<u32>(82564u, var_4.b, var_4.b), vec3<u32>(1u, var_4.b, 4294967295u), vec4<u32>(u_input.a, 75911u, 4294967295u, 0u))), var_3, vec3<f32>(328f, var_1, var_2.x), Struct_5(false, 2336i)).a), 19255i, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_2.wzy, var_2.zwx), vec3<f32>(var_2.x, -577f, var_1)), func_2()).a.b.x % 32u)) << (countOneBits(~31225u) % 32u);
    let var_5 = _wgslsmith_sub_vec3_i32(select(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(0i, 4682i), var_3, 56290i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-2965i, 1i, -2147483647i), vec3<i32>(var_4.a, var_3, var_3) >> (vec3<u32>(u_input.b, var_4.b, 0u) % vec3<u32>(32u))), select(vec3<bool>(1u != var_4.b, var_1 >= -390f, -2147483647i >= var_3), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)), ~(~_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, 5021i), vec3<i32>(-1i, var_4.a, -16918i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5);
}


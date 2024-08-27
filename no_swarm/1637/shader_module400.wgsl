struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = select(!vec3<bool>(all(vec2<bool>(arg_1, true)) && (true || arg_1), _wgslsmith_f_op_f32(floor(arg_0.e)) < _wgslsmith_f_op_f32(-arg_0.e), !(-13771i <= arg_0.b.a)), select(vec3<bool>(false, true | (5770i == arg_0.c), !any(vec4<bool>(false, true, arg_1, false))), select(vec3<bool>(any(vec4<bool>(false, arg_1, true, arg_1)), !arg_1, arg_1 || arg_1), !vec3<bool>(arg_1, false, arg_1), false), select(select(!vec3<bool>(arg_1, false, true), !vec3<bool>(arg_1, arg_1, true), arg_1 && arg_1), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, true)), !(!vec3<bool>(arg_1, true, arg_1)))), select(vec3<bool>(select(true == arg_1, arg_1, u_input.e == u_input.e), arg_1, true | arg_1), !(!select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, false, true), false)), !(false != !arg_1)));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, 599f, arg_0.e) - vec3<f32>(-634f, arg_0.e, arg_0.e))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.e, arg_0.e, -1975f)))))));
    let var_3 = min(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-2147483647i, u_input.e, _wgslsmith_sub_i32(u_input.e, arg_0.c)), max(~vec3<i32>(-18761i, 1i, 0i), select(vec3<i32>(0i, arg_0.c, arg_0.a.a), vec3<i32>(arg_0.a.a, 49042i, u_input.e), var_0))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 1i, arg_0.b.a), ~vec3<i32>(-26274i, arg_0.a.a, arg_0.a.a)), vec3<i32>(u_input.e, u_input.e, arg_0.b.a >> (59901u % 32u)))), vec3<i32>(7884i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(1i), arg_0.a.a << (u_input.d.x % 32u)), -u_input.e), _wgslsmith_mult_i32(26702i, 65162i)));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_2.x), 954f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, 665f, 528f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1484f, var_2.x, arg_0.e) * vec3<f32>(arg_0.e, 789f, var_2.x)) - vec3<f32>(1f, 1f, 1f))) * vec3<f32>(arg_0.e, -1614f, var_2.x)));
    return -49459i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1092f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1139f, -1000f)) * -1629f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1520f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1051f)) + -442f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-891f + 217f), var_0.x);
    var var_1 = Struct_3(max(1u, 0u), Struct_1(~func_3(Struct_2(Struct_1(arg_1.x, vec2<u32>(0u, u_input.a)), Struct_1(-2147483647i, u_input.d.yy), arg_0.x, u_input.d.wxy, var_0.x), false), ~_wgslsmith_div_vec2_u32(u_input.d.yx, vec2<u32>(u_input.d.x, u_input.c))), u_input.d.x, true);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(floor(var_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1132f, _wgslsmith_f_op_f32(f32(-1f) * -1982f))))), _wgslsmith_f_op_f32(f32(-1f) * -872f))));
    return Struct_5(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_1.b.a, -2147483647i, 1i, var_1.b.a)), vec4<i32>(arg_1.x, arg_1.x, -2147483647i, 1i)), ~vec4<i32>(-9512i, var_1.b.a, 2147483647i, 1i) ^ vec4<i32>(arg_1.x, arg_1.x, u_input.e, 41033i)), vec4<i32>(-1i, ~(1i & arg_0.x), -_wgslsmith_div_i32(-21018i, arg_1.x), 0i)), true, Struct_4(select(vec3<bool>(all(vec3<bool>(false, false, true)), true | var_1.d, select(var_1.d, false, false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, var_1.d), var_1.d), vec3<bool>(true, true, !var_1.d)), var_1.b, var_1.d, true || var_1.d), 884f);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = func_2(select(_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.e, 36283i, u_input.e), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, -2147483647i))), ~(vec3<i32>(1i, u_input.e, u_input.e) << (vec3<u32>(12230u, 51983u, 4533u) % vec3<u32>(32u)))), vec3<i32>(-2147483647i, 2147483647i, u_input.e), select(select(!vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, false, arg_2), arg_2), select(vec3<bool>(true, arg_2, arg_2), !vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, arg_2, false)), !select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, arg_2), arg_2))), ~vec2<i32>(~max(u_input.e, u_input.e), u_input.e));
    let var_1 = ~vec4<u32>(~(u_input.b | 4294967295u), ~(~(~u_input.b)), 1u, ~var_0.d.b.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-261f, 2086f)) * 166f) + 1641f), arg_0));
    let var_3 = true;
    let var_4 = vec2<u32>(var_1.x, _wgslsmith_add_u32(57412u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 14192u), vec3<u32>(47935u, var_0.d.b.b.x, 4294967295u)), 65115u));
    return _wgslsmith_div_u32(var_4.x, firstTrailingBit(9926u)) >> (var_1.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~(~(~u_input.d))), u_input.d ^ vec4<u32>(u_input.c, 4294967295u, firstLeadingBit(func_1(-579f, -747f, false)), func_1(_wgslsmith_f_op_f32(abs(133f)), _wgslsmith_f_op_f32(-188f * -332f), true)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 10021u, 4294967295u, u_input.b), vec4<u32>(firstTrailingBit(u_input.b), u_input.c, u_input.d.x >> (u_input.d.x % 32u), 81329u), u_input.d), abs(select(u_input.d, u_input.d, vec4<bool>(true, true, true, true)))));
    let var_1 = abs(u_input.b);
    var var_2 = vec3<i32>(25747i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-49032i, u_input.e, u_input.e), ~vec3<i32>(u_input.e, u_input.e, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.e) >> (vec3<u32>(var_1, 25653u, var_1) % vec3<u32>(32u)), vec3<i32>(12844i, -46275i, 61503i))), 0i) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.xwy, _wgslsmith_mod_vec3_u32(u_input.d.zwy, var_0.yzz)), ~(~_wgslsmith_dot_vec3_u32(u_input.d.wxy, u_input.d.xyz)), 8842u) % vec3<u32>(32u));
    var var_3 = vec3<i32>(abs(_wgslsmith_add_i32(-6717i, firstTrailingBit(var_2.x))), _wgslsmith_mult_i32(reverseBits(~u_input.e) & (~u_input.e & 49389i), -var_2.x), ~(-u_input.e));
    let var_4 = Struct_3(34162u, Struct_1(var_3.x, firstLeadingBit(vec2<u32>(var_1, var_1))), ~(32372u << ((~u_input.c & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 50828u, 1u), u_input.d)) % 32u)), true);
    let var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-932f, 735f)), -1000f)) + 1666f) - _wgslsmith_f_op_f32(step(480f, _wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(1059f - -1000f)))))));
    let var_6 = func_2(-reverseBits(-firstLeadingBit(vec3<i32>(var_4.b.a, var_3.x, -2147483647i))), ~vec2<i32>(countOneBits(~(-30116i)), 1i)).d.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, i32(-1i) * -(~min(var_3.x, 0i)), var_5);
}


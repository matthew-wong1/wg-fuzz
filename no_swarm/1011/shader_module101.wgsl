struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = Struct_4(arg_0.a, Struct_1(~_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0.a.a.x, u_input.c, u_input.c), max(vec3<i32>(arg_0.a.a.x, -1i, 27131i), vec3<i32>(1i, -25574i, 13919i))), arg_0.a.c, !(!any(vec4<bool>(arg_0.a.d, false, false, arg_0.a.d))), !(!arg_0.a.d), arg_0.a.e), arg_0, u_input.c);
    let var_1 = arg_0;
    let var_2 = !(!var_1.a.d);
    let var_3 = vec4<bool>(true, any(select(select(!vec3<bool>(var_0.b.c, false, var_0.a.c), select(vec3<bool>(arg_0.a.c, var_1.a.d, false), vec3<bool>(false, var_1.a.b, true), vec3<bool>(false, var_0.a.c, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), !vec3<bool>(true, arg_0.a.b, false), !var_1.a.d)), (var_0.b.d && var_1.a.d) | true, true);
    var_0 = Struct_4(Struct_1(countOneBits(arg_0.a.a) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), true, all(vec4<bool>(arg_0.a.e >= 237f, var_3.x, !var_1.a.b, any(vec2<bool>(true, false)))), var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.e))), arg_0.a, Struct_3(Struct_1(abs(var_0.b.a), var_1.a.a.x <= _wgslsmith_mod_i32(-20596i, u_input.c), (var_1.a.b | false) || any(vec3<bool>(false, false, false)), select(!var_3.x, arg_0.a.d || true, var_3.x), var_1.a.e)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, arg_0.a.a.x >> (0u % 32u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-10165i, var_1.a.a.x), -2147483647i) | -10496i));
    return -u_input.b;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2062f), 889f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(328f, 1156f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) * vec2<f32>(_wgslsmith_div_f32(-1254f, var_0.x), 244f))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 4294967295u), ~firstTrailingBit(select(54815u, 26192u, false)) & 4935u, ~var_1);
    var var_3 = Struct_4(Struct_1(~arg_0, true, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -141f), true)) == var_0.x, false, _wgslsmith_f_op_f32(-1000f + -590f)), Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f + 1959f) - _wgslsmith_f_op_f32(-var_0.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1122f, var_0.x))), u_input.b.x < _wgslsmith_dot_vec3_i32(u_input.b.zwx, vec3<i32>(arg_0.x, 2147483647i, u_input.c)), !(!(u_input.a.x > var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1000f)) + 1235f)), Struct_3(Struct_1(vec3<i32>(81i, arg_0.x, arg_0.x), true, true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + -1000f))), min(_wgslsmith_dot_vec4_i32(u_input.b & func_3(Struct_3(Struct_1(vec3<i32>(-37960i, u_input.c, -11364i), false, false, true, -968f))), u_input.b), u_input.c));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_4(arg_0: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1257f) * vec2<f32>(1068f, arg_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(floor(428f)), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, 685f))))));
    return any(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false), any(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), !(32340i == u_input.c)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_2(Struct_1(vec3<i32>(select(-1i, -1533i, true), i32(-1i) * -9458i, u_input.c) >> (u_input.a % vec3<u32>(32u)), true, true, func_4(vec4<f32>(_wgslsmith_f_op_f32(-520f - 1328f), -2063f, _wgslsmith_f_op_f32(func_2(vec3<i32>(-1i, u_input.c, 2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(2107f, 592f, false)), _wgslsmith_f_op_f32(ceil(1681f)))))), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(895f, 1000f) + vec2<f32>(-983f, -565f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(624f, 582f), vec2<f32>(-432f, -123f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-107f, -1836f))))), u_input.c);
    var_0 = Struct_2(var_0.a, u_input.a.x, vec2<f32>(-352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(289f * var_0.c.x))))), var_0.d << (_wgslsmith_sub_u32(u_input.a.x, 23198u) % 32u));
    var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c, u_input.b.x), u_input.b.ywz), var_0.a.a, var_0.a.c), -max(var_0.a.a, u_input.b.ywy)), !var_0.a.d, false, !var_0.a.b, _wgslsmith_f_op_f32(var_0.c.x + var_0.a.e)), _wgslsmith_div_u32(~1469u, var_0.b), var_0.c, var_0.a.a.x);
    let var_1 = var_0.c.x;
    let var_2 = Struct_4(var_0.a, var_0.a, Struct_3(Struct_1(func_3(Struct_3(Struct_1(var_0.a.a, false, true, var_0.a.c, 214f))).wzx, !(!var_0.a.d), var_0.a.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.e, var_0.c.x))))), 17608i);
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> u32 {
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(func_5(func_1(), countOneBits(u_input.a.x) & ~u_input.a.x), 4294967295u);
    var_0 = countOneBits(abs(~(~u_input.a.x))) ^ max(4294967295u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(4294967295u, 50285u, 30283u, u_input.a.x)) >> ((u_input.a.x << (18692u % 32u)) % 32u)) % 32u), 4294967295u);
    let var_1 = abs(1u);
    var_0 = var_1;
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.b.wz, _wgslsmith_clamp_vec2_i32(abs(u_input.b.wz), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 9265i), vec2<i32>(u_input.b.x, 41928i)), vec2<i32>(-3659i, -14262i) ^ vec2<i32>(u_input.c, u_input.c)), vec2<i32>(~u_input.c, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.xx)))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-438f))) + func_1().b.e), _wgslsmith_dot_vec2_i32(~select(u_input.b.zx ^ vec2<i32>(-33885i, u_input.b.x), -vec2<i32>(-1481i, u_input.b.x), true), reverseBits(u_input.b.zx | ~u_input.b.yy)));
}


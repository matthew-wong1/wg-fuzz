struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_u32(~u_input.c, ~u_input.c) >> (16814u % 32u);
    let var_2 = ~(~1u);
    var var_3 = _wgslsmith_f_op_f32(round(2650f)) >= 1686f;
    let var_4 = var_0;
    return select(!vec4<bool>(any(vec3<bool>(true, true, var_4.a)) && (729f >= arg_0.b), var_4.a, true | arg_0.a, false), vec4<bool>(all(select(!vec4<bool>(var_0.a, var_0.a, arg_2, false), vec4<bool>(true, true, true, arg_0.a), !vec4<bool>(arg_2, false, false, true))), true, true, var_4.a), all(select(select(vec3<bool>(var_4.a, var_4.a, false), !vec3<bool>(false, false, arg_0.a), false), !(!vec3<bool>(true, arg_0.a, var_0.a)), any(select(vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.a, arg_0.a, true), vec3<bool>(var_4.a, arg_0.a, var_4.a))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-1769f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b), _wgslsmith_f_op_f32(round(-434f)))), 1019f, _wgslsmith_f_op_f32(f32(-1f) * -273f))));
    var var_1 = select(!vec4<bool>(true, !arg_0.a, !select(arg_0.a, arg_0.a, arg_0.a), !all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), select(vec4<bool>(0i < _wgslsmith_add_i32(arg_1.x, 0i), arg_0.a, arg_0.a, select(true, u_input.e > arg_1.x, !arg_0.a)), vec4<bool>(true, arg_0.a, _wgslsmith_f_op_f32(exp2(arg_0.b)) >= _wgslsmith_f_op_f32(abs(var_0.x)), any(vec2<bool>(true, true))), !(!(!vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)))), !all(func_3(Struct_1(false, arg_0.b), var_0.wwz, false)));
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(0u, u_input.c.x) | firstTrailingBit(_wgslsmith_add_u32(35334u, 12619u)), 0u);
    var_1 = select(select(vec4<bool>(firstTrailingBit(-45023i) >= reverseBits(31641i), true, _wgslsmith_dot_vec2_u32(var_2, var_2) < max(1u, 31674u), (false != arg_0.a) != var_1.x), func_3(Struct_1(true, _wgslsmith_f_op_f32(-414f - var_0.x)), var_0.yzx, -arg_1.x < arg_1.x), arg_0.a), func_3(arg_0, var_0.yxy, 19186i <= arg_1.x), all(select(func_3(Struct_1(var_1.x, -342f), vec3<f32>(521f, arg_0.b, arg_0.b), var_1.x), select(!vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, false, arg_0.a, var_1.x), func_3(Struct_1(true, 2092f), var_0.zzy, true).x), _wgslsmith_add_u32(4294967295u, var_2.x) >= 1u)));
    let var_3 = Struct_1(false, _wgslsmith_f_op_f32(arg_0.b - -713f));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.b, -749f)))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, ~(~vec3<u32>(4294967295u, u_input.c.x, 58203u))), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)));
    var_0 = reverseBits(u_input.c);
    var_0 = ~(u_input.c ^ (vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_0.x), _wgslsmith_mult_u32(u_input.c.x, 1u), 1u) & vec3<u32>(u_input.c.x, u_input.c.x | var_0.x, u_input.c.x)));
    var_0 = min(_wgslsmith_mult_vec3_u32(min(abs(u_input.c | vec3<u32>(4294967295u, var_0.x, var_0.x)), vec3<u32>(min(u_input.c.x, var_0.x), ~var_0.x, ~4294967295u)), vec3<u32>(~14160u, 23220u, abs(~15446u))), vec3<u32>(0u, 4294967295u, 37115u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-720f * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(false, 1000f), abs(vec4<i32>(u_input.e, -2147483647i, 26241i, arg_1)))).x), select(true, func_3(Struct_1(false, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -579f, arg_0)), true).x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f))), 1317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = arg_1 & u_input.a;
    var var_1 = Struct_1(func_4(arg_3.x, i32(-1i) * -5305i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.yxw - vec3<f32>(1468f, -255f, 1000f)) + _wgslsmith_div_vec3_f32(arg_3.xyw, arg_3.wzy)) - _wgslsmith_f_op_vec3_f32(func_2(Struct_1(false, 1498f), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 53161i, 31027i, var_0), vec4<i32>(-2147483647i, -2147483647i, var_0, var_0)))))), -133f);
    var var_2 = vec3<i32>(var_0, ~_wgslsmith_sub_i32(13060i, 1i), 26923i);
    let var_3 = !vec2<bool>(all(func_3(Struct_1(true, 362f), _wgslsmith_f_op_vec3_f32(-arg_3.xxx), true).zwy), true);
    var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(firstLeadingBit(vec3<i32>(var_0, 55907i, 45018i))), select(vec3<i32>(-2147483647i, 2147483647i, 1i), -vec3<i32>(0i, -12625i, -1979i), true), countOneBits(vec3<i32>(u_input.b.x, 30080i, -48950i)) >> (vec3<u32>(u_input.c.x, arg_2, 0u) % vec3<u32>(32u))), countOneBits(-(vec3<i32>(arg_1, var_0, 0i) << (vec3<u32>(0u, 2842u, 0u) % vec3<u32>(32u))))) << (~max(~vec3<u32>(34768u, 122097u, 35508u), u_input.c & _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, arg_2), vec3<u32>(u_input.c.x, 37151u, 1u))) % vec3<u32>(32u));
    return var_3;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> i32 {
    let var_0 = arg_1.xz >> ((u_input.c.xz >> (firstLeadingBit(~vec2<u32>(0u, u_input.c.x) & vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = -16166i == u_input.b.x;
    var_1 = arg_3;
    var_1 = arg_0.x;
    var_1 = arg_0.x;
    return -u_input.b.x;
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = 13449u;
    let var_1 = arg_2;
    let var_2 = false;
    let var_3 = !select(vec3<bool>(!arg_0, var_1.a, var_2), !select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, false, var_2), true), select(vec3<bool>(false, false, arg_2.a), vec3<bool>(var_1.a, true, false), vec3<bool>(arg_2.a, false, arg_0)), arg_0), select(vec3<bool>(arg_2.a, arg_0, arg_0 & arg_2.a), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, var_1.a), !vec3<bool>(false, var_1.a, var_1.a)), var_1.a));
    let var_4 = _wgslsmith_mod_vec2_i32(select(select(countOneBits(u_input.d), vec2<i32>(-20901i, 2147483647i), !vec2<bool>(var_2, false)), vec2<i32>(u_input.e, u_input.a), var_3.xy) << (vec2<u32>(abs(4294967295u), var_0) % vec2<u32>(32u)), countOneBits(vec2<i32>(countOneBits(firstTrailingBit(u_input.b.x)), ~abs(2147483647i))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(arg_2.b - 3018f), arg_2.b) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-673f, var_1.b, true))), _wgslsmith_div_f32(-628f, _wgslsmith_f_op_f32(-var_1.b)), 710f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_6(func_5(func_1(u_input.b, -41813i, u_input.c.x, vec4<f32>(-167f, -1184f, 735f, 1366f)), vec3<i32>(u_input.a, 37970i, u_input.e) >> (u_input.c % vec3<u32>(32u)), 0u, any(vec4<bool>(true, true, false, false))) < 2147483647i, min(~(~vec3<u32>(1u, u_input.c.x, 49474u)), vec3<u32>(u_input.c.x, u_input.c.x, ~u_input.c.x)), Struct_1(true, -520f))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_6(true, ~vec3<u32>(94346u, u_input.c.x, u_input.c.x) >> (vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), Struct_1(0u == u_input.c.x, _wgslsmith_f_op_f32(step(1034f, 1000f))))).x, 925f, _wgslsmith_f_op_f32(f32(-1f) * -1626f))));
    let var_1 = _wgslsmith_clamp_i32(u_input.b.x, u_input.d.x, countOneBits(((u_input.a << (0u % 32u)) | func_5(vec2<bool>(false, false), vec3<i32>(2147483647i, u_input.d.x, u_input.a), 49435u, false)) & 64323i));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x * 1152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-301f + _wgslsmith_f_op_f32(-970f - 1193f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1193f)) - 1626f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(floor(258f)));
    var var_2 = vec4<bool>(false, true, true, true);
    var var_3 = -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, var_1)), 24549i), 1i, var_1, abs(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))) - vec3<f32>(1895f, _wgslsmith_f_op_f32(781f - 1000f), _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(959f, -1473f, -1386f), vec3<f32>(1000f, var_0.x, -487f)))))), var_2.zzx)), ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, 13905u), 4294967295u, firstTrailingBit(u_input.c.x)));
}


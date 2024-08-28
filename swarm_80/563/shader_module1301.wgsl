struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(u_input.e, -1000f, Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), false), vec4<bool>(all(vec3<bool>(false, false, false)), true, false, true), !all(vec2<bool>(true, false))), firstTrailingBit(u_input.e) ^ u_input.e, vec2<u32>(40479u, reverseBits(u_input.c))), (_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, u_input.b, -10122i), vec3<i32>(u_input.e.x, u_input.e.x, 1i)), ~vec3<i32>(13986i, 5632i, 0i)) << (abs(~0u) % 32u)) | ((1i ^ u_input.b) ^ -2147483647i), Struct_1(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true)) & true), ~u_input.e << (vec2<u32>(u_input.c >> (u_input.a.x % 32u), u_input.d) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(max(u_input.d, u_input.c), u_input.c))));
    var var_1 = false;
    var var_2 = Struct_2(firstLeadingBit(-(~_wgslsmith_div_vec2_i32(var_0.a, u_input.e))), var_0.b, Struct_1(vec4<bool>(var_0.c.a.x, var_0.e.a.x, all(!vec4<bool>(false, var_0.e.a.x, false, false)), !var_0.c.a.x), u_input.e, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_div_vec2_u32(var_0.c.c, u_input.a))), -2147483647i, var_0.e);
    var var_3 = _wgslsmith_f_op_f32(-var_0.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(879f, -568f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b * var_0.b))) + -1092f), var_2.b, var_2.b));
    return select(select(vec4<bool>(!(!var_2.e.a.x), true, var_0.c.a.x, var_2.c.a.x), select(select(select(vec4<bool>(true, true, false, var_2.e.a.x), var_0.c.a, var_0.e.a.x), select(vec4<bool>(var_0.e.a.x, false, false, var_0.e.a.x), vec4<bool>(var_2.c.a.x, var_0.e.a.x, var_0.c.a.x, var_2.e.a.x), var_2.e.a.x), var_2.c.a.x & var_0.c.a.x), var_0.e.a, vec4<bool>(any(var_2.c.a), true, true, true)), true), !(!(!vec4<bool>(false, var_2.c.a.x, false, true))), true);
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(select(select(arg_0.e.a, vec4<bool>(true, true, true, true), !(arg_0.d >= -6522i)), func_3(), func_3().x), _wgslsmith_add_vec2_i32(arg_0.e.b, vec2<i32>(~(~0i), arg_0.a.x)), _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(~u_input.a, ~arg_0.e.c, u_input.a), ~arg_0.c.c));
    var_0 = Struct_1(!arg_0.c.a, abs(vec2<i32>(var_0.b.x, _wgslsmith_add_i32(arg_0.c.b.x, 1i))), u_input.a);
    var_0 = arg_0.e;
    var_0 = Struct_1(arg_0.c.a, ~vec2<i32>(select(select(0i, 17337i, true), select(var_0.b.x, -18686i, false), any(vec2<bool>(false, true))), reverseBits(arg_0.e.b.x)), abs(abs(min(arg_0.e.c, _wgslsmith_mod_vec2_u32(var_0.c, vec2<u32>(arg_0.c.c.x, var_0.c.x))))));
    var_0 = arg_0.c;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(select(0i, var_0.b.x, var_0.a.x), var_0.b.x, -arg_0.a.x, var_0.b.x), -vec4<i32>(_wgslsmith_div_i32(11728i, arg_0.a.x), 31366i, 1i, u_input.b)), _wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(u_input.b, u_input.e.x, -25761i))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, var_0.b.x, -664i), reverseBits(vec3<i32>(u_input.b, arg_0.c.b.x, -2147483647i))), select(vec3<i32>(0i, u_input.e.x, u_input.b), select(vec3<i32>(1i, 18775i, arg_0.e.b.x), vec3<i32>(-2147483647i, var_0.b.x, arg_0.c.b.x), var_0.a.x), vec3<bool>(true, true, true)))), firstLeadingBit(var_0.b.x));
}

fn func_2() -> bool {
    var var_0 = abs(~(~(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(54008u, u_input.a.x)) ^ ~vec2<u32>(u_input.a.x, u_input.a.x))));
    var_0 = vec2<u32>(61028u << (abs(1u) % 32u), var_0.x);
    let var_1 = 58847u;
    let var_2 = func_4(Struct_2(-(~(-vec2<i32>(u_input.e.x, -26654i))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1398f, -1391f))), Struct_1(func_3(), ~u_input.e | _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), u_input.e), ~u_input.a), -1i, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, false, true)), ~u_input.e, ~u_input.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-221f, 901f), vec2<f32>(1756f, -823f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1098f, 1588f)))))));
    return true;
}

fn func_1() -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(197f - 617f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1000f), -705f), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(873f, -1250f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-541f, 769f) * 615f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(-1748f, 564f), func_2())))) * _wgslsmith_f_op_f32(sign(-2505f))), _wgslsmith_f_op_f32(round(var_0.x)), -501f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1341f) - _wgslsmith_f_op_f32(var_0.x - 154f))))));
    return _wgslsmith_f_op_f32(step(var_0.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(852f + _wgslsmith_f_op_f32(f32(-1f) * -401f)) - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), Struct_1(vec4<bool>(func_3().x, false, !(u_input.e.x > 2147483647i), true), vec2<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 33801i, u_input.b), vec3<i32>(u_input.e.x, u_input.e.x, -78664i)), vec3<i32>(u_input.e.x, u_input.e.x, -1i) | vec3<i32>(u_input.e.x, -2147483647i, 23352i))), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(18528u, 0u) | u_input.a, firstTrailingBit(u_input.a), all(vec3<bool>(false, false, true))), vec2<u32>(u_input.d, 0u), ~(~u_input.a))), -max(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.e.x, u_input.e.x, 0i), vec4<i32>(u_input.b, 2147483647i, u_input.b, -27960i)), reverseBits(i32(-1i) * -6224i)), Struct_1(!vec4<bool>(true, u_input.e.x != 0i, all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), _wgslsmith_clamp_vec2_i32(u_input.e, u_input.e, vec2<i32>(u_input.b, -2147483647i)), ~u_input.a));
    var_0 = Struct_2(-u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1032f * var_0.b)) + var_0.b)), Struct_1(vec4<bool>(!(var_0.d < -1i), var_0.e.a.x, func_2() || (var_0.b <= -238f), true), vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(8728i, -44i), -u_input.e.x)), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.c), var_0.e.c), var_0.c.c)), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(var_0.e.b.x, -2147483647i, -2147483647i)), vec3<i32>(_wgslsmith_sub_i32(13978i, var_0.c.b.x), var_0.e.b.x & var_0.e.b.x, ~var_0.a.x)) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.c.x, var_0.e.c.x, u_input.c), ~vec3<u32>(u_input.a.x, u_input.d, u_input.d)), reverseBits(4294967295u)) % 32u), Struct_1(!vec4<bool>(any(vec3<bool>(var_0.c.a.x, true, var_0.e.a.x)), true, true, !var_0.e.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(2584i, var_0.a.x)), u_input.a));
    var_0 = Struct_2(vec2<i32>(func_4(Struct_2(vec2<i32>(u_input.e.x, 17554i), var_0.b, Struct_1(vec4<bool>(true, false, var_0.e.a.x, false), vec2<i32>(u_input.b, 1i), vec2<u32>(var_0.c.c.x, 8033u)), u_input.e.x | 0i, Struct_1(vec4<bool>(var_0.c.a.x, true, var_0.c.a.x, var_0.c.a.x), var_0.a, vec2<u32>(5308u, 4294967295u)))).x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(var_0.a.x, u_input.b), u_input.e), vec2<i32>(u_input.b, var_0.d)), abs(vec2<i32>(var_0.d, u_input.b)))), -1000f, var_0.c, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, u_input.b)), vec2<i32>(abs(u_input.b), var_0.d)), Struct_1(vec4<bool>(var_0.e.a.x, !any(vec4<bool>(false, var_0.e.a.x, true, var_0.c.a.x)), (-1i != u_input.b) || (30509u > var_0.c.c.x), all(!var_0.e.a.zy)), var_0.c.b, ~reverseBits(vec2<u32>(4294967295u, 1u))));
    var var_1 = Struct_2(vec2<i32>(-39456i, _wgslsmith_mod_i32(-var_0.c.b.x, 1i)) & _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(~var_0.d, 0i)), var_0.b, Struct_1(func_3(), ~(~(-vec2<i32>(var_0.d, -21286i))), select(u_input.a, var_0.c.c, vec2<bool>(true, true)) ^ u_input.a), var_0.c.b.x, var_0.c);
    var var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, reverseBits(1i), u_input.b << (15630u % 32u), ~u_input.e.x), ~(~vec4<i32>(5783i, -2147483647i, -25346i, -13620i))) >> (var_0.e.c.x % 32u);
    var var_3 = true;
    let var_4 = Struct_1(func_3(), u_input.e, ~firstLeadingBit(select(abs(u_input.a), vec2<u32>(46282u, 1u), vec2<bool>(var_1.e.a.x, true))));
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.e.c.x, 41540u, 49001u), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(select(var_0.b, -784f, var_4.a.x)))), ~abs(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))));
}


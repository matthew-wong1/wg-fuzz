struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = max(vec4<i32>(arg_0.b, -_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.b, 9544i), vec2<i32>(48664i, arg_0.a.b.d), false), reverseBits(vec2<i32>(arg_0.b, -23350i))), 1i, arg_0.b), vec4<i32>(_wgslsmith_clamp_i32(arg_0.b, arg_0.a.d.d, firstLeadingBit(2147483647i & arg_0.b)), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<i32>(arg_0.b, 1i, arg_0.b)), select(vec3<i32>(-23670i, arg_0.a.b.d, 2147483647i), vec3<i32>(arg_0.a.d.d, -50691i, arg_0.a.d.d), arg_2))), ~arg_0.b, (32094i | (arg_0.a.b.d << (0u % 32u))) << (~(~0u) % 32u)));
    var var_1 = Struct_3(_wgslsmith_mod_i32(arg_0.a.b.d, _wgslsmith_clamp_i32(~(arg_0.b << (arg_3 % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.b, arg_0.a.b.d, var_0.x), -2147483647i), -3906i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.b.c.x, arg_0.a.b.c.x, arg_1, arg_0.a.d.c.x), vec4<f32>(arg_0.a.b.e, -402f, -271f, 1067f))) * _wgslsmith_f_op_vec4_f32(arg_0.a.d.c - _wgslsmith_f_op_vec4_f32(arg_0.a.d.c + vec4<f32>(-1445f, arg_1, arg_0.a.d.e, arg_1)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1129f), arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(select(arg_0.a.d.c, arg_0.a.d.c, arg_0.d)))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-315f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x + -1223f))))));
    let var_3 = vec2<bool>(false, arg_2);
    let var_4 = 0u;
    return _wgslsmith_f_op_f32(max(arg_1, arg_0.a.d.e));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(~1i, Struct_1(-226f, _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(0u, 27476u, u_input.a.x)), abs(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, _wgslsmith_div_f32(306f, -1032f), _wgslsmith_f_op_f32(-759f * -374f), 1000f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1908f), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(-2147483647i, Struct_1(722f, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(-1375f, 495f, 506f, -418f), -1i, -497f), 0u, Struct_1(352f, vec3<u32>(29890u, 4294967295u, u_input.a.x), vec4<f32>(-609f, 336f, -1000f, 194f), -19131i, 915f), false), 7557i, vec2<bool>(true, false), vec4<bool>(false, false, true, false)), 1730f, false, 31791u)), -2807f, _wgslsmith_f_op_f32(f32(-1f) * -972f))), -1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1913f, 397f))))))), _wgslsmith_mult_u32(u_input.a.x, 1u), Struct_1(_wgslsmith_f_op_f32(-826f * 711f), ~(~(vec3<u32>(30926u, 32996u, u_input.a.x) & vec3<u32>(1u, 20150u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, -638f, -1057f, -1166f))), min(firstLeadingBit(~1i), -min(-31675i, -17806i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f * -1526f) - _wgslsmith_f_op_f32(sign(2780f))))), true);
    let var_1 = vec4<u32>(var_0.b.b.x, u_input.a.x, 11969u, u_input.a.x);
    var var_2 = false;
    var_2 = select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-804f - _wgslsmith_f_op_f32(var_0.d.e * var_0.b.c.x)))) >= _wgslsmith_f_op_f32(round(346f)), any(vec3<bool>(var_0.e, ~var_0.c < (var_1.x | 1u), var_0.e)), !any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, var_0.e), true), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e + var_0.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(641f, 121f, true)) * var_0.d.c.x), _wgslsmith_f_op_f32(step(var_0.b.c.x, _wgslsmith_f_op_f32(-var_0.d.c.x))))));
    return -166f;
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(max(982f, _wgslsmith_f_op_f32(step(-1707f, -349f)))), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -982f) * -652f))), _wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(abs(max(41240u, 36785u)), u_input.a.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1611f + 1653f)), 337f, _wgslsmith_f_op_f32(func_2()), -1521f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(-1016f + 210f), _wgslsmith_f_op_f32(f32(-1f) * -968f), 347f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 276f, 1506f, -1336f), vec4<f32>(-1226f, -2242f, 144f, 1003f), false)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1330f, -272f, 1044f, 966f)))))))), 46926i, _wgslsmith_f_op_f32(ceil(-385f)));
    var var_1 = var_0.b.x;
    let var_2 = Struct_1(var_0.e, vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(var_0.b.x, reverseBits(arg_0.x), ~91109u)), ~(~(~var_0.b.x))), _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -1000f, var_0.c.x, var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1524f, 509f, var_0.e, var_0.a))))), var_0.d, var_0.c.x);
    let var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(min(arg_0.x, 64298u | arg_0.x), ~(u_input.a.x & 22465u), var_0.b.x ^ _wgslsmith_sub_u32(var_0.b.x, 1u), ~var_0.b.x), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 0u, 8278u, var_2.b.x), vec4<u32>(1u, var_0.b.x, 1u, 60351u)), vec4<u32>(14006u, 12994u, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c * var_0.c))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1404f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.e, var_0.a))), -478f, _wgslsmith_f_op_f32(max(-607f, _wgslsmith_f_op_f32(trunc(-304f))))))));
    return select(select(select(vec4<bool>(true, true, true, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), select(all(vec4<bool>(true, false, true, true)), true, var_2.d < var_2.d)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_2.d >= 72078i), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, !select(false, false, false))), select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false)), vec4<bool>(true, true, false, any(vec4<bool>(true, true, true, true))), true), select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, true))), vec4<bool>(!any(vec3<bool>(true, false, true)), true, _wgslsmith_f_op_f32(-var_2.a) <= var_2.a, _wgslsmith_div_i32(var_2.d, var_2.d) == _wgslsmith_dot_vec2_i32(vec2<i32>(51376i, var_0.d), vec2<i32>(2041i, var_0.d))), !(abs(1u) == ~var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(~firstLeadingBit(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 49928u))));
    var var_1 = u_input.a;
    let var_2 = !(!(!var_0));
    var_1 = ~(~_wgslsmith_add_vec2_u32(u_input.a, (u_input.a | vec2<u32>(var_1.x, 1u)) >> (abs(u_input.a) % vec2<u32>(32u))));
    let var_3 = Struct_4(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~1i, countOneBits(0i)), vec3<i32>(0i, -19484i, 33434i) << (vec3<u32>(15489u, 1u, var_1.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-249f - -909f), ~(vec3<u32>(34191u, 4294967295u, var_1.x) << (vec3<u32>(4294967295u, u_input.a.x, 37460u) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-1399f - -766f), 1f, _wgslsmith_f_op_f32(round(-1246f)), 323f), 25934i, -1451f), _wgslsmith_mod_u32(countOneBits(u_input.a.x), var_1.x & 22003u) & ~4294967295u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) * _wgslsmith_div_f32(497f, -1000f)), vec3<u32>(var_1.x, 1u, var_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(529f, -564f, -712f, 2114f)), vec4<f32>(-1111f, 1702f, -1213f, -799f))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 29806i), vec3<i32>(-4140i, -1i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2544f, 735f))), var_0.x), _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_sub_i32(-25736i, 0i), -40923i), select(var_2.xx, vec2<bool>(func_1(vec3<u32>(0u, 4294967295u, u_input.a.x)).x, true), var_2.xx), !select(select(func_1(vec3<u32>(4294967295u, 87876u, 11225u)), select(var_2, var_2, true), vec4<bool>(true, false, false, true)), var_0, var_0.x));
    let var_4 = reverseBits(~var_3.b);
    var var_5 = -841f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_mod_i32(35329i, var_4), var_4 & 0i, firstLeadingBit(-2480i)) >> (~vec3<u32>(4294967295u, 23239u, var_1.x) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.d.c.x) + _wgslsmith_f_op_f32(ceil(var_3.a.b.e))))), var_3.a.b.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-661f)))) - var_3.a.d.a), var_3.a.b.c.zw);
}


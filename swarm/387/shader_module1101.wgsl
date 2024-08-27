struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0, 1u), vec3<u32>(arg_0, arg_0, 10848u))), countOneBits(firstTrailingBit(u_input.a.x)), select(vec4<bool>(arg_0 != u_input.c, false, false, any(vec4<bool>(false, true, false, true))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, true, true)) | true)), Struct_1(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(0u, u_input.c, u_input.c)), 0i, !vec4<bool>(true, true, 0i < u_input.a.x, true)), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec2<bool>(true, true)))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(-29472i, -1i), -27532i, firstTrailingBit(-u_input.d.x), -2147483647i)));
    let var_1 = abs(vec4<u32>(select(1u, abs(u_input.c), var_0.c.x), u_input.c >> (u_input.c % 32u), reverseBits(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 0u, var_0.b.a, 1u), vec4<u32>(1u, 0u, arg_0, 5101u)), ~vec4<u32>(arg_0, 1u, arg_0, 0u))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 1u, 4294967295u), vec3<u32>(var_0.b.a, 1u, 53288u)), 14203u)));
    let var_2 = select(4294967295u >= (arg_0 | _wgslsmith_div_u32(1u, abs(u_input.c))), true, all(select(vec2<bool>(true, true), var_0.c, vec2<bool>(all(vec3<bool>(var_0.d.x, var_0.a.c.x, true)), select(true, var_0.a.c.x, true)))));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2580f), -1282f))))));
    var var_4 = 716f;
    return _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(f32(-1f) * -207f)) < -1949f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(37022u, abs(-54143i), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, u_input.b <= -2147483647i, true, true), vec4<bool>(select(true, false, false), true, arg_0.x > arg_0.x, u_input.c > 65823u)));
    var var_1 = !var_0.c.yyx;
    var_1 = var_0.c.xxw;
    var_1 = select(!var_0.c.zxz, select(!(!var_0.c.yxw), select(vec3<bool>(var_1.x, var_1.x, func_3(1u)), select(select(vec3<bool>(var_1.x, true, var_1.x), var_0.c.xxy, var_0.c.zzw), vec3<bool>(var_0.c.x, true, false), select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(var_0.c.x, false, var_0.c.x), false)), _wgslsmith_f_op_f32(max(arg_0.x, -1414f)) < -899f), select(!var_0.c.zxy, vec3<bool>(var_0.b <= -11800i, false, u_input.c > 0u), vec3<bool>(true, var_0.c.x != true, true))), var_1.x);
    return Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_u32(u_input.c & 0u, u_input.c)), 26320i, !select(!var_0.c, vec4<bool>(true, true, var_1.x, false), true)), Struct_1(68453u, u_input.d.x >> (min(_wgslsmith_mult_u32(u_input.c, var_0.a), ~var_0.a) % 32u), vec4<bool>(var_1.x, var_1.x, var_0.c.x, var_1.x)), !(!(!(!vec2<bool>(var_1.x, var_0.c.x)))), vec4<bool>(!(all(vec4<bool>(var_0.c.x, var_0.c.x, var_1.x, var_1.x)) | true), all(vec4<bool>(var_0.c.x, false, true, any(var_0.c))), all(vec4<bool>(var_0.c.x, true, true, !var_1.x)), !any(select(var_0.c, vec4<bool>(false, false, var_1.x, var_1.x), true))), -(~_wgslsmith_mult_vec4_i32(min(vec4<i32>(25707i, u_input.a.x, var_0.b, u_input.b), vec4<i32>(2804i, u_input.a.x, 0i, var_0.b)), ~vec4<i32>(var_0.b, u_input.d.x, u_input.a.x, var_0.b))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~1i;
    var var_1 = Struct_2(Struct_1(arg_0.b.a, arg_0.e.x, vec4<bool>(false, true, all(select(arg_0.d.xyx, vec3<bool>(false, arg_0.b.c.x, true), true)), false)), func_2(vec4<f32>(-618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-802f))), -1064f, -1716f)).a, !arg_0.b.c.zx, select(vec4<bool>(all(!arg_0.d), all(vec4<bool>(true, false, false, false)), true, true), arg_0.b.c, all(vec3<bool>(true, true, true)) || arg_0.b.c.x), reverseBits(vec4<i32>(min(u_input.a.x | -7806i, 93488i), u_input.b, arg_0.a.b, 1i >> (u_input.c % 32u))));
    return arg_0;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-154f, 726f, -568f, -135f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, 1049f, 1911f, -1335f)))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-553f, 1919f))))))));
    var var_2 = _wgslsmith_sub_u32(var_0.a.a, ~(~u_input.c));
    let var_3 = vec2<bool>(true, (!(var_0.b.c.x && true) && func_3(var_0.b.a)) && !(!(var_0.e.x == 2298i)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 * var_1)) - _wgslsmith_f_op_f32(abs(var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-995f)), _wgslsmith_f_op_f32(select(-1301f, -459f, false)))), _wgslsmith_f_op_f32(-1544f * _wgslsmith_div_f32(var_1, var_1)), false)) * _wgslsmith_f_op_f32(-var_1)));
    return Struct_1(_wgslsmith_mod_u32(44594u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, abs(1u)), abs(vec2<u32>(arg_0.a.a, 51608u) << (vec2<u32>(u_input.c, var_0.a.a) % vec2<u32>(32u))))), abs(arg_0.a.b), !select(select(vec4<bool>(var_0.c.x, arg_0.c.x, var_0.c.x, var_3.x), select(arg_0.d, vec4<bool>(false, var_0.d.x, true, false), var_0.b.c), !var_3.x), !func_2(vec4<f32>(var_4.x, var_4.x, var_4.x, var_1)).a.c, arg_0.a.c));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_2.a.c.x;
    var_0 = arg_2.b.c.x;
    var_0 = true;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_3), vec2<f32>(657f, 367f))));
    return max(~(select(~37964u, arg_2.b.a, func_4(Struct_2(Struct_1(arg_0.a, 30043i, arg_2.d), Struct_1(arg_2.b.a, 2147483647i, arg_2.b.c), vec2<bool>(var_1.c.x, true), vec4<bool>(arg_2.b.c.x, true, arg_0.c.x, arg_0.c.x), var_1.e)).b.c.x) | _wgslsmith_mod_u32(u_input.c, 18591u)), 1u);
}

fn func_6(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(firstTrailingBit(u_input.d.x), _wgslsmith_dot_vec2_i32(~(-u_input.a.xz), -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yx, u_input.a.xy), u_input.a.zz)), (max(arg_3.b, arg_3.b) >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2, arg_2), arg_3.a ^ 4294967295u) % 32u)) & u_input.d.x);
    let var_1 = -(~u_input.a.x);
    let var_2 = arg_3;
    let var_3 = ~(~u_input.c) | 0u;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec2<u32>(func_5(func_1(Struct_2(Struct_1(u_input.c, u_input.a.x, vec4<bool>(true, true, true, false)), Struct_1(30639u, 0i, vec4<bool>(false, false, true, false)), vec2<bool>(true, false), vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, 32111i, u_input.d.x, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1357f))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 494f, -218f, 408f) + vec4<f32>(-781f, -1574f, -1633f, -306f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1088f, -134f), vec2<f32>(1671f, 298f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, 583f)))), ~(~(~u_input.c))), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), vec2<u32>(max(firstLeadingBit(1u), ~4294967295u), 102942u)), ~(~u_input.c), Struct_1(_wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_dot_vec2_i32(u_input.a.yy, select(u_input.d.xx, vec2<i32>(1i, 22485i), true)), func_1(func_4(Struct_2(Struct_1(u_input.c, 46163i, vec4<bool>(false, true, false, true)), Struct_1(0u, u_input.a.x, vec4<bool>(false, false, true, true)), vec2<bool>(false, true), vec4<bool>(false, true, true, false), vec4<i32>(-15835i, u_input.d.x, u_input.d.x, u_input.a.x)))).c));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, -177f, -232f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1428f, 276f)), var_0.c.www))))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, u_input.c) | vec2<u32>(u_input.c, u_input.c), vec2<u32>(var_0.a, 4294967295u), vec2<u32>(var_0.a, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1778u), ~vec2<u32>(47308u, var_0.a))), vec2<u32>(_wgslsmith_mod_u32(35327u, ~u_input.c), var_0.a)), var_0.b, var_0.c);
    let var_3 = 1i >> (_wgslsmith_clamp_u32(firstTrailingBit(~0u), _wgslsmith_clamp_u32(4294967295u, reverseBits(_wgslsmith_add_u32(var_0.a, 0u)), select(0u, var_0.a, var_0.c.x) | 1u), 0u) % 32u);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -192f);
    let var_5 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(43089i, 1i, u_input.d.x, 6694i), -vec4<i32>(2147483647i, -2147483647i, -1i, var_3)), select(vec4<i32>(0i, -9540i, -9402i, -7404i), -vec4<i32>(26065i, var_0.b, -2147483647i, 1i), !var_0.c)) >> (vec4<u32>(4294967295u, _wgslsmith_mod_u32(1u, var_0.a) | 1u, var_0.a, 1u) % vec4<u32>(32u)), vec4<i32>(-1i) * -firstTrailingBit(select(vec4<i32>(var_2.b, 1i, -1i, var_2.b), vec4<i32>(-1i, var_2.b, 0i, var_2.b), false)));
    let var_6 = _wgslsmith_div_f32(1000f, 1000f);
    let var_7 = Struct_1(~110940u, -17494i, var_2.c);
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + -704f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_6, -1435f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, 708f)), _wgslsmith_f_op_f32(floor(var_1.x))) - _wgslsmith_f_op_f32(select(var_6, _wgslsmith_f_op_f32(f32(-1f) * -442f), true)))), countOneBits(vec3<i32>(~func_2(vec4<f32>(var_6, 907f, var_6, -1520f)).b.b, -(~var_5), select(-39863i << (u_input.c % 32u), _wgslsmith_add_i32(1i, var_3), var_6 > 1085f))));
}


struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = max((_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(u_input.c, 8911u, 0u)), vec3<u32>(4294967295u, 4294967295u, u_input.d) | vec3<u32>(0u, 14878u, u_input.c)) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(u_input.d, u_input.d, 79917u) << (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(77459u, u_input.d)), countOneBits(vec2<u32>(u_input.c, 0u))), ~firstTrailingBit(0u), ~(0u >> (u_input.d % 32u))) % vec3<u32>(32u)), abs(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(498u, u_input.d, 0u), 39879u), reverseBits(u_input.d), u_input.d)));
    var var_1 = ~(~min(~(~vec4<u32>(4294967295u, 1u, 1u, 0u)), ~(vec4<u32>(1727u, var_0.x, 4294967295u, 0u) & vec4<u32>(var_0.x, 4294967295u, 0u, var_0.x))));
    let var_2 = _wgslsmith_mult_vec4_i32(u_input.e, _wgslsmith_sub_vec4_i32(u_input.e, _wgslsmith_mod_vec4_i32(~u_input.e, -u_input.e)) & -u_input.e);
    var var_3 = arg_0;
    var_1 = vec4<u32>(~(~var_1.x), _wgslsmith_mod_u32(0u, ~_wgslsmith_clamp_u32(~0u, var_1.x, 22235u)), 4294967295u, _wgslsmith_mult_u32(~u_input.c, u_input.c));
    return select(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), true, var_1.x > ~(~firstTrailingBit(var_0.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), !(!func_3(Struct_2(Struct_1(vec3<i32>(-6805i, -2147483647i, u_input.e.x), 456f), -458f, Struct_1(u_input.b, -579f)), Struct_1(u_input.e.zyx, 1586f))), true);
    var_0 = select(vec4<bool>(all(!(!vec4<bool>(var_0.x, true, true, var_0.x))), var_0.x, true, var_0.x), select(vec4<bool>(false, !var_0.x, !var_0.x, !var_0.x), select(select(!vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), u_input.c < 14976u), !select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, var_0.x, false)), var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, false, true, var_0.x)), vec4<bool>(true, var_0.x, var_0.x, false)), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), false), true)), !select(vec4<bool>(var_0.x != true, true, false && var_0.x, var_0.x), select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, false, false, var_0.x), true), !vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x)), all(vec4<bool>(true, var_0.x, false, var_0.x))));
    var var_1 = _wgslsmith_sub_i32(u_input.b.x | -2147483647i, -1i);
    let var_2 = u_input.d;
    var_0 = vec4<bool>(true, true, var_0.x, var_0.x);
    return Struct_1(_wgslsmith_add_vec3_i32(abs(max(u_input.e.wxy, select(u_input.e.zxz, vec3<i32>(-22867i, 1i, -1i), true))), u_input.e.zyy), 1178f);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.a;
    let var_1 = vec3<u32>(21485u, u_input.c, u_input.d);
    var var_2 = 40112u;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1703f, -1225f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f - -1199f)), _wgslsmith_f_op_f32(max(-1507f, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(924f - -631f))))), _wgslsmith_f_op_f32(175f + _wgslsmith_f_op_f32(f32(-1f) * -782f)));
    let var_4 = i32(-1i) * -5661i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -292f))) * arg_2.b));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(~(-abs(vec4<i32>(11705i, -2147483647i, -47121i, u_input.a))), ~u_input.c, Struct_2(func_2(), -1000f, func_2())))));
    var var_1 = func_2();
    var var_2 = ~_wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.d, 4294967295u), vec4<u32>(0u, 44218u, 0u, u_input.c)), u_input.d), abs(u_input.c) >> (reverseBits(26427u) % 32u)) | 1u;
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0 + -723f), 448f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-645f, 287f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1505f, 1808f))))));
    return u_input.c;
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(769f)))), 446f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(650f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -1000f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1625f, 1319f), _wgslsmith_f_op_f32(step(-541f, 1000f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, 309f, 1238f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1411f, var_0.x, 3057f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1929f))))))));
    var var_1 = select(u_input.b.x, countOneBits(countOneBits(_wgslsmith_sub_i32(-10676i, u_input.a))) | -_wgslsmith_dot_vec3_i32(max(u_input.b, vec3<i32>(u_input.a, -2999i, 0i)), u_input.b), false);
    var var_2 = u_input.b.x ^ _wgslsmith_mult_i32(max(_wgslsmith_add_i32(-1i, i32(-1i) * -26851i), -1i), countOneBits(-1i));
    let var_3 = Struct_2(func_2(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), 599f)), func_2());
    return Struct_1(~u_input.b, var_0.x);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(1f - 1798f));
    let var_1 = select(select(vec3<bool>(!select(false, false, true), false, all(vec3<bool>(true, false, false))), vec3<bool>(u_input.a >= -5547i, any(vec2<bool>(true, true)), any(vec2<bool>(true, false))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), vec3<bool>(true, true, select(all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)))), vec3<bool>(false, all(vec2<bool>(true, true)), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1640f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -604f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wyx)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xyx - vec3<f32>(426f, arg_0.x, arg_1.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2945f, arg_0.x, -232f) + vec3<f32>(1214f, arg_0.x, arg_0.x))))))));
    return func_5(~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, u_input.d, u_input.c)), ~vec3<u32>(u_input.d, u_input.c, u_input.d)) & vec3<u32>(abs(u_input.d << (u_input.c % 32u)), countOneBits(select(1u, u_input.c, true)), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<f32>(-1245f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1210f, -155f)), -1518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1559f - 1835f) + _wgslsmith_f_op_f32(sign(-584f))))), func_5(vec3<u32>(u_input.c, func_1(vec2<bool>(true, true)), (u_input.d ^ 80796u) << (~4294967295u % 32u))));
    var var_1 = Struct_2(Struct_1(vec3<i32>(func_2().a.x, var_0.a.x | -1i, 1i >> (u_input.d % 32u)) ^ _wgslsmith_add_vec3_i32(var_0.a & vec3<i32>(6760i, u_input.b.x, 2147483647i), vec3<i32>(u_input.e.x, -2147483647i, 31268i) << (vec3<u32>(4294967295u, 16513u, u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(floor(-615f)), func_5(abs(vec3<u32>(u_input.d, 96816u, 1u)) << (~(~vec3<u32>(0u, u_input.d, u_input.d)) % vec3<u32>(32u))));
    var_1 = Struct_2(Struct_1(~var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.e, 20978u, Struct_2(Struct_1(u_input.e.xzx, 620f), 331f, var_1.c)))))), var_1.a.b, var_1.c);
    let var_2 = !select(vec3<bool>(func_3(Struct_2(Struct_1(vec3<i32>(26696i, -36458i, var_1.a.a.x), var_1.c.b), var_1.a.b, var_1.c), func_6(vec4<f32>(var_0.b, -348f, -721f, 167f), var_1.a)), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), var_0.b == 478f), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(vec2<bool>(true, false)) | all(vec3<bool>(false, true, false))));
    var_1 = Struct_2(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1066f, var_0.b, -737f, var_1.b))), vec4<f32>(var_0.b, 1000f, var_0.b, -895f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -298f, -1108f, 1740f) * vec4<f32>(var_1.a.b, -552f, var_1.c.b, var_1.c.b))))), Struct_1(-(var_1.c.a ^ vec3<i32>(var_1.c.a.x, var_1.a.a.x, -1i)), _wgslsmith_f_op_f32(-var_0.b))), func_2().b, Struct_1(vec3<i32>(49666i, _wgslsmith_add_i32(reverseBits(var_0.a.x), 1i), -u_input.a), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 1i & firstTrailingBit(countOneBits(24246i)));
}


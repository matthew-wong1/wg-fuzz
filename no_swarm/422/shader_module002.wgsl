struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    var var_0 = 49243u;
    let var_1 = Struct_2(Struct_1(u_input.a, abs(-(~vec4<i32>(arg_0.b, arg_1.b, -38066i, arg_0.b))), vec4<u32>(~u_input.a.x, abs(u_input.a.x), _wgslsmith_sub_u32(23189u, u_input.a.x), u_input.a.x) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.a.x, 55588u, u_input.a.x, u_input.a.x)), 2130f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), !vec2<bool>(all(vec2<bool>(arg_0.a, true)) || arg_1.a, true), vec2<i32>(_wgslsmith_sub_i32(~select(arg_0.b, -1i, arg_0.a), arg_0.b), 1i));
    let var_2 = Struct_5(Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-var_1.b), var_1.c, reverseBits(var_1.d & vec2<i32>(arg_0.b, -46134i)) & reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.b.x, arg_0.b), vec2<i32>(arg_0.b, 904i)))), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.x, 3753u, var_1.a.a.x, 14644u), vec4<u32>(var_1.a.c.x, 70126u, 60214u, var_1.a.a.x)) | ~0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, 0u, var_1.a.c.x)), ~vec4<u32>(u_input.a.x, var_1.a.a.x, 0u, 5078u)), 4294967295u, ~0u), var_1.a.b, ~vec4<u32>(~var_1.a.a.x, u_input.a.x, 0u, ~var_1.a.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.d)))));
    var var_3 = ~vec3<u32>(_wgslsmith_mod_u32(7572u, ~_wgslsmith_mod_u32(7551u, 4294967295u)), abs(28497u), var_1.a.a.x);
    var var_4 = abs(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(~0i, ~1i), vec2<i32>(var_1.d.x, var_2.b.b.x), vec2<i32>(0i, ~2147483647i)), ~(vec2<i32>(var_1.a.b.x, -2147483647i) << (~var_2.b.a.zw % vec2<u32>(32u)))));
    return _wgslsmith_div_f32(var_2.a.b.x, _wgslsmith_f_op_f32(trunc(-1305f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = vec2<u32>((57731u >> (arg_0.x % 32u)) << (firstTrailingBit(~26810u) % 32u), ~1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_4(true, 2147483647i), Struct_4(true, arg_2.b.x))))), arg_2.d, _wgslsmith_f_op_f32(2964f * _wgslsmith_f_op_f32(abs(1115f))), arg_3.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 815f, 1000f, 1139f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1549f), vec4<f32>(arg_3.x, 954f, -285f, 1471f)))))))) + vec4<f32>(arg_2.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 1516f)), _wgslsmith_f_op_f32(1151f * _wgslsmith_f_op_f32(exp2(arg_2.d))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1194f, _wgslsmith_f_op_f32(f32(-1f) * -1064f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.d + arg_2.d)))), arg_3.x));
    var var_2 = Struct_4((~(~arg_2.b.x) & -firstTrailingBit(arg_2.b.x)) < arg_2.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(-arg_2.b.yx), select(arg_2.b.zw, ~vec2<i32>(arg_2.b.x, arg_2.b.x), true)), arg_2.b.ww));
    let var_3 = Struct_5(Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-365f - arg_3.x), _wgslsmith_f_op_f32(1771f - -1290f), arg_3.x, _wgslsmith_f_op_f32(-arg_3.x))), vec2<bool>(true & (var_2.a | true), !any(vec3<bool>(var_2.a, true, var_2.a))), -vec2<i32>(arg_2.b.x, ~2147483647i)), arg_2);
    var_1 = _wgslsmith_f_op_vec4_f32(var_3.a.b + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_3.a.b)) - var_3.a.b), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.a.a.d)), var_3.b.d, _wgslsmith_f_op_f32(var_1.x - var_1.x), 376f), true || var_3.a.c.x)))));
    return !var_3.a.c.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(u_input.a, ~(~(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) & u_input.a))), vec4<i32>(1i, max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 1i, 6562i), vec3<i32>(arg_0, -5511i, arg_0)), vec3<i32>(57354i, 15047i, 2396i)), arg_0), -abs(_wgslsmith_mult_i32(arg_0, 2147483647i)), (min(arg_0, arg_0) & arg_0) ^ _wgslsmith_sub_i32(arg_0, _wgslsmith_add_i32(arg_0, -33716i))), ~(~u_input.a), _wgslsmith_f_op_f32(trunc(1692f)));
    var_0 = Struct_1(vec4<u32>(15149u, ~u_input.a.x, firstTrailingBit(u_input.a.x), 85846u), ~var_0.b, vec4<u32>(0u, select(1u, _wgslsmith_add_u32(var_0.a.x, 0u), !arg_2.x || true), abs(u_input.a.x), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.c.x, var_0.a.x), ~u_input.a.zwz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, 865f, arg_1)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, -794f, 317f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(-789f + var_0.d)), true))))));
    var var_2 = Struct_4(arg_1 == var_1.x, arg_0);
    let var_3 = _wgslsmith_f_op_f32(ceil(-501f));
    return Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, u_input.a.x & u_input.a.x, 17914u, firstTrailingBit(var_0.c.x)), firstLeadingBit(var_0.a)), abs(var_0.b >> (u_input.a % vec4<u32>(32u))) & vec4<i32>(firstTrailingBit(var_0.b.x), -var_2.b, var_0.b.x, _wgslsmith_div_i32(-21363i, -61245i)), var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1360f + 1487f) - _wgslsmith_f_op_f32(abs(-460f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1169f * -1049f) - _wgslsmith_f_op_f32(min(var_1.x, arg_1)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -264f, -891f, var_0.d)))))), vec2<bool>(any(!vec4<bool>(false, var_2.a, true, arg_2.x)), true), vec2<i32>(_wgslsmith_div_i32(995i, 26313i), 75006i));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_1(~abs(~(~u_input.a)), reverseBits(vec4<i32>(-1918i, -63908i, select(~(-2147483647i), 0i, true), -3132i)), vec4<u32>(~(~_wgslsmith_mod_u32(1u, 4294967295u)), ~u_input.a.x, 2921u, countOneBits(u_input.a.x)), _wgslsmith_f_op_f32(abs(-694f)));
    var var_1 = func_4(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1674f + var_0.d)))) * _wgslsmith_f_op_f32(floor(1463f))), vec4<bool>(select(true, true, true) && func_2(u_input.a, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), Struct_1(var_0.c, vec4<i32>(var_0.b.x, 7465i, var_0.b.x, 50690i), var_0.a, var_0.d), vec3<f32>(var_0.d, var_0.d, -234f)), false, true, true));
    var_1 = Struct_2(func_4(max(-2140i, ~(-19561i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -594f) + var_1.a.d)), !vec4<bool>(var_1.c.x, !var_1.c.x, true, select(false, false, var_1.c.x))).a, _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(-626f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f - var_0.d) - var_1.a.d), var_1.b.x, -1390f)), !func_4(47619i, var_0.d, select(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true), vec4<bool>(var_1.c.x, var_1.c.x, true, true), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x)), !vec4<bool>(false, var_1.c.x, var_1.c.x, true), true)).c, func_4(var_1.d.x, var_1.b.x, !(!select(vec4<bool>(false, true, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, false, false), var_1.c.x))).d);
    let var_2 = vec3<i32>(var_0.b.x, -var_0.b.x, var_0.b.x);
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(select(var_1.b, var_1.b, vec4<bool>(var_1.c.x, ~(-2147483647i) >= -var_1.a.b.x, any(!vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x)), func_4(var_0.b.x, -581f, !vec4<bool>(var_1.c.x, false, false, var_1.c.x)).c.x))), !(!(!select(vec2<bool>(false, true), vec2<bool>(var_1.c.x, var_1.c.x), var_1.c))), reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, 16607i) ^ vec2<i32>(15622i, 2138i), ~vec2<i32>(var_2.x, 0i))));
    return Struct_5(Struct_2(func_4(~(i32(-1i) * -13621i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f + 188f)), vec4<bool>(true, any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), true, var_1.c.x)).a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(-236f, var_0.d, var_1.a.d, var_0.d))))), func_4(3667i, _wgslsmith_f_op_f32(-var_1.a.d), select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), !vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, false, true))).c, -(~vec2<i32>(0i, var_2.x) >> (vec2<u32>(var_0.c.x, 7056u) % vec2<u32>(32u)))), Struct_1(vec4<u32>(max(4294967295u, 68766u), 12859u, _wgslsmith_mult_u32(9189u, firstTrailingBit(var_0.c.x)), 1u), var_0.b, u_input.a, -1176f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(vec4<bool>(!(!(!var_0.a.c.x)), var_0.a.c.x, any(!(!vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))), all(!select(vec3<bool>(true, var_0.a.c.x, false), vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), true))), u_input.a.wwz, func_4(var_0.b.b.x, 1366f, !vec4<bool>(true, any(vec3<bool>(var_0.a.c.x, var_0.a.c.x, false)), all(vec3<bool>(false, var_0.a.c.x, false)), var_0.a.b.x < 984f)).a);
    var var_2 = select(var_1.a, !(!select(vec4<bool>(var_0.a.c.x, var_0.a.c.x, false, var_1.a.x), select(var_1.a, var_1.a, false), var_1.a)), vec4<bool>(any(select(!vec3<bool>(var_0.a.c.x, true, true), !var_1.a.yyy, vec3<bool>(true, var_0.a.c.x, var_0.a.c.x))), all(!var_1.a.wxz), any(!select(vec4<bool>(true, false, var_0.a.c.x, true), var_1.a, vec4<bool>(false, true, var_1.a.x, true))), _wgslsmith_dot_vec3_u32(~var_0.b.c.yxz, vec3<u32>(var_1.c.a.x, 23231u, 0u)) <= select(_wgslsmith_div_u32(var_1.c.c.x, 0u), 4294967295u, var_1.a.x)));
    var_2 = vec4<bool>(var_1.a.x, var_1.a.x, (_wgslsmith_add_u32(~var_0.a.a.a.x, var_1.b.x) >= (var_0.a.a.a.x << (abs(0u) % 32u))) || var_2.x, any(!vec3<bool>(all(vec4<bool>(true, false, var_1.a.x, var_0.a.c.x)), true, all(vec3<bool>(var_2.x, var_0.a.c.x, var_2.x)))));
    var_2 = vec4<bool>(select(var_1.a.x, !var_2.x, false), true, false, select(var_1.a.x, false, !(!func_2(vec4<u32>(6896u, 28220u, var_0.b.c.x, var_0.b.c.x), 1u, var_0.b, vec3<f32>(1000f, -128f, -581f)))));
    let var_3 = var_1;
    var_2 = select(vec4<bool>(false, func_4(10857i, var_0.a.a.d, !var_3.a).c.x, !(!select(true, false, false)), false), !vec4<bool>(true, false | var_1.a.x, true, false), !var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(9872u, ~(82262u << (var_1.c.a.x % 32u))), min(var_3.c.a.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(~var_0.a.a.c, ~abs(vec4<u32>(5363u, var_3.c.a.x, var_0.b.a.x, 11901u)))), _wgslsmith_clamp_vec3_u32(u_input.a.xyw, abs(countOneBits(~var_3.b)), u_input.a.zwy));
}


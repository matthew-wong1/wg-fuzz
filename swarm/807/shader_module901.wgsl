struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = !select(!(!(!vec4<bool>(true, false, arg_0.b.a.x, arg_0.c.a.x))), !arg_0.a.a, arg_0.b.a);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.c, _wgslsmith_f_op_f32(-arg_0.c.c)) - arg_0.c.c), arg_0.a.c);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_5(vec4<bool>(!arg_0, all(vec4<bool>(true, arg_0, select(true, true, arg_0), false)), true, arg_0), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1505f, -1278f, 351f, -765f), vec4<f32>(-269f, -938f, -764f, 406f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1496f, 1083f, -1657f, 1000f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(848f, -1000f, -603f, -857f))))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.b, -30508i, -2147483647i, -3663i) | vec4<i32>(u_input.c, -1i, u_input.e.x, u_input.e.x)), vec4<i32>(u_input.c, -1i, -73051i, u_input.c), vec4<i32>(2147483647i, u_input.b, -33288i, -34077i) >> (vec4<u32>(1u, 27233u, 1u, 105734u) % vec4<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, 213f, 959f, -403f) - vec4<f32>(850f, -298f, -312f, -1418f))))), countOneBits(~vec4<i32>(u_input.c, u_input.e.x, 0i, u_input.e.x))), Struct_1(select(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), vec4<bool>(arg_0, arg_0, false | arg_0, any(vec3<bool>(arg_0, arg_0, arg_0))), !(!arg_0)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.b, 31899i), -vec3<i32>(-1i, -19394i, 2147483647i), select(vec3<i32>(u_input.c, -7197i, 1i), vec3<i32>(0i, -31259i, u_input.b), vec3<bool>(arg_0, true, arg_0))), select(max(vec3<i32>(u_input.c, -2147483647i, u_input.e.x), vec3<i32>(u_input.b, -1i, u_input.e.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.c), vec3<i32>(u_input.e.x, -1i, u_input.e.x)), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, arg_0), true)), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<i32>(3321i, 0i, -2147483647i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-260f, -735f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(908f, 1000f))))), Struct_1(vec4<bool>(all(vec3<bool>(true, true, true)), true, arg_0, all(vec3<bool>(arg_0, arg_0, arg_0))), -vec3<i32>(~u_input.c, ~u_input.c, ~u_input.e.x), -1474f));
    var var_1 = vec4<u32>(~(~1412u), 21776u, u_input.d, reverseBits(countOneBits(~1u) << (u_input.d % 32u)));
    var var_2 = Struct_1(select(!vec4<bool>(all(var_0.e.a), false, arg_0, any(var_0.e.a.wz)), vec4<bool>((var_0.c.b.x >= u_input.e.x) & false, arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, var_0.a.x)) && select(var_0.e.a.x, true, true), true), all(vec4<bool>(var_0.a.x, true, var_0.a.x, false)) && all(!var_0.e.a.wyz)), var_0.b.b.wzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) - _wgslsmith_f_op_f32(step(-260f, _wgslsmith_f_op_f32(f32(-1f) * -287f)))));
    let var_3 = var_0.e.a.x;
    let var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(min(~select(vec4<u32>(u_input.a, u_input.d, 82072u, var_1.x), vec4<u32>(0u, var_1.x, var_1.x, 49014u), var_0.d.a), firstTrailingBit(reverseBits(vec4<u32>(12595u, 4294967295u, 4294967295u, 0u)))), ~(vec4<u32>(30424u, 18854u, var_1.x, u_input.d) << (vec4<u32>(27724u, 1u, 14652u, u_input.d) % vec4<u32>(32u)))), abs((u_input.a ^ _wgslsmith_mod_u32(103122u, u_input.a)) >> (firstLeadingBit(1u) % 32u)), var_1.x, ~4294967295u >> (u_input.d % 32u));
    return true;
}

fn func_2() -> bool {
    var var_0 = select(!(!vec3<bool>(true, true, select(true, true, true))), vec3<bool>(true, func_3(false), true), vec3<bool>(!select(false, true, false), _wgslsmith_f_op_f32(-3335f + -2349f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(751f))), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-329f)), 442f, 326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f))))));
    let var_2 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !vec3<bool>(false, var_0.x, true)), select(select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(false, false, var_0.x), true), !(!vec3<bool>(true, false, var_0.x)), vec3<bool>(true, false, select(var_0.x, var_0.x, true))), all(vec4<bool>(!var_0.x, 890f > var_1.x, !var_0.x, all(vec3<bool>(var_0.x, var_0.x, false))))));
    var var_3 = var_0.xz;
    let var_4 = u_input.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -(~(vec3<i32>(u_input.e.x, u_input.b, 2147483647i) ^ vec3<i32>(u_input.b, u_input.e.x, u_input.e.x)) << (vec3<u32>(4294967295u << (u_input.a % 32u), abs(u_input.d), ~4294967295u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1378f, -1010f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(u_input.c, var_0.x, -2147483647i), -144f), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(-2147483647i, -1i, 51201i), -510f), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(var_0.x, var_0.x, var_0.x), 1034f)))))));
    var var_2 = Struct_5(vec4<bool>(true, true, false, !func_2()), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-526f)) * _wgslsmith_f_op_f32(trunc(var_1.x))), -295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -573f)))), -abs(vec4<i32>(u_input.c, 2147483647i, -76817i, 42319i))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, var_1.x, var_1.x, -195f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, 593f, var_1.x), vec4<f32>(var_1.x, -708f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x))))), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.c, 0i), select(vec4<i32>(u_input.c, var_0.x, u_input.e.x, var_0.x), vec4<i32>(-54510i, 34275i, -10537i, -2147483647i), false)), _wgslsmith_div_i32(min(1i, 1i), var_0.x), abs(35998i))), Struct_1(vec4<bool>(true, true, true, true), ~firstTrailingBit(vec3<i32>(var_0.x, u_input.e.x, u_input.b)) << (~(~vec3<u32>(1u, u_input.a, u_input.d)) % vec3<u32>(32u)), 1000f), Struct_1(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(func_3(false), any(vec3<bool>(true, true, true)), true, true)), reverseBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 34334i, 11527i), vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(var_0.x, -40387i, -12355i)), vec3<i32>(u_input.e.x, -37501i, 43688i), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(sign(var_1.x))))));
    var_1 = var_2.b.a.zw;
    var var_3 = Struct_1(vec4<bool>(var_2.d.a.x, var_2.a.x || var_2.a.x, ~_wgslsmith_add_u32(16397u, 34786u) != max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u)), 50145u), var_2.a.x), firstTrailingBit(~max(var_2.e.b ^ var_2.c.b.xyy, vec3<i32>(-38925i, 1509i, u_input.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) * var_1.x))));
    var_2 = Struct_5(var_2.d.a, var_2.c, var_2.c, var_2.e, var_2.d);
    var_3 = Struct_1(var_2.a, vec3<i32>(select(_wgslsmith_sub_i32(var_3.b.x, var_3.b.x) & -2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.e.x, -2147483647i), 2147483647i | var_2.b.b.x), any(var_3.a)), u_input.b, _wgslsmith_add_i32(-2147483647i, var_2.d.b.x)), 870f);
    let x = u_input.a;
    s_output = StorageBuffer((abs(countOneBits(-4026i)) | _wgslsmith_div_i32(-19420i, _wgslsmith_mult_i32(228i, var_0.x))) | _wgslsmith_div_i32(-var_2.d.b.x, 2147483647i >> (u_input.a % 32u)), _wgslsmith_f_op_f32(min(394f, 372f)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, u_input.a, 0u) | abs(vec4<u32>(u_input.d, u_input.a, 0u, u_input.a)), countOneBits(~vec4<u32>(33769u, u_input.a, u_input.d, u_input.a))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 75274u, u_input.d, u_input.a), vec4<u32>(1u, 0u, 61138u, u_input.a), vec4<bool>(true, true, true, var_2.a.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.d, u_input.a, u_input.d), vec4<u32>(13794u, u_input.a, 0u, 0u)) % vec4<u32>(32u)), vec4<u32>(26928u, ~u_input.a, u_input.a, ~73853u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), firstLeadingBit(u_input.d), u_input.d, u_input.d) ^ select(vec4<u32>(u_input.a, 4294967295u, u_input.d, u_input.a) << (vec4<u32>(u_input.d, u_input.d, 27519u, 36567u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.d), select(var_2.d.a.x, true, var_3.a.x))), 1502f, ~var_3.b.zy);
}


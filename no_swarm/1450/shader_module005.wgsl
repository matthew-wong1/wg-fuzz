struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = 30691i;
    var_0 = -1i;
    var var_1 = ~(-(~select(0i, ~0i, false)));
    let var_2 = select(vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(arg_0.e.b, 0i), ~_wgslsmith_clamp_i32(arg_0.d.b ^ 6740i, -arg_0.d.b, 2147483647i), 0i, 23371i), _wgslsmith_mod_vec4_i32(firstLeadingBit(firstLeadingBit(~vec4<i32>(-1i, 1i, 10724i, arg_0.d.b))), _wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(arg_0.d.b, arg_0.e.b, arg_0.e.b, arg_0.e.b)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.b, 5414i, arg_0.d.b, arg_0.e.b), vec4<i32>(32166i, arg_0.d.b, 0i, arg_0.e.b)))), arg_0.e.b < _wgslsmith_mult_i32((0i >> (arg_0.b.x % 32u)) >> (6925u % 32u), countOneBits(select(arg_0.d.b, arg_0.d.b, true))));
    return Struct_2(arg_0.e.c, ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~arg_0.b, vec2<u32>(0u, 5139u) ^ u_input.a), ~(~u_input.a)), 1644f, arg_0.d, arg_0.d);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec3_u32(select(min(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(arg_2.c.x, u_input.a.x, u_input.b.x)), select(~vec3<u32>(0u, 0u, u_input.b.x), ~u_input.b, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), abs(~vec3<u32>(34269u, 1u, 0u)), vec3<bool>(false, true, (arg_1.d.b | 15510i) <= arg_1.e.b)), firstLeadingBit(vec3<u32>(arg_1.b.x, arg_1.b.x, reverseBits(max(arg_2.c.x, u_input.a.x)))));
    var var_1 = -2147483647i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e, _wgslsmith_f_op_f32(-arg_1.a), arg_1.c, _wgslsmith_f_op_f32(ceil(-1396f))) + vec4<f32>(_wgslsmith_f_op_f32(-434f - arg_1.c), _wgslsmith_f_op_f32(abs(arg_2.d)), _wgslsmith_f_op_f32(floor(-413f)), -1034f))), ~84334i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) - _wgslsmith_f_op_f32(exp2(arg_1.c))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(f32(-1f) * -1437f)))));
    var_2 = func_2(func_2(Struct_2(arg_2.d, max(vec2<u32>(4294967295u, 67049u) & arg_1.b, _wgslsmith_add_vec2_u32(arg_2.c.xy, arg_1.b)), arg_2.d, arg_1.e, Struct_1(vec4<f32>(var_2.a.x, arg_1.e.c, var_2.c, -672f), ~arg_1.d.b, -512f)), 54351u), 20238u).d;
    let var_3 = Struct_3(arg_1.d, _wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(arg_1.d.b, var_2.b, arg_1.e.b))), firstLeadingBit(vec3<i32>(max(-2147483647i, -25367i), -var_2.b, 2147483647i))), ~func_2(Struct_2(arg_1.a, arg_1.b, -543f, func_2(Struct_2(arg_2.e, arg_1.b, 631f, Struct_1(var_2.a, -35723i, -263f), Struct_1(var_2.a, var_2.b, arg_2.a.x)), 0u).e, func_2(arg_1, arg_1.b.x).d), arg_2.b).b.x, select(select(vec3<bool>(false, true, select(true, false, true)), vec3<bool>(any(vec2<bool>(false, true)), var_2.b != var_2.b, true), !any(vec4<bool>(false, false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), vec3<bool>(all(vec3<bool>(false, true, false)), true, select(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(select(var_2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_2.a.x)))), true)), arg_2.c.xz, _wgslsmith_f_op_f32(max(-1404f, arg_1.c)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, -978f, -847f)) + _wgslsmith_f_op_vec4_f32(arg_1.d.a - vec4<f32>(1000f, 1874f, var_2.c, arg_1.a))), _wgslsmith_div_i32(arg_1.e.b, -14777i) | (i32(-1i) * -41888i), arg_2.d), Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_2.a)), -(~(-1i)), -975f)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-func_2(Struct_2(arg_1.e.a.x, _wgslsmith_mod_vec2_u32(arg_1.b, var_3.e.b), _wgslsmith_f_op_f32(arg_2.d + 1575f), Struct_1(var_3.a.a, -22357i, 1192f), func_2(var_3.e, 4294967295u).e), arg_0).e.a.zzw), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - -126f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.d, var_3.a.c)), _wgslsmith_f_op_f32(select(var_3.e.d.c, -472f, any(vec4<bool>(var_3.d.x, true, false, false))))), arg_2.d), !var_3.d.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = any(arg_0.wwz);
    var var_1 = Struct_1(vec4<f32>(arg_1.e.e.c, _wgslsmith_div_f32(arg_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(833f, arg_1.a.c)) - _wgslsmith_f_op_f32(arg_1.a.a.x + -1000f))), 201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x + _wgslsmith_f_op_f32(-arg_1.e.d.c)))), -2147483647i, _wgslsmith_f_op_f32(arg_1.e.d.a.x + arg_1.e.a));
    let var_2 = Struct_5(func_2(arg_1.e, u_input.b.x));
    var var_3 = arg_1.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_2.a.b.x, arg_1.e, Struct_4(var_3.a.yww, var_2.a.b.x, vec3<u32>(var_2.a.b.x, arg_1.e.b.x, var_2.a.b.x), arg_1.a.a.x, arg_1.e.d.c)))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(1202f * 1844f)))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.e, arg_0.a.x, 390f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2024f, -451f, 1287f, arg_0.d)))), 4251i, _wgslsmith_f_op_f32(func_1(!vec4<bool>(arg_2, false, true, true), Struct_3(func_2(Struct_2(arg_0.a.x, arg_0.c.xz, arg_0.e, Struct_1(vec4<f32>(arg_0.a.x, arg_0.d, 567f, 803f), 0i, arg_0.e), Struct_1(vec4<f32>(1000f, 512f, arg_0.e, 3071f), 20751i, arg_0.e)), arg_1).e, -53092i, ~39812u, select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, true, arg_2)), Struct_2(-1529f, u_input.a, -159f, Struct_1(vec4<f32>(-220f, -1463f, arg_0.d, arg_0.e), 2147483647i, arg_0.a.x), Struct_1(vec4<f32>(-1976f, 1000f, 313f, -1168f), 2147483647i, -660f)))))), _wgslsmith_mult_i32(1i, -1966i), ~max(arg_1, ~u_input.b.x), !(!(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, false), arg_2))), Struct_2(_wgslsmith_f_op_f32(select(-1198f, _wgslsmith_f_op_f32(min(-1000f, arg_0.a.x)), all(select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, arg_2, arg_2, false), arg_2)))), vec2<u32>(~_wgslsmith_dot_vec2_u32(arg_0.c.zx, u_input.a), ~(~37970u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1462f, arg_0.e))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0.d * -480f), _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.e)), 489f), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1279f - 795f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, -1271f, 289f, 440f)), 1i, arg_0.e)));
    let var_1 = ~(-var_0.a.b);
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a - var_0.a.a)) - _wgslsmith_f_op_vec4_f32(select(var_0.e.d.a, var_0.a.a, !vec4<bool>(false, false, arg_2, var_0.d.x)))), 1i << (1u % 32u), -599f), var_1, _wgslsmith_div_u32(0u, countOneBits(~(~1u))), vec3<bool>(var_0.d.x, !var_0.d.x | true, arg_2), Struct_2(var_0.a.c, arg_0.c.xx, _wgslsmith_f_op_f32(sign(896f)), Struct_1(var_0.e.d.a, _wgslsmith_add_i32(var_1, i32(-1i) * -1i), 422f), var_0.a));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, arg_0.a.x, -1684f, -127f))), 26651i, -750f), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(~4869i, var_1, var_1)), ~vec3<i32>(-13373i, -2147483647i, 652i)), 4294967295u, !select(!var_0.d, vec3<bool>(var_0.d.x, var_0.d.x, all(vec4<bool>(arg_2, arg_2, var_0.d.x, var_0.d.x))), arg_2), func_2(var_0.e, _wgslsmith_mult_u32(~arg_1, _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.c, 1u), var_0.c))));
    let var_2 = firstTrailingBit(~(-var_0.a.b));
    return any(!(!vec4<bool>(arg_2, !var_0.d.x, all(var_0.d.yz), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), ~(-45706i), _wgslsmith_f_op_f32(f32(-1f) * -332f));
    var var_1 = func_4(Struct_4(var_0.a.wyx, ~u_input.b.x, vec3<u32>(max(0u, u_input.b.x), firstLeadingBit(u_input.a.x), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) * var_0.a.x), _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, false), Struct_3(Struct_1(vec4<f32>(-1174f, -1113f, 931f, 198f), 0i, 665f), -30484i, 0u, vec3<bool>(true, true, true), Struct_2(-1219f, u_input.b.xy, 1214f, Struct_1(vec4<f32>(var_0.a.x, -1687f, 1040f, var_0.a.x), 2147483647i, var_0.a.x), Struct_1(vec4<f32>(1016f, var_0.c, var_0.c, var_0.c), 1i, -211f)))))), _wgslsmith_add_u32(u_input.b.x, ~(~4294967295u)), any(vec4<bool>(true, true, true, true))) != false;
    var var_2 = u_input.a.x;
    let var_3 = any(vec3<bool>(true, true, true));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), 14677i, -1085f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~max(-vec2<i32>(-42957i, -39070i) | vec2<i32>(var_4.b, -1i), ~vec2<i32>(var_0.b, 2147483647i) & ~vec2<i32>(-38767i, 1i)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(4294967295u, u_input.b.x), _wgslsmith_sub_u32(~u_input.a.x, ~u_input.b.x)), ~(~(~26190u))), ~vec4<i32>(1i, -max(-13632i, var_4.b), var_0.b, _wgslsmith_clamp_i32(-1i, -var_4.b, 4818i)), vec3<u32>(_wgslsmith_add_u32(28983u, ~abs(u_input.a.x)), 1u, min(~u_input.b.x, ~(u_input.a.x ^ 1u))));
}


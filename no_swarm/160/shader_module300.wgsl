struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1738f))));
    var_0 = -1015f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(142f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(531f)), _wgslsmith_f_op_f32(565f * 350f)), !select(arg_0.b, arg_0.b, false))))));
    var var_2 = ~(~1722u);
    let var_3 = Struct_1(vec2<i32>(-15665i, -1i), _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, 627f, -926f))) * vec3<f32>(-151f, -367f, var_1)))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, ~4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(32537u, u_input.b, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, 1u, 19968u, u_input.c.x)), countOneBits(4294967295u)), vec3<u32>(firstTrailingBit(u_input.b), u_input.c.x, ~(~81503u))), 0i);
    return var_3.b;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_3(Struct_1(vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -611f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, arg_0, -544f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), ~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(11498u, 69858u, u_input.c.x), vec3<u32>(40053u, 4294967295u, u_input.b))), ~select(_wgslsmith_div_i32(6882i, -16172i), 1i, true)), !select(u_input.d != u_input.d, true, true), _wgslsmith_add_vec3_u32(vec3<u32>(10810u, 4294967295u, _wgslsmith_sub_u32(~u_input.b, ~u_input.b)), ~vec3<u32>(12057u, 4294967295u, 25745u) | firstTrailingBit(~vec3<u32>(1u, 70979u, 66143u))), -u_input.a);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, false), false, var_0.b, 0i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-111f, var_0.a.b)) - _wgslsmith_f_op_f32(trunc(-169f)))) - var_0.a.b)));
    var var_2 = select(!(!(!select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, var_0.b, true), var_0.b))), select(select(select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(true, true, var_0.b), var_0.b), vec3<bool>(true, false, false), var_0.b & false), vec3<bool>(!var_0.b, var_0.b, true), vec3<bool>(u_input.b > 4294967295u, !var_0.b, true || var_0.b)), vec3<bool>(!(!var_0.b), var_0.b, _wgslsmith_f_op_f32(1091f + arg_0) <= var_1), !(!select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, var_0.b, false)))), vec3<bool>(false, all(vec4<bool>(true, var_0.b, all(vec4<bool>(true, var_0.b, var_0.b, var_0.b)), any(vec4<bool>(true, true, var_0.b, var_0.b)))), _wgslsmith_add_i32(u_input.a.x, -1i) <= -(var_0.a.a.x ^ u_input.d)));
    var var_3 = _wgslsmith_mult_vec2_u32(u_input.c, ~u_input.c);
    var var_4 = var_1;
    return var_1;
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(-2312f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(360f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-721f)) * _wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(344f * -247f))))));
    let var_1 = ~_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 1u) << (vec4<u32>(1u, u_input.b, 4294967295u, 38145u) % vec4<u32>(32u)), vec4<u32>(u_input.b, 49062u, select(u_input.b, u_input.c.x, arg_0.c), u_input.b)));
    let var_2 = select(vec2<bool>(-_wgslsmith_div_i32(u_input.a.x, -71092i) == arg_0.d, true), arg_0.a, select(arg_0.a, vec2<bool>(arg_0.a.x, arg_0.c), !all(vec3<bool>(true, false, false)) != arg_0.c));
    var var_3 = arg_0;
    var var_4 = Struct_4(-(vec4<i32>(~arg_0.d, i32(-1i) * -1i, abs(var_3.d), reverseBits(arg_0.d)) << ((vec4<u32>(4294967295u, 98074u, var_1, 0u) >> (max(vec4<u32>(11175u, u_input.b, u_input.b, var_1), vec4<u32>(0u, u_input.b, 1u, 101450u)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_2(vec2<bool>(!var_2.x || var_3.b, true), all(!select(vec3<bool>(var_3.c, false, arg_0.b), vec3<bool>(var_3.a.x, true, var_3.c), vec3<bool>(false, var_2.x, true))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.c, true)), arg_0.a, vec2<bool>(false, false))), 16079i), arg_0);
    return Struct_3(Struct_1(~u_input.a, -2002f, var_0, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_1, u_input.c.x), vec3<u32>(var_1, 13790u, 2147u)), abs(vec3<u32>(1u, 3044u, 34712u))), ~vec3<u32>(u_input.b, var_1, u_input.b)), max(var_3.d, var_3.d)), arg_0.a.x, select(~(~select(vec3<u32>(4294967295u, 17748u, 47502u), vec3<u32>(u_input.b, var_1, 65037u), var_2.x)), firstTrailingBit(~(~vec3<u32>(104807u, u_input.b, var_1))), vec3<bool>(all(vec3<bool>(true, false, false)), !(var_3.d == -2147483647i), arg_0.a.x)), vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(57332i, -1i, -21188i), vec3<i32>(arg_0.d, var_4.a.x, -1i)), reverseBits(52917i))), 13322i));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(arg_0.a.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x) - _wgslsmith_f_op_f32(max(703f, arg_0.a.b))))), arg_0.a.c.x, _wgslsmith_f_op_f32(-arg_0.a.b)));
    let var_1 = func_1(Struct_2(select(vec2<bool>(true, false), arg_2.a, !vec2<bool>(arg_2.b, false)), true, true, arg_0.a.a.x));
    let var_2 = arg_2.b;
    var var_3 = func_1(Struct_2(arg_1.zw, all(arg_1), (-1i ^ ~arg_0.d.x) > reverseBits(arg_3.x), arg_3.x)).a;
    var_3 = Struct_1(u_input.a & (_wgslsmith_div_vec2_i32(var_1.d | vec2<i32>(u_input.d, arg_2.d), func_1(arg_2).d) >> (~(~var_1.c.zz) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(arg_0.a.c.x)), func_1(arg_2).a.c, vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(u_input.b, u_input.c.x), arg_0.c.x), 0i);
    return false;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_i32(-(~countOneBits(vec4<i32>(-2147483647i, 2147483647i, 11633i, arg_0.x) & vec4<i32>(0i, arg_1.d, -2147483647i, arg_1.d))), ~(~(~vec4<i32>(-36724i, arg_0.x, u_input.a.x, arg_2.d.x))));
    let var_1 = func_1(Struct_2(arg_1.a, !arg_2.b, arg_2.b | func_1(arg_1).b, u_input.d)).d;
    var_0 = max(vec4<i32>(u_input.a.x, 0i, func_1(arg_1).d.x, 2147483647i), -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.x, arg_0.x), u_input.a.x), arg_0.x, _wgslsmith_add_i32(u_input.d, 7830i >> (u_input.b % 32u)), -28312i));
    var var_2 = arg_2.a;
    var var_3 = all(select(vec2<bool>(u_input.b <= arg_3.x, (-2147483647i == var_2.a.x) | arg_2.b), !select(arg_1.a, select(arg_1.a, vec2<bool>(true, true), vec2<bool>(true, true)), true), select(!(!arg_1.a), vec2<bool>(false, arg_1.c), !arg_1.c)));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && ((u_input.b & u_input.c.x) > ~(~u_input.b));
    let var_1 = Struct_3(func_5(vec3<i32>(u_input.a.x, u_input.a.x, -min(2147483647i, -2147483647i)), Struct_2(vec2<bool>(any(vec3<bool>(true, true, true)), 12120u < u_input.b), func_4(func_1(Struct_2(vec2<bool>(true, true), false, true, u_input.d)), vec4<bool>(true, true, false, false), Struct_2(vec2<bool>(false, false), false, false, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(39991i, -41962i, -1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.d), vec3<i32>(u_input.d, -10846i, 1i))), true, min(u_input.d, min(u_input.d, u_input.a.x))), func_1(Struct_2(vec2<bool>(false, false), u_input.c.x < 0u, u_input.d > u_input.a.x, u_input.a.x)), u_input.c & u_input.c), !(!(!any(vec4<bool>(true, false, true, true)))), ~(~(~(vec3<u32>(u_input.c.x, 30709u, 0u) ^ vec3<u32>(u_input.b, u_input.c.x, 10475u)))), max((~u_input.a | vec2<i32>(u_input.d, 2147483647i)) << (_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(5936u, 23778u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.a | vec2<i32>(u_input.a.x, u_input.d), firstTrailingBit(u_input.a)) ^ select(~u_input.a, vec2<i32>(u_input.a.x, -7451i), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_2 = Struct_3(func_5(abs(vec3<i32>(var_1.d.x ^ 6006i, -26382i, firstLeadingBit(u_input.a.x))), Struct_2(!vec2<bool>(var_1.b, true), 1u >= firstLeadingBit(u_input.b), var_1.b, -(~4441i)), func_1(Struct_2(select(vec2<bool>(var_1.b, false), vec2<bool>(false, var_1.b), false), true, var_1.b, ~27372i)), func_1(Struct_2(vec2<bool>(var_1.b, var_1.b), false, false, -55612i)).a.d.xz ^ countOneBits(reverseBits(vec2<u32>(u_input.b, u_input.b)))), true, firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 128371u, 0u), vec3<u32>(u_input.c.x, var_1.a.d.x, u_input.b)), var_1.c), vec3<u32>(4294967295u, u_input.c.x, 33799u) | ~vec3<u32>(36726u, var_1.a.d.x, var_1.a.d.x))), firstLeadingBit(vec2<i32>(var_1.d.x, var_1.d.x)));
    var var_3 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, u_input.b), var_1.a.d));
    var var_4 = vec2<bool>(func_4(func_1(Struct_2(select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, false), false), func_1(Struct_2(vec2<bool>(var_1.b, true), var_2.b, true, var_2.a.a.x)).b, var_1.b, _wgslsmith_mult_i32(-3529i, var_2.a.a.x))), vec4<bool>(true, any(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_2.b, true), vec2<bool>(var_2.b, var_2.b))), any(vec4<bool>(var_1.b, var_2.b, false, var_1.b)), any(select(vec4<bool>(true, var_1.b, false, true), vec4<bool>(false, var_1.b, false, var_2.b), var_1.b))), Struct_2(!select(vec2<bool>(false, var_1.b), vec2<bool>(false, var_1.b), vec2<bool>(true, var_2.b)), true, all(vec3<bool>(true, false, var_2.b)) != (var_1.b || false), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), vec3<i32>(u_input.a.x, -1i >> (var_2.c.x % 32u), -21446i)), !any(vec3<bool>(all(vec3<bool>(var_1.b, var_2.b, var_1.b)), true, select(false, false, true))));
    var var_5 = func_1(Struct_2(!(!(!vec2<bool>(var_2.b, true))), true, true, 2147483647i));
    var_3 = _wgslsmith_add_vec3_u32(~var_1.c, vec3<u32>(reverseBits(~(~var_2.a.d.x)), ~var_5.c.x & _wgslsmith_add_u32(48500u, _wgslsmith_sub_u32(var_3.x, 25007u)), _wgslsmith_mod_u32(~firstLeadingBit(var_3.x), reverseBits(_wgslsmith_clamp_u32(var_3.x, var_1.a.d.x, var_1.a.d.x)))));
    var_5 = func_1(Struct_2(select(!(!vec2<bool>(var_4.x, false)), select(!vec2<bool>(var_4.x, false), !vec2<bool>(var_2.b, var_4.x), select(vec2<bool>(var_5.b, var_1.b), vec2<bool>(true, var_4.x), true)), vec2<bool>(false, false)), var_5.b, true, var_1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, -7096i, u_input.a.x), _wgslsmith_div_vec4_i32(-min(-vec4<i32>(u_input.d, 9408i, u_input.d, 2147483647i), vec4<i32>(var_2.d.x, var_2.a.e, -2147483647i, -1i)), reverseBits(vec4<i32>(~var_1.a.e, 1i, ~var_2.d.x, var_2.d.x))));
}


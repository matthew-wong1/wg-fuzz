struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec2<u32> {
    var var_0 = ((firstTrailingBit(vec2<u32>(1u, 1u)) & vec2<u32>(~105795u, 1u)) | ~_wgslsmith_sub_vec2_u32(~vec2<u32>(30811u, 55875u), min(vec2<u32>(35200u, 11408u), vec2<u32>(16827u, 1u)))) | abs(vec2<u32>(~(~36958u), firstTrailingBit(~32827u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(665f, 1500f)) - -1073f))));
    var_0 = ~((vec2<u32>(var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x)) | abs(vec2<u32>(1u, 1u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.x << (0u % 32u)), max(~vec2<u32>(var_0.x, 4294967295u), vec2<u32>(0u, var_0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1734f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = var_1.x;
    return _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 1249u)), ~(~firstTrailingBit(min(vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, 1u)))));
}

fn func_3() -> vec2<u32> {
    var var_0 = abs(32157u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 12584u), vec2<u32>(~0u, ~71469u)) % 32u));
    let var_1 = Struct_2(select(~(~reverseBits(vec2<u32>(54577u, 41818u))), _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(48864u), 8620u), vec2<u32>(1u, max(16041u, 4874u))), true), Struct_1(firstTrailingBit(abs(u_input.a.x))));
    let var_2 = Struct_2(_wgslsmith_sub_vec2_u32(var_1.a, ~select(_wgslsmith_mod_vec2_u32(var_1.a, vec2<u32>(47146u, 9768u)), select(vec2<u32>(4294967295u, var_1.a.x), var_1.a, false), vec2<bool>(true, true))), Struct_1(1i));
    var var_3 = firstTrailingBit(~_wgslsmith_add_vec4_i32(select(~vec4<i32>(u_input.a.x, var_2.b.a, var_1.b.a, var_1.b.a), select(vec4<i32>(-2147483647i, -74748i, var_1.b.a, 57453i), vec4<i32>(u_input.b, var_1.b.a, -23750i, 23581i), vec4<bool>(false, true, false, true)), any(vec3<bool>(false, false, true))), -(~vec4<i32>(-1i, 571i, var_2.b.a, u_input.a.x))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1173f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-516f, -542f)))) * _wgslsmith_f_op_f32(ceil(346f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2131f) - _wgslsmith_f_op_f32(-1f)));
    return select(vec2<u32>(~1u ^ var_1.a.x, max(_wgslsmith_add_u32(reverseBits(var_1.a.x), abs(var_1.a.x)), 1u)), var_1.a, select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, true))), true), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = abs(~select(u_input.a.x, arg_0.b.a, true) ^ ~1i) | _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.b.a, arg_0.b.a, ~(-22854i)), arg_0.b.a);
    let var_1 = arg_0;
    var var_2 = var_1.b;
    var var_3 = 12269u;
    var_2 = arg_0.b;
    return vec3<i32>(var_1.b.a, i32(-1i) * -40494i, ~var_1.b.a) & select(vec3<i32>(~(-32565i), firstTrailingBit(41945i), 14471i), (firstTrailingBit(vec3<i32>(0i, var_0, u_input.b)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(10026u, 32026u, 17930u), vec3<u32>(arg_0.a.x, 1u, 4013u)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_mult_u32(24138u, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 0u, var_1.a.x, 0u), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), 0u) % vec3<u32>(32u)), true);
}

fn func_2() -> i32 {
    let var_0 = u_input.b;
    let var_1 = Struct_4(true != (all(vec2<bool>(true, true)) || any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0, -4514i), -2147483647i) | countOneBits(1i)), func_1().x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(285f - -433f), _wgslsmith_f_op_f32(floor(2056f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f - 378f)))), -func_4(Struct_2(func_3(), Struct_1(2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(628f, 1051f) - vec2<f32>(-490f, -989f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-773f, 138f), vec2<f32>(711f, 601f)))), _wgslsmith_f_op_f32(round(-550f)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    return min(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(var_1.e, vec3<i32>(1i, var_1.e.x, 55619i)) | _wgslsmith_mod_i32(select(var_1.b.a, -6832i, var_1.a), -75172i | var_0)), ~(-2147483647i));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = ~(~vec3<u32>(1u, 1u, 1u));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(~abs(18442u), ~_wgslsmith_sub_u32(51704u, 7654u)), var_0.zx), arg_1.c);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~(var_0.x | var_1.a.x), var_0.x), ~4294967295u), var_1.a);
    var var_3 = ~var_0;
    var var_4 = Struct_4(!(!arg_1.a), Struct_1(13039i), var_1.a.x, _wgslsmith_div_f32(1f, arg_2), _wgslsmith_sub_vec3_i32(func_4(Struct_2(vec2<u32>(0u, var_2), var_1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, arg_2))), vec2<f32>(-1144f, arg_2)), arg_2, !vec2<bool>(arg_1.a, arg_1.b.x)), vec3<i32>(_wgslsmith_sub_i32(var_1.b.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.a, -1i, u_input.a.x, arg_0.x), vec4<i32>(u_input.b, arg_1.c.a, -2147483647i, -30780i))), -37823i, var_1.b.a)));
    return _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-18251i | arg_3, 1i, var_4.b.a >> (var_4.c % 32u))), var_4.e);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<bool>(true, !(all(vec2<bool>(arg_1.a, false)) | any(!vec3<bool>(arg_1.b.x, arg_1.a, true))), true);
    let var_1 = _wgslsmith_sub_i32(0i, -13068i);
    var var_2 = ~_wgslsmith_add_i32(abs(func_2()), firstLeadingBit(72096i | u_input.a.x));
    var var_3 = Struct_1(reverseBits(firstLeadingBit(min(_wgslsmith_mod_i32(var_1, arg_2.a), firstTrailingBit(arg_2.a)))));
    return Struct_1(func_4(Struct_2(vec2<u32>(1u, 1u), Struct_1(1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(arg_0.yx, arg_0.wy))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1400f))), !(!(!var_0.zy))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, -44901i, u_input.b)), abs(-47294i), ~u_input.a.x, _wgslsmith_mod_i32(-2147483647i, u_input.a.x))), -vec4<i32>(~(-3042i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.a.x), vec3<i32>(8677i, -20853i, 2147483647i)), _wgslsmith_mult_i32(1i, 1i), u_input.a.x & u_input.a.x) >> (abs(select(reverseBits(vec4<u32>(0u, 1u, 10802u, 1u)), min(vec4<u32>(45115u, 36351u, 4294967295u, 0u), vec4<u32>(0u, 1u, 0u, 51527u)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false))) % vec4<u32>(32u)));
    var var_1 = Struct_2(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 53433u), func_1())), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1084f, -1000f, 763f, 498f) - vec4<f32>(-1462f, 697f, 473f, 181f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1489f, 1343f, 881f, -1162f))), Struct_3(false, !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), Struct_1(~(-9771i))), Struct_1(firstTrailingBit(-15816i) & (var_0.x << (0u % 32u))), func_5(vec3<i32>(u_input.b, 0i, func_2()), Struct_3(false, vec3<bool>(true, true, true), Struct_1(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(850f, 432f)), _wgslsmith_dot_vec4_i32(vec4<i32>(8552i, 7051i, -25069i, 0i), var_0 << (vec4<u32>(46507u, 4294967295u, 8180u, 31044u) % vec4<u32>(32u))))));
    var_1 = Struct_2(var_1.a, Struct_1(u_input.a.x));
    let var_2 = 4294967295u;
    let var_3 = Struct_2(abs(var_1.a), Struct_1(-_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.b.a, var_1.b.a), max(var_1.b.a, var_0.x))));
    var_1 = Struct_2(~vec2<u32>(reverseBits(0u), 1u & (1u & var_1.a.x)), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2411f, -286f, 2360f, -1000f)) * vec4<f32>(-1000f, 759f, 1696f, 1180f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(801f, -224f, 2338f, -654f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1107f, -1110f, 1150f, -648f), vec4<f32>(1147f, 711f, 894f, -551f)))))), -1i);
}


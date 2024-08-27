struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<u32>) -> bool {
    let var_0 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), vec3<bool>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) == -1092f, all(vec2<bool>(false, true)) && all(vec2<bool>(false, true)), true), any(vec4<bool>(true, select(false, false, false), false, true)));
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(!var_0.x, !var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, true)), var_0.x & var_0.x), vec4<bool>(true, true, var_0.x, !var_0.x), !select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), -1294f))), select(any(vec4<bool>(true, var_0.x, true, false)), all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !var_0.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_3, arg_3), min(~arg_3, ~arg_3 << (~arg_3 % vec2<u32>(32u)))), u_input.a, Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x)), arg_0.yz, all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0, true)) == var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(599f, -555f, arg_1.a.x)) * arg_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -147f, -399f))), true)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -1144f, arg_1.a.x)))))));
    var var_2 = select(select(!vec2<bool>(var_1.d.a.x, false), !select(!var_0.yx, vec2<bool>(var_1.a.c, var_0.x), any(vec3<bool>(var_1.d.c, var_0.x, true))), true), vec2<bool>(1u != arg_3.x, true), (_wgslsmith_mod_i32(_wgslsmith_div_i32(44650i, u_input.a.x), 0i) >> (0u % 32u)) != _wgslsmith_sub_i32(abs(-39790i), ~(-u_input.a.x)));
    let var_3 = any(vec3<bool>(!(false && all(var_0.xz)), true, var_2.x));
    let var_4 = 23706u;
    return var_3;
}

fn func_2() -> bool {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1742f, 606f, -329f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1140f, -1023f, -1704f) + vec3<f32>(1000f, -1750f, 704f)))))), vec4<i32>(-11648i, u_input.a.x, _wgslsmith_mult_i32(-1i, ~u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, -33153i), u_input.a.x)) << (reverseBits(select(~vec4<u32>(1u, 12257u, 46536u, 4294967295u), max(vec4<u32>(38183u, 4294967295u, 46686u, 1u), vec4<u32>(5760u, 23232u, 968u, 10823u)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false))) % vec4<u32>(32u)), ~(~countOneBits(vec2<u32>(1u, 1u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, func_3(vec3<f32>(107f, -659f, -1143f), Struct_3(vec3<f32>(1000f, 1090f, -1579f)), 4294967295u, vec2<u32>(4294967295u, 29448u)), true), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_0.c.x, var_0.c.x, 4294967295u)), ~vec3<u32>(1u, 40958u, 50051u))), vec3<u32>(var_0.c.x, select(var_0.c.x, ~var_0.c.x | var_0.c.x, !all(vec4<bool>(true, var_0.d.x, true, var_0.d.x))), var_0.c.x), select(firstLeadingBit(vec3<u32>(var_0.c.x, _wgslsmith_mult_u32(var_0.c.x, var_0.c.x), 0u << (var_0.c.x % 32u))), vec3<u32>(~(~0u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(1u, var_0.c.x)), var_0.c.x), select(!(!var_0.d), var_0.d, var_0.d.x)));
    return !((false || !var_0.d.x) == false);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_5(u_input.a.x, vec3<bool>(arg_1.x | arg_2.x, any(arg_1.yw), arg_2.x), !arg_1, !(arg_1.x | false));
    var_0 = Struct_5(-1i, vec3<bool>(false, !func_2() && !any(vec3<bool>(arg_1.x, false, false)), arg_2.x), vec4<bool>(!all(select(arg_1.yyz, vec3<bool>(arg_1.x, false, arg_2.x), vec3<bool>(false, false, arg_2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0)))) <= arg_0, func_3(vec3<f32>(1f, 1f, 1f), Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-343f, 1020f, arg_0)))), 47797u, select(~vec2<u32>(17873u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(13302u, 47188u), vec2<u32>(0u, 0u)), vec2<bool>(false, var_0.d))), !(_wgslsmith_f_op_f32(round(arg_0)) < _wgslsmith_f_op_f32(1000f + 1000f))), !(!arg_2.x));
    let var_1 = select(select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 31306u, 0u), vec3<u32>(0u, 33933u, 4294967295u)), ~_wgslsmith_sub_u32(4294967295u, 42188u), 883u, 1u >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)), arg_1), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(26974u, 0u, 22258u, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23645u, 52400u), vec3<u32>(44656u, 8744u, 4294967295u)), 1u, _wgslsmith_add_u32(1u, 1u), 39522u)) ^ ~(~vec4<u32>(0u, 15933u, 4296u, 0u)), vec4<bool>(false, func_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(966f)), arg_0), Struct_3(vec3<f32>(arg_0, 628f, -1359f)), 61858u, select(min(vec2<u32>(53028u, 1u), vec2<u32>(33316u, 57020u)), max(vec2<u32>(0u, 965u), vec2<u32>(29216u, 1u)), false)), true, !(!any(vec2<bool>(false, true)))));
    var_0 = Struct_5(-_wgslsmith_sub_i32(-2147483647i, u_input.a.x), vec3<bool>(select(!func_3(vec3<f32>(arg_0, arg_0, 265f), Struct_3(vec3<f32>(2339f, -949f, arg_0)), var_1.x, var_1.wy), var_0.b.x, true), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -186f) >= arg_0), vec4<bool>(var_0.a >= 14960i, ((var_0.a > 1i) == func_3(vec3<f32>(-1600f, arg_0, 1366f), Struct_3(vec3<f32>(-1000f, arg_0, arg_0)), 0u, vec2<u32>(var_1.x, 4294967295u))) | false, true, true), false);
    var_0 = Struct_5(7388i, select(select(vec3<bool>(true, var_0.d, all(vec2<bool>(arg_1.x, false))), vec3<bool>(arg_1.x, false, any(arg_2.yx)), true), select(vec3<bool>(arg_1.x, !arg_1.x, false), vec3<bool>(true, true, true), arg_2), false | !(var_0.c.x && true)), select(vec4<bool>(arg_1.x | arg_2.x, false, arg_2.x && !arg_1.x, false), select(select(arg_1, arg_1, !var_0.c), !arg_1, ~12157u == var_1.x), arg_1.x & all(select(var_0.b.zy, var_0.c.yz, vec2<bool>(arg_2.x, arg_1.x)))), !all(select(vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, false, arg_2.x), false)));
    return Struct_5(u_input.a.x, select(select(vec3<bool>(var_0.d, true, all(vec3<bool>(false, false, arg_1.x))), select(vec3<bool>(var_0.d, false, var_0.d), select(vec3<bool>(var_0.c.x, false, true), arg_2, arg_1.x), !arg_2.x), arg_1.wxz), arg_1.xzz, arg_1.x), !select(!vec4<bool>(true, true, var_0.d, var_0.d), var_0.c, arg_2.x), !var_0.d);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-450f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1542f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f)) - 1491f);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1880f + _wgslsmith_f_op_f32(sign(-2124f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1119f, -1005f, true)), _wgslsmith_f_op_f32(449f + 1707f))), _wgslsmith_f_op_f32(-831f * 528f)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-120f, -780f)), _wgslsmith_f_op_f32(-347f + -614f))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1149f)), true)));
    return Struct_2(Struct_1(select(arg_0.c, !vec4<bool>(false, true, arg_0.c.x, arg_1.b.x), arg_0.c), _wgslsmith_f_op_vec2_f32(-var_1.a.yz), all(!(!arg_1.c))), _wgslsmith_mult_vec2_u32(vec2<u32>(select(min(54032u, 10605u), _wgslsmith_div_u32(0u, 63750u), arg_1.b.x), ~1u), ~firstLeadingBit(vec2<u32>(1u, 1u))), -select(select(abs(u_input.a), abs(vec3<i32>(arg_2.x, -2147483647i, 23185i)), arg_0.d & arg_0.b.x), select(_wgslsmith_add_vec3_i32(arg_2.xyy, vec3<i32>(2147483647i, arg_0.a, arg_0.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_1.a, 0i), u_input.a, arg_2.xzx), arg_0.b.x), true), Struct_1(vec4<bool>(_wgslsmith_clamp_i32(arg_0.a, 28984i, -1i) > _wgslsmith_clamp_i32(2147483647i, 43196i, -25051i), true, any(!vec3<bool>(arg_0.b.x, false, arg_1.c.x)), arg_1.c.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1158f, -425f))), _wgslsmith_f_op_f32(572f + 246f)), any(arg_1.c) || arg_1.c.x), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1307f)), 935f, !arg_1.d)))), _wgslsmith_f_op_f32(683f + var_1.a.x), _wgslsmith_f_op_f32(-882f - _wgslsmith_div_f32(265f, -1000f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_4 {
    let var_0 = Struct_1(select(!vec4<bool>(arg_0.b.x >= arg_0.b.x, true, true, !arg_0.a.c), !func_4(func_1(-1368f, arg_0.d.a, arg_0.a.a.zyy), func_1(2008f, arg_0.a.a, vec3<bool>(true, false, arg_0.a.c)), reverseBits(vec4<i32>(17580i, u_input.a.x, arg_0.c.x, u_input.a.x))).d.a, vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2454f, 947f, arg_0.a.b.x)), arg_1, 0u, ~vec2<u32>(arg_0.b.x, 4294967295u)), !arg_0.a.c, arg_0.a.c, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.yz)), !(!(arg_1.a.x != 629f)) & select(true & all(arg_0.a.a), true, !(-905f == arg_1.a.x)));
    let var_1 = var_0.a;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.e.x, arg_0.d.b.x) - -499f), _wgslsmith_f_op_f32(f32(-1f) * -113f)));
    var_2 = true;
    return Struct_4(arg_1, ~abs(~(vec4<i32>(arg_0.c.x, arg_0.c.x, 1i, -34645i) ^ vec4<i32>(-14817i, -1i, 0i, -2147483647i))), ~(~vec2<u32>(40167u, select(arg_0.b.x, arg_0.b.x, var_1.x))), select(var_1.zwx, !arg_0.d.a.xxy, vec3<bool>(arg_0.a.a.x, false, (u_input.a.x >> (0u % 32u)) >= arg_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(1078f, select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false)), vec3<bool>(true, true, true)), Struct_5(firstLeadingBit(u_input.a.x ^ u_input.a.x), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), func_1(607f, func_1(-1295f, vec4<bool>(true, true, true, false), vec3<bool>(true, true, true)).c, vec3<bool>(true, true, true)).c, true), ~(~vec4<i32>(0i, u_input.a.x, -45281i, -17314i))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f + -1430f)), 331f, _wgslsmith_f_op_f32(select(-1929f, _wgslsmith_f_op_f32(trunc(499f)), true)))));
    let var_1 = func_5(Struct_2(func_4(Struct_5(var_0.b.x, func_4(Struct_5(u_input.a.x, var_0.d, vec4<bool>(false, true, var_0.d.x, true), true), Struct_5(81742i, var_0.d, vec4<bool>(var_0.d.x, true, true, var_0.d.x), var_0.d.x), vec4<i32>(1i, var_0.b.x, u_input.a.x, -9100i)).d.a.yww, select(vec4<bool>(true, false, var_0.d.x, false), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false), var_0.d.x), var_0.b.x >= var_0.b.x), Struct_5(var_0.b.x ^ 0i, var_0.d, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, var_0.d.x, true), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x)), true), ~var_0.b).d, select(_wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(1u, var_0.c.x)) ^ vec2<u32>(var_0.c.x, 24230u), countOneBits(max(vec2<u32>(1u, 14275u), vec2<u32>(var_0.c.x, 19660u))), var_0.d.xx), var_0.b.zyx, Struct_1(select(!vec4<bool>(var_0.d.x, false, false, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), !vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.a.xz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_0.a.a.x))), true && !var_0.d.x), var_0.a.a), var_0.a);
    var var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.c, ~vec2<u32>(var_1.c.x, var_1.c.x) >> (var_0.c % vec2<u32>(32u))), ~4294967295u), var_1.c.x, _wgslsmith_div_u32(~(~_wgslsmith_div_u32(var_1.c.x, var_1.c.x)), _wgslsmith_sub_u32(4294967295u, ~min(48061u, 76861u))), var_0.c.x);
    let var_3 = func_4(func_1(1720f, func_4(func_1(301f, select(vec4<bool>(false, var_1.d.x, false, false), vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x), vec4<bool>(false, var_1.d.x, false, false)), select(var_0.d, var_0.d, var_0.d)), Struct_5(~var_1.b.x, vec3<bool>(var_0.d.x, var_0.d.x, false), func_1(-873f, vec4<bool>(var_1.d.x, var_0.d.x, var_0.d.x, true), vec3<bool>(var_1.d.x, false, var_0.d.x)).c, var_1.d.x), reverseBits(vec4<i32>(var_0.b.x, var_0.b.x, 17007i, var_1.b.x))).a.a, var_1.d), Struct_5(var_1.b.x, var_0.d, !vec4<bool>(func_3(var_0.a.a, var_0.a, 1u, var_1.c), any(vec4<bool>(var_1.d.x, true, true, var_1.d.x)), true, var_1.d.x || var_0.d.x), func_3(vec3<f32>(var_0.a.a.x, var_1.a.a.x, var_1.a.a.x), var_1.a, ~var_1.c.x, reverseBits(var_2.xx) << (func_4(Struct_5(u_input.a.x, var_1.d, vec4<bool>(false, var_1.d.x, var_0.d.x, var_1.d.x), var_1.d.x), Struct_5(-11247i, var_0.d, vec4<bool>(var_0.d.x, false, true, var_0.d.x), var_0.d.x), vec4<i32>(u_input.a.x, var_0.b.x, -573i, u_input.a.x)).b % vec2<u32>(32u)))), ~min(~_wgslsmith_sub_vec4_i32(var_1.b, var_1.b), firstTrailingBit(var_1.b >> (vec4<u32>(32983u, var_1.c.x, var_1.c.x, 0u) % vec4<u32>(32u))))).a.b;
    let var_4 = func_4(func_1(_wgslsmith_f_op_f32(round(-906f)), vec4<bool>(any(var_0.d.xz), var_0.d.x, true, _wgslsmith_clamp_i32(var_1.b.x, var_0.b.x, u_input.a.x) > (u_input.a.x & 69140i)), !vec3<bool>(true, true, any(vec3<bool>(var_1.d.x, var_0.d.x, false)))), Struct_5(-min(-u_input.a.x, -13726i), vec3<bool>(!any(var_1.d.xx), false, false | any(vec2<bool>(false, var_1.d.x))), !vec4<bool>(var_1.d.x, var_1.b.x >= 2147483647i, var_0.d.x, true), (_wgslsmith_f_op_f32(-1603f * var_1.a.a.x) <= _wgslsmith_f_op_f32(var_3.x + 454f)) & true), vec4<i32>(var_1.b.x, -37232i, -314i, ~var_0.b.x)).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.b.x))));
}


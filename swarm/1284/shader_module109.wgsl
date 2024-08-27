struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18119i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: bool) -> bool {
    global0 = -1i;
    global0 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(43176i << (~_wgslsmith_mod_u32(u_input.c, 0u) % 32u), -(1i << ((u_input.c | 0u) % 32u))));
    global0 = _wgslsmith_div_i32(-13115i, _wgslsmith_clamp_i32(select(u_input.b, 1i, !(true & arg_3)), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b, u_input.a.x, 10478i), u_input.a)), vec4<i32>(-15901i, u_input.a.x, ~u_input.a.x, reverseBits(-1367i))), -7831i));
    let var_0 = select(vec4<bool>(!(!any(vec3<bool>(arg_3, false, true))), arg_3, !all(select(vec4<bool>(arg_1, arg_3, arg_3, false), vec4<bool>(true, true, true, true), arg_1)), u_input.a.x <= u_input.b), vec4<bool>(all(vec3<bool>(all(vec3<bool>(arg_1, true, arg_1)), false, arg_3)), arg_1 && !any(vec2<bool>(true, arg_1)), (select(u_input.a.x, u_input.b, arg_3) << (42212u % 32u)) >= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yy, u_input.a.yz), u_input.a.xw), _wgslsmith_f_op_f32(f32(-1f) * -760f) > arg_2), !(arg_3 | arg_1));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(arg_2 + arg_2)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2)), arg_2)), arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))))));
    return arg_1;
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(func_3(min(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, 21134u), max(u_input.c, u_input.c)), ~22059u), firstTrailingBit(-u_input.b) > _wgslsmith_mod_i32(-2147483647i, -38379i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f + -610f) - _wgslsmith_f_op_f32(f32(-1f) * -909f))), true), false, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1339f)) - 592f));
    var_0 = !(!vec4<bool>(true, any(vec2<bool>(var_0.x, true)), true, var_0.x || true));
    let var_1 = select(vec3<bool>(!(!var_0.x), all(vec4<bool>(all(var_0.yz), true, var_0.x, !var_0.x)), 70580u <= ~u_input.c), vec3<bool>(true, true, var_0.x), vec3<bool>(any(var_0.xx), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-634f - -588f)) == 1489f));
    let var_2 = 0u << (~firstTrailingBit(u_input.c) % 32u);
    global0 = _wgslsmith_mult_i32(-5339i, _wgslsmith_dot_vec4_i32(u_input.a, min(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 0i), vec4<i32>(-5455i, -49547i, -2147483647i, u_input.a.x)), u_input.a)));
    return u_input.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    global0 = ~min(_wgslsmith_add_i32(12559i, func_2()), u_input.b);
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.yzx, -(u_input.a.wwx ^ ~vec3<i32>(arg_1, u_input.a.x, 6732i))), vec3<i32>(~firstLeadingBit(arg_1), i32(-1i) * -6884i, 2147483647i));
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-869f, -423f)), arg_0.x)));
    var var_1 = Struct_1(-130f, u_input.c, ~(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(1u, u_input.c)) ^ vec2<u32>(~u_input.c, abs(4294967295u))), _wgslsmith_add_vec3_i32(firstLeadingBit(-(~u_input.a.xyz)), ~u_input.a.zxz | firstTrailingBit(u_input.a.wwy)));
    return Struct_1(_wgslsmith_f_op_f32(abs(var_1.a)), 61670u, var_1.c, u_input.a.xwx);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    global0 = 5034i;
    var var_0 = !(!vec4<bool>(true & any(vec2<bool>(arg_3, arg_3)), true, arg_3, !any(vec3<bool>(false, arg_3, arg_3))));
    let var_1 = vec4<i32>(1i, 823i, 0i, 29162i);
    var var_2 = var_0.wy;
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 812f, _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a)) * _wgslsmith_f_op_f32(abs(arg_0.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -644f, arg_0.a, 903f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a, 2167f, arg_0.a, 1159f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, 273f, arg_2.a)), vec4<bool>(true, true, true, true))))), arg_0.d.x);
    return select(vec3<bool>(false, true, arg_3), var_0.zwx, any(vec2<bool>(select(arg_3, false, var_2.x), all(var_0.yyw))) != false);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = -countOneBits(u_input.a.zwy);
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1129f)), _wgslsmith_f_op_f32(step(1808f, 508f))) - vec2<f32>(_wgslsmith_f_op_f32(-696f * -1415f), _wgslsmith_f_op_f32(-711f - -147f)))));
    var_1 = true;
    var var_3 = vec4<f32>(502f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.x, 2577f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x)), _wgslsmith_f_op_f32(round(1000f)), 1000f);
    return Struct_1(_wgslsmith_f_op_f32(-var_3.x), ~u_input.c, vec2<u32>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, 243f, 1020f, -1039f)) + vec4<f32>(-704f, var_2.x, -1565f, 269f)), 47175i).b, 38137u), (_wgslsmith_mod_vec3_i32(max(vec3<i32>(2147483647i, var_0.x, 34355i), vec3<i32>(u_input.a.x, -1384i, -67695i)), u_input.a.wyz) ^ vec3<i32>(-2147483647i, var_0.x, var_0.x)) ^ abs(vec3<i32>(var_0.x, 0i, 30029i) | firstLeadingBit(u_input.a.xyx)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    global0 = arg_0.d.x;
    let var_0 = max(-1i, 15264i << (arg_1.c.x % 32u));
    global0 = arg_0.d.x;
    var var_1 = Struct_1(arg_0.a, ~u_input.c, arg_0.c, _wgslsmith_add_vec3_i32(arg_1.d, vec3<i32>(16359i, u_input.b, reverseBits(func_1(vec4<f32>(1811f, arg_0.a, 2299f, arg_1.a), arg_1.d.x).d.x))));
    var var_2 = -u_input.a;
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, var_1.a, -1051f, arg_0.a))))), _wgslsmith_mod_i32(0i, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_6(func_5(func_4(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(507f, 1000f, -684f, -1956f), vec4<f32>(1368f, 565f, 1197f, 1000f)), -u_input.a.x), ~select(-1i, 10775i, true), Struct_1(1684f, u_input.c, ~vec2<u32>(4294967295u, u_input.c), u_input.a.ywz), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1129f, -657f)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 19520u, 35473u, u_input.c), vec4<u32>(u_input.c, 79880u, 1u, 7795u), select(vec4<u32>(7570u, 0u, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.c, 8772u), false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) ^ vec4<u32>(1541u, 1u, u_input.c, u_input.c), select(vec4<u32>(u_input.c, 60696u, 4294967295u, 1u), vec4<u32>(u_input.c, 54739u, u_input.c, u_input.c), vec4<bool>(true, true, false, false)), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c))), ~(~(~vec2<u32>(75288u, u_input.c))), -u_input.a.www), 1i ^ -_wgslsmith_div_i32(func_2(), -1i), u_input.c);
    var var_2 = Struct_1(294f, u_input.c, vec2<u32>(firstLeadingBit(func_6(Struct_1(var_1.a, u_input.c, var_1.c, vec3<i32>(33255i, var_1.d.x, 0i)), Struct_1(168f, u_input.c, var_1.c, var_1.d), -69257i, 0u).b) | u_input.c, u_input.c & abs(1u)), var_1.d);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(328f, var_2.a), vec2<f32>(var_2.a, -1929f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.a, 501f))))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1472f, 590f)))))) * vec2<f32>(-829f, -629f));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(func_6(var_1, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, -122f, 1149f)), 1i), func_6(var_1, var_1, i32(-1i) * -34239i, _wgslsmith_div_u32(u_input.c, 1u)).d.x, min(0u, u_input.c)).a)), firstTrailingBit(4294967295u), ~_wgslsmith_div_vec2_u32(vec2<u32>(abs(u_input.c), 1u), ~vec2<u32>(var_1.c.x, 4294967295u)), firstLeadingBit(min(var_1.d, vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, ~(-1028i)))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(trunc(1220f))) * _wgslsmith_f_op_f32(min(-385f, var_4.a)))), max(4294967295u, var_1.c.x), min(~var_2.c | ~firstTrailingBit(var_2.c), vec2<u32>(~(~var_4.b), _wgslsmith_sub_u32(~var_1.c.x, var_1.b))), ~vec3<i32>(1i, firstTrailingBit(3580i) >> ((u_input.c << (4294967295u % 32u)) % 32u), firstTrailingBit(-2147483647i)));
    global0 = _wgslsmith_div_i32(~_wgslsmith_mod_i32(-(u_input.a.x >> (var_1.b % 32u)), i32(-1i) * -var_4.d.x), _wgslsmith_sub_i32(u_input.b | -414i, func_6(var_4, func_6(var_4, var_1, 1i, 28794u), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(56285u, 45676u, var_2.b), vec3<u32>(4294967295u, var_1.b, 51447u))).d.x ^ u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, 2147483647i, 1000f);
}


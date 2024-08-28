struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1620f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(260f))), 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1072f, -1787f) * vec2<f32>(119f, -2059f))), arg_0))), true));
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.d.zxw, select(~u_input.d.wxy, vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(arg_2.zzz, vec3<i32>(arg_2.x, arg_2.x, -7403i), arg_2.xwz), !vec3<bool>(arg_0, false, arg_0)));
    var var_2 = Struct_2(any(vec2<bool>(false, any(vec4<bool>(arg_0, false, arg_0, arg_0)) | arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1397f, _wgslsmith_f_op_f32(f32(-1f) * -367f)))), 4105i, vec2<bool>(true, !(!(arg_0 == true))), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(25849u, arg_1.x, arg_1.x, u_input.e.x), arg_1), arg_1.x ^ countOneBits(max(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), vec4<bool>(!arg_0, !all(vec2<bool>(true, true)), true, u_input.d.x < _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -32705i, arg_2.x, u_input.d.x), u_input.d))));
    var var_3 = vec3<f32>(var_0.x, var_2.b.x, _wgslsmith_f_op_f32(-var_0.x));
    var_0 = var_2.b;
    return select(select(select(select(vec2<bool>(arg_0, true), vec2<bool>(true, true), true), var_2.d, var_2.e.d.ww), vec2<bool>(all(vec2<bool>(arg_0, true)), false), arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, _wgslsmith_add_i32(u_input.d.x, arg_2.x) < (u_input.a.x << (~16131u % 32u))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    var var_1 = Struct_3(vec2<bool>(!(!(true | arg_0)), arg_2 && (u_input.c.x < 84172u)), Struct_2(false, _wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_mod_i32(u_input.a.x, 13612i) << (((u_input.b.x | u_input.c.x) << (select(19564u, u_input.b.x, false) % 32u)) % 32u), func_3(any(select(vec2<bool>(arg_2, false), vec2<bool>(true, true), vec2<bool>(false, arg_0))), reverseBits(u_input.e | vec4<u32>(u_input.e.x, u_input.b.x, 75671u, 57665u)), _wgslsmith_mod_vec4_i32(u_input.d, select(vec4<i32>(1i, u_input.a.x, 2147483647i, -2147483647i), u_input.d, true))), Struct_1(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.wy, ~u_input.c.wz), _wgslsmith_f_op_f32(min(268f, _wgslsmith_div_f32(1171f, var_0))), select(!vec4<bool>(arg_0, arg_2, arg_0, arg_2), !vec4<bool>(arg_2, true, true, false), any(vec2<bool>(false, false))))), Struct_2(true, _wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -1141f), _wgslsmith_f_op_vec2_f32(-arg_1)), !(!vec2<bool>(arg_2, true)))), -10443i, !func_3(true, u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, -79657i), vec4<i32>(32889i, -2147483647i, u_input.d.x, u_input.a.x))), Struct_1(~(~u_input.e.x), (u_input.b.x | u_input.e.x) >> (u_input.e.x % 32u), arg_1.x, vec4<bool>(false, !arg_0, false, arg_0))), arg_1.x);
    let var_2 = ~((~u_input.c.x & select(var_1.b.e.a, var_1.c.e.a, var_1.a.x)) | var_1.c.e.a) | u_input.e.x;
    var var_3 = var_0;
    var var_4 = var_1.b.e;
    return Struct_4(Struct_3(vec2<bool>(any(var_1.c.e.d.yz), var_1.c.a), Struct_2(var_1.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 299f))), ~26862i, !var_4.d.ww, var_1.c.e), Struct_2(func_3(true, min(u_input.c, u_input.c), u_input.d).x, vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1715f)), u_input.a.x, !(!var_1.b.d), var_1.b.e), var_1.b.e.c), var_1.c.e, var_4.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(arg_0.a.b.b));
    var_0 = arg_0.a.c.b;
    let var_1 = Struct_1(countOneBits(func_2(arg_0.a.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-438f, arg_1.c), arg_0.a.c.b))), any(vec2<bool>(false, true))).c), firstLeadingBit(_wgslsmith_div_u32(reverseBits(u_input.c.x) >> (~arg_0.a.b.e.a % 32u), ~countOneBits(35u))), -1688f, func_2(!(any(arg_0.a.c.e.d) | (arg_1.d.x | false)), arg_0.a.b.b, arg_0.b.d.x).a.c.e.d);
    let var_2 = !func_2(all(func_2(0u > arg_0.a.c.e.b, _wgslsmith_f_op_vec2_f32(select(arg_0.a.c.b, vec2<f32>(683f, arg_1.c), vec2<bool>(false, true))), arg_0.a.b.e.d.x).a.b.e.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.c.b)), false || arg_1.d.x).b.d.zy;
    let var_3 = func_2(18384i < _wgslsmith_div_i32(~(~arg_0.a.c.c), -countOneBits(u_input.a.x)), arg_0.a.c.b, all(func_2(false, _wgslsmith_f_op_vec2_f32(round(arg_0.a.c.b)), false).b.d.wwx));
    return var_3.a.c;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(385f - arg_0.b.x), _wgslsmith_f_op_f32(arg_3.c + 985f))), arg_3.c)))));
    var var_2 = func_2(arg_3.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(var_1, 1674f)), vec2<f32>(-307f, var_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b.x, arg_0.b.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1410f, -749f) + vec2<f32>(arg_0.b.x, 626f))))), !(false && (select(-21640i, arg_0.c, true) <= 0i)));
    let var_3 = _wgslsmith_add_vec3_i32(~(~_wgslsmith_sub_vec3_i32(reverseBits(u_input.a), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(34915i, u_input.a.x, var_2.a.c.c)))), -abs(u_input.d.zyy));
    var_2 = Struct_4(func_2(false, _wgslsmith_div_vec2_f32(var_2.a.c.b, arg_0.b), arg_3.d.x).a, Struct_1(1u, ~(arg_2 ^ arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.c)) * -1000f)), !(!select(vec4<bool>(arg_1, true, arg_3.d.x, arg_0.d.x), arg_0.e.d, arg_3.d.x))), 30700u);
    return -abs(-2147483647i);
}

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = func_5(func_4(func_2(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1614f, 1117f) + vec2<f32>(468f, 302f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(510f, 1436f)))), false), Struct_1(1u, min(~u_input.c.x, 12895u), -617f, arg_0), u_input.d, u_input.a.x), func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1262f, -418f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1998f, 194f)))) + func_4(func_2(false, vec2<f32>(-920f, -1466f), false), func_2(arg_0.x, vec2<f32>(-1115f, 213f), arg_0.x).b, vec4<i32>(u_input.a.x, u_input.a.x, -8497i, u_input.a.x) | vec4<i32>(2147483647i, -38359i, -1i, 30079i), u_input.a.x).b), arg_0.x).a.b.d.x, ~_wgslsmith_div_u32(u_input.b.x, ~(u_input.e.x >> (83557u % 32u))), Struct_1(_wgslsmith_dot_vec4_u32(~abs(u_input.c), u_input.c), u_input.b.x & (u_input.e.x >> (80906u % 32u)), 1702f, arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, _wgslsmith_f_op_f32(min(-1145f, _wgslsmith_f_op_f32(-275f - -102f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-632f, 455f)) - 1123f))), 1000f));
    let var_2 = func_2(firstLeadingBit(~u_input.c.x) <= (11398u ^ ((u_input.e.x << (4294967295u % 32u)) << ((1u & u_input.b.x) % 32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-335f, var_1.x), vec2<f32>(var_1.x, -584f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1112f, var_1.x) - vec2<f32>(1000f, var_1.x)), var_1.x == var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1001f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 685f) + vec2<f32>(1054f, -304f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yw)), vec2<bool>(false, true))), arg_0.x);
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, u_input.d.x), _wgslsmith_div_i32(firstLeadingBit(u_input.d.x | ~(-1i)), _wgslsmith_mod_i32(0i, 20402i)), -2147483647i);
    var_0 = u_input.a.x;
    return var_2.a.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f + -189f))))));
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1331f)));
    var var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(369f, -314f), vec2<f32>(600f, var_4)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(false, false, true, false)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-888f))), _wgslsmith_f_op_f32(-var_4)));
    var_2 = _wgslsmith_f_op_f32(869f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(359f, var_4) * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-891f, var_4, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.x, -571f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_4)))));
    var var_5 = !select(func_2(select(true, true, false), vec2<f32>(var_4, var_4), func_3(false, u_input.e, u_input.d).x).b.d.x | !func_4(Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(false, vec2<f32>(-735f, 1202f), -2147483647i, vec2<bool>(false, false), Struct_1(u_input.e.x, u_input.e.x, var_0.x, vec4<bool>(false, true, false, false))), Struct_2(true, vec2<f32>(var_4, var_4), -1i, vec2<bool>(false, true), Struct_1(u_input.c.x, 45837u, var_0.x, vec4<bool>(true, true, false, false))), var_0.x), Struct_1(u_input.e.x, u_input.b.x, var_0.x, vec4<bool>(false, false, false, false)), u_input.c.x), Struct_1(0u, u_input.c.x, -424f, vec4<bool>(true, false, true, false)), vec4<i32>(-42928i, u_input.a.x, 2147483647i, u_input.a.x), -3941i).e.d.x, any(vec4<bool>(true, true, true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_4)), var_4, _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(1000f - var_4)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 230f, -1202f)))), vec4<bool>(func_2(true, vec2<f32>(-369f, var_0.x), true).b.d.x, false, u_input.c.x < u_input.c.x, true))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(597f, -1000f, _wgslsmith_f_op_f32(-var_0.x), 808f)))), _wgslsmith_mult_vec2_i32(~(~reverseBits(u_input.a.yy)), min(_wgslsmith_sub_vec2_i32(u_input.d.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.xy)), firstTrailingBit(u_input.a.yx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-378f, var_0.x, -1466f) * vec3<f32>(-1000f, -930f, var_4)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(186f, -228f, var_4)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 560f, 160f)))))));
}


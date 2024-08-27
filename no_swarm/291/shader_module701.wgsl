struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = !vec4<bool>(true, !(!all(vec3<bool>(arg_0.x, arg_0.x, false))), arg_0.x, !(true & arg_0.x));
    let var_1 = Struct_3(Struct_1(!(!any(var_0.xxx)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1065f, 1173f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1547f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<f32>(-281f, arg_2.x, arg_2.x, arg_2.x)))))), arg_0.x), Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 18624u, 0u), ~vec3<u32>(1u, 42577u, 0u)), Struct_1(any(vec3<bool>(var_0.x, arg_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1066f, 574f, 323f, arg_2.x)))), any(vec3<bool>(true, arg_0.x, var_0.x)) || any(var_0.wx))), u_input.a.x, Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 1u), ~38508u), vec2<u32>(1u, 1u)), Struct_1(any(select(vec3<bool>(var_0.x, true, arg_0.x), var_0.xyx, var_0.wyz)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(-1000f * -391f)), true)), Struct_1(!arg_0.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, 939f, 477f, arg_2.x), vec4<f32>(1000f, -263f, -1485f, arg_2.x), var_0.x)))))), var_0.x));
    let var_2 = var_1.d;
    var var_3 = max(~vec2<u32>(var_1.b.a, 17311u) ^ vec2<u32>(_wgslsmith_sub_u32(var_1.b.a, ~24890u), var_1.d.a), ~vec2<u32>(1u, max(_wgslsmith_mod_u32(var_2.a, var_1.d.a), ~var_2.a)));
    var_3 = vec2<u32>(select(~(~6062u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(3942u, var_3.x, var_2.a, var_3.x), vec4<u32>(1u, var_3.x, 56668u, 0u)), ~vec4<u32>(4294967295u, 48363u, var_2.a, 4294967295u)), _wgslsmith_add_i32(arg_1.x, var_1.c) < 53289i) >> (49031u % 32u), _wgslsmith_clamp_u32(var_1.d.a & var_3.x, _wgslsmith_div_u32(~290u, 4294967295u), ~var_2.a));
    return _wgslsmith_f_op_vec4_f32(-var_1.e.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_5 {
    var var_0 = 45153u;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_3.b.x, -966f) * arg_3.b.xzx)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.b.xww);
    var var_2 = Struct_1(!arg_2.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-647f, var_1.x))), 680f)), -189f, arg_3.b.x), false);
    var var_3 = Struct_4(Struct_2(arg_0.x, arg_2), u_input.a, _wgslsmith_div_f32(-723f, var_2.b.x), all(select(vec3<bool>(true, false | arg_3.c, false), select(!vec3<bool>(arg_3.c, var_2.a, false), !vec3<bool>(false, false, arg_3.a), var_2.a), arg_0.x >= _wgslsmith_dot_vec4_u32(arg_0, arg_0))), Struct_2(~countOneBits(_wgslsmith_sub_u32(arg_0.x, arg_0.x)), Struct_1(true && any(vec3<bool>(true, true, arg_2.c)), _wgslsmith_f_op_vec4_f32(func_3(!vec2<bool>(arg_3.a, true), vec2<i32>(arg_1, -10876i) & u_input.a.xx, _wgslsmith_f_op_vec2_f32(round(var_2.b.yz)))), arg_2.a)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.b.wxx, arg_2.b.yxw))))), Struct_4(var_3.a, vec4<i32>(~18153i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, u_input.a.x), 2147483647i), select(-2147483647i, -8632i, var_2.c), _wgslsmith_mod_i32(select(-15843i, u_input.a.x, arg_3.a), reverseBits(arg_1))), 560f, _wgslsmith_add_i32(~arg_1, ~u_input.a.x) == (i32(-1i) * -32508i), Struct_2(~1u, Struct_1(arg_3.a, arg_3.b, true))), var_3.b.x, var_3.a);
}

fn func_4(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = i32(-1i) * -1i;
    var var_1 = _wgslsmith_sub_u32(arg_0.b.e.a, _wgslsmith_mult_u32((720u >> ((arg_0.b.e.a >> (arg_0.b.e.a % 32u)) % 32u)) | 1u, arg_0.d.a));
    var_0 = arg_0.c;
    let var_2 = any(!(!select(select(vec2<bool>(arg_0.d.b.c, arg_0.b.a.b.c), vec2<bool>(false, arg_0.b.e.b.c), false), vec2<bool>(true, true), true)));
    var_1 = 5180u;
    return !select(!(!(!vec3<bool>(true, var_2, false))), vec3<bool>(var_2, var_2, false), 40504u == arg_0.b.a.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = func_2(~arg_3, _wgslsmith_dot_vec3_i32(func_2(_wgslsmith_mult_vec4_u32(arg_3, select(arg_3, vec4<u32>(arg_3.x, 0u, arg_3.x, 42361u), arg_1)), 0i, func_2(~arg_3, reverseBits(u_input.a.x), func_2(arg_3, 1i, Struct_1(true, vec4<f32>(-421f, 166f, arg_0.x, 2049f), false), arg_2).b.e.b, arg_2).b.a.b, func_2(countOneBits(vec4<u32>(1u, 1u, arg_3.x, arg_3.x)), -3892i, Struct_1(arg_2.a, arg_2.b, true), arg_2).d.b).b.b.wwx, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(arg_3, -44950i, arg_2, arg_2).b.b.wyx, u_input.a.wzz), vec3<i32>(min(-1i, u_input.a.x), u_input.a.x, abs(u_input.a.x)))), Struct_1(-(12081i | u_input.a.x) > u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b.x - -1013f), _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), vec2<i32>(u_input.a.x, -2147483647i), arg_0)).x)), arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), arg_2.b.x), all(vec3<bool>(true, arg_1, arg_2.a))), func_2(select(arg_3, arg_3, any(select(vec3<bool>(arg_2.a, arg_2.a, arg_2.c), vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, arg_1, arg_2.c)))), 0i, Struct_1(true, arg_2.b, true), func_2(arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(1i, 72612i, u_input.a.x)), Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(-1417f, 2102f, -1000f, arg_0.x)), false), arg_2).d.b).b.e.b);
    let var_1 = Struct_3(func_2(_wgslsmith_mult_vec4_u32(max(vec4<u32>(41671u, var_0.b.a.a, var_0.b.e.a, 4294967295u), reverseBits(vec4<u32>(1u, var_0.b.e.a, 6236u, var_0.b.a.a))), firstLeadingBit(vec4<u32>(var_0.b.e.a, 4965u, var_0.b.a.a, var_0.b.e.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), var_0.b.b), var_0.b.b), func_2(arg_3, 2147483647i, func_2(vec4<u32>(arg_3.x, 77969u, 47021u, arg_3.x), 1i, var_0.b.e.b, Struct_1(arg_2.a, vec4<f32>(-359f, -506f, -1000f, 119f), var_0.d.b.a)).b.e.b, arg_2).b.a.b, func_2(~arg_3 & ~arg_3, var_0.c, Struct_1(5710u <= var_0.d.a, vec4<f32>(-1000f, arg_0.x, -1825f, -1550f), arg_1 == var_0.d.b.a), func_2(_wgslsmith_mult_vec4_u32(arg_3, vec4<u32>(var_0.d.a, arg_3.x, arg_3.x, 4294967295u)), var_0.c, Struct_1(true, arg_2.b, false), arg_2).b.a.b).d.b).d.b, Struct_2(~(var_0.d.a << (4294967295u % 32u)) ^ 0u, func_2(vec4<u32>(71322u, var_0.d.a, 34473u, 0u) & ~arg_3, 22402i, func_2(arg_3 | arg_3, u_input.a.x, func_2(vec4<u32>(var_0.d.a, 0u, 26745u, var_0.b.a.a), 1i, var_0.b.e.b, Struct_1(arg_2.a, arg_2.b, arg_2.a)).b.a.b, func_2(arg_3, var_0.b.b.x, Struct_1(arg_2.a, vec4<f32>(arg_0.x, -651f, 131f, arg_0.x), true), arg_2).b.a.b).b.a.b, arg_2).b.e.b), -(~u_input.a.x), var_0.b.e, Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -519f, 336f, 948f) * arg_2.b) + _wgslsmith_f_op_vec4_f32(var_0.d.b.b - var_0.b.a.b.b)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_2.b + var_0.b.a.b.b), var_0.d.b.b))), min(_wgslsmith_mult_u32(arg_3.x, 20715u), 1u) == reverseBits(arg_3.x)));
    var var_2 = func_2(~vec4<u32>(var_1.b.a, ~var_1.b.a, ~1u, ~firstLeadingBit(arg_3.x)), _wgslsmith_add_i32(abs(var_0.b.b.x), u_input.a.x), Struct_1(true & arg_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d.b.b + _wgslsmith_f_op_vec4_f32(-var_1.d.b.b)), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_2.b.x * 1850f), var_0.a.x, 877f)), any(select(func_4(Struct_5(vec3<f32>(var_1.e.b.x, arg_2.b.x, -1000f), var_0.b, u_input.a.x, Struct_2(4294967295u, Struct_1(arg_1, vec4<f32>(1394f, arg_0.x, -908f, 806f), false)))), select(vec3<bool>(var_0.b.a.b.a, var_0.d.b.c, var_1.a.a), vec3<bool>(true, arg_2.a, true), vec3<bool>(false, false, false)), vec3<bool>(false, arg_2.c, arg_2.a)))), Struct_1(!arg_1 != true, vec4<f32>(1646f, -662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1601f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))), true)).d.b;
    var var_3 = !(var_0.b.d || var_0.d.b.a);
    var var_4 = -var_0.b.b.yw;
    return var_0.b.a;
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = func_5(vec2<f32>(1f, 1f), !any(func_4(func_2(vec4<u32>(41523u, 4294967295u, 10384u, 17611u), 42459i, Struct_1(true, vec4<f32>(1000f, -1896f, 1000f, 627f), false), Struct_1(false, vec4<f32>(1000f, 380f, -370f, 894f), true)))), func_2(~vec4<u32>(~4263u, 11759u, 1u, 0u), -1i, func_2(~(~vec4<u32>(38251u, 4294967295u, 0u, 1u)), reverseBits(u_input.a.x) ^ u_input.a.x, Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1913f, -160f, -793f, 344f)), all(vec3<bool>(false, false, true))), Struct_1(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, -1223f, 269f, 1387f) - vec4<f32>(2765f, 795f, 906f, 1394f)), true)).b.a.b, Struct_1(arg_0.x < ~arg_0.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1353f, -427f, 1000f, -122f)))), false)).b.a.b, vec4<u32>(1u, select(30535u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5628u, 23537u, 246u), vec4<u32>(55793u, 0u, 57749u, 1u)), u_input.a.x > u_input.a.x), _wgslsmith_mult_u32(firstTrailingBit(0u), func_2(vec4<u32>(0u, 32603u, 47213u, 38079u), arg_0.x, Struct_1(false, vec4<f32>(515f, -1000f, -1063f, 308f), false), Struct_1(false, vec4<f32>(-453f, 284f, -774f, 334f), false)).b.a.a), func_2(vec4<u32>(22631u, 1u, 66812u, 0u), arg_0.x, Struct_1(true, vec4<f32>(-1237f, -1000f, 747f, 1220f), true), Struct_1(true, vec4<f32>(596f, -725f, -370f, -1112f), false)).b.a.a & 1u) & vec4<u32>(~7352u, min(countOneBits(4294967295u), min(8356u, 22049u)), max(84828u, 1u), firstLeadingBit(70080u << (0u % 32u))));
    let var_1 = var_0.b.a;
    let var_2 = !func_4(Struct_5(func_2(~vec4<u32>(var_0.a, 0u, 60734u, 35654u), firstLeadingBit(u_input.a.x), var_0.b, func_5(vec2<f32>(882f, var_0.b.b.x), true, var_0.b, vec4<u32>(var_0.a, 6467u, var_0.a, var_0.a)).b).d.b.b.xxw, func_2(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 24915u, 0u, 105212u), vec4<u32>(4294967295u, 1u, var_0.a, var_0.a)), u_input.a.x, Struct_1(var_0.b.c, vec4<f32>(var_0.b.b.x, -356f, var_0.b.b.x, var_0.b.b.x), var_0.b.a), Struct_1(var_0.b.c, vec4<f32>(625f, 1732f, -1503f, 1763f), var_0.b.a)).b, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_0.x, 19814i), u_input.a.zzy)), func_5(_wgslsmith_f_op_vec2_f32(-var_0.b.b.xz), false, var_0.b, countOneBits(vec4<u32>(var_0.a, 11066u, 64922u, 0u))))).xy;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(var_0.b.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.b.x)), var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x)))))))), select(vec4<bool>(select(true, any(vec2<bool>(false, false)), var_0.b.c), false, any(vec4<bool>(var_0.b.a, true, var_0.b.c, true)) | false, select(all(var_2), true, -1441f <= var_0.b.b.x)), select(!(!vec4<bool>(true, true, false, var_0.b.a)), select(!vec4<bool>(var_2.x, var_2.x, false, true), select(vec4<bool>(true, true, var_0.b.a, var_0.b.c), vec4<bool>(false, var_2.x, var_2.x, var_2.x), false), vec4<bool>(var_2.x, var_2.x, var_2.x, false)), true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.x, var_2.x, true, var_0.b.a), false)))));
    var var_4 = Struct_3(func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, 1264f))), var_0.b.b.xw), var_2.x, func_5(_wgslsmith_f_op_vec2_f32(-func_5(var_0.b.b.wz, false, Struct_1(false, var_0.b.b, var_0.b.a), vec4<u32>(1u, var_0.a, var_0.a, var_0.a)).b.b.wy), true, var_0.b, vec4<u32>(~41751u, 88853u, firstLeadingBit(var_0.a), 0u)).b, vec4<u32>(max(~var_0.a, var_0.a), 0u, var_0.a, 40586u)).b, func_5(var_0.b.b.wz, false, var_0.b, _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, var_0.a, var_0.a)), ~(vec4<u32>(0u, 1u, 4294967295u, var_0.a) | vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u)))), u_input.a.x, func_2(~((vec4<u32>(11399u, 1u, var_0.a, 0u) ^ vec4<u32>(4294967295u, var_0.a, var_0.a, 0u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 0u, var_0.a), vec4<u32>(var_0.a, 67632u, 0u, 23846u))), _wgslsmith_add_i32(firstTrailingBit(min(arg_0.x, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-27500i, 30008i), arg_0.xx) >> ((var_0.a ^ var_0.a) % 32u)), var_0.b, var_0.b).b.a, var_0.b);
    return Struct_3(Struct_1(any(func_4(Struct_5(var_3.xyx, Struct_4(var_4.b, arg_0, 3028f, var_2.x, var_4.d), 1i, var_4.d))), var_0.b.b, false), Struct_2(var_0.a, var_0.b), var_4.c, func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(177f)), _wgslsmith_f_op_f32(-var_4.d.b.b.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_4.e.b.yz)) - vec2<f32>(-695f, -1044f))), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-var_4.e.b.yxx), Struct_4(var_4.b, vec4<i32>(arg_0.x, -18216i, var_4.c, 0i), -1000f, true, var_4.d), var_4.c, Struct_2(9442u, Struct_1(var_2.x, var_0.b.b, var_4.e.a)))).x, func_5(var_3.wy, true, func_5(vec2<f32>(870f, 589f), all(vec2<bool>(true, var_2.x)), Struct_1(true, vec4<f32>(var_0.b.b.x, -359f, var_3.x, var_3.x), true), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_4.b.a, 9473u), vec4<u32>(var_4.b.a, var_4.d.a, var_0.a, var_0.a), vec4<u32>(var_0.a, 4294967295u, 1u, 14729u))).b, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.a, 4294967295u, var_0.a), vec4<u32>(var_4.d.a, var_0.a, 42071u, 1u) & vec4<u32>(var_0.a, 20325u, 17441u, var_0.a))).b, _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, var_0.a, var_4.d.a, 4294967295u)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_4.b.a, var_4.b.a), vec4<u32>(4294967295u, 0u, var_4.b.a, var_0.a), vec4<u32>(var_0.a, var_0.a, 14454u, var_0.a))))), func_2(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.b.a, 4294967295u, 1u, var_4.d.a), vec4<u32>(2883u, var_0.a, var_4.b.a, var_0.a))), arg_0.x, var_0.b, var_0.b).d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a);
    let var_1 = func_2(~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(62262u, var_0.b.a, 4294967295u, var_0.d.a)), (vec4<u32>(var_0.b.a, 4294967295u, var_0.b.a, var_0.b.a) | vec4<u32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.d.a)) | ~vec4<u32>(var_0.b.a, 75996u, 104261u, 29159u)), u_input.a.x, func_2(~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.a, 0u, var_0.d.a, 4294967295u), vec4<u32>(var_0.d.a, 4294967295u, 54677u, 73496u)) | ~vec4<u32>(4294967295u, 1u, var_0.b.a, 4294967295u)), var_0.c, func_5(var_0.b.b.b.yx, any(!vec4<bool>(var_0.a.c, var_0.e.a, var_0.d.b.c, var_0.a.c)), func_1(vec4<i32>(u_input.a.x, var_0.c, u_input.a.x, 0i)).a, vec4<u32>(1u, 18151u, 43739u, ~59995u)).b, Struct_1(var_0.b.a == (var_0.b.a >> (var_0.d.a % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, 475f, -814f, var_0.d.b.b.x) - vec4<f32>(-363f, var_0.b.b.b.x, var_0.b.b.b.x, 553f)), var_0.e.a)).b.a.b, var_0.d.b).b;
    var var_2 = var_0.d.b.b.yyw;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a, var_0.d.a, var_0.b.a, 51928u), vec4<u32>(var_1.a.a, 1u, var_1.e.a, var_1.a.a)), reverseBits(-16581i), Struct_1(var_0.a.c, vec4<f32>(var_0.b.b.b.x, -1000f, 1251f, var_1.e.b.b.x), var_0.e.a), var_1.a.b).b.e.b.b.www) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.x))), _wgslsmith_f_op_f32(var_1.c * -259f), _wgslsmith_f_op_f32(-var_1.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.e.b.wxy, vec3<f32>(177f, -165f, 1000f), vec3<bool>(var_0.a.c, true, var_1.a.b.c))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2162f, var_1.c, var_2.x)))))));
    let var_3 = Struct_4(func_5(_wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(vec4<u32>(var_1.a.a, 92650u, var_0.b.a, 1u)), var_1.b.x, Struct_1(var_0.e.c, var_0.a.b, var_1.d), var_0.e).d.b.b.yy + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.b.b.yy + var_0.e.b.zw), var_1.a.b.b.zw)), !var_0.a.c && true, var_0.a, (firstLeadingBit(vec4<u32>(var_0.d.a, var_1.a.a, 21668u, 17643u)) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(var_1.a.a, var_0.b.a, var_1.e.a, var_0.d.a))) & min(vec4<u32>(var_1.a.a, 1u, 45055u, 4294967295u), vec4<u32>(var_1.a.a, 22930u, 92125u, 4294967295u))), vec4<i32>(_wgslsmith_clamp_i32(-1i, ~(-1i), var_0.c), _wgslsmith_sub_i32(_wgslsmith_sub_i32(26710i, -49078i), 1548i), 62366i, 2147483647i), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(-1061f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(1285f))), 814f), func_5(vec2<f32>(1277f, 152f), !var_1.a.b.c & true, func_1(-countOneBits(vec4<i32>(-25037i, 0i, u_input.a.x, var_1.b.x))).a, ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_0.b.a, 0u), vec4<u32>(var_1.e.a, 11197u, 0u, 1u)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.e.a, 23081u), vec4<u32>(var_1.a.a, var_1.a.a, var_0.d.a, var_1.e.a)) % vec4<u32>(32u))));
    var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, var_0.d.b.b.x))))), var_3.a.b.b.x, _wgslsmith_f_op_f32(func_1(abs(-u_input.a)).a.b.x + _wgslsmith_f_op_f32(-var_0.d.b.b.x)));
    var var_4 = Struct_4(Struct_2(23736u, func_5(var_2.zz, true || func_4(Struct_5(vec3<f32>(var_3.c, 123f, -808f), var_3, 1i, Struct_2(var_3.e.a, var_1.e.b))).x, Struct_1(var_1.a.b.c, _wgslsmith_div_vec4_f32(var_0.e.b, var_3.a.b.b), var_3.d), vec4<u32>(var_1.a.a, _wgslsmith_mult_u32(var_1.a.a, var_3.e.a), 4294967295u, 1u)).b), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.b.wyy, ~var_3.b.wyy), u_input.a.x, var_3.b.x, abs(0i))), -852f, any(!func_4(func_2(vec4<u32>(21102u, 1866u, 51863u, var_0.d.a), -1i, Struct_1(var_1.a.b.a, var_0.e.b, false), var_3.e.b))), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(12266u, 32206u, 38641u, 19323u) ^ (vec4<u32>(var_3.e.a, var_0.d.a, var_1.e.a, 1u) ^ vec4<u32>(var_1.e.a, var_1.a.a, 67646u, 46022u)), min(vec4<u32>(var_0.b.a, 4294967295u, var_1.a.a, 57075u) ^ vec4<u32>(var_1.e.a, var_3.a.a, var_0.b.a, var_1.e.a), vec4<u32>(71613u, 1u, 0u, var_0.d.a) & vec4<u32>(var_1.e.a, 55863u, var_1.e.a, 13144u))), _wgslsmith_clamp_i32(7572i, _wgslsmith_sub_i32(var_3.b.x, func_2(vec4<u32>(var_3.a.a, 8923u, var_0.b.a, var_3.a.a), var_1.b.x, Struct_1(var_3.e.b.a, vec4<f32>(var_0.b.b.b.x, var_1.e.b.b.x, var_0.d.b.b.x, var_0.d.b.b.x), true), Struct_1(false, vec4<f32>(211f, 656f, var_1.e.b.b.x, var_3.c), true)).b.b.x), ~u_input.a.x), Struct_1(true, var_1.a.b.b, true), func_5(_wgslsmith_f_op_vec2_f32(abs(var_1.a.b.b.yx)), !func_4(Struct_5(var_0.d.b.b.zxz, var_1, -22203i, var_0.d)).x, var_3.e.b, ~vec4<u32>(var_3.a.a, 4293u, var_3.e.a, var_3.e.a)).b).d);
    let var_5 = var_3.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.a, var_3.a.a, 4294967295u), select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.a, var_4.e.a, var_3.e.a) << (vec3<u32>(1u, var_1.e.a, var_0.b.a) % vec3<u32>(32u)), abs(vec3<u32>(0u, var_4.e.a, 15085u))), ~(~vec3<u32>(10680u, 0u, 0u)), _wgslsmith_mult_i32(var_0.c, var_4.b.x) > -2147483647i)), ~_wgslsmith_mod_u32(4294967295u, 27185u), vec2<u32>(var_4.e.a, func_5(_wgslsmith_f_op_vec2_f32(-var_1.e.b.b.wx), true, var_1.e.b, vec4<u32>(44225u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.e.a), vec3<u32>(21464u, 26308u, var_3.a.a)), func_2(vec4<u32>(var_4.a.a, var_1.a.a, var_4.a.a, 4294967295u), var_1.b.x, var_4.e.b, var_0.e).b.e.a, ~var_0.d.a)).a), ~var_3.e.a, var_0.c);
}


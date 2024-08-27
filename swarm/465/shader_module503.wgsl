struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
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

var<private> global0: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    global0 = !(!(true && any(vec4<bool>(false, true, false, false))));
    let var_0 = Struct_2(Struct_1(countOneBits(0u), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-839f, _wgslsmith_f_op_f32(select(-935f, 122f, false))))), _wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(f32(-1f) * -166f)), 40355u, countOneBits(arg_1 | 10408u)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(21937u, 4294967295u), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 34885u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(55130u, 1u)), vec2<u32>(1u, 1u))), 866f, -1386f, ~u_input.d, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(782f)))))), Struct_1(~(abs(u_input.a.x) << (_wgslsmith_sub_u32(arg_1, arg_1) % 32u)), -437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) + _wgslsmith_f_op_f32(-319f * 102f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(559f, 349f)))), u_input.a.x, u_input.d));
    var var_1 = Struct_2(Struct_1(select(_wgslsmith_mod_u32(4294967295u, var_0.b.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.d, 0u, 35291u, 29206u), vec4<u32>(u_input.a.x, 0u, 66857u, 0u)), false), _wgslsmith_f_op_f32(f32(-1f) * -951f), var_0.b.b, _wgslsmith_mult_u32(select(63863u, _wgslsmith_mod_u32(var_0.b.e, var_0.b.e), any(vec2<bool>(true, true))), _wgslsmith_add_u32(abs(u_input.a.x), 4294967295u | arg_1)), 37730u), var_0.b, var_0.a.b, var_0.b);
    var var_2 = u_input.b & _wgslsmith_add_vec2_i32(~(arg_0 ^ vec2<i32>(u_input.b.x, 2147483647i)), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, -74904i), arg_0)));
    var var_3 = var_0.d.a;
    return _wgslsmith_f_op_f32(-1261f * 491f);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> bool {
    global0 = false;
    var var_0 = Struct_2(arg_0.b, Struct_1(0u, arg_0.b.b, 175f, _wgslsmith_add_u32(arg_0.b.a, 44952u) << ((1u >> (0u % 32u)) % 32u), ~arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b) - _wgslsmith_div_f32(832f, 589f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c * 197f) - _wgslsmith_div_f32(arg_0.b.b, -859f))), _wgslsmith_f_op_f32(1014f * _wgslsmith_f_op_f32(func_3(vec2<i32>(arg_0.d.x, u_input.c), 48522u))))), arg_0.b);
    var_0 = Struct_2(var_0.d, var_0.a, var_0.a.b, arg_0.b);
    var var_1 = vec4<i32>(arg_0.d.x, firstLeadingBit(~min(_wgslsmith_sub_i32(-21798i, 10958i), _wgslsmith_div_i32(arg_0.d.x, -1i))), u_input.c, u_input.b.x);
    let var_2 = (0u >> (select(_wgslsmith_add_u32(49674u, 46382u), countOneBits(firstLeadingBit(var_0.a.a)), all(vec2<bool>(true, true))) % 32u)) << (u_input.a.x % 32u);
    return false;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<i32>) -> vec4<u32> {
    return vec4<u32>(countOneBits(~(~1u) | u_input.d), firstLeadingBit(37063u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(u_input.a | vec3<u32>(37939u, arg_1.x, 0u)), abs(arg_1 << (u_input.a % vec3<u32>(32u)))), u_input.a.x), 1u ^ countOneBits(firstTrailingBit(u_input.a.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    var var_0 = !vec4<bool>(any(vec2<bool>(true, true)), (false == (51110i <= arg_2.d.x)) || true, ~_wgslsmith_sub_i32(-2147483647i, arg_2.d.x) != 0i, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(866f, 1554f)) - arg_2.b.b), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_div_f32(-207f, arg_1))));
    var_0 = !(!select(vec4<bool>(var_0.x, var_0.x, true | var_0.x, var_0.x), select(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, true, false, var_0.x)), !var_0.x));
    var_0 = select(select(vec4<bool>(!var_0.x, !any(var_0.wxy), ~arg_2.d.x > _wgslsmith_clamp_i32(-1i, 70382i, u_input.b.x), var_0.x), vec4<bool>(!(false && var_0.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false))), !all(vec4<bool>(var_0.x, false, var_0.x, false)), true), select(!(!vec4<bool>(false, true, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, true, var_0.x, false)), true), all(!vec2<bool>(var_0.x, var_0.x)))), !vec4<bool>(var_0.x, var_0.x, (false != var_0.x) | !var_0.x, var_0.x | all(vec2<bool>(var_0.x, true))), var_0.x);
    var var_2 = all(!select(vec4<bool>(arg_2.d.x < u_input.c, !var_0.x, !var_0.x, !var_0.x), select(!vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), all(!var_0.wyz)));
    return Struct_3(vec2<u32>(4294967295u, select(_wgslsmith_sub_u32(~arg_2.b.a, 66439u), _wgslsmith_dot_vec4_u32(arg_2.c >> (vec4<u32>(0u, u_input.a.x, arg_2.b.a, u_input.a.x) % vec4<u32>(32u)), abs(arg_2.c)), var_0.x)), arg_2.b, vec4<u32>(4294967295u, ~1u, select(4294967295u, arg_2.b.a | func_4(true, u_input.a, false, vec4<i32>(-2147483647i, 0i, 1600i, 5844i)).x, var_0.x), abs(firstTrailingBit(0u))), ~vec3<i32>(_wgslsmith_div_i32(-u_input.c, ~1i), arg_2.d.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.x, 2147483647i, u_input.c, 0i), vec4<i32>(u_input.b.x, u_input.b.x, -14640i, u_input.b.x)), reverseBits(1i))));
}

fn func_1() -> u32 {
    var var_0 = u_input.a.yx;
    var_0 = u_input.a.zx;
    var_0 = ~u_input.a.xz;
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(574f, 909f, 218f, 201f), vec4<f32>(-929f, -573f, 1769f, -605f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1508f, -1151f, -759f, 1000f)))))), 548f, Struct_3(vec2<u32>(~(~4294967295u), ~0u), Struct_1(~var_0.x, 1604f, -719f, ~_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xz), ~abs(1u)), select(func_4(any(vec2<bool>(false, true)), ~vec3<u32>(u_input.d, 0u, 1u), func_2(Struct_3(vec2<u32>(var_0.x, var_0.x), Struct_1(var_0.x, 438f, 1093f, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.a.x, 84557u, 4640u), vec3<i32>(u_input.b.x, 1i, 31120i)), u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 1i, 8588i, u_input.c), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, 37624i))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, var_0.x, 1u), vec4<u32>(var_0.x, u_input.a.x, 0u, 1u)), vec4<bool>(2083u == u_input.d, true, true, true)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1i, 0i), vec3<i32>(-28010i, u_input.c, u_input.c)), vec3<i32>(u_input.c, u_input.c, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, -1i), firstLeadingBit(vec3<i32>(1i, u_input.c, 1i))))), _wgslsmith_f_op_f32(sign(-510f)));
    var_0 = ~u_input.a.yx;
    return ~var_1.b.d;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<bool> {
    global0 = all(select(!vec3<bool>(all(vec4<bool>(false, true, false, true)), true, any(vec4<bool>(false, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(arg_2 < arg_0.c, true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true)));
    let var_0 = Struct_3(vec2<u32>(1u, u_input.a.x), func_5(_wgslsmith_div_vec4_f32(vec4<f32>(-712f, _wgslsmith_f_op_f32(ceil(-1042f)), arg_0.c, func_5(vec4<f32>(arg_0.c, arg_0.c, arg_2, 658f), arg_0.b, Struct_3(vec2<u32>(arg_0.e, 1u), Struct_1(arg_0.e, arg_0.b, arg_0.b, arg_0.e, arg_0.a), vec4<u32>(arg_0.e, u_input.a.x, 28717u, arg_0.e), vec3<i32>(arg_1, u_input.c, arg_1)), arg_2).b.c), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b + arg_0.c), _wgslsmith_f_op_f32(arg_2 * 470f), -107f, 506f)), arg_2, Struct_3(u_input.a.zy, Struct_1(arg_0.e, _wgslsmith_f_op_f32(arg_0.b + arg_0.c), _wgslsmith_div_f32(-1000f, -787f), u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(15999u, arg_0.d, u_input.a.x, 14233u), vec4<u32>(106079u, 6801u, 0u, 9185u)), abs(vec3<i32>(arg_1, arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b - 243f))) - _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(abs(-365f))))).b, vec4<u32>(arg_0.d, 1u, 1u ^ _wgslsmith_div_u32(~arg_0.e, 4294967295u), arg_0.e), -select(_wgslsmith_add_vec3_i32(vec3<i32>(16718i, arg_1, u_input.c), abs(vec3<i32>(2147483647i, arg_1, arg_1))), vec3<i32>(u_input.c, 2147483647i, arg_1), vec3<bool>(true, true, u_input.b.x >= u_input.b.x)));
    let var_1 = !(!vec4<bool>((u_input.d >> (15104u % 32u)) > func_1(), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), false, false));
    global0 = false;
    var var_2 = Struct_2(Struct_1(~(~(~25193u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -656f)), arg_2, ~(var_0.b.a & 49677u) ^ (var_0.c.x & var_0.b.a), u_input.a.x), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), 242f))), 764f), var_0.b);
    return select(var_1.wwy, select(var_1.yxz, select(vec3<bool>(var_1.x & var_1.x, true, true), select(select(var_1.zww, vec3<bool>(false, var_1.x, var_1.x), var_1.x), select(vec3<bool>(false, true, false), var_1.wzw, vec3<bool>(var_1.x, var_1.x, true)), var_1.x), vec3<bool>(true, all(vec4<bool>(var_1.x, var_1.x, true, false)), true)), select(vec3<bool>(true, true, all(vec2<bool>(var_1.x, var_1.x))), select(!var_1.zyz, select(vec3<bool>(var_1.x, true, false), var_1.zyx, vec3<bool>(true, var_1.x, var_1.x)), var_1.ywy), select(!var_1.yyw, vec3<bool>(var_1.x, true, false), !vec3<bool>(var_1.x, false, true)))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(func_1(), 1f, 1042f, ~abs(u_input.a.x), ~u_input.a.x), 5957i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1001f, -497f, -1000f, 146f)), _wgslsmith_f_op_f32(316f - 902f), func_5(vec4<f32>(467f, -316f, -305f, 150f), -2447f, Struct_3(vec2<u32>(u_input.a.x, u_input.d), Struct_1(u_input.a.x, -117f, 144f, u_input.a.x, u_input.d), vec4<u32>(0u, u_input.a.x, 26055u, 6348u), vec3<i32>(u_input.b.x, -3515i, -2147483647i)), -1222f), _wgslsmith_f_op_f32(floor(697f))).b.b)));
    let var_1 = Struct_3(~u_input.a.yz, Struct_1(~u_input.a.x, -193f, -1000f, 1u >> (~(~0u) % 32u), u_input.a.x), vec4<u32>(35444u, 13787u, 1u, abs(u_input.a.x)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, u_input.b.x), -2147483647i), 2147483647i), -4733i, -53565i));
    let var_2 = var_1.d;
    global0 = !(((_wgslsmith_f_op_f32(step(var_1.b.c, -869f)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f)) && any(var_0)) || false);
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-881f);
}


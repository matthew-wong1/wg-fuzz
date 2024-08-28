struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_1(firstTrailingBit(11153i), _wgslsmith_clamp_i32(firstLeadingBit(firstTrailingBit(i32(-1i) * -2147483647i)), u_input.b.x, 7575i), ~u_input.a.x, -1904f);
    let var_1 = var_0;
    let var_2 = ~firstLeadingBit(~4294967295u ^ _wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.c.zy)) >= _wgslsmith_div_u32(~4294967295u, u_input.c.x);
    let var_3 = Struct_1(i32(-1i) * -2147483647i, max(var_1.a, -2309i), u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, -922f) + _wgslsmith_f_op_f32(min(-824f, var_1.d)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(-var_0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-832f, var_0.d))))));
    let var_4 = reverseBits(select(-2147483647i ^ (~var_3.a >> ((var_0.c << (var_0.c % 32u)) % 32u)), abs(-_wgslsmith_sub_i32(var_3.a, 73885i)), true));
    return any(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a < var_1.a, var_2, false), vec3<bool>(all(vec4<bool>(false, var_2, var_2, var_2)), true, true), true), (_wgslsmith_f_op_f32(ceil(1521f)) <= 822f) && !(var_1.d == var_1.d)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = arg_1;
    let var_1 = min(countOneBits(arg_1.b), -2147483647i);
    let var_2 = Struct_1(_wgslsmith_mod_i32(-u_input.d.x, -select(-var_0.b, 70596i & arg_1.b, arg_2 || arg_2)), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_1.b, arg_1.b, var_0.b, u_input.b.x) << (u_input.a % vec4<u32>(32u)), ~vec4<i32>(var_0.a, -23272i, -1i, var_1), arg_0), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_1, 1i, 47071i, 0i)), ~(vec4<i32>(2147483647i, u_input.d.x, var_0.a, u_input.d.x) | vec4<i32>(38458i, -49573i, 0i, arg_1.b)))), 4294967295u, _wgslsmith_f_op_f32(-1750f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.d)) - _wgslsmith_f_op_f32(abs(arg_1.d))), arg_1.d)));
    return var_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> vec3<u32> {
    var var_0 = select(!vec4<bool>(_wgslsmith_clamp_u32(0u, 20138u, u_input.a.x) == arg_0.c, arg_3, (4294967295u <= arg_0.c) | (-231f < arg_0.d), true), !(!(!select(vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, arg_3, true), vec4<bool>(arg_3, arg_3, true, false)))), arg_0.c < 1u);
    var_0 = select(!select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.x < -1i, var_0.x, false, !var_0.x), !select(vec4<bool>(true, arg_3, arg_3, var_0.x), vec4<bool>(true, arg_3, var_0.x, false), arg_3)), vec4<bool>(true, any(!vec4<bool>(false, arg_3, arg_3, true)), true && !(!var_0.x), any(vec2<bool>(arg_3, var_0.x & false))), vec4<bool>(all(vec3<bool>(false & arg_3, true, false)), -175f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), true, -21200i == _wgslsmith_mod_i32(45561i, _wgslsmith_add_i32(arg_0.a, -2147483647i))));
    let var_1 = Struct_1(arg_1.x, _wgslsmith_dot_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, arg_0.b, -2147483647i, 6744i), vec4<i32>(-2113i, 2147483647i, u_input.b.x, arg_0.a))), abs(abs(vec4<i32>(8773i, -1i, arg_0.b, -2147483647i)))), ~(~u_input.c.x), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0.d)));
    var_0 = vec4<bool>(var_0.x, !(!(1u > var_1.c) || true), arg_3, !(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(max(arg_0.d, arg_0.d))) > _wgslsmith_f_op_f32(663f + _wgslsmith_f_op_f32(ceil(2213f)))));
    var var_2 = Struct_1(-26556i, arg_0.a, _wgslsmith_clamp_u32(4294967295u, arg_0.c, select(~(var_1.c | u_input.a.x), 53732u, any(vec3<bool>(true, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(sign(1336f)))) - var_1.d));
    return u_input.a.yxx;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = func_5(Struct_1(func_4(vec4<bool>(true, func_3(), true, true), Struct_1(u_input.d.x, u_input.d.x, u_input.c.x & 19802u, -331f), all(vec4<bool>(false, false, arg_0, true)) & true), 1i, ~_wgslsmith_mult_u32(0u, firstTrailingBit(65989u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f - _wgslsmith_f_op_f32(select(-195f, 283f, true))))), -vec3<i32>(_wgslsmith_clamp_i32(~8252i, -u_input.d.x, 2147483647i), -1i, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-919f, -194f)) + _wgslsmith_f_op_f32(sign(632f))))) - 145f), !(!(!arg_0) | false));
    return Struct_1(u_input.d.x, _wgslsmith_mod_i32(u_input.b.x | (_wgslsmith_clamp_i32(49837i, u_input.d.x, 2147483647i) | _wgslsmith_mult_i32(-1i, -3098i)), ~(u_input.d.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, -1i), vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, -59873i)))), _wgslsmith_dot_vec3_u32(~var_0, u_input.a.xzy), 1260f);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d, arg_0.d), vec2<f32>(arg_2.d, arg_2.d), true))) + vec2<f32>(_wgslsmith_f_op_f32(arg_3.d * arg_2.d), arg_0.d)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, 910f))));
    var var_1 = Struct_1(-24674i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -1i, -u_input.d.x, -5954i), vec4<i32>(-25088i, arg_0.a, 1i, 19952i) | select(vec4<i32>(arg_3.b, arg_2.b, -56707i, u_input.b.x), vec4<i32>(arg_2.b, arg_1, 2147483647i, arg_2.a), false)), 26166i), arg_0.c ^ firstLeadingBit(~abs(arg_3.c)), _wgslsmith_f_op_f32(max(1184f, _wgslsmith_f_op_f32(-arg_0.d))));
    var_1 = func_2(!all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = func_2(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-12303i, arg_2.a), u_input.b)) == min(arg_1, firstTrailingBit(~(-35067i))));
    var var_3 = select(vec4<bool>(1u >= func_2(true).c, !(_wgslsmith_mod_u32(64784u, arg_0.c) < ~16587u), _wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_1, var_1.b, var_2.a), vec3<i32>(1i, 20371i, 1i)), vec3<i32>(0i, var_1.b, 0i)) <= -1i, select(!(2147483647i > u_input.d.x), true, true)), vec4<bool>(true, func_3(), select(any(vec3<bool>(true, true, true)), firstTrailingBit(var_1.c) < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, 38574u, u_input.a.x, var_2.c), u_input.a), true), all(vec3<bool>(true, true, 0i >= arg_3.b))), vec4<bool>(all(vec3<bool>(any(vec2<bool>(false, true)), func_3(), func_3())), _wgslsmith_f_op_f32(func_2(false).d * _wgslsmith_f_op_f32(step(1000f, var_2.d))) >= func_2(all(vec2<bool>(true, false))).d, true, true));
    return func_2(var_3.x);
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    return ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yyz, _wgslsmith_clamp_vec3_u32(u_input.c, u_input.a.yzy, u_input.c), min(vec3<u32>(4294967295u, 19097u, 4294967295u), select(u_input.a.wxw, vec3<u32>(6964u, 4294967295u, arg_2.c), true))), u_input.a.wwx);
}

fn func_8(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f));
    var_0 = 949f;
    var var_1 = func_2(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3())));
    let var_2 = var_1.c;
    return _wgslsmith_div_vec4_u32(~countOneBits(~(u_input.a ^ u_input.a)), ~u_input.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = ~u_input.a;
    var_0 = func_8(_wgslsmith_add_vec3_u32(func_7(u_input.d, func_6(Struct_1(u_input.d.x, u_input.b.x, var_0.x, -687f), 0i, Struct_1(-1i, -35693i, 117u, -1282f), func_2(false)), Struct_1(func_4(vec4<bool>(arg_1, false, arg_1, false), Struct_1(u_input.d.x, -2147483647i, 15719u, 671f), true), -7264i, 1u, _wgslsmith_f_op_f32(arg_2 - arg_2)), (65176u << (u_input.a.x % 32u)) >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 13784u, 4294967295u, 75028u)) % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 1u, u_input.a.x) | arg_0.zww, func_5(Struct_1(u_input.b.x, 6978i, 8029u, arg_2), ~vec3<i32>(19717i, u_input.d.x, -2147483647i), _wgslsmith_f_op_f32(select(arg_2, 1696f, arg_1)), arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(select(-301f, arg_2, false)), -993f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-572f, arg_2, arg_2), vec3<f32>(-1788f, -118f, arg_2))))))));
    var_0 = vec4<u32>(~_wgslsmith_dot_vec4_u32(abs(select(u_input.a, vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), vec4<bool>(true, true, arg_1, false))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, var_0.x, var_0.x, arg_0.x), arg_0) << (countOneBits(u_input.a) % vec4<u32>(32u))), u_input.a.x, 1u, 20170u);
    return Struct_1(-16934i ^ countOneBits(select(0i, 1i, arg_1)), ~_wgslsmith_add_i32(u_input.d.x, _wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.d.x))), ~func_6(Struct_1(max(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(u_input.b.x, u_input.d.x), u_input.a.x, 1201f), 1i, func_6(Struct_1(0i, u_input.d.x, var_0.x, -1000f), abs(u_input.d.x), func_2(arg_1), Struct_1(-35407i, u_input.b.x, 24088u, 802f)), Struct_1(_wgslsmith_add_i32(2147483647i, -2080i), -2147483647i, func_2(true).c, 356f)).c, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~(~u_input.a)), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-115f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f * 289f) - _wgslsmith_f_op_f32(f32(-1f) * -1124f))))));
    var var_1 = countOneBits(firstTrailingBit(u_input.a.xyx));
    let var_2 = true;
    var_1 = firstLeadingBit(~u_input.a.xzz);
    var var_3 = var_0;
    let var_4 = vec3<bool>(false, var_2, true);
    let var_5 = -13037i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(~35498u, reverseBits(~var_3.c), ~(~76937u), ~(~var_1.x)), u_input.a), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-var_3.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(~var_5, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5, 58479i, -19413i, 1i), vec4<i32>(var_0.b, var_5, -1i, -2147483647i)), _wgslsmith_clamp_i32(u_input.d.x, -17687i, -17958i), select(u_input.b.x, 21053i, var_2)), max(~vec4<i32>(var_5, 1186i, var_3.a, var_3.b), min(vec4<i32>(var_5, var_3.a, 1i, var_0.b), vec4<i32>(-58827i, var_0.a, 6126i, var_3.b)))) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.b, -42687i, 20305i), vec4<i32>(1i, 1i, 2147483647i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_5, var_5, var_3.b, var_5), vec4<i32>(1i, -1i, var_5, -5666i))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_3.b, var_0.b, var_3.a), vec4<i32>(-2147483647i, -25059i, u_input.d.x, var_0.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_3.a, var_3.a, var_0.a), vec4<i32>(u_input.b.x, var_5, 1i, 0i))), vec4<i32>(var_3.a ^ -2147483647i, 11330i, -2147483647i, -var_5)), vec2<i32>(25271i, u_input.b.x), _wgslsmith_f_op_f32(-770f * var_3.d));
}


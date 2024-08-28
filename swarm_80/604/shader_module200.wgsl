struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(global1.a, 103f);
    var var_1 = global1.a.yy;
    var var_2 = Struct_2(var_0.b, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(904i, -2147483647i), 1i << (u_input.a % 32u)), min(~vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.d, -2147483647i) << (u_input.c.xz % vec2<u32>(32u)))), _wgslsmith_clamp_vec4_u32(u_input.c, ~vec4<u32>(u_input.c.x, u_input.b.x, u_input.e, global0.x), _wgslsmith_mod_vec4_u32(u_input.c, u_input.c) >> ((vec4<u32>(u_input.c.x, 7921u, global0.x, global0.x) & u_input.c) % vec4<u32>(32u)))), -409f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -576f))), !all(!var_0.a.zw) && global1.a.x, !var_0.a);
    var_2 = Struct_2(_wgslsmith_f_op_f32(-var_2.a), Struct_1(~var_2.b.a, ~u_input.c), var_2.e.x, true & var_1.x, select(!(!vec4<bool>(var_0.a.x, true, var_0.a.x, false)), !vec4<bool>(true, true, true, var_0.a.x), !((var_2.b.b.x ^ var_2.b.b.x) > 47771u)));
    var var_3 = vec3<i32>((firstTrailingBit(6496i & u_input.d) & 10331i) | ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.a.x, u_input.d, var_2.b.a.x, u_input.d), vec4<i32>(0i, u_input.d, 25265i, -47477i))), countOneBits(0i), _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.d >> (var_2.b.b.x % 32u), min(0i, 8709i)), i32(-1i) * -var_2.b.a.x));
    return vec3<bool>(false, !(!all(select(vec3<bool>(false, var_0.a.x, global1.a.x), var_0.a.xzx, var_1.x))), all(!(!select(global1.a, vec4<bool>(false, global1.a.x, true, false), false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    global0 = ~vec2<u32>(select(min(_wgslsmith_mult_u32(4294967295u, global0.x), ~2916u), 103047u | ~u_input.e, !all(arg_0.yy)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b.zz), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 84469u, 0u, u_input.c.x), vec4<u32>(20468u, global0.x, u_input.e, u_input.e))));
    global0 = ~select(abs(vec2<u32>(55388u, 4294967295u)), u_input.c.yw, func_3().x) >> (vec2<u32>(~u_input.a, 4294967295u) % vec2<u32>(32u));
    return u_input.d;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    global1 = Struct_3(arg_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.a, -645f)) - _wgslsmith_f_op_f32(floor(global1.b))))));
    let var_0 = Struct_3(select(!global1.a, !select(!arg_2.e, !arg_2.e, vec4<bool>(false, arg_2.c, true, false)), global1.a), _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-272f, arg_2.a))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-208f, arg_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(arg_2.a + global1.b);
    global1 = var_0;
    let var_2 = ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-5867i, func_4(func_3(), _wgslsmith_f_op_f32(-global1.b)), ~arg_2.b.a.x), ~func_4(select(arg_2.e.wyx, global1.a.yyy, global1.a.zxy), var_0.b));
    return Struct_3(select(vec4<bool>(arg_2.b.b.x != 51336u, true, arg_1, func_3().x), select(arg_2.e, global1.a, var_0.a.x), vec4<bool>(all(select(global1.a.yy, var_0.a.yw, global1.a.yx)), global1.a.x, arg_2.d, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), -584f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) - 682f)))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_2 {
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(8400u), 22869u), _wgslsmith_sub_vec2_u32(select(abs(vec2<u32>(2484u, 4294967295u) ^ vec2<u32>(arg_0.b.x, 4294967295u)), arg_3.yx, any(arg_2.a.ywz)), vec2<u32>(arg_3.x, min(4294967295u, ~u_input.b.x))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-904f * 1000f), Struct_1(select(vec2<i32>(~arg_0.a.x, ~u_input.d), abs(arg_0.a), vec2<bool>(false & arg_2.a.x, true)), u_input.c), arg_2.a.x, false, vec4<bool>(true, any(global1.a.xx), arg_2.a.x, !arg_1));
    global0 = countOneBits(vec2<u32>(1u, 1u));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) * _wgslsmith_div_f32(var_0.a, var_0.a)) * -2111f) - global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(190f, global1.b, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2479f * arg_2.b), arg_2.b)))), global1.a.x));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_mod_vec2_i32(-max(arg_0.a, arg_0.a), var_0.b.a), countOneBits(u_input.c)), false, _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(9759i, u_input.d) >> (countOneBits(var_0.b.b.x) % 32u)) <= max(-_wgslsmith_div_i32(arg_0.a.x, var_0.b.a.x), _wgslsmith_add_i32(-2147483647i, 0i)), global1.a);
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -815f), Struct_1(~(~(var_0.b.a | arg_0.a)), vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, 48284u)), _wgslsmith_dot_vec4_u32(arg_0.b, abs(vec4<u32>(var_0.b.b.x, 32773u, var_0.b.b.x, 46340u))), arg_3.x, 4294967295u)), false, true, !vec4<bool>(arg_2.a.x, true, true, all(global1.a.xwz) & arg_1));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = func_5(func_5(arg_0.b, global1.a.x, func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b, 646f, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-155f, 521f, global1.b) + vec3<f32>(-789f, arg_0.a, global1.b)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -210f, arg_1.x)), arg_0.c && false, arg_0).a.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -555f), Struct_1(arg_0.b.a, u_input.c), arg_1.x >= arg_0.a, false, !vec4<bool>(true, true, true, global1.a.x))), arg_0.b.b.xwx).b, global1.a.x == global1.a.x, func_2(vec3<f32>(-175f, arg_0.a, arg_0.a), arg_0.c, func_5(arg_0.b, !global1.a.x, func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, -959f, arg_1.x), vec3<f32>(arg_1.x, arg_0.a, arg_0.a))), any(global1.a), arg_0), vec3<u32>(0u, select(97497u, 1u, global1.a.x), arg_0.b.b.x))), u_input.c.xxz);
    global1 = Struct_3(select(vec4<bool>(!global1.a.x, global1.a.x, !(-420f >= arg_1.x), true), select(var_0.e, vec4<bool>(global1.a.x, var_0.e.x, func_5(arg_0.b, true, Struct_3(vec4<bool>(var_0.e.x, arg_0.e.x, true, true), arg_0.a), vec3<u32>(global0.x, 4294967295u, u_input.a)).e.x, arg_0.e.x | true), vec4<bool>(all(vec3<bool>(false, global1.a.x, arg_0.c)), var_0.c, true, global0.x == var_0.b.b.x)), func_2(vec3<f32>(global1.b, 199f, _wgslsmith_f_op_f32(-arg_0.a)), arg_0.b.a.x <= arg_0.b.a.x, Struct_2(_wgslsmith_f_op_f32(-213f * arg_0.a), Struct_1(var_0.b.a, arg_0.b.b), any(vec4<bool>(false, var_0.d, false, true)), true || global1.a.x, vec4<bool>(false, global1.a.x, true, true))).a), 513f);
    var_0 = arg_0;
    var var_1 = func_5(var_0.b, firstLeadingBit(0i) <= u_input.d, Struct_3(var_0.e, _wgslsmith_f_op_f32(max(1693f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), func_5(var_0.b, arg_0.c, Struct_3(vec4<bool>(false, true, false, var_0.c), 1506f), vec3<u32>(global0.x, 64509u, global0.x)).a, false))))), var_0.b.b.yxx).b;
    var var_2 = arg_0.b;
    return Struct_1(abs(var_1.a), ~((~var_0.b.b ^ vec4<u32>(2217u, u_input.c.x, 126039u, u_input.b.x)) | var_2.b));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(firstLeadingBit(select(_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.d, 1i), vec2<i32>(u_input.d, arg_1.a.x)), _wgslsmith_mult_vec2_i32(arg_1.a, arg_1.a)), select(vec2<i32>(arg_0.a.x, u_input.d), abs(arg_0.a), false || arg_2.a.x), true)), vec4<u32>((0u >> (~u_input.a % 32u)) & 1u, global0.x, min(_wgslsmith_clamp_u32(global0.x, 4294967295u, 0u) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 13816u), arg_0.b.zw), u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, 22117u) << (0u % 32u)));
    global0 = _wgslsmith_div_vec2_u32(arg_0.b.ww, ~arg_1.b.xy);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-945f + -2039f), 186f));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1999f), _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-217f, arg_2.b, var_1.x), vec3<f32>(-730f, -2061f, var_1.x)))), !(!arg_2.a.x), func_5(func_6(Struct_2(var_1.x, var_0, arg_3, false, vec4<bool>(arg_3, false, arg_3, arg_2.a.x)), vec2<f32>(global1.b, global1.b)), true, arg_2, vec3<u32>(0u, u_input.a, u_input.c.x))).b));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2158f))), global1.b, 2200f);
    return Struct_2(507f, arg_1, global1.a.x, true, global1.a);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec3<u32> {
    global1 = Struct_3(global1.a, global1.b);
    global0 = vec2<u32>(global0.x, _wgslsmith_dot_vec2_u32(~u_input.b.yz, select(abs(vec2<u32>(u_input.e, global0.x)) | u_input.b.yx, ~(~vec2<u32>(global0.x, 1u)), select(select(global1.a.xx, global1.a.yx, arg_1), select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(false, false), vec2<bool>(global1.a.x, global1.a.x)), true))));
    var var_0 = func_7(func_6(func_5(Struct_1(select(vec2<i32>(arg_0, u_input.d), vec2<i32>(15178i, u_input.d), vec2<bool>(global1.a.x, false)), ~u_input.c), global1.a.x, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1076f, 786f, 188f)), true, Struct_2(global1.b, Struct_1(vec2<i32>(0i, 2147483647i), u_input.c), arg_1, true, vec4<bool>(false, arg_1, global1.a.x, global1.a.x))), select(countOneBits(u_input.b), u_input.c.zxz, !global1.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1251f, global1.b) * vec2<f32>(581f, global1.b)) - vec2<f32>(global1.b, -751f)))), func_5(Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d, arg_0), min(vec2<i32>(1i, u_input.d), vec2<i32>(-12485i, u_input.d))), vec4<u32>(global0.x, 26003u, ~global0.x, 7255u | global0.x)), true || all(!global1.a.zz), func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b, 351f, -223f))), any(vec3<bool>(false, global1.a.x, arg_1)) | all(vec3<bool>(true, arg_1, global1.a.x)), Struct_2(_wgslsmith_f_op_f32(ceil(1081f)), func_5(Struct_1(vec2<i32>(u_input.d, arg_0), u_input.c), arg_1, Struct_3(global1.a, -947f), u_input.b).b, true, func_3().x, !global1.a)), u_input.c.xww).b, Struct_3(!global1.a, _wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(round(-129f)))), any(select(!select(global1.a, global1.a, arg_1), select(!vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(global1.a.x, false, arg_1, global1.a.x), global1.a), any(!global1.a.wx))));
    global1 = func_2(vec3<f32>(1608f, func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1421f, var_0.a, global1.b))))), !global1.a.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1579f), var_0.b, true | var_0.d, global1.a.x, func_7(var_0.b, Struct_1(var_0.b.a, vec4<u32>(u_input.a, global0.x, u_input.c.x, 1u)), Struct_3(global1.a, -231f), arg_1).e)).b, var_0.a), var_0.a > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(1000f * 1505f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + -379f) * _wgslsmith_f_op_f32(abs(var_0.a)))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a + -408f))), var_0.b, global1.a.x, true, func_7(func_5(var_0.b, var_0.b.a.x >= arg_0, func_2(vec3<f32>(1298f, 333f, -498f), false, Struct_2(global1.b, Struct_1(var_0.b.a, vec4<u32>(u_input.b.x, u_input.e, u_input.b.x, global0.x)), true, true, vec4<bool>(false, global1.a.x, true, global1.a.x))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_0.b.b.x, 1u), vec3<u32>(global0.x, global0.x, var_0.b.b.x))).b, Struct_1(abs(var_0.b.a), ~var_0.b.b), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -1145f, -1000f)), false, func_7(Struct_1(var_0.b.a, u_input.c), var_0.b, Struct_3(vec4<bool>(global1.a.x, true, var_0.d, global1.a.x), -1411f), global1.a.x)), func_2(vec3<f32>(global1.b, -1000f, global1.b), var_0.e.x, Struct_2(-529f, Struct_1(vec2<i32>(55622i, 0i), vec4<u32>(u_input.a, global0.x, global0.x, 53960u)), global1.a.x, false, vec4<bool>(arg_1, true, false, true))).a.x).e));
    global1 = func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), global1.b), global1.b, -662f))), arg_1, func_7(var_0.b, var_0.b, Struct_3(!func_2(vec3<f32>(global1.b, 1000f, -1504f), global1.a.x, Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.b.b), true, var_0.c, global1.a)).a, _wgslsmith_f_op_f32(-var_0.a)), true));
    return var_0.b.b.wzx;
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = min(arg_2, ~(-vec2<i32>(16561i, u_input.d)) >> (vec2<u32>(1u, ~_wgslsmith_mult_u32(9658u, 43585u)) % vec2<u32>(32u)));
    let var_1 = !(!select(func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(596f, arg_3.b, global1.b))), !arg_3.a.x, Struct_2(arg_3.b, Struct_1(arg_1.a, arg_1.b), global1.a.x, false, global1.a)).a.zx, global1.a.yy, false));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, 229f)))))))));
    var var_3 = arg_3;
    let var_4 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, u_input.d), arg_1.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, var_0.x, _wgslsmith_clamp_i32(var_0.x, 25630i, -16505i)), vec3<i32>(firstLeadingBit(0i), -112242i ^ arg_1.a.x, ~var_0.x)), -9565i));
    return arg_3;
}

fn func_9(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = func_5(func_7(func_7(func_5(Struct_1(vec2<i32>(arg_2.a.x, u_input.d), arg_2.b), global1.a.x, Struct_3(vec4<bool>(true, true, true, global1.a.x), -100f), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, global0.x, 0u), vec3<u32>(71221u, 37917u, 0u))).b, arg_2, arg_1, any(!global1.a.xw)).b, arg_2, arg_1, true).b, false, Struct_3(!select(global1.a, arg_1.a, true), -1432f), ~(~(~(vec3<u32>(u_input.a, 29600u, 4294967295u) | vec3<u32>(global0.x, u_input.e, arg_2.b.x)))));
    let var_1 = var_0.e.x;
    global0 = func_7(arg_2, func_7(Struct_1(max(select(vec2<i32>(u_input.d, var_0.b.a.x), vec2<i32>(-1i, 1i), arg_3.a.x), arg_2.a), vec4<u32>(var_0.b.b.x ^ 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.b.b.x), vec2<u32>(1u, 44617u)), u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 818u, global0.x), vec3<u32>(0u, 1u, 4294967295u)))), Struct_1(vec2<i32>(1i, reverseBits(21956i)), func_5(arg_2, arg_3.a.x, func_2(vec3<f32>(arg_1.b, -2590f, var_0.a), false, Struct_2(arg_3.b, var_0.b, global1.a.x, arg_3.a.x, arg_3.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.x, 4294967295u, 1u), vec3<u32>(u_input.a, 4294967295u, 4294967295u))).b.b), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 514f, 584f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -1209f, -1361f), vec3<f32>(-918f, arg_1.b, global1.b))), true, Struct_2(_wgslsmith_f_op_f32(-global1.b), func_7(arg_2, Struct_1(arg_2.a, u_input.c), Struct_3(arg_0, -765f), arg_3.a.x).b, true, true, global1.a)), func_8(vec3<u32>(arg_2.b.x, 60390u, 4294967295u >> (u_input.b.x % 32u)), func_5(Struct_1(var_0.b.a, vec4<u32>(var_0.b.b.x, global0.x, u_input.c.x, 6524u)), var_0.d, Struct_3(vec4<bool>(true, true, arg_1.a.x, arg_3.a.x), 281f), vec3<u32>(global0.x, global0.x, 26u)).b, ~(-vec2<i32>(u_input.d, 37583i)), Struct_3(vec4<bool>(arg_0.x, true, global1.a.x, var_0.c), _wgslsmith_div_f32(var_0.a, -184f))).a.x).b, arg_3, _wgslsmith_f_op_f32(-arg_1.b) >= _wgslsmith_f_op_f32(round(arg_1.b))).b.b.yy;
    var_0 = Struct_2(-722f, Struct_1(vec2<i32>(~(-43422i), 36202i), var_0.b.b), true, func_7(func_7(func_5(Struct_1(arg_2.a, vec4<u32>(u_input.b.x, 10003u, u_input.c.x, 1516u)), var_0.d, Struct_3(arg_1.a, arg_1.b), vec3<u32>(arg_2.b.x, 7371u, 1428u)).b, Struct_1(vec2<i32>(-1i, 61656i), vec4<u32>(var_0.b.b.x, u_input.a, 0u, global0.x)), arg_1, true).b, var_0.b, func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1992f, 1644f, -578f))), 1u >= arg_2.b.x, func_7(Struct_1(vec2<i32>(u_input.d, 2147483647i), arg_2.b), Struct_1(vec2<i32>(29356i, -2147483647i), vec4<u32>(16737u, 1u, u_input.a, 39338u)), Struct_3(global1.a, 1374f), arg_3.a.x)), global1.a.x).e.x && any(!func_8(u_input.b, Struct_1(arg_2.a, u_input.c), var_0.b.a, Struct_3(vec4<bool>(arg_1.a.x, arg_0.x, false, false), -131f)).a), vec4<bool>(false, func_3().x, arg_0.x, false));
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(func_1(15266i, select(arg_3.a.x, arg_0.x, true)).x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 61911u, global0.x), firstLeadingBit(vec4<u32>(arg_2.b.x, arg_2.b.x, var_0.b.b.x, 4294967295u))), var_0.b.b.x), var_0.b.b.wxy), ~(~(var_0.b.b.x | 1u)));
    return StorageBuffer(164f, ~abs(~vec4<u32>(global0.x, 4294967295u, arg_2.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(455f, arg_3.b)), ~arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_9(select(global1.a, select(select(select(global1.a, global1.a, global1.a), !vec4<bool>(global1.a.x, true, true, global1.a.x), global1.a.x), select(vec4<bool>(true, true, global1.a.x, global1.a.x), !vec4<bool>(false, global1.a.x, false, true), false), global1.a), !vec4<bool>(false, true, true, u_input.d <= 2147483647i)), func_8((func_1(u_input.d, global1.a.x) >> (_wgslsmith_div_vec3_u32(u_input.c.xwz, vec3<u32>(global0.x, 0u, 1u)) % vec3<u32>(32u))) >> (~u_input.b % vec3<u32>(32u)), func_5(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, 26242i)), u_input.c), false, Struct_3(global1.a, -105f), u_input.c.ywz).b, (~vec2<i32>(u_input.d, u_input.d) | min(vec2<i32>(4398i, u_input.d), vec2<i32>(u_input.d, u_input.d))) & -vec2<i32>(u_input.d, -1i), Struct_3(vec4<bool>(select(global1.a.x, global1.a.x, true), true, true, false && global1.a.x), _wgslsmith_f_op_f32(-575f * _wgslsmith_f_op_f32(-global1.b)))), func_7(Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -20876i), vec2<i32>(-29947i, 2147483647i), vec2<i32>(-19888i, 7070i)), ~vec2<i32>(u_input.d, u_input.d)), vec4<u32>(~global0.x, 1u, _wgslsmith_div_u32(global0.x, global0.x), 58668u)), Struct_1(~vec2<i32>(u_input.d, u_input.d) | _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -18141i), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c)), func_8(vec3<u32>(~0u, func_5(Struct_1(vec2<i32>(u_input.d, 2147483647i), vec4<u32>(global0.x, global0.x, 60197u, 1u)), global1.a.x, Struct_3(global1.a, global1.b), vec3<u32>(0u, 4294967295u, 64180u)).b.b.x, 1u), Struct_1(-vec2<i32>(u_input.d, -2147483647i), vec4<u32>(u_input.c.x, u_input.c.x, global0.x, u_input.a)), vec2<i32>(-57740i, -13345i), Struct_3(global1.a, _wgslsmith_f_op_f32(-1398f - global1.b))), global1.a.x).b, Struct_3(func_5(Struct_1(vec2<i32>(u_input.d, u_input.d) | vec2<i32>(1618i, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4385u, global0.x, 1u), u_input.c)), any(!vec2<bool>(global1.a.x, global1.a.x)), Struct_3(func_2(vec3<f32>(-1942f, -114f, global1.b), global1.a.x, Struct_2(global1.b, Struct_1(vec2<i32>(u_input.d, 1i), vec4<u32>(1u, 59728u, u_input.e, 31537u)), true, false, global1.a)).a, -655f), min(_wgslsmith_add_vec3_u32(u_input.b, u_input.c.yxy), func_1(-1i, true))).e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b)))));
}


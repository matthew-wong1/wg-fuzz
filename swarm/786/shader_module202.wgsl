struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(13158u, 74929u), 5657i, vec3<i32>(31809i, 2147483647i, -1i)), 1i, vec4<bool>(true, true, true, true), -1083f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = arg_2.b;
    let var_1 = Struct_2(global1.a, _wgslsmith_dot_vec2_i32(-(arg_1.c.a.c.xy | vec2<i32>(-2147483647i, 16792i)), vec2<i32>(~arg_1.b.a.c.x, 2147483647i)) << (1u % 32u), global1.c, _wgslsmith_f_op_f32(-1090f * arg_2.e.e.x));
    let var_2 = 37038i;
    var var_3 = !(!var_1.c.xz);
    var_3 = arg_1.b.c.wy;
    return ~(~arg_1.b.a.a);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-774f, global1.d), _wgslsmith_f_op_f32(select(-2222f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.d)))), all(vec3<bool>(!global1.c.x, global1.c.x & false, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + -1353f))));
    let var_1 = Struct_4(39355u, Struct_2(Struct_1(abs(vec2<u32>(4885u, u_input.c)) ^ func_3(88639i, Struct_4(1u, Struct_2(global1.a, u_input.b, vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), -1236f), Struct_2(Struct_1(global1.a.a, global1.b, u_input.e.xxx), global1.b, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), var_0.x), vec4<u32>(global1.a.a.x, u_input.c, 28249u, 61348u), var_0.zy), Struct_5(global1.a.a, vec3<f32>(var_0.x, global1.d, -1326f), u_input.e.x, Struct_2(Struct_1(global1.a.a, u_input.e.x, vec3<i32>(u_input.e.x, -27500i, 30695i)), -1i, global1.c, -191f), Struct_4(66873u, Struct_2(global1.a, u_input.e.x, vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), global1.d), Struct_2(Struct_1(vec2<u32>(28488u, 0u), global1.a.b, vec3<i32>(0i, u_input.b, global1.b)), global1.b, vec4<bool>(true, true, true, true), -419f), vec4<u32>(1u, 4294967295u, 73511u, u_input.a), vec2<f32>(global1.d, global1.d)))), ~(-u_input.b), countOneBits(min(global1.a.c, global1.a.c))), _wgslsmith_add_i32(-9481i, abs(13528i)), global1.c, global1.d), Struct_2(Struct_1(vec2<u32>(41917u, global1.a.a.x) | vec2<u32>(1u, 1u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, global1.a.c.x, 0i), u_input.e.yxz), _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b, -1i, global1.a.c.x), global1.a.c, global1.c.ywy), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -5901i, 2147483647i), vec3<i32>(u_input.b, u_input.e.x, 1i)))), 0i >> (~firstTrailingBit(3212u) % 32u), global1.c, 1000f), vec4<u32>(53634u, ~(~594u), firstTrailingBit(abs(u_input.c)), 17919u), _wgslsmith_div_vec2_f32(var_0.zz, _wgslsmith_f_op_vec2_f32(step(var_0.zy, var_0.xx))));
    global1 = Struct_2(Struct_1(~vec2<u32>(68609u, 8236u) << (var_1.c.a.a % vec2<u32>(32u)), 0i, vec3<i32>(_wgslsmith_mult_i32(10793i, 45700i) >> ((1u << (1u % 32u)) % 32u), -2147483647i, select(global1.a.c.x, _wgslsmith_mod_i32(var_1.b.b, 1i), global1.c.x || true))), u_input.e.x, var_1.c.c, var_0.x);
    var var_2 = var_1.c;
    var var_3 = var_2.a.a.x;
    return global1.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(func_2(), 0i, !select(global1.c, !select(vec4<bool>(arg_1.c.c.x, false, arg_1.b.c.x, global1.c.x), vec4<bool>(global1.c.x, false, arg_1.b.c.x, global1.c.x), false), arg_1.b.c), -540f);
    global1 = var_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-global1.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), 1000f), _wgslsmith_div_f32(arg_1.e.x, arg_1.e.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(151f, _wgslsmith_f_op_f32(var_0.d * 1131f), -673f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), 474f, _wgslsmith_f_op_f32(var_0.d * -816f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -821f, -547f) * vec3<f32>(var_0.d, arg_1.c.d, -1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-601f, 456f, arg_1.b.d), vec3<f32>(var_0.d, global1.d, 1350f))))));
    var var_2 = func_2();
    let var_3 = arg_0.a.c.yx;
    return Struct_3(func_2());
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = select(vec3<bool>(true & !(u_input.c <= global1.a.a.x), global1.c.x, any(vec2<bool>(true, true))), global1.c.zzy, arg_0);
    global0 = firstLeadingBit(u_input.c) == 46510u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1565f, global1.d, global1.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-889f, -1769f, global1.d)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global1.d, -831f))), vec3<bool>(arg_0, arg_0, false))))));
    var_0 = global1.c.wyy;
    var var_2 = all(select(select(global1.c.wz, !global1.c.yz, vec2<bool>(any(vec4<bool>(false, true, var_0.x, arg_0)), !arg_0)), global1.c.yy, var_0.zx));
    return arg_0 == (func_2().a.x == ~u_input.c);
}

fn func_1() -> Struct_2 {
    global0 = func_5(true, func_4(Struct_3(func_2()), Struct_4(global1.a.a.x, Struct_2(func_2(), firstTrailingBit(global1.b), select(global1.c, global1.c, global1.c.x), 1f), Struct_2(func_2(), global1.a.c.x | u_input.e.x, !vec4<bool>(false, global1.c.x, global1.c.x, true), -1404f), ~vec4<u32>(1u, global1.a.a.x, 1u, u_input.d), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1147f, 431f)))))), Struct_1(_wgslsmith_mult_vec2_u32(func_3(global1.a.b, Struct_4(u_input.a, Struct_2(global1.a, 1i, vec4<bool>(false, global1.c.x, global1.c.x, false), global1.d), Struct_2(Struct_1(global1.a.a, -3299i, u_input.e.yxx), -26991i, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true), -926f), vec4<u32>(u_input.c, 0u, 102882u, global1.a.a.x), vec2<f32>(1575f, global1.d)), Struct_5(vec2<u32>(88976u, 33763u), vec3<f32>(-253f, -1231f, 427f), u_input.b, Struct_2(Struct_1(global1.a.a, 24174i, vec3<i32>(u_input.e.x, u_input.b, global1.a.c.x)), u_input.b, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), global1.d), Struct_4(39166u, Struct_2(global1.a, -1i, vec4<bool>(true, global1.c.x, true, global1.c.x), 2117f), Struct_2(Struct_1(global1.a.a, u_input.b, vec3<i32>(2147483647i, -12666i, global1.a.b)), 48696i, vec4<bool>(false, false, global1.c.x, true), 1174f), vec4<u32>(u_input.c, u_input.d, global1.a.a.x, global1.a.a.x), vec2<f32>(global1.d, global1.d)))), vec2<u32>(global1.a.a.x, 4294967295u)), global1.b, _wgslsmith_div_vec3_i32(global1.a.c, -vec3<i32>(u_input.b, 0i, 10496i))), Struct_3(Struct_1(~vec2<u32>(global1.a.a.x, u_input.a), u_input.e.x, global1.a.c))));
    global0 = any(vec2<bool>(_wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(f32(-1f) * -932f)) != -1304f, ~u_input.c >= _wgslsmith_dot_vec4_u32(select(vec4<u32>(54913u, 1u, 0u, u_input.c), vec4<u32>(global1.a.a.x, 0u, 1u, u_input.a), global1.c.x), vec4<u32>(0u, global1.a.a.x, u_input.a, 0u) << (vec4<u32>(2550u, 9961u, 13491u, 4294967295u) % vec4<u32>(32u)))));
    var var_0 = max(global1.a.a.x, _wgslsmith_mult_u32(0u, ~21932u));
    global1 = Struct_2(func_4(Struct_3(Struct_1(global1.a.a, 1i, func_4(Struct_3(Struct_1(global1.a.a, u_input.e.x, vec3<i32>(1i, 31502i, u_input.b))), Struct_4(u_input.a, Struct_2(Struct_1(vec2<u32>(43151u, u_input.c), global1.a.c.x, vec3<i32>(u_input.e.x, 1i, u_input.e.x)), global1.a.c.x, vec4<bool>(global1.c.x, global1.c.x, true, true), 1599f), Struct_2(Struct_1(global1.a.a, -35763i, u_input.e.wwy), u_input.b, vec4<bool>(false, false, true, global1.c.x), -605f), vec4<u32>(4294967295u, 1u, u_input.d, u_input.d), vec2<f32>(-1068f, 3029f)), Struct_1(vec2<u32>(u_input.c, global1.a.a.x), global1.a.b, vec3<i32>(-49120i, 787i, u_input.e.x)), Struct_3(Struct_1(global1.a.a, 1i, vec3<i32>(global1.a.b, u_input.b, 0i)))).a.c)), Struct_4(1u, Struct_2(func_2(), 1i, select(global1.c, global1.c, vec4<bool>(false, false, true, global1.c.x)), 481f), Struct_2(Struct_1(global1.a.a, global1.a.c.x, global1.a.c), u_input.e.x, vec4<bool>(global1.c.x, false, false, global1.c.x), _wgslsmith_f_op_f32(abs(192f))), _wgslsmith_div_vec4_u32(~vec4<u32>(30298u, 1322u, 88567u, 92549u), vec4<u32>(4294967295u, global1.a.a.x, 35809u, u_input.a)), vec2<f32>(global1.d, -104f)), global1.a, Struct_3(Struct_1(global1.a.a, ~(-45332i), vec3<i32>(52852i, -32352i, u_input.b)))).a, -1i, select(global1.c, select(select(select(global1.c, vec4<bool>(false, global1.c.x, false, global1.c.x), global1.c), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), !global1.c.x), !select(global1.c, global1.c, global1.c.x), !select(global1.c, vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x), global1.c)), global1.c.x), global1.d);
    let var_1 = Struct_2(func_4(func_4(func_4(func_4(Struct_3(global1.a), Struct_4(global1.a.a.x, Struct_2(Struct_1(vec2<u32>(45276u, u_input.a), global1.b, vec3<i32>(-1i, global1.b, -6610i)), 0i, global1.c, 778f), Struct_2(Struct_1(vec2<u32>(global1.a.a.x, u_input.c), u_input.e.x, vec3<i32>(global1.a.c.x, 0i, 29995i)), u_input.b, vec4<bool>(true, false, true, global1.c.x), global1.d), vec4<u32>(49268u, 0u, u_input.d, u_input.c), vec2<f32>(-1409f, global1.d)), Struct_1(global1.a.a, -1i, u_input.e.yzy), Struct_3(Struct_1(global1.a.a, 7998i, u_input.e.yyx))), Struct_4(4294967295u, Struct_2(global1.a, global1.b, global1.c, global1.d), Struct_2(Struct_1(vec2<u32>(global1.a.a.x, 4294967295u), global1.b, vec3<i32>(global1.a.c.x, u_input.b, global1.b)), u_input.b, global1.c, -2295f), vec4<u32>(global1.a.a.x, global1.a.a.x, 12445u, 0u), vec2<f32>(global1.d, 709f)), global1.a, Struct_3(Struct_1(vec2<u32>(33059u, u_input.a), u_input.e.x, u_input.e.xxx))), Struct_4(global1.a.a.x, Struct_2(global1.a, 28612i, vec4<bool>(false, false, true, global1.c.x), -199f), Struct_2(global1.a, u_input.e.x, vec4<bool>(false, false, global1.c.x, global1.c.x), -1261f), vec4<u32>(global1.a.a.x, 32890u, u_input.a, u_input.d), vec2<f32>(538f, global1.d)), Struct_1(vec2<u32>(global1.a.a.x, u_input.a) << (global1.a.a % vec2<u32>(32u)), 0i, firstTrailingBit(u_input.e.xxy)), Struct_3(Struct_1(global1.a.a, u_input.b, vec3<i32>(35895i, 11769i, 4630i)))), Struct_4(4294967295u, Struct_2(func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b, 47463i, u_input.b, 1i), vec4<i32>(-22922i, -6361i, 0i, u_input.b)), global1.c, -430f), Struct_2(func_2(), ~(-1i), select(vec4<bool>(false, global1.c.x, false, false), global1.c, global1.c.x), _wgslsmith_f_op_f32(trunc(-735f))), vec4<u32>(_wgslsmith_div_u32(14678u, 34442u), ~84733u, countOneBits(global1.a.a.x), 4716u << (1u % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, 1871f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, -238f) * vec2<f32>(118f, 1000f)))), func_2(), func_4(Struct_3(global1.a), Struct_4(abs(1u), Struct_2(global1.a, -2147483647i, global1.c, -361f), Struct_2(Struct_1(global1.a.a, 0i, vec3<i32>(56i, 16643i, -1i)), global1.a.b, global1.c, 705f), vec4<u32>(u_input.d, 21438u, global1.a.a.x, 10811u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, 118f))), global1.a, Struct_3(func_4(Struct_3(global1.a), Struct_4(43366u, Struct_2(global1.a, 1i, global1.c, global1.d), Struct_2(global1.a, global1.a.c.x, vec4<bool>(false, true, true, global1.c.x), global1.d), vec4<u32>(0u, 0u, 0u, 1u), vec2<f32>(1644f, global1.d)), Struct_1(vec2<u32>(1u, global1.a.a.x), 36894i, u_input.e.wxw), Struct_3(global1.a)).a))).a, -func_2().c.x, vec4<bool>(global1.d > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(2196f + -169f))), true, !all(!global1.c), global1.c.x), -850f);
    return Struct_2(func_4(Struct_3(Struct_1(~global1.a.a, 1i, vec3<i32>(49584i, global1.a.b, -2147483647i))), Struct_4(12057u, var_1, Struct_2(func_4(Struct_3(Struct_1(vec2<u32>(var_1.a.a.x, global1.a.a.x), u_input.e.x, var_1.a.c)), Struct_4(39232u, Struct_2(global1.a, var_1.a.c.x, var_1.c, -605f), var_1, vec4<u32>(global1.a.a.x, var_1.a.a.x, 0u, u_input.c), vec2<f32>(global1.d, global1.d)), global1.a, Struct_3(Struct_1(vec2<u32>(0u, 1u), u_input.b, var_1.a.c))).a, global1.a.c.x | u_input.b, vec4<bool>(true, true, global1.c.x, false), _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.a.a.x, 23890u, 25187u), vec4<u32>(1u, var_1.a.a.x, 4294967295u, 34834u), countOneBits(vec4<u32>(u_input.a, var_1.a.a.x, 0u, 1u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, global1.d))), Struct_1(func_4(Struct_3(Struct_1(vec2<u32>(global1.a.a.x, 17799u), u_input.e.x, vec3<i32>(43669i, 27027i, global1.b))), Struct_4(85321u, Struct_2(Struct_1(vec2<u32>(global1.a.a.x, 0u), var_1.a.b, vec3<i32>(13956i, -22725i, u_input.e.x)), var_1.b, global1.c, -612f), Struct_2(var_1.a, var_1.a.c.x, global1.c, var_1.d), vec4<u32>(var_1.a.a.x, 40448u, global1.a.a.x, 1u), vec2<f32>(-821f, -1194f)), var_1.a, Struct_3(var_1.a)).a.a, firstTrailingBit(u_input.b), vec3<i32>(global1.a.c.x, -1i, ~global1.a.c.x)), func_4(func_4(Struct_3(global1.a), Struct_4(18207u, Struct_2(Struct_1(var_1.a.a, 2147483647i, var_1.a.c), 10274i, var_1.c, 191f), Struct_2(Struct_1(global1.a.a, u_input.e.x, var_1.a.c), 2147483647i, vec4<bool>(global1.c.x, global1.c.x, false, false), 1385f), vec4<u32>(var_1.a.a.x, var_1.a.a.x, 1u, 4294967295u), vec2<f32>(-172f, global1.d)), Struct_1(global1.a.a, var_1.a.b, vec3<i32>(global1.b, var_1.b, u_input.b)), func_4(Struct_3(var_1.a), Struct_4(0u, var_1, var_1, vec4<u32>(global1.a.a.x, global1.a.a.x, 62630u, 42688u), vec2<f32>(global1.d, global1.d)), Struct_1(global1.a.a, 19106i, u_input.e.zyy), Struct_3(Struct_1(var_1.a.a, var_1.a.c.x, var_1.a.c)))), Struct_4(global1.a.a.x & 6877u, var_1, var_1, ~vec4<u32>(var_1.a.a.x, 1u, 100131u, u_input.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(110f, 1349f)))), Struct_1(vec2<u32>(1u, 64185u), 0i ^ u_input.b, countOneBits(vec3<i32>(11495i, -37754i, global1.a.c.x))), func_4(Struct_3(var_1.a), Struct_4(22551u, var_1, Struct_2(Struct_1(var_1.a.a, u_input.b, vec3<i32>(-2147483647i, 0i, 2147483647i)), var_1.a.b, vec4<bool>(true, var_1.c.x, var_1.c.x, global1.c.x), 693f), vec4<u32>(global1.a.a.x, var_1.a.a.x, 1u, 4294967295u), vec2<f32>(var_1.d, var_1.d)), Struct_1(var_1.a.a, -16014i, vec3<i32>(-2147483647i, 42540i, u_input.e.x)), Struct_3(Struct_1(var_1.a.a, var_1.b, vec3<i32>(-2147483647i, 15926i, global1.a.c.x)))))).a, global1.b, vec4<bool>(!(_wgslsmith_f_op_f32(-714f * var_1.d) < _wgslsmith_f_op_f32(abs(1375f))), var_1.c.x, false, true), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(global1.a.a, _wgslsmith_clamp_i32(~u_input.b, 1i, -76856i >> ((global1.a.a.x << (59261u % 32u)) % 32u)), u_input.e.zyw));
    let var_1 = 4294967295u;
    global1 = func_1();
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2560f, global1.d)) - _wgslsmith_f_op_f32(ceil(-1142f))), 1311f)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d)))));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(global1.b | u_input.e.x, -var_0.a.c.x, global1.a.c.x)), _wgslsmith_clamp_vec3_i32(max(_wgslsmith_sub_vec3_i32(global1.a.c, var_0.a.c), -u_input.e.zzy), vec3<i32>(0i, func_4(var_0, Struct_4(4294967295u, Struct_2(global1.a, global1.a.b, vec4<bool>(global1.c.x, var_2, true, false), 1600f), Struct_2(Struct_1(vec2<u32>(43024u, var_1), var_0.a.c.x, var_0.a.c), global1.a.b, global1.c, 217f), vec4<u32>(1u, 45377u, 0u, 1u), vec2<f32>(global1.d, global1.d)), Struct_1(global1.a.a, global1.a.b, u_input.e.zww), var_0).a.b, var_0.a.c.x), vec3<i32>(min(global1.b, 16540i), 0i, 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, 677f, global1.d, 839f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(309f, global1.d, global1.d, -2380f)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.d, global1.d, 250f, -113f))))), _wgslsmith_f_op_f32(-1142f * 424f));
}


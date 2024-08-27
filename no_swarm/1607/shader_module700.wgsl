struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = arg_1.e.b.yxy;
    var_0 = vec3<u32>(reverseBits(~_wgslsmith_sub_u32(0u << (arg_1.e.b.x % 32u), 1u)), ~(~u_input.e.x), u_input.e.x);
    let var_1 = Struct_2(select(select(arg_1.e.a, vec4<bool>(true, arg_1.e.a.x, u_input.e.x >= arg_1.e.b.x, any(arg_1.e.a.xy)), true && (arg_1.e.a.x & true)), arg_1.e.a, true), arg_1.e.b, 1f);
    let var_2 = Struct_1(firstTrailingBit(vec3<i32>(-1i, -4055i, arg_1.c.a.x)));
    global0 = 27964u;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_1.c, -308f, var_1.c) * vec4<f32>(609f, -434f, -1861f, 525f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_1.e.c, var_1.c, arg_0))), vec4<f32>(var_1.c, var_1.c, -1201f, 1647f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, var_1.c, var_1.c, 712f))), all(vec2<bool>(false, !var_1.a.x))))));
}

fn func_2() -> Struct_1 {
    let var_0 = min(u_input.c << (firstTrailingBit(~1u) % 32u), abs(2147483647i)) < 2147483647i;
    global0 = _wgslsmith_add_u32(~4294967295u, 29690u);
    let var_1 = !(abs(abs(u_input.c)) >= 16762i);
    let var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(541f, Struct_3(Struct_1(vec3<i32>(-2147483647i, 52360i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_1(vec3<i32>(2147483647i, 41755i, u_input.c)), -vec3<i32>(-86580i, 1i, 62592i), Struct_2(vec4<bool>(false, true, false, var_0), vec4<u32>(u_input.a.x, 20010u, 1u, 14389u), 415f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-817f, 911f, var_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(591f, 361f)))), _wgslsmith_f_op_f32(max(1f, -594f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-1152f, Struct_3(Struct_1(vec3<i32>(11431i, -11100i, u_input.c)), vec3<i32>(u_input.c, 1i, -1i), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_2(vec4<bool>(var_1, var_1, var_0, false), vec4<u32>(14691u, u_input.e.x, 0u, 11122u), -1148f)))).x))));
    return Struct_1(abs(vec3<i32>(-1i, ~(-6632i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-3190i, 1i)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = func_2();
    global0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1, abs(abs(~4294967295u))), ~select(31152u << (firstTrailingBit(49484u) % 32u), ~u_input.b.x, true));
    let var_1 = 0i;
    let var_2 = Struct_3(var_0, var_0.a, func_2(), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(0i, 0i, 1i) | var_0.a), var_0.a, _wgslsmith_mult_vec3_i32(max(vec3<i32>(var_1, var_1, 2147483647i), var_0.a), var_0.a << (u_input.d % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_mult_i32(max(-35876i, var_0.a.x), -21366i), -var_0.a.x, -1i)), Struct_2(!vec4<bool>(true, any(arg_0), !arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(u_input.d.x, u_input.e.x, 42060u)), 4294967295u, countOneBits(~u_input.a.x), ~(4294967295u | arg_1)), 1f));
    global0 = ~(~19687u) >> (u_input.e.x % 32u);
    return var_2.e;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_dot_vec2_u32(arg_1.b.wy, u_input.e);
    var var_0 = Struct_3(Struct_1(-firstTrailingBit(arg_0.ywz) & vec3<i32>(~2147483647i, firstTrailingBit(u_input.c), u_input.c)), max(~_wgslsmith_mult_vec3_i32(vec3<i32>(5480i, 0i, -51022i), -vec3<i32>(-1i, 4438i, 0i)), ~arg_0.xxy), arg_3, func_2().a, func_1(!(!vec2<bool>(true, arg_1.a.x)), _wgslsmith_dot_vec3_u32(abs(arg_1.b.zxx), u_input.b)));
    global0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, ~(arg_1.b.yww ^ vec3<u32>(4294967295u, var_0.e.b.x, u_input.a.x))), max(~(~arg_1.b.xwx), ~_wgslsmith_mult_vec3_u32(u_input.b, u_input.b)));
    let var_1 = 65304u;
    global0 = ~(~(~arg_2));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = ~arg_2.b.x;
    global0 = _wgslsmith_dot_vec2_u32(arg_2.b.xx & ~u_input.d.zy, ~(~countOneBits(vec2<u32>(var_0, var_0)))) << (_wgslsmith_sub_u32(~u_input.d.x | arg_2.b.x, min(~u_input.d.x, 32797u ^ select(4294967295u, arg_2.b.x, arg_2.a.x))) % 32u);
    global0 = max(firstLeadingBit(1u), 26740u);
    var var_1 = vec4<bool>(true, arg_2.a.x, (-min(arg_1, 38260i) > arg_1) != any(select(func_1(vec2<bool>(arg_2.a.x, false), 1u).a, !vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), false)), all(vec2<bool>(!any(vec2<bool>(arg_2.a.x, true)), !(arg_2.a.x || true))));
    let var_2 = arg_2.c;
    return Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(arg_0.a, ~arg_0.a)), vec3<i32>(-2147483647i, -1i, -firstLeadingBit(-8484i)), func_4(reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, u_input.c, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_1, 2147483647i, arg_1, 2147483647i), vec4<i32>(arg_1, arg_1, 2147483647i, arg_1))), func_1(select(vec2<bool>(false, true), select(var_1.xx, var_1.zz, arg_2.a.x), !var_1.xx), _wgslsmith_sub_u32(2404u, ~u_input.a.x)), u_input.e.x, arg_0), select(vec3<i32>(arg_0.a.x, _wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(arg_1, arg_1, arg_0.a.x)), reverseBits(-5408i)), vec3<i32>(_wgslsmith_div_i32(u_input.c, _wgslsmith_clamp_i32(-1i, arg_0.a.x, arg_1)), -(~u_input.c), arg_0.a.x), arg_2.a.zxw), Struct_2(!func_1(vec2<bool>(false, var_1.x), func_1(vec2<bool>(var_1.x, var_1.x), 0u).b.x).a, arg_2.b, _wgslsmith_div_f32(2539f, 108f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.x;
    var var_0 = ~(vec3<i32>(1i ^ u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(u_input.c, -2147483647i)), u_input.c) | abs(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.c, -15710i, u_input.c)), vec3<i32>(-1i, u_input.c, 1i) << (vec3<u32>(u_input.d.x, u_input.a.x, 1u) % vec3<u32>(32u)))));
    let var_1 = func_5(func_4(abs(abs(vec4<i32>(0i, -37829i, var_0.x, u_input.c) | vec4<i32>(0i, -2147483647i, var_0.x, var_0.x))), func_1(vec2<bool>(true, true), u_input.e.x), ~81677u, func_2()), 2147483647i, Struct_2(vec4<bool>(true, !select(true, true, false), false, true), vec4<u32>(max(~1u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(38996u, 0u, u_input.b.x, u_input.d.x), vec4<u32>(4294967295u, 0u, u_input.b.x, 0u)) ^ abs(u_input.e.x), 82620u, ~u_input.a.x), _wgslsmith_f_op_f32(244f - -936f)));
    var var_2 = func_5(var_1.a, 9152i, var_1.e).e.b.x;
    var var_3 = 2159f;
    var_3 = var_1.e.c;
    var var_4 = !var_1.e.a;
    var var_5 = var_1.e.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -vec2<i32>(0i, _wgslsmith_add_i32(-u_input.c, 16669i)), vec2<u32>(abs((u_input.d.x | 67138u) >> (var_1.e.b.x % 32u)), 0u), vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(var_1.c.a.x, i32(-1i) * -6908i)), var_1.d.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.e.b, var_1.e.b), func_5(Struct_1(var_1.c.a), u_input.c, Struct_2(vec4<bool>(false, var_4.x, false, false), var_1.e.b, -1198f)).e.b) % 32u)));
}


struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(Struct_2(true == (true & all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f * 325f))), vec3<bool>(true, true, true), ~(~0u & _wgslsmith_mod_u32(global1.x, u_input.a.x)), max(vec3<u32>(1u, 4294967295u, 1u), global1.zzy)), ~(u_input.b & vec3<i32>(u_input.c.x, 53319i, u_input.c.x)), Struct_1(~_wgslsmith_sub_u32(min(global1.x, global1.x), _wgslsmith_mod_u32(global1.x, global1.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-397f, var_0.a.b, var_0.a.c.x)))))) * var_0.a.b), Struct_2(countOneBits(u_input.a.x) >= global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(911f)) - -148f))), vec3<bool>(!var_0.a.c.x & true, any(var_0.a.c) & (false & var_0.a.a), !(var_0.a.c.x || var_0.a.c.x)), 4294967295u, abs(reverseBits(var_0.a.e))), Struct_1(global1.x));
    var var_2 = var_0.a.c.yz;
    var_2 = !(!vec2<bool>(false, var_2.x));
    let var_3 = var_0.b.x;
    return ~(~_wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(firstLeadingBit(0u), 1u)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_3(593f, Struct_2(all(!vec4<bool>(true, false, arg_0, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1580f * -1000f), _wgslsmith_f_op_f32(floor(-1833f)), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-188f)))), vec3<bool>(!(!arg_0), false, arg_0), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) & u_input.a.x), vec3<u32>(~55042u, ~u_input.a.x, ~1u) << (vec3<u32>(1u, _wgslsmith_mod_u32(global1.x, 12597u), 0u) % vec3<u32>(32u))), Struct_1(countOneBits(~func_3())));
    var_0 = Struct_3(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(var_0.a, var_0.b.b))))), var_0.b, var_0.c);
    var_0 = Struct_3(327f, var_0.b, Struct_1(22820u));
    return -reverseBits(2147483647i);
}

fn func_2() -> bool {
    let var_0 = true;
    let var_1 = ~vec4<i32>(-13587i, 37400i, _wgslsmith_mod_i32(-(u_input.b.x ^ -22439i), _wgslsmith_sub_i32(1i, -22154i)), u_input.c.x << (global1.x % 32u));
    let var_2 = _wgslsmith_mod_i32(func_4(0u >= func_3(), var_1.xy), countOneBits(4238i)) ^ abs(2051i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * -794f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-952f))))), any(vec3<bool>(var_0, var_0, var_0)))));
    var_3 = _wgslsmith_f_op_f32(max(1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1588f - -1000f), -266f))))));
    return any(!(!vec4<bool>(true, all(vec3<bool>(true, true, true)), false, true)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_0.e.x);
    let var_1 = -_wgslsmith_mod_i32(u_input.b.x, u_input.c.x);
    let var_2 = vec2<i32>(countOneBits(11664i), max(u_input.c.x, abs(0i)));
    var_0 = Struct_1(11460u);
    global0 = -259f;
    return Struct_1(func_3());
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1531f, _wgslsmith_div_f32(-1157f, 1083f)))), 1058f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-846f, _wgslsmith_f_op_f32(862f * -152f)))))));
    let var_0 = vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(u_input.b), select(vec3<i32>(-1i, 1i, u_input.d), u_input.b, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(-14528i, u_input.b.x, 0i, 0i) | vec4<i32>(-1i, 0i, u_input.d, 5191i), vec4<i32>(8793i, u_input.b.x, 2147483647i, u_input.b.x))), _wgslsmith_div_i32(-u_input.d, -3110i), ~((~u_input.b.x << (global1.x % 32u)) ^ u_input.c.x), 59848i ^ u_input.c.x);
    let var_1 = 164f;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -1689f, 437f, 213f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 120f, -1162f) + vec4<f32>(362f, var_1, 1398f, var_1)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(604f, var_1, -1177f, 380f), vec4<f32>(944f, 568f, -744f, var_1), vec4<bool>(true, false, true, true))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, 2641f, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(300f, 929f, -1214f, 1634f) + vec4<f32>(var_1, var_1, 797f, var_1)), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 1000f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, var_1, var_1)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, var_1, var_1, 124f))))));
    let var_3 = func_5(Struct_2(_wgslsmith_f_op_f32(-var_1) == var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1)))), _wgslsmith_f_op_f32(f32(-1f) * -1195f)), vec3<bool>(~global1.x < 50109u, true, func_2() | true), 102440u, vec3<u32>(u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, 1u), ~u_input.a.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-267f))), vec3<bool>(true, true, true), 0u, ~vec3<u32>(reverseBits(3627u), firstLeadingBit(~global1.x), func_1()));
    let var_1 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(var_0.b)), Struct_2(~(~4661i) != _wgslsmith_sub_i32(9538i, u_input.c.x | u_input.b.x), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(round(var_0.b))), select(!var_0.c, var_0.c, var_0.c), u_input.a.x, ~vec3<u32>(0u, 87200u, var_0.d)), Struct_1(u_input.a.x));
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~u_input.c.x, u_input.d), -25377i, abs(-u_input.c.x)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), min(~vec3<i32>(u_input.b.x, 27196i, -48980i), -(~u_input.b))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, u_input.d, -2147483647i)) & (u_input.b >> (var_0.e % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, u_input.b.x, u_input.c.x), firstTrailingBit(vec3<i32>(u_input.c.x, -1i, u_input.d))), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b.x, u_input.c.x, 7573i), u_input.b)), vec3<i32>(_wgslsmith_clamp_i32(~u_input.d, ~u_input.d, _wgslsmith_mod_i32(30377i, -1i)), firstLeadingBit(u_input.b.x), u_input.b.x)));
    global0 = _wgslsmith_f_op_f32(var_0.b - var_0.b);
    var var_4 = select(!(!vec2<bool>(true, all(vec4<bool>(false, true, var_1, false)))), vec2<bool>(-484f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_2.b.a), all(vec3<bool>(func_2(), true, var_2.b.a)));
    let var_5 = Struct_3(var_0.b, Struct_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.b, -306f) + var_2.a)), select(vec3<bool>(291f >= var_2.a, var_0.a, var_4.x), select(select(vec3<bool>(false, var_2.b.c.x, true), var_0.c, var_2.b.a), var_2.b.c, !var_2.b.c.x), var_0.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u) & var_2.b.e.xy, ~vec2<u32>(33913u, 12666u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.e.x, 102486u, u_input.a.x), select(vec3<u32>(7187u, u_input.a.x, global1.x), var_2.b.e, vec3<bool>(var_2.b.c.x, var_4.x, false)))), func_5(var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b, abs(u_input.b)), var_3.x), _wgslsmith_div_i32(abs(var_3.x), u_input.b.x | -4379i) & var_3.x, -42054i), max(~select(vec4<u32>(4294967295u, var_2.b.e.x, var_2.c.a, var_2.c.a) >> (vec4<u32>(1191u, var_5.c.a, 22209u, 32902u) % vec4<u32>(32u)), vec4<u32>(18724u, 0u, 1u, 73596u), select(vec4<bool>(false, var_0.c.x, true, var_4.x), vec4<bool>(var_5.b.a, false, var_0.a, true), var_5.b.a)), ~vec4<u32>(var_0.e.x, global1.x, _wgslsmith_mult_u32(15010u, global1.x), 1588u)), ~u_input.a, vec2<u32>(_wgslsmith_div_u32(~(u_input.a.x << (var_5.c.a % 32u)), _wgslsmith_mult_u32(1u, 1u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(23605u, 20530u, var_5.c.a), _wgslsmith_mod_vec3_u32(vec3<u32>(43078u, 0u, var_0.e.x), var_0.e))));
}


struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> bool {
    global0 = Struct_4(-1760f, vec3<u32>(u_input.a, ~select(3260u, global0.c.c >> (global0.d.d.a % 32u), global0.d.c.d), global0.c.b), Struct_1(~37311u, 1u << (~_wgslsmith_mod_u32(u_input.a, 1u) % 32u), firstLeadingBit(~(global0.c.c & 5454u))), global0.d);
    var var_0 = ~(i32(-1i) * -2147483647i) == (global0.d.c.a.x & _wgslsmith_add_i32(global0.d.c.a.x, ~global0.d.c.a.x));
    let var_1 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -159f)) * global0.a) + -115f));
    var var_2 = ~(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.d.c.a, vec3<i32>(global0.d.c.a.x, 0i, -51558i)) << (global0.b.x % 32u), ~(-global0.d.c.a.x)));
    return true;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, all(global0.d.c.b), select(!global0.d.c.d, func_3(vec4<bool>(all(global0.d.c.b), 0i >= arg_0.x, select(true, global0.d.c.b.x, true), all(vec2<bool>(global0.d.c.d, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, global0.a, 143f, global0.a)))), !all(select(vec4<bool>(false, true, global0.d.c.b.x, global0.d.c.d), vec4<bool>(true, false, global0.d.c.d, global0.d.c.d), false))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(global0.a * -825f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.a))))))));
    var var_2 = -686f;
    let var_3 = reverseBits(_wgslsmith_mod_i32(arg_0.x, _wgslsmith_sub_i32(-countOneBits(global0.d.c.a.x), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.c.a.x, 18921i), global0.d.c.a.yz)))));
    var var_4 = !select(vec3<bool>(global0.d.c.d, true, true), !select(!vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, true), vec3<bool>(true, global0.d.c.b.x, true)), !(!(!vec3<bool>(global0.d.c.b.x, global0.d.c.b.x, var_0.x))));
    return Struct_1(58193u, 6059u, ~(_wgslsmith_add_u32(57127u, ~u_input.a) << ((u_input.a | min(58076u, 1u)) % 32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global0 = Struct_4(-939f, firstTrailingBit(firstTrailingBit(vec3<u32>(global0.b.x, arg_2.c, 5614u)) << (global0.b % vec3<u32>(32u))), func_2(-vec4<i32>(16903i, -83749i, arg_1, _wgslsmith_clamp_i32(global0.d.c.a.x, 38033i, global0.d.c.a.x))), global0.d);
    var var_0 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(reverseBits(-global0.d.c.a.x), 1i, -arg_1)), global0.d.c.a);
    var_0 = ~(~_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, arg_1, 1i) << (global0.b % vec3<u32>(32u)), vec3<i32>(-1i >> (1u % 32u), ~10819i, -1i)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x * 385f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1257f))), all(select(vec3<bool>(false, false, true), vec3<bool>(global0.d.c.d, false, global0.d.c.b.x), vec3<bool>(arg_3, true, arg_3)))))), global0.b, arg_2, Struct_3(Struct_1(u_input.a, _wgslsmith_div_u32(0u, global0.d.b), 1u), 42168u, Struct_2(_wgslsmith_add_vec3_i32(global0.d.c.a ^ vec3<i32>(-21455i, global0.d.c.a.x, -67191i), -global0.d.c.a), select(global0.d.c.b, select(global0.d.c.b, vec2<bool>(global0.d.c.d, global0.d.c.d), true), global0.d.c.b), arg_2, func_3(vec4<bool>(global0.d.c.d, true, arg_3, false), vec4<f32>(global0.a, 1705f, arg_0.x, 1348f)), select(3491u, u_input.a, any(vec4<bool>(arg_3, true, global0.d.c.d, arg_3)))), arg_2));
    let var_2 = var_1.d.c.d;
    return var_1.d.c;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_add_vec3_u32(global0.b, global0.b), func_2(-vec4<i32>(1i, _wgslsmith_clamp_i32(38170i, global0.d.c.a.x, 1i), 5223i, arg_0.a.x)), Struct_3(arg_0.c, 50546u, Struct_2(global0.d.c.a, select(select(vec2<bool>(arg_0.b.x, global0.d.c.d), global0.d.c.b, global0.d.c.b), select(vec2<bool>(false, false), arg_0.b, false), !vec2<bool>(global0.d.c.b.x, arg_0.d)), arg_0.c, global0.d.c.d, 55338u), Struct_1(~_wgslsmith_mod_u32(4294967295u, u_input.a), 4294967295u, 11091u)));
    let var_0 = arg_0.a.xx;
    var var_1 = Struct_2(arg_0.a << (vec3<u32>(~(92967u << (1u % 32u)), func_1(vec4<f32>(global0.a, global0.a, global0.a, -801f), _wgslsmith_mod_i32(13370i, global0.d.c.a.x), Struct_1(33369u, u_input.a, 0u), any(arg_0.b)).c.c, _wgslsmith_mod_u32(u_input.a, reverseBits(global0.d.d.c))) % vec3<u32>(32u)), !vec2<bool>(all(vec3<bool>(arg_0.d, true, arg_0.b.x)), any(select(vec3<bool>(global0.d.c.b.x, arg_0.d, global0.d.c.d), vec3<bool>(arg_0.b.x, arg_0.b.x, true), false))), func_2(~select(~vec4<i32>(global0.d.c.a.x, -39598i, -41339i, global0.d.c.a.x), vec4<i32>(46343i, arg_0.a.x, arg_0.a.x, arg_0.a.x) >> (vec4<u32>(45841u, 1u, 22850u, 14981u) % vec4<u32>(32u)), false)), false, 4294967295u);
    var_1 = Struct_2(~_wgslsmith_clamp_vec3_i32(firstTrailingBit(arg_0.a >> (vec3<u32>(960u, global0.c.a, u_input.a) % vec3<u32>(32u))), min(vec3<i32>(33411i, arg_0.a.x, -37133i), ~vec3<i32>(0i, 0i, var_0.x)), var_1.a), global0.d.c.b, Struct_1(arg_0.c.c, abs(41062u), _wgslsmith_dot_vec4_u32(select(min(vec4<u32>(u_input.a, 99051u, 80190u, 54479u), vec4<u32>(global0.c.c, 0u, arg_0.e, var_1.e)), vec4<u32>(arg_0.c.c, arg_0.e, 0u, global0.d.b), vec4<bool>(false, var_1.b.x, global0.d.c.b.x, var_1.d)), ~(~vec4<u32>(global0.d.d.a, 25277u, u_input.a, u_input.a)))), true, _wgslsmith_sub_u32(global0.b.x & func_2(vec4<i32>(arg_0.a.x, var_1.a.x, -7897i, -20908i)).b, select(1u, min(_wgslsmith_add_u32(27734u, 38304u), u_input.a), global0.d.c.d)));
    let var_2 = Struct_3(func_2(vec4<i32>(~reverseBits(-6071i), 13481i, _wgslsmith_div_i32(0i, max(global0.d.c.a.x, -1i)), ~(~arg_0.a.x))), ~1u, func_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(350f, -1000f, global0.a, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 330f, global0.a, -395f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, global0.a, global0.a, -1716f) + vec4<f32>(-1287f, 1205f, global0.a, global0.a))))), -(2180i >> (1u % 32u)), func_2(reverseBits(vec4<i32>(var_0.x, var_1.a.x, arg_0.a.x, 0i)) << ((vec4<u32>(global0.b.x, var_1.c.c, u_input.a, var_1.c.c) << (vec4<u32>(1u, 3911u, 25805u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), false), var_1.c);
    return Struct_4(_wgslsmith_f_op_f32(-global0.a), global0.b, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, global0.a, global0.a, -891f)), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, 1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(global0.d.c.a.x, 19874i), global0.d.c.a.x)), global0.c, !global0.d.c.b.x).c, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global0.d.c.d, !global0.d.c.d);
    var var_1 = func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, _wgslsmith_f_op_f32(sign(292f)), _wgslsmith_f_op_f32(step(268f, -1427f)), _wgslsmith_f_op_f32(global0.a * 1412f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a, -1000f, global0.a, 1628f))))), -2147483647i, global0.c, true));
    var_1 = func_4(func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, 658f, global0.a) * vec4<f32>(1368f, var_1.a, 1436f, global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(336f, 1000f, global0.a, global0.a), vec4<f32>(1736f, var_1.a, -249f, 1753f), vec4<bool>(global0.d.c.b.x, false, var_1.d.c.d, false)))))), global0.d.c.a.x, Struct_1(var_1.b.x, firstLeadingBit(var_1.d.c.c.a), u_input.a), var_1.d.c.d));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(global0.d.c.a.x, -27335i) >> (4294967295u % 32u), 45102i, var_1.d.c.a.x);
    let var_3 = global0.d.c.a.yz;
    var var_4 = ~abs(~(vec4<u32>(global0.d.c.e, 67477u, 0u, 22891u) << (vec4<u32>(u_input.a, var_1.d.b, u_input.a, 4294967295u) % vec4<u32>(32u))) ^ abs(_wgslsmith_mod_vec4_u32(vec4<u32>(80901u, global0.d.d.c, global0.b.x, u_input.a), vec4<u32>(4294967295u, 52729u, var_1.c.c, 4294967295u))));
    global0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))), any(!select(vec3<bool>(true, var_1.d.c.d, global0.d.c.b.x), vec3<bool>(var_1.d.c.d, true, false), vec3<bool>(true, true, false))))), _wgslsmith_sub_vec3_u32(~var_1.b, reverseBits(select(countOneBits(vec3<u32>(var_1.d.c.c.b, 1u, u_input.a)), vec3<u32>(var_4.x, 16686u, 31766u), false))), Struct_1(~1u, ~var_4.x, 23309u), func_4(func_4(Struct_2(vec3<i32>(var_2.x, var_1.d.c.a.x, global0.d.c.a.x) ^ global0.d.c.a, !vec2<bool>(true, global0.d.c.d), Struct_1(1u, u_input.a, 4294967295u), global0.d.c.d, var_1.c.a)).d.c).d);
    var_1 = Struct_4(_wgslsmith_f_op_f32(step(356f, _wgslsmith_f_op_f32(sign(var_1.a)))), select(~abs(vec3<u32>(45212u, 37198u, 4294967295u)) << (_wgslsmith_sub_vec3_u32(~var_1.b, vec3<u32>(4294967295u, var_1.d.a.b, 4294967295u) & var_1.b) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), func_4(var_1.d.c).b), vec3<u32>(4294967295u, global0.c.c, func_1(vec4<f32>(1749f, 1000f, -893f, 2047f), -1i, Struct_1(19751u, var_1.b.x, u_input.a), global0.d.c.d).c.a)), any(vec3<bool>(true, var_1.d.c.d | global0.d.c.b.x, 4294967295u <= var_1.c.a))), var_1.c, func_4(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, -1270f, 544f, 1834f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -545f, global0.a, global0.a))), var_3.x, func_4(Struct_2(global0.d.c.a, var_0, Struct_1(u_input.a, var_1.b.x, var_1.b.x), true, u_input.a)).c, !all(vec4<bool>(false, true, global0.d.c.b.x, true)))).d);
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(step(-301f, global0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -333f)))), -680f), -_wgslsmith_dot_vec3_i32(global0.d.c.a, -(~var_1.d.c.a)), _wgslsmith_sub_u32(~func_4(global0.d.c).c.a, global0.b.x | 0u));
}


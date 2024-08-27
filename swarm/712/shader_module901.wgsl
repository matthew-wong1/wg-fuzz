struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = 67905u;
    var var_1 = select(!global2.wz, !global2.xz, select(global2.yy, select(vec2<bool>(false, 2147483647i <= arg_0.b), select(select(global2.yx, global2.xy, false), global2.yx, true), !all(global2.yz)), global2.yz));
    let var_2 = Struct_3(_wgslsmith_sub_i32(~arg_0.b, abs(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 2147483647i, arg_0.b)))));
    let var_3 = _wgslsmith_mult_vec4_u32(arg_0.c, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, ~arg_0.d.x, ~6986u), vec4<u32>(~48196u, u_input.a & 25482u, firstLeadingBit(arg_1.a), arg_0.e.a << (arg_0.d.x % 32u))) | select(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1.a, arg_1.a, 43864u), arg_0.c), abs(vec4<u32>(arg_0.d.x, arg_1.a, arg_0.d.x, arg_1.a))), ~reverseBits(vec4<u32>(68602u, 89571u, arg_1.a, 6825u)), -263f < arg_0.a));
    return !(!(!select(vec4<bool>(false, var_1.x, global2.x, global2.x), vec4<bool>(arg_0.e.c, false, arg_0.e.c, var_1.x), select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(global2.x, false, true, true)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    global1 = any(!select(select(vec4<bool>(arg_2, false, arg_2, arg_0), vec4<bool>(false, false, arg_0, false), !vec4<bool>(true, global2.x, global2.x, arg_0)), vec4<bool>(true, all(global2.zz), 35614i == u_input.c.x, any(vec2<bool>(true, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, global2.x, arg_0, true), vec4<bool>(arg_0, global2.x, arg_2, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), !arg_2)));
    let var_0 = !any(global2.yy);
    global2 = !vec4<bool>(false, any(func_3(Struct_4(-1351f, 2147483647i, vec4<u32>(u_input.b, 4878u, 34173u, 1u), vec3<u32>(36257u, 51737u, 0u), arg_1.a), arg_1.b)), false, func_3(Struct_4(arg_1.b.b, 63591i, ~vec4<u32>(43945u, arg_1.b.a, arg_1.b.a, arg_1.b.a), vec3<u32>(1u, 1u, u_input.a) ^ vec3<u32>(0u, u_input.a, 9990u), arg_1.b), arg_1.b).x);
    var var_1 = arg_1.a;
    var_1 = arg_1.b;
    return Struct_3(u_input.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    var var_0 = global2.zy;
    let var_1 = _wgslsmith_mult_vec4_u32(max(select(_wgslsmith_sub_vec4_u32(min(vec4<u32>(29057u, 75945u, 1u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.b, 22658u, u_input.a) >> (vec4<u32>(35987u, 66613u, u_input.b, u_input.a) % vec4<u32>(32u))), countOneBits(vec4<u32>(152258u, u_input.a, 1u, u_input.b)) << (firstTrailingBit(vec4<u32>(u_input.b, 1u, u_input.a, u_input.b)) % vec4<u32>(32u)), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(global2.x, global2.x, true, true), true), all(global2.zz))), vec4<u32>(~min(u_input.b, 0u), u_input.a, _wgslsmith_add_u32(u_input.a & u_input.b, 26934u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 40070u), vec3<u32>(43310u, 0u, u_input.a)) | max(79562u, 25119u))), abs(~(min(vec4<u32>(2576u, 83339u, u_input.b, 0u), vec4<u32>(u_input.b, 7565u, u_input.b, u_input.a)) & ~vec4<u32>(12748u, u_input.a, u_input.a, 124536u))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(603f, arg_1.x)))), arg_1, !(_wgslsmith_add_u32(0u, var_1.x) < _wgslsmith_div_u32(var_1.x, 15544u)))));
    var var_2 = !all(select(vec2<bool>(true, true), func_3(Struct_4(arg_1.x, u_input.c.x, vec4<u32>(u_input.a, u_input.a, 4294967295u, var_1.x), var_1.zzz, Struct_1(u_input.b, global0.x, true)), Struct_1(u_input.a, -1000f, true)).zz, func_3(Struct_4(global0.x, -1i, var_1, var_1.zxy, Struct_1(113449u, global0.x, false)), Struct_1(u_input.b, 750f, true)).xx));
    let var_3 = Struct_2(Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f + _wgslsmith_div_f32(1000f, 1256f)) * -954f), false), Struct_1(u_input.a, _wgslsmith_f_op_f32(749f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1473f, -1633f)) + -490f)), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global0.x, 820f, 866f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, arg_1.x, arg_1.x, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, 808f, arg_1.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1176f, -1144f, arg_1.x))))));
    return 8335u;
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = max(u_input.a, ~(~firstLeadingBit(_wgslsmith_sub_u32(38123u, 7525u))));
    var_0 = arg_0;
    global2 = func_3(Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1984f)), _wgslsmith_f_op_f32(f32(-1f) * -298f))), firstTrailingBit(_wgslsmith_div_i32(~1i, -23377i)), min(_wgslsmith_div_vec4_u32(vec4<u32>(11893u, u_input.a, 34155u, arg_0), vec4<u32>(u_input.b, u_input.a, 0u, u_input.a)) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 28327u, u_input.a, 22795u), vec4<u32>(4294967295u, 1u, u_input.a, u_input.b)), vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, arg_0), vec3<u32>(20034u, 11815u, 34374u)), 0u, countOneBits(39083u))), ~((vec3<u32>(1u, arg_0, 1u) ^ vec3<u32>(1u, arg_0, 67832u)) & _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 17487u, 58472u), vec3<u32>(arg_0, 0u, u_input.a))), Struct_1(~arg_0 ^ _wgslsmith_clamp_u32(4864u, u_input.a, arg_0), global0.x, any(select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x))))), Struct_1(~arg_0, _wgslsmith_f_op_f32(-global0.x), global2.x));
    let var_1 = Struct_1(_wgslsmith_div_u32(~(~17047u), reverseBits(4294967295u)), global0.x, all(vec4<bool>(false, all(global2.wz), !any(global2.xyz), all(select(vec2<bool>(global2.x, global2.x), global2.xx, vec2<bool>(global2.x, true))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -311f))), func_3(Struct_4(var_1.b, u_input.c.x, vec4<u32>(1u, u_input.b, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 75663u), var_1), var_1).xz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, var_1.b), vec2<f32>(global0.x, var_1.b)))))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -1438f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1579f), _wgslsmith_f_op_f32(-global0.x))))));
    return Struct_1(0u, _wgslsmith_f_op_f32(round(575f)), true);
}

fn func_1(arg_0: bool) -> vec3<u32> {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 51102u, u_input.a), vec4<u32>(1u, 4294967295u, _wgslsmith_div_u32(1u, u_input.a), ~23365u)));
    var var_1 = Struct_4(_wgslsmith_div_f32(-832f, _wgslsmith_f_op_f32(select(global0.x, -1238f, arg_0))), u_input.c.x, min(~(~vec4<u32>(4294967295u, var_0.x, var_0.x, 3756u)), vec4<u32>(~1u, var_0.x, ~firstLeadingBit(u_input.b), 0u)), vec3<u32>(abs(_wgslsmith_div_u32(~0u, u_input.a)), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, 16186u, 4294967295u, 4294967295u), vec4<u32>(var_0.x, 10110u, 1u, u_input.a)), abs(vec4<u32>(63575u, 1u, 17990u, u_input.a))), var_0.x), func_5(~func_4(func_2(false, Struct_2(Struct_1(var_0.x, -256f, true), Struct_1(4294967295u, global0.x, arg_0), vec4<f32>(global0.x, -1473f, -864f, global0.x)), false), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, 561f))))));
    var var_2 = vec3<i32>(-1i) * -u_input.c;
    global2 = vec4<bool>(any(global2.wyx), _wgslsmith_div_u32(u_input.a, u_input.b << (~4294967295u % 32u)) > func_4(func_2(-2147483647i >= var_1.b, Struct_2(Struct_1(u_input.a, 2145f, global2.x), var_1.e, vec4<f32>(-397f, var_1.a, -1000f, 303f)), true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), -929f)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(58968i, var_1.b, var_2.x, var_2.x), vec4<i32>(u_input.c.x, u_input.c.x, var_2.x, -47119i)), -1i, 4417i << (var_0.x % 32u)) != var_2.x, global2.x);
    var var_3 = !((~select(41762u, var_1.d.x, true) & select(~var_1.d.x, countOneBits(var_1.d.x), false == global2.x)) <= var_1.d.x);
    return ~(vec3<u32>(66645u, ~reverseBits(0u), ~firstTrailingBit(26223u)) & ~(~max(vec3<u32>(var_0.x, var_1.d.x, var_1.d.x), vec3<u32>(4294967295u, var_0.x, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(760f, -981f))), vec2<f32>(global0.x, -301f))));
    let var_0 = -min(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 0i));
    var var_1 = ~func_1((false && global2.x) && (0u < u_input.a)) ^ vec3<u32>(19546u ^ (0u << (~u_input.b % 32u)), ~_wgslsmith_mult_u32(u_input.a ^ u_input.b, ~0u), func_4(func_2(true, Struct_2(Struct_1(1u, -835f, global2.x), Struct_1(u_input.a, 1486f, global2.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), !global2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-249f, global0.x), vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(719f, -869f)))));
    let var_2 = countOneBits(countOneBits(vec3<u32>(~u_input.b, reverseBits(var_1.x), 1u)) << (~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 1u, 31890u), vec3<u32>(0u, u_input.a, var_1.x))) % vec3<u32>(32u)));
    global2 = select(func_3(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 176f, true))), reverseBits(min(var_0, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(57655u, 1u, var_1.x, 67594u) | vec4<u32>(var_2.x, 1u, 1u, var_2.x), vec4<u32>(var_1.x, 25026u, var_2.x, 32859u)), _wgslsmith_div_vec3_u32(~var_2, _wgslsmith_mod_vec3_u32(var_2, vec3<u32>(0u, 23048u, var_2.x))), func_5(81218u)), func_5(max(min(u_input.a, 40431u), u_input.b))), select(vec4<bool>(global2.x, false, false, !global2.x & any(global2.yz)), vec4<bool>(true, false, false, global2.x), vec4<bool>(true, !(!global2.x), _wgslsmith_f_op_f32(-1628f - global0.x) != _wgslsmith_f_op_f32(-global0.x), global2.x)), !func_3(Struct_4(_wgslsmith_f_op_f32(round(1034f)), abs(u_input.c.x), vec4<u32>(var_1.x, 4294967295u, 4294967295u, var_2.x), min(var_2, var_2), Struct_1(var_1.x, 1605f, true)), Struct_1(var_2.x, _wgslsmith_f_op_f32(668f + -438f), !global2.x)).x);
    let var_3 = vec4<u32>(~16261u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(30374u, ~reverseBits(11371u)), ~_wgslsmith_mult_u32(reverseBits(var_1.x), min(var_1.x, var_2.x)), countOneBits(~_wgslsmith_div_u32(0u, 1u))), reverseBits(~0u) ^ ((_wgslsmith_div_u32(var_2.x, 1u) << ((var_1.x & 4294967295u) % 32u)) | ~(~40876u)), ~(~u_input.b));
    let var_4 = var_2.x;
    global0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(select(-326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), !global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 634f) * vec2<f32>(global0.x, 225f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-205f - global0.x))))));
    var_1 = var_3.www;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(global0.x)))))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c.x, var_0), -vec3<i32>(16994i, _wgslsmith_div_i32(47764i, 8599i), func_2(global2.x, Struct_2(Struct_1(21220u, -853f, true), Struct_1(0u, global0.x, global2.x), vec4<f32>(105f, 1416f, 1246f, global0.x)), false).a)), vec4<i32>(min(min(_wgslsmith_sub_i32(u_input.c.x, var_0), ~(-1i)), 1i), u_input.c.x, _wgslsmith_sub_i32(-80607i, select(-1i, -65597i, true) >> (1u % 32u)), 2147483647i >> (var_4 % 32u)));
}


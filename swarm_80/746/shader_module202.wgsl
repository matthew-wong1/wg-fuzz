struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-446f, -191f, -1392f, 247f, 993f, 1928f, 620f, 2986f, 491f, -263f, 689f, 1038f, -1006f, -1000f, -548f, 2014f, 285f, -1098f, -1000f, -339f, 476f, -2411f, -1166f);

var<private> global1: u32 = 20562u;

var<private> global2: array<vec3<u32>, 24>;

var<private> global3: Struct_2 = Struct_2(Struct_1(2147483647i, false, 2147483647i));

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<i32>(-7237i, i32(-2147483648), -85122i, 4974i), vec3<f32>(906f, -698f, -1058f), Struct_2(Struct_1(-39927i, false, 1i)), -1352f), Struct_3(vec4<i32>(65859i, i32(-2147483648), 32397i, 29612i), vec3<f32>(1630f, 1000f, 818f), Struct_2(Struct_1(-1i, false, 0i)), 1000f), Struct_3(vec4<i32>(1i, -8294i, -40521i, -1i), vec3<f32>(-776f, -227f, -668f), Struct_2(Struct_1(-1i, true, 19396i)), -133f), Struct_3(vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i), vec3<f32>(456f, -907f, -1890f), Struct_2(Struct_1(i32(-2147483648), true, i32(-2147483648))), 771f), Struct_3(vec4<i32>(17191i, 21904i, -23258i, 2215i), vec3<f32>(1000f, 1166f, -2281f), Struct_2(Struct_1(1i, false, 886i)), -2396f), Struct_3(vec4<i32>(7441i, 14214i, -29844i, -25907i), vec3<f32>(-595f, -803f, -2227f), Struct_2(Struct_1(8573i, false, -5232i)), -260f), Struct_3(vec4<i32>(-50919i, 49095i, 1i, 0i), vec3<f32>(-497f, -802f, -1000f), Struct_2(Struct_1(-59688i, false, 0i)), -802f), Struct_3(vec4<i32>(2147483647i, 26022i, -11106i, 25528i), vec3<f32>(172f, 1834f, -307f), Struct_2(Struct_1(1i, false, i32(-2147483648))), 510f), Struct_3(vec4<i32>(i32(-2147483648), -14135i, -4745i, -9509i), vec3<f32>(1581f, -2601f, 1780f), Struct_2(Struct_1(1i, false, 48173i)), -688f), Struct_3(vec4<i32>(i32(-2147483648), 0i, 3387i, 2147483647i), vec3<f32>(-1650f, -1032f, 306f), Struct_2(Struct_1(0i, true, 0i)), 1432f), Struct_3(vec4<i32>(27906i, 0i, -5215i, 0i), vec3<f32>(595f, -1000f, 426f), Struct_2(Struct_1(-37074i, true, 30960i)), -956f), Struct_3(vec4<i32>(0i, -11497i, 10302i, -10217i), vec3<f32>(-1000f, -1200f, 809f), Struct_2(Struct_1(-18865i, false, 58172i)), 1662f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = all(!(!vec3<bool>(true, global3.a.b, select(global3.a.b, global3.a.b, false))));
    global1 = max(0u, 4294967295u) & _wgslsmith_dot_vec3_u32(firstTrailingBit(reverseBits(u_input.b)), vec3<u32>(_wgslsmith_add_u32(u_input.c ^ u_input.b.x, abs(u_input.b.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.a.zy), u_input.a.x), 79655u));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(644f + _wgslsmith_f_op_f32(-292f * 372f)))), -718f))));
    var var_2 = select(vec3<bool>(global3.a.b || global3.a.b, global3.a.b, any(!vec2<bool>(global3.a.b, true))), vec3<bool>(global3.a.b, any(!vec2<bool>(global3.a.b, false)) == true, all(select(vec2<bool>(false, global3.a.b), select(vec2<bool>(false, true), vec2<bool>(global3.a.b, global3.a.b), vec2<bool>(false, global3.a.b)), global3.a.b))), true);
    global4 = array<Struct_3, 12>();
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = Struct_4(Struct_1(-45372i, arg_1.c.a.b, -((-17589i << (u_input.c % 32u)) >> (3027u % 32u))), arg_1.c.a, !select(vec3<bool>(all(vec3<bool>(false, false, arg_1.c.a.b)), all(vec4<bool>(arg_1.c.a.b, false, true, false)), func_3(-733f)), vec3<bool>(all(vec4<bool>(arg_1.c.a.b, true, false, global3.a.b)), true, global3.a.b), any(!vec4<bool>(arg_1.c.a.b, arg_1.c.a.b, arg_1.c.a.b, false))), Struct_1(arg_1.a.x, true, -(arg_1.c.a.a | 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -925f))));
    var var_1 = vec2<u32>(~firstLeadingBit(_wgslsmith_add_u32(max(73672u, arg_0), 20044u << (arg_0 % 32u))), u_input.c);
    global3 = arg_1.c;
    var var_2 = arg_1.a | ~(~abs(arg_1.a) | _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-30819i, -1i, 1i, var_0.a.a), arg_1.a), arg_1.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(arg_1.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(var_0.e + global0[_wgslsmith_index_u32(1u, 23u)])), 629f, var_0.b.b)), arg_1.b.x, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(25814u, u_input.c), ~u_input.a.zy), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(arg_0, 23u)]))))));
    return arg_1.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec3<bool>(any(select(!vec3<bool>(arg_1.c.a.b, global3.a.b, arg_1.c.a.b), vec3<bool>(func_3(-924f), true, any(vec2<bool>(true, global3.a.b))), global3.a.b)), global3.a.b, any(vec2<bool>(any(!vec4<bool>(true, false, false, global3.a.b)), select(true, arg_1.c.a.b, global3.a.b | arg_1.c.a.b))));
    let var_1 = firstLeadingBit(_wgslsmith_mult_u32(4294967295u | (u_input.b.x | select(4294967295u, u_input.a.x, false)), ~_wgslsmith_mod_u32(u_input.c, ~18227u)));
    global4 = array<Struct_3, 12>();
    let var_2 = Struct_3(vec4<i32>(global3.a.c, _wgslsmith_mult_i32(~global3.a.a, global3.a.a), _wgslsmith_div_i32(~global3.a.c, 1i), -_wgslsmith_sub_i32(global3.a.a, arg_1.a.x)) & _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.a, global3.a.a, 6250i, 1506i), arg_1.a), ~_wgslsmith_div_vec4_i32(arg_1.a, arg_1.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.yww, vec3<f32>(arg_1.d, 1176f, arg_1.b.x))) + vec3<f32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 23u)], -1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 452f, arg_0.x) * _wgslsmith_f_op_vec3_f32(floor(arg_0.zyx))), arg_1.b)), Struct_2(arg_1.c.a), _wgslsmith_div_f32(arg_0.x, arg_1.b.x));
    var var_3 = vec3<u32>(~var_1, ~((var_1 & u_input.b.x) | _wgslsmith_div_u32(1u, u_input.c)), ~(~countOneBits(4294967295u)));
    return Struct_1(-18615i, any(!select(vec2<bool>(var_2.c.a.b, global3.a.b), var_0.zx, var_2.c.a.b)), countOneBits(func_2(_wgslsmith_add_u32(var_3.x, select(u_input.c, 37670u, var_0.x)), global4[_wgslsmith_index_u32(var_1, 12u)]).x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(196f, -157f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) + vec4<f32>(-1000f, global0[_wgslsmith_index_u32(3193u, 23u)], -268f, global0[_wgslsmith_index_u32(arg_0, 23u)]))), Struct_3(func_2(u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(442f, 1379f, global0[_wgslsmith_index_u32(arg_0, 23u)]) + vec3<f32>(-1615f, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(50928u, 23u)]))), Struct_2(global3.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-458f, global0[_wgslsmith_index_u32(u_input.c, 23u)])))));
    var var_2 = vec4<bool>(func_3(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0 >> (~4294967295u % 32u), 23u)] - _wgslsmith_f_op_f32(936f + global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))), true, !var_1.a.b, all(!vec2<bool>(true, global3.a.a < 1i)));
    var var_3 = select(!(!(!vec4<bool>(var_2.x, false, var_1.a.b, true))), vec4<bool>(true, -621f <= global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(arg_0, u_input.a.x), countOneBits(var_0)), 23u)], var_1.a.b, !var_1.a.b), !vec4<bool>(!any(var_2.wy), func_4(vec4<f32>(-1357f, -1554f, global0[_wgslsmith_index_u32(arg_0, 23u)], global0[_wgslsmith_index_u32(43265u, 23u)]), global4[_wgslsmith_index_u32(70080u, 12u)]).b, all(var_2.xxw) == var_1.a.b, true));
    var var_4 = Struct_4(global3.a, Struct_1(firstLeadingBit(var_1.a.a), true, -(~(1i << (u_input.a.x % 32u)))), !var_3.wyy, Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_1.a.a, global3.a.c, -41299i), var_1.a.a, abs(0i)), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, 31012u), var_0) == u_input.b.x, -29120i), global0[_wgslsmith_index_u32(var_0, 23u)]);
    return func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(arg_0, 23u)], 467f, global0[_wgslsmith_index_u32(38361u, 23u)]) - _wgslsmith_div_vec4_f32(vec4<f32>(-1533f, global0[_wgslsmith_index_u32(38064u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], var_4.e), vec4<f32>(-396f, global0[_wgslsmith_index_u32(4294967295u, 23u)], 439f, 1619f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, var_4.e, global0[_wgslsmith_index_u32(59677u, 23u)], global0[_wgslsmith_index_u32(var_0, 23u)])))))), global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0, 0u, var_0, 36812u))) << (_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0, u_input.a.x, arg_0, 4294967295u)), u_input.a.x) % 32u), 12u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global4 = array<Struct_3, 12>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] - global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))) - -1487f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10590u, 23u)]), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 23u)])), !(true || arg_0.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 23u)])))))));
    global4 = array<Struct_3, 12>();
    var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-223f + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 23u)], var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1708f, var_1.x)), _wgslsmith_f_op_f32(abs(718f)))))), 1141f);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    var var_0 = 4294967295u;
    let var_1 = -_wgslsmith_clamp_i32(max(2147483647i, -14166i), 19270i, func_1(max(0u, 0u)).a);
    var var_2 = Struct_3(_wgslsmith_sub_vec4_i32(-func_2(u_input.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 12u)]) & (_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, -1i, 1541i), vec4<i32>(1i, -2147483647i, arg_0.c, global3.a.c)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 7116u, u_input.a.x), vec4<u32>(65632u, u_input.a.x, 4294967295u, 1u), u_input.a) % vec4<u32>(32u))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, -9954i, 42427i, 48471i), vec4<i32>(arg_0.c, arg_0.c, var_1, var_1)) & ~vec4<i32>(3532i, arg_0.c, -1i, arg_0.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, global0[_wgslsmith_index_u32(30201u, 23u)], -164f))))), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(127f, global0[_wgslsmith_index_u32(71826u, 23u)], 388f, global0[_wgslsmith_index_u32(u_input.c, 23u)]))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1100f, -1734f, -197f, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<f32>(1185f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))), global4[_wgslsmith_index_u32(u_input.c, 12u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(54268u), 23u)]));
    var var_3 = func_4(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(23422u, u_input.b.x, u_input.a.x) >> (u_input.a.wxz % vec3<u32>(32u))), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x))), 23u)], _wgslsmith_f_op_f32(-747f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)] - var_2.b.x) + _wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(277f + var_2.b.x), (arg_1.a <= arg_0.a) | true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.b.x) & 97721u, 23u)])), Struct_3(_wgslsmith_add_vec4_i32(-var_2.a, var_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)), Struct_2(var_2.c.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(44024u, u_input.b.x, 0u), global2[_wgslsmith_index_u32(8643u, 24u)]), 23u)]), var_2.b.x))));
    let var_4 = ~arg_1.a;
    return vec4<i32>(_wgslsmith_mult_i32(var_1, 1i), global3.a.c, var_4, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(func_5(func_1(11921u), Struct_1(func_4(vec4<f32>(411f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 1941f, global0[_wgslsmith_index_u32(59153u, 23u)]), Struct_3(vec4<i32>(global3.a.a, -9063i, global3.a.c, global3.a.c), vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_2(global3.a), global0[_wgslsmith_index_u32(u_input.a.x, 23u)])).c, true, 26594i), Struct_2(func_4(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], -2035f, 156f, global0[_wgslsmith_index_u32(46943u, 23u)]), global4[_wgslsmith_index_u32(u_input.b.x, 12u)]))), Struct_1(-(~global3.a.c), !all(vec2<bool>(global3.a.b, false)), 29682i), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 1796f)) * vec3<f32>(1060f, -427f, -994f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 176f, -266f) * vec3<f32>(737f, -724f, -294f))), vec3<bool>(global3.a.b, false, global3.a.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), -241f, -1814f))), Struct_2(func_5(global3.a, global3.a, Struct_2(global3.a))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u ^ ~(~u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 17586u ^ ~u_input.a.x), 0u), 23u)]);
    global2 = array<vec3<u32>, 24>();
    let var_1 = global3.a.b;
    let var_2 = firstTrailingBit(u_input.a.x) >= min(_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 111307u, u_input.a.x), u_input.a.x | u_input.a.x)), 4294967295u);
    global2 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec4<i32>(-2147483647i & global3.a.a, global3.a.a, var_0.a.x, 2273i) & var_0.a);
}


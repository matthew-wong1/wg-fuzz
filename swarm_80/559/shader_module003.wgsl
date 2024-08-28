struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<i32>(i32(-2147483648), 33919i, 2147483647i, -5845i), vec4<i32>(2147483647i, i32(-2147483648), -19311i, 0i)), Struct_1(vec4<i32>(0i, -48321i, 2147483647i, -14136i), vec4<i32>(2147483647i, -1i, 0i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(15729i, 0i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 0i, -18460i, -22922i), vec4<i32>(-1170i, -70330i, -14246i, 17007i)), Struct_1(vec4<i32>(0i, -16221i, 2147483647i, 2147483647i), vec4<i32>(1i, -14369i, 1i, -50686i)), Struct_1(vec4<i32>(50569i, 2147483647i, -8177i, 0i), vec4<i32>(-1i, -20361i, 9195i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 644i, 38480i, -31523i), vec4<i32>(8881i, 62602i, 57904i, -16449i)), Struct_1(vec4<i32>(18882i, 1i, 44321i, 0i), vec4<i32>(46893i, 2147483647i, 31168i, -1i)), Struct_1(vec4<i32>(6067i, 1i, i32(-2147483648), 1i), vec4<i32>(-5760i, 2147483647i, 41699i, -10531i)), Struct_1(vec4<i32>(0i, i32(-2147483648), 32478i, -1i), vec4<i32>(-43786i, 5409i, 0i, -37787i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(-14751i, -66400i, -1i, 0i)), Struct_1(vec4<i32>(-446i, -1i, i32(-2147483648), -18997i), vec4<i32>(58419i, -1i, -14891i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -10494i, 24286i, -20883i), vec4<i32>(0i, 0i, -10699i, -42801i)), Struct_1(vec4<i32>(-23598i, 794i, 35683i, 20150i), vec4<i32>(0i, 1i, -1i, 14999i)), Struct_1(vec4<i32>(0i, 0i, -7996i, 1i), vec4<i32>(3482i, 38814i, 56970i, 31437i)), Struct_1(vec4<i32>(-28899i, 11068i, 46404i, -5385i), vec4<i32>(-1i, 1i, 2811i, i32(-2147483648))), Struct_1(vec4<i32>(1i, 0i, 67842i, -37753i), vec4<i32>(23648i, -4522i, 21461i, 58514i)), Struct_1(vec4<i32>(41513i, 2147483647i, -15680i, 2147483647i), vec4<i32>(-1i, 1i, 0i, 0i)), Struct_1(vec4<i32>(801i, -42181i, 1i, i32(-2147483648)), vec4<i32>(-1i, -15568i, -1i, 60929i)), Struct_1(vec4<i32>(2147483647i, -22395i, 43505i, -5355i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -24989i)), Struct_1(vec4<i32>(-19231i, 26626i, 2147483647i, -1i), vec4<i32>(-1i, 2147483647i, -1i, -40398i)), Struct_1(vec4<i32>(1i, 0i, 8652i, 5742i), vec4<i32>(-1i, -1i, 1i, -63162i)), Struct_1(vec4<i32>(30899i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(6927i, -2550i, -7658i, -25525i)), Struct_1(vec4<i32>(-1i, 71615i, 32221i, -26828i), vec4<i32>(-24252i, -12296i, -61615i, 6365i)), Struct_1(vec4<i32>(-2711i, 48646i, 2147483647i, 0i), vec4<i32>(2147483647i, -1i, -13164i, 15377i)), Struct_1(vec4<i32>(-11025i, 0i, 2147483647i, -61901i), vec4<i32>(-66184i, -1i, 1430i, 2147483647i)));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1i, -25688i, 0i, -1i), vec4<i32>(41650i, 2147483647i, -2496i, -9842i));

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: i32;

var<private> global4: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(4294967295u, 1u), vec2<u32>(15701u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1985u, 4294967295u, 0u), abs(vec3<u32>(0u, u_input.a, 0u)), vec3<u32>(27146u, 1u, arg_0) >> (vec3<u32>(4294967295u, 0u, arg_0) % vec3<u32>(32u)))), reverseBits(countOneBits(vec3<u32>(arg_0, 1u, u_input.a))) << ((~vec3<u32>(u_input.a, 28446u, 1u) ^ min(vec3<u32>(arg_0, arg_0, u_input.a), vec3<u32>(6821u, 20802u, u_input.a) >> (vec3<u32>(arg_0, u_input.a, u_input.a) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global4 = array<vec2<u32>, 2>();
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.a), 26u)];
    let var_2 = vec4<f32>(954f, _wgslsmith_f_op_f32(-2070f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1831f, 616f)) * _wgslsmith_f_op_f32(floor(-580f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-655f - -1000f))))), -1132f);
    global3 = abs(-abs(_wgslsmith_div_i32(global1.b.x, var_1.b.x)));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    var var_0 = vec2<u32>(~min(~32138u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(24443u), arg_2.x, 4294967295u, ~arg_2.x & ~u_input.a), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, u_input.a, 26756u), vec4<u32>(1u, 52567u, 35688u, 11080u)), vec4<u32>(0u, arg_2.x, u_input.a, arg_2.x), u_input.a > 1u), ~(~vec4<u32>(0u, 21766u, 10030u, 45769u)))));
    var var_1 = arg_1.yzx;
    var var_2 = !(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true), vec2<bool>(all(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    global3 = 15966i;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -360f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(step(arg_1.x, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.x))))))));
    return ~u_input.a;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global2 = array<vec2<i32>, 7>();
    let var_0 = select(vec3<bool>(true, !any(vec3<bool>(true, true, true)), 144f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-291f, -505f)) - _wgslsmith_f_op_f32(abs(-757f)))), vec3<bool>(true, !(!(arg_1.x >= 4294967295u)), false), (arg_0 < _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 64011u, 4294967295u), vec3<u32>(4294967295u, arg_1.x, 21419u)), ~vec3<u32>(1u, arg_0, 4u))) & (arg_2.a.x != -52119i));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-509f, -1000f)), 926f)), 1f, -321f) * vec3<f32>(_wgslsmith_f_op_f32(-119f - _wgslsmith_f_op_f32(295f + -1312f)), -240f, -597f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2872f, -672f, -1355f) * vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(787f, -348f, 466f) * vec3<f32>(1f, 1f, 1f)))));
    global1 = Struct_1(vec4<i32>(~abs(_wgslsmith_div_i32(-21962i, 2147483647i)), 2147483647i, arg_3.b.x, _wgslsmith_div_i32(arg_3.a.x, countOneBits(countOneBits(u_input.c.x)))), vec4<i32>(abs(reverseBits(u_input.d.x ^ -2147483647i)), ~(-(arg_2.a.x & 21275i)), arg_3.b.x, -u_input.b.x));
    let var_2 = 57851u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(7470u, 0u), arg_1), global4[_wgslsmith_index_u32(25477u, 2u)]), abs(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(36709u, u_input.a), global4[_wgslsmith_index_u32(arg_1.x, 2u)]), select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 0u), true)))) % 32u);
    return Struct_2(arg_3, abs(-233i), arg_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.x, 631f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_1.x - var_1.x)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), var_1)) - var_1)), _wgslsmith_f_op_vec3_f32(-var_1));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_3(global1.a.x & global1.a.x, func_4(~(~(~u_input.a)), ~(~global4[_wgslsmith_index_u32(func_2(1000f, vec4<f32>(-457f, -929f, -1611f, -531f), vec3<u32>(u_input.a, 3505u, 41502u), 2147483647i), 2u)]), global0[_wgslsmith_index_u32(~4294967295u, 26u)], Struct_1(global1.a, u_input.b ^ vec4<i32>(2147483647i, global1.b.x, -1i, u_input.b.x))), func_4(4294967295u, reverseBits((vec2<u32>(u_input.a, 1u) ^ vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), Struct_1(vec4<i32>(countOneBits(-37162i), u_input.e, _wgslsmith_dot_vec3_i32(u_input.b.yyy, vec3<i32>(u_input.b.x, global1.b.x, u_input.c.x)), 29124i), u_input.c << ((vec4<u32>(19884u, u_input.a, 0u, 19386u) << (vec4<u32>(4294967295u, 1u, 9671u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), func_4(1u, _wgslsmith_mod_vec2_u32(global4[_wgslsmith_index_u32(16867u, 2u)], vec2<u32>(20431u, 1u)) ^ abs(global4[_wgslsmith_index_u32(17428u, 2u)]), global0[_wgslsmith_index_u32(~(~u_input.a), 26u)], Struct_1(_wgslsmith_add_vec4_i32(u_input.b, global1.a), vec4<i32>(5618i, global1.b.x, u_input.d.x, arg_0))).c));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(func_4(_wgslsmith_mult_u32(u_input.a, 1u), countOneBits(global4[_wgslsmith_index_u32(0u, 2u)]), Struct_1(vec4<i32>(-27904i, arg_0, var_0.b.b, 1i), global1.b), func_4(u_input.a, global4[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(75633u, 26u)], global0[_wgslsmith_index_u32(46818u, 26u)]).c).c.a.yy, vec2<i32>(_wgslsmith_div_i32(1i, var_0.a), _wgslsmith_sub_i32(24178i, global1.b.x)), ~(-global2[_wgslsmith_index_u32(u_input.a, 7u)])), ~vec2<i32>(-u_input.d.x, -1i)), _wgslsmith_sub_i32(arg_0, -arg_0 & ~firstLeadingBit(global1.b.x)));
    let var_2 = var_0;
    let var_3 = func_4(u_input.a, min(~(~vec2<u32>(u_input.a, 63664u)), vec2<u32>(firstTrailingBit(select(u_input.a, u_input.a, false)), u_input.a >> (u_input.a % 32u))), Struct_1(vec4<i32>(2147483647i, arg_0, -u_input.d.x >> (u_input.a % 32u), u_input.b.x), ~vec4<i32>(1i, -u_input.c.x, var_2.a << (u_input.a % 32u), func_4(33044u, vec2<u32>(37760u, 1u), Struct_1(vec4<i32>(24226i, 46586i, var_2.a, 6707i), vec4<i32>(16834i, var_2.b.c.b.x, var_1, 2147483647i)), global0[_wgslsmith_index_u32(u_input.a, 26u)]).a.a.x)), Struct_1(reverseBits(~func_4(u_input.a, global4[_wgslsmith_index_u32(1964u, 2u)], var_0.b.c, global0[_wgslsmith_index_u32(4294967295u, 26u)]).c.b), global1.a)).a;
    let var_4 = func_2(-912f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-977f, -1853f, -634f, var_2.c.d.x))))))), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(0u, 2u)], global4[_wgslsmith_index_u32(7499u, 2u)]), 66097u, u_input.a), ~(~vec3<u32>(32678u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 25558u), vec3<u32>(22809u, 4294967295u, u_input.a)) ^ (vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(0u, 27024u, 0u) % vec3<u32>(32u)))), ~abs(~vec3<u32>(49828u, 72272u, u_input.a))), -(var_0.c.c.a.x << (firstTrailingBit(u_input.a) % 32u)) << (_wgslsmith_mult_u32(~abs(u_input.a), firstLeadingBit(0u)) % 32u));
    return all(select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, select(all(vec4<bool>(true, false, false, false)), 2147483647i != u_input.b.x, any(vec2<bool>(false, true)))), vec4<bool>(true, false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false), (0u == _wgslsmith_dot_vec2_u32(vec2<u32>(38126u, 4294967295u), global4[_wgslsmith_index_u32(u_input.a, 2u)])) && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false & !(u_input.a >= 52056u), true, func_1(_wgslsmith_add_i32(-31480i, 2147483647i) | global1.a.x), false);
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(141f - 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-963f)), _wgslsmith_f_op_f32(-1016f - 556f))), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-920f, 2977f))) * _wgslsmith_f_op_f32(step(1587f, _wgslsmith_div_f32(446f, -956f)))), 1000f));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 9028u), false), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) & ~vec4<u32>(u_input.a, u_input.a, 40716u, u_input.a)), vec4<u32>(u_input.a, abs(~87918u), 4294967295u, countOneBits(u_input.a))), func_3(func_3(~u_input.a)) & _wgslsmith_sub_u32(func_3(u_input.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(21162u, u_input.a, 62995u)), u_input.a & u_input.a))), 26u)];
    let var_3 = vec3<bool>(!(!var_0.x), all(vec2<bool>(var_0.x, false)), var_0.x && all(!(!vec4<bool>(true, var_0.x, var_0.x, true))));
    var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(var_1.x, -270f))), _wgslsmith_f_op_f32(f32(-1f) * -1523f)), var_1.x, 366f);
    let var_4 = _wgslsmith_dot_vec3_i32(global1.b.zxw & firstLeadingBit(vec3<i32>(2147483647i | u_input.b.x, -global1.b.x, u_input.c.x)), vec3<i32>(global1.a.x, -var_2.b.x, -_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(1i, -19188i))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)))), 1u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -2092f), _wgslsmith_f_op_f32(abs(-2046f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_1.x, !var_5))))), var_1.x);
}


struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(131f, 661f, -688f), vec3<f32>(828f, -1110f, 286f), vec3<f32>(-747f, -370f, -885f), vec3<f32>(-452f, -999f, -1065f), vec3<f32>(1013f, 1000f, -1120f), vec3<f32>(1870f, -522f, 417f), vec3<f32>(-1669f, -1000f, -1222f), vec3<f32>(1876f, -103f, -1000f), vec3<f32>(892f, -327f, -1245f), vec3<f32>(-515f, -1011f, -1058f));

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_2(vec4<bool>(false, true, true, true), -1i, false), vec3<i32>(29080i, 15452i, -1i), 28770i, true), Struct_4(Struct_2(vec4<bool>(false, true, false, true), -7927i, false), vec3<i32>(-56870i, 0i, -13905i), -59722i, true), Struct_4(Struct_2(vec4<bool>(false, true, true, false), -39232i, true), vec3<i32>(-1100i, 21281i, -1i), i32(-2147483648), true), Struct_4(Struct_2(vec4<bool>(true, false, true, true), -27071i, false), vec3<i32>(-23232i, 0i, i32(-2147483648)), -27997i, false), Struct_4(Struct_2(vec4<bool>(true, false, false, true), i32(-2147483648), false), vec3<i32>(3013i, 0i, -1i), i32(-2147483648), true), Struct_4(Struct_2(vec4<bool>(false, true, true, true), 0i, false), vec3<i32>(-3287i, i32(-2147483648), 2885i), 7733i, true), Struct_4(Struct_2(vec4<bool>(true, true, false, true), -3417i, false), vec3<i32>(i32(-2147483648), 19202i, 2295i), 5484i, false), Struct_4(Struct_2(vec4<bool>(false, false, true, false), 13455i, true), vec3<i32>(-50425i, 2147483647i, 43562i), 1i, true), Struct_4(Struct_2(vec4<bool>(false, true, true, false), 2147483647i, false), vec3<i32>(85i, 2147483647i, 2147483647i), 0i, false), Struct_4(Struct_2(vec4<bool>(true, false, false, false), 1i, false), vec3<i32>(2147483647i, 31108i, 1i), -13385i, false), Struct_4(Struct_2(vec4<bool>(false, true, true, false), 1i, true), vec3<i32>(-41705i, 22577i, i32(-2147483648)), -63306i, false), Struct_4(Struct_2(vec4<bool>(true, true, true, false), -1835i, true), vec3<i32>(-58791i, 2147483647i, 0i), 16097i, true), Struct_4(Struct_2(vec4<bool>(true, false, true, false), 2147483647i, false), vec3<i32>(-1i, -51119i, 2147483647i), 0i, true), Struct_4(Struct_2(vec4<bool>(true, true, false, false), 0i, true), vec3<i32>(-30746i, 0i, 17649i), 25792i, true), Struct_4(Struct_2(vec4<bool>(true, true, true, true), -1i, false), vec3<i32>(-71318i, 2147483647i, 1i), -1i, true), Struct_4(Struct_2(vec4<bool>(false, true, false, false), -1i, true), vec3<i32>(-11502i, 36637i, i32(-2147483648)), -1i, true), Struct_4(Struct_2(vec4<bool>(false, true, false, false), -16660i, true), vec3<i32>(0i, i32(-2147483648), 78516i), i32(-2147483648), false), Struct_4(Struct_2(vec4<bool>(false, false, true, false), i32(-2147483648), false), vec3<i32>(i32(-2147483648), -1131i, 0i), -28241i, false), Struct_4(Struct_2(vec4<bool>(false, true, false, true), 1i, false), vec3<i32>(-45548i, -1i, 8451i), 2147483647i, true), Struct_4(Struct_2(vec4<bool>(false, false, true, false), -12726i, false), vec3<i32>(2147483647i, 1i, -1i), -6626i, false), Struct_4(Struct_2(vec4<bool>(false, false, false, true), -1i, false), vec3<i32>(-1267i, -1i, i32(-2147483648)), 1i, true), Struct_4(Struct_2(vec4<bool>(false, true, false, true), -14536i, true), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), 2147483647i, true), Struct_4(Struct_2(vec4<bool>(true, false, false, false), -16446i, false), vec3<i32>(-1i, 31418i, 0i), 2147483647i, true), Struct_4(Struct_2(vec4<bool>(false, true, false, false), 23836i, false), vec3<i32>(-16989i, 2168i, -1i), -1i, true), Struct_4(Struct_2(vec4<bool>(false, true, true, true), i32(-2147483648), true), vec3<i32>(1i, 2147483647i, 2147483647i), 0i, false), Struct_4(Struct_2(vec4<bool>(false, false, false, false), 12659i, true), vec3<i32>(1i, -1i, 39504i), 2147483647i, true), Struct_4(Struct_2(vec4<bool>(true, true, true, false), 1i, false), vec3<i32>(40487i, i32(-2147483648), i32(-2147483648)), 30350i, false), Struct_4(Struct_2(vec4<bool>(true, false, true, false), -25739i, true), vec3<i32>(44668i, 21020i, -1i), 1i, false), Struct_4(Struct_2(vec4<bool>(true, false, false, true), -1i, true), vec3<i32>(45788i, 1i, -50982i), i32(-2147483648), false), Struct_4(Struct_2(vec4<bool>(false, true, false, true), 2147483647i, false), vec3<i32>(-30268i, -51557i, 0i), 1i, false));

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec4<bool>(true, true, false, false), i32(-2147483648), true), Struct_2(vec4<bool>(false, true, true, true), 0i, true), Struct_2(vec4<bool>(true, false, false, true), -1i, false), Struct_2(vec4<bool>(true, true, true, true), 0i, false), Struct_2(vec4<bool>(false, true, true, false), i32(-2147483648), false), Struct_2(vec4<bool>(false, false, true, false), i32(-2147483648), false), Struct_2(vec4<bool>(false, false, false, false), 0i, false), Struct_2(vec4<bool>(true, false, true, false), 0i, true), Struct_2(vec4<bool>(false, true, false, false), i32(-2147483648), true), Struct_2(vec4<bool>(true, true, false, true), i32(-2147483648), false), Struct_2(vec4<bool>(false, true, true, true), 0i, false), Struct_2(vec4<bool>(true, true, true, false), i32(-2147483648), false), Struct_2(vec4<bool>(true, true, true, true), -672i, false), Struct_2(vec4<bool>(true, false, false, true), i32(-2147483648), true), Struct_2(vec4<bool>(true, true, true, true), -1i, true), Struct_2(vec4<bool>(true, true, true, false), 32245i, false), Struct_2(vec4<bool>(false, false, true, true), 37838i, false), Struct_2(vec4<bool>(true, false, false, false), i32(-2147483648), true), Struct_2(vec4<bool>(true, false, true, false), 26994i, false), Struct_2(vec4<bool>(true, true, false, true), i32(-2147483648), false), Struct_2(vec4<bool>(false, false, false, false), -18355i, true), Struct_2(vec4<bool>(false, true, true, true), 21209i, true), Struct_2(vec4<bool>(false, false, false, true), 1i, false), Struct_2(vec4<bool>(false, true, true, false), 2147483647i, false), Struct_2(vec4<bool>(false, true, true, true), -32003i, false), Struct_2(vec4<bool>(true, true, true, false), 0i, false), Struct_2(vec4<bool>(false, false, true, false), 0i, false), Struct_2(vec4<bool>(false, false, true, true), 0i, true), Struct_2(vec4<bool>(true, true, true, false), -38333i, true), Struct_2(vec4<bool>(true, true, false, false), -1i, false), Struct_2(vec4<bool>(false, true, true, true), 30735i, true), Struct_2(vec4<bool>(true, false, true, false), 15025i, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> vec2<i32> {
    var var_0 = ~(~countOneBits(select(vec4<u32>(46691u, u_input.a.x, arg_0, u_input.a.x), select(vec4<u32>(u_input.a.x, arg_0, u_input.a.x, 28935u), vec4<u32>(arg_0, 0u, 21332u, arg_0), vec4<bool>(false, true, arg_2, arg_2)), !vec4<bool>(true, arg_2, true, false))));
    global3 = array<Struct_2, 32>();
    let var_1 = Struct_3(countOneBits(-39132i), arg_1, vec2<f32>(_wgslsmith_div_f32(-800f, global1.d), _wgslsmith_div_f32(266f, global1.c.x)), global1.c.x);
    var var_2 = Struct_2(select(select(!select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(true, false, arg_2, arg_2), true), vec4<bool>(any(vec4<bool>(false, arg_2, false, false)), true, arg_2, true), vec4<bool>(true, arg_2, true, true)), !select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), !vec4<bool>(arg_2, true, true, arg_2), any(vec3<bool>(false, arg_2, arg_2))), var_1.c.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), ~(-2147483647i), select(arg_2, all(!(!vec2<bool>(true, arg_2))), any(!(!vec3<bool>(arg_2, arg_2, arg_2)))));
    let var_3 = _wgslsmith_add_i32(0i, ~0i);
    return vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.b, _wgslsmith_mult_i32(-2147483647i, var_1.b), _wgslsmith_clamp_i32(var_3, var_3, var_3), 1i), -_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, var_2.b, 28889i, 58319i) | vec4<i32>(global1.b, var_3, var_1.a, var_2.b), vec4<i32>(var_1.b, 1i, -32248i, global1.a) & vec4<i32>(30034i, 48498i, -1i, var_2.b))), _wgslsmith_div_i32(~(-1i) & (var_2.b ^ var_3), ~var_1.a) >> (var_0.x % 32u));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<bool>(false, false, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(global1.d > -1668f, true))));
    let var_1 = ~(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) ^ 4294967295u, abs(u_input.a.x)));
    var var_2 = Struct_4(Struct_2(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, true), !var_0.x), global1.b, var_0.x), ~(~(~(vec3<i32>(global1.a, 1i, global1.b) << (vec3<u32>(18629u, u_input.a.x, 71025u) % vec3<u32>(32u))))), -_wgslsmith_dot_vec2_i32(~(-vec2<i32>(9907i, -44610i)), ~func_3(0u, global1.b, true)), false);
    global2 = array<Struct_4, 30>();
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, u_input.a.x), vec2<u32>(u_input.a.x, reverseBits(countOneBits(13931u >> (1u % 32u))))), 32u)];
    return Struct_3(global1.b, var_2.c >> (_wgslsmith_add_u32(var_1 << (var_1 % 32u), ~63641u) % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)) * _wgslsmith_f_op_f32(ceil(621f))), _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.c.x)))))), _wgslsmith_f_op_f32(max(-208f, _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(sign(global1.d))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, -793f)), _wgslsmith_f_op_f32(sign(315f))))))));
    let var_1 = !all(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, false, false), true, false, any(vec4<bool>(false, true, true, true))), true));
    let var_2 = ~vec4<u32>(abs(35878u), _wgslsmith_mod_u32(~arg_2.a, 0u << (u_input.a.x % 32u)), reverseBits(abs(u_input.a.x) ^ _wgslsmith_mult_u32(u_input.a.x, arg_2.a)), _wgslsmith_dot_vec3_u32(select(~u_input.a, vec3<u32>(0u, 50586u, u_input.a.x), all(vec2<bool>(true, false))), abs(vec3<u32>(1u, 0u, arg_2.a))));
    global1 = func_2();
    let var_3 = _wgslsmith_sub_i32(1i, arg_0.a);
    return Struct_3(arg_2.b, -(~79093i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_3.c, _wgslsmith_f_op_vec2_f32(select(global1.c, global1.c, var_1)))) * vec2<f32>(_wgslsmith_f_op_f32(arg_3.d - arg_3.d), _wgslsmith_f_op_f32(select(global1.d, arg_0.d, false)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(942f, _wgslsmith_f_op_f32(-arg_3.d)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(405f, -107f, false))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x + -287f));
    let var_1 = func_4(func_2(), ~min(vec2<i32>(~arg_2.b, _wgslsmith_div_i32(6941i, arg_2.b)), -(~vec2<i32>(24518i, -44726i))), Struct_1(1u, reverseBits(_wgslsmith_mod_i32(firstTrailingBit(0i), global1.a))), Struct_3(arg_2.b, global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-319f, global1.d, false)), _wgslsmith_f_op_f32(-global1.c.x)) - global1.c), -1619f));
    global3 = array<Struct_2, 32>();
    global0 = array<vec3<f32>, 10>();
    let var_2 = ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -var_1.b, -2147483647i), ~(-vec3<i32>(39526i, -58910i, arg_2.b))));
    return Struct_3(_wgslsmith_sub_i32(~(~8021i), _wgslsmith_add_i32(min(~global1.a, var_1.a), -1i)), -(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1087i, var_2.x, var_1.b, arg_2.b), vec4<i32>(global1.b, global1.b, -65273i, var_1.b)), ~var_2.x)), _wgslsmith_f_op_vec2_f32(-var_1.c), -538f);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> vec4<f32> {
    global2 = array<Struct_4, 30>();
    global3 = array<Struct_2, 32>();
    let var_0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    global3 = array<Struct_2, 32>();
    var var_1 = false;
    return vec4<f32>(1709f, _wgslsmith_f_op_f32(global1.c.x * 842f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.c.x, global1.c.x)), global1.d), _wgslsmith_f_op_f32(min(-521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f - arg_0.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 30>();
    global0 = array<vec3<f32>, 10>();
    global1 = Struct_3(~min(global1.a, 7184i), 0i, vec2<f32>(1000f, global1.d), _wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.c.x)))) * global1.d)));
    global2 = array<Struct_4, 30>();
    var var_0 = reverseBits(firstLeadingBit(countOneBits(1i >> (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-1i) | global1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_1(vec4<u32>(u_input.a.x, 1u, 17473u, u_input.a.x), vec4<f32>(1472f, global1.d, 1091f, 309f), global3[_wgslsmith_index_u32(16900u, 32u)]), u_input.a.x, _wgslsmith_f_op_f32(abs(global1.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-242f + 1815f), _wgslsmith_f_op_f32(-global1.d), -183f, _wgslsmith_div_f32(438f, -347f)))), _wgslsmith_f_op_vec2_f32(-global1.c));
}


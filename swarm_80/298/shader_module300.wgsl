struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(3311i, -1i, -16088i);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 14326i), Struct_1(vec4<bool>(true, true, true, false), 2147483647i), vec2<f32>(-1187f, 1221f));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<i32>(15107i, -1i), Struct_1(vec4<bool>(true, true, true, false), 1i), vec2<f32>(879f, -165f)), Struct_2(vec2<i32>(-1i, 26098i), Struct_1(vec4<bool>(true, true, true, true), -86387i), vec2<f32>(831f, -1297f)), Struct_2(vec2<i32>(-1i, -30550i), Struct_1(vec4<bool>(false, false, true, true), 6112i), vec2<f32>(-226f, 229f)), Struct_2(vec2<i32>(-15177i, 1i), Struct_1(vec4<bool>(true, false, true, false), 10510i), vec2<f32>(1178f, 1516f)), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(vec4<bool>(true, true, false, true), -1i), vec2<f32>(382f, -1462f)), Struct_2(vec2<i32>(0i, -1i), Struct_1(vec4<bool>(false, true, false, true), 0i), vec2<f32>(-1281f, -809f)), Struct_2(vec2<i32>(-1i, -9355i), Struct_1(vec4<bool>(false, false, false, false), 0i), vec2<f32>(1406f, -692f)), Struct_2(vec2<i32>(16328i, -20375i), Struct_1(vec4<bool>(false, true, true, false), -16901i), vec2<f32>(-1117f, 244f)), Struct_2(vec2<i32>(2147483647i, -11705i), Struct_1(vec4<bool>(false, false, false, false), -4439i), vec2<f32>(-891f, -213f)), Struct_2(vec2<i32>(56308i, -14417i), Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648)), vec2<f32>(-1072f, -252f)), Struct_2(vec2<i32>(-31535i, -2131i), Struct_1(vec4<bool>(false, false, true, true), 0i), vec2<f32>(102f, -1386f)), Struct_2(vec2<i32>(30762i, 16770i), Struct_1(vec4<bool>(false, true, true, false), -23871i), vec2<f32>(-1183f, -116f)), Struct_2(vec2<i32>(i32(-2147483648), -34013i), Struct_1(vec4<bool>(false, true, false, false), -1i), vec2<f32>(476f, 1078f)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), -1i), vec2<f32>(1100f, -833f)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec4<bool>(false, false, true, false), 2147483647i), vec2<f32>(-2154f, -288f)), Struct_2(vec2<i32>(42497i, 2147483647i), Struct_1(vec4<bool>(false, false, true, false), -58365i), vec2<f32>(-251f, -502f)), Struct_2(vec2<i32>(-1i, -773i), Struct_1(vec4<bool>(true, false, true, true), 1i), vec2<f32>(-700f, -1169f)), Struct_2(vec2<i32>(-1i, -47211i), Struct_1(vec4<bool>(false, true, false, true), 2147483647i), vec2<f32>(1379f, -1979f)), Struct_2(vec2<i32>(10150i, -1i), Struct_1(vec4<bool>(false, false, true, true), i32(-2147483648)), vec2<f32>(-1607f, -823f)), Struct_2(vec2<i32>(-956i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), 2147483647i), vec2<f32>(1049f, -1000f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global1 = Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(~u_input.a, 3u)]), global1.b, global1.c);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, reverseBits(u_input.a)), vec3<u32>(u_input.a, 4954u, ~u_input.a)), vec3<u32>(76674u, ~u_input.a, u_input.a)) >> (u_input.a % 32u), 20u)];
    var var_0 = _wgslsmith_div_vec3_i32(firstLeadingBit(abs(firstTrailingBit(vec3<i32>(40292i, global1.b.b, 52634i)))), ~(~(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global1.b.b) >> (vec3<u32>(u_input.a, 29939u, 12712u) % vec3<u32>(32u))))) | firstTrailingBit(countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.b, 2147483647i, -40249i), vec3<i32>(1i, global0[_wgslsmith_index_u32(30735u, 3u)], -34482i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(807f))) * _wgslsmith_f_op_f32(-1000f - -1191f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.x, -648f), _wgslsmith_f_op_f32(-global1.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(261f * 152f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(276f - _wgslsmith_f_op_f32(select(-1763f, global1.c.x, global1.b.a.x))))))));
    global0 = array<i32, 3>();
    return !any(!(!vec3<bool>(global1.b.a.x, global1.b.a.x, true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    let var_0 = arg_2;
    global2 = array<Struct_2, 20>();
    let var_1 = Struct_2(-(vec2<i32>(-1i) * -min(arg_0.ww, global1.a)), Struct_1(select(select(vec4<bool>(global1.b.a.x, false, var_0.a.x, true), vec4<bool>(true, arg_2.a.x, global1.b.a.x, global1.b.a.x), false), select(vec4<bool>(false, var_0.a.x, global1.b.a.x, global1.b.a.x), var_0.a, !vec4<bool>(false, arg_1, false, global1.b.a.x)), !(-2147483647i > global1.b.b)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-arg_0.wx, vec2<i32>(-36682i, -20643i)), select(-global1.a, min(global1.a, vec2<i32>(-41188i, -2038i)), global1.b.a.yz))), vec2<f32>(-514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(step(1083f, -1369f)))))));
    var var_2 = var_1.b;
    var var_3 = var_1;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-785f, 761f, global1.b.a.x)), _wgslsmith_div_f32(var_1.c.x, var_1.c.x))), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + 1656f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(249f, -762f, var_3.c.x, var_1.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -430f, 358f, -1462f) - vec4<f32>(var_1.c.x, 159f, -1465f, -590f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.c.x - -121f), global1.c.x, 211f, _wgslsmith_f_op_f32(236f - -1724f)))));
}

fn func_2(arg_0: i32) -> f32 {
    global1 = global2[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_0 = Struct_2(global1.a, global1.b, vec2<f32>(global1.c.x, global1.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-845f, var_0.c.x, -1035f, -1222f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, var_0.c.x, var_0.c.x, -945f)))) * _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(102794i, global0[_wgslsmith_index_u32(1u, 3u)], 2147483647i, global1.a.x), func_3(), var_0.b, 68598i)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f + var_0.c.x)) * 2156f), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-16218i, global0[_wgslsmith_index_u32(0u, 3u)], global1.b.b, var_0.a.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], -45133i, 0i, var_0.b.b), vec4<i32>(2147483647i, 17819i, 36051i, arg_0)), select(vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], global1.a.x, 0i, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<i32>(arg_0, global0[_wgslsmith_index_u32(7581u, 3u)], global0[_wgslsmith_index_u32(8084u, 3u)], global1.a.x), true), vec4<i32>(var_0.b.b, arg_0, global1.b.b, 0i)), var_0.b.a.x, Struct_1(var_0.b.a, _wgslsmith_add_i32(-40771i, -2466i)), ~_wgslsmith_mult_i32(arg_0, arg_0))).x, 1005f, _wgslsmith_f_op_f32(f32(-1f) * -387f)));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(min(-(~vec4<i32>(global1.b.b, global1.a.x, var_0.a.x, -7763i)), vec4<i32>(1i, var_0.b.b, ~arg_0, 2147483647i)), min(-abs(vec4<i32>(var_0.b.b, -1i, 39355i, global0[_wgslsmith_index_u32(u_input.a, 3u)])), ~vec4<i32>(-12539i, -2147483647i, arg_0, arg_0) ^ vec4<i32>(-5476i, global0[_wgslsmith_index_u32(34606u, 3u)], var_0.b.b, var_0.b.b))), vec4<i32>(-30122i, abs(i32(-1i) * -2147483647i), arg_0 << (~max(u_input.a, u_input.a) % 32u), max(abs(~var_0.b.b), countOneBits(abs(-49579i)))));
    let var_3 = Struct_1(select(var_0.b.a, select(global1.b.a, !vec4<bool>(global1.b.a.x, var_0.b.a.x, var_0.b.a.x, global1.b.a.x), vec4<bool>(var_0.c.x <= 816f, var_0.b.a.x, true, global1.b.a.x)), var_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2000f + -328f))), var_0.b.b);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -357f)))))) + _wgslsmith_f_op_f32(-var_0.c.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1612f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(2147483647i, 57713i, 0i, arg_1.b), false, arg_1, arg_0)).x - _wgslsmith_f_op_f32(-414f - 594f))), all(!select(vec2<bool>(true, false), arg_1.a.xz, vec2<bool>(arg_1.a.x, false))))));
    let var_1 = Struct_1(arg_1.a, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(17622u, 3u)], 1i, 0i), vec4<i32>(44656i, global1.b.b, 0i, 26087i)), ~global0[_wgslsmith_index_u32(4294967295u, 3u)]), global1.a)));
    let var_2 = min(u_input.a, ~u_input.a) & ~_wgslsmith_dot_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 45599u, 10069u, u_input.a)), min(vec4<u32>(59788u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_div_vec4_u32(vec4<u32>(39295u, u_input.a, 0u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 34456u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 29768u, 1u, 87193u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - -1037f) * _wgslsmith_f_op_f32(ceil(global1.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))))));
    let var_4 = Struct_2(global1.a, Struct_1(!arg_1.a, _wgslsmith_add_i32(-5511i, var_1.b)), global1.c);
    return Struct_2(-vec2<i32>(arg_1.b >> (71373u % 32u), ~(~arg_1.b)), var_1, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(198f, -1396f) - global1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 20>();
    global0 = array<i32, 3>();
    var var_0 = func_1(-(~_wgslsmith_add_i32(-2147483647i, -global0[_wgslsmith_index_u32(u_input.a, 3u)])), Struct_1(select(!global1.b.a, select(!global1.b.a, vec4<bool>(false, global1.b.a.x, true, true), global1.b.a), vec4<bool>(global1.b.a.x, all(vec2<bool>(false, false)), global1.b.a.x, global1.b.a.x)), i32(-1i) * -global0[_wgslsmith_index_u32(1u, 3u)]));
    global1 = Struct_2(~vec2<i32>(global1.a.x, global0[_wgslsmith_index_u32(u_input.a, 3u)] | -1i) >> (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(769f, -1288f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(-9817i, 93588i, var_0.a.x, global1.b.b), false, global1.b, 47981i)).x))) * var_0.c));
    var var_1 = func_1(_wgslsmith_mult_i32(reverseBits(global0[_wgslsmith_index_u32(5769u, 3u)]), 1i), Struct_1(!vec4<bool>(any(global1.b.a), func_3(), true, false), _wgslsmith_mod_i32(var_0.a.x & -var_0.a.x, 2147483647i))).b;
    global2 = array<Struct_2, 20>();
    var var_2 = func_1(-countOneBits(-1i), Struct_1(func_1(_wgslsmith_div_i32(var_0.a.x, _wgslsmith_sub_i32(0i, var_1.b)), Struct_1(select(vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, false), vec4<bool>(global1.b.a.x, var_0.b.a.x, true, var_1.a.x), var_1.a.x), reverseBits(var_1.b))).b.a, abs(countOneBits(abs(var_1.b))))).b;
    let var_3 = !(10077u <= reverseBits(reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}


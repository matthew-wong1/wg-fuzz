struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(0u, vec2<u32>(1u, 40410u)), Struct_3(4294967295u, vec2<u32>(3316u, 4294967295u)), Struct_3(0u, vec2<u32>(80655u, 1u)), Struct_3(15466u, vec2<u32>(1543u, 41888u)), Struct_3(1u, vec2<u32>(4294967295u, 77089u)), Struct_3(4294967295u, vec2<u32>(1u, 4294967295u)), Struct_3(0u, vec2<u32>(1u, 45554u)), Struct_3(0u, vec2<u32>(0u, 1u)), Struct_3(4294967295u, vec2<u32>(0u, 6579u)), Struct_3(4294967295u, vec2<u32>(34781u, 21036u)), Struct_3(4294967295u, vec2<u32>(7227u, 1u)), Struct_3(1u, vec2<u32>(4294967295u, 40205u)), Struct_3(4294967295u, vec2<u32>(0u, 40748u)), Struct_3(31240u, vec2<u32>(100892u, 12015u)), Struct_3(1u, vec2<u32>(2979u, 35898u)), Struct_3(1u, vec2<u32>(4294967295u, 34740u)), Struct_3(1u, vec2<u32>(0u, 1u)), Struct_3(29383u, vec2<u32>(71752u, 95u)), Struct_3(32255u, vec2<u32>(1u, 20331u)), Struct_3(0u, vec2<u32>(23388u, 4294967295u)), Struct_3(10141u, vec2<u32>(1u, 0u)), Struct_3(4294967295u, vec2<u32>(72198u, 12862u)), Struct_3(0u, vec2<u32>(0u, 4294967295u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = u_input.a.x << (~(~(~_wgslsmith_mod_u32(global1.a, 4294967295u))) % 32u);
    global2 = array<Struct_3, 23>();
    var_0 = firstLeadingBit(firstTrailingBit((_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) | u_input.a.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(5718u, global0[_wgslsmith_index_u32(0u, 25u)], 0u, global0[_wgslsmith_index_u32(global1.a, 25u)]), ~vec4<u32>(global1.b.x, global1.b.x, global1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21197u, 25u)], 25u)])) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-280f, 1150f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-978f, arg_0)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(350f))))) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -420f), arg_0, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(arg_0 + -913f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) * _wgslsmith_f_op_f32(-136f - arg_0)))));
    var var_2 = var_1.x;
    return !select(vec2<bool>(true, global0[_wgslsmith_index_u32(global1.b.x, 25u)] < 12907u), select(select(vec2<bool>(true, false), vec2<bool>(true, true), arg_0 >= arg_0), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !vec2<bool>(0u < global1.a, all(vec3<bool>(false, false, true))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) == _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, arg_0.c))) != _wgslsmith_f_op_f32(select(-726f, 1149f, true)));
    var var_1 = select(select(!select(!var_0.xx, var_0.zy, var_0.x), func_3(_wgslsmith_f_op_f32(f32(-1f) * -598f)), var_0.zy), vec2<bool>(var_0.x, func_3(arg_1).x), !(!var_0.x));
    let var_2 = -1695f;
    var_1 = !vec2<bool>(func_3(_wgslsmith_f_op_f32(round(-968f))).x, false);
    return Struct_1(-u_input.a.x, global0[_wgslsmith_index_u32(countOneBits(50631u & global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(39437u, 100980u), 25u)]), 25u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, var_2) - arg_0.c) - _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(exp2(var_2))))))), 52625u);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, arg_1.c, -288f)))));
    let var_1 = Struct_1(-2147483647i, ~global1.a, -1321f, ~arg_1.b);
    let var_2 = vec4<i32>(arg_1.a, -(~(-(~20876i))), _wgslsmith_clamp_i32(reverseBits(~(-2147483647i)), firstLeadingBit(-(-1i ^ u_input.a.x)), -1i), -3479i);
    var var_3 = arg_0;
    var var_4 = Struct_2(-abs(vec4<i32>(2147483647i, 2147483647i, u_input.a.x, arg_1.a) << (vec4<u32>(1u, global0[_wgslsmith_index_u32(18318u, 25u)], 1u, global1.a) % vec4<u32>(32u))) >> (vec4<u32>(select(countOneBits(85718u), var_1.d, 63430i > var_2.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_1.d, 24956u), ~var_1.d), _wgslsmith_sub_u32(35545u, arg_1.d), var_1.d) % vec4<u32>(32u)), firstTrailingBit(4294967295u));
    return Struct_2(vec4<i32>(func_2(arg_1, var_0.x).a, firstLeadingBit(var_1.a << ((arg_1.d | var_1.b) % 32u)), u_input.a.x, -(~(~u_input.a.x))), 4294967295u);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a.zy, ~vec2<i32>(arg_0.a.x, _wgslsmith_clamp_i32(arg_2.b.a, u_input.a.x, arg_2.d.a))) | -abs(38842i);
    let var_1 = ~max(0u, 4294967295u);
    let var_2 = func_4(!(true || (global1.a > arg_3)), func_2(func_2(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-572f, arg_2.d.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1, -880f))))))));
    var_0 = u_input.a.x;
    let var_3 = 2147483647i | -countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(19750i, arg_2.c.a.x), var_2.a.x));
    return func_2(func_2(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1935f)), _wgslsmith_f_op_f32(sign(arg_1)));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_5(func_4(true, func_2(Struct_1(1i, select(global0[_wgslsmith_index_u32(21533u, 25u)], 439u, true), _wgslsmith_f_op_f32(-1107f + 1035f), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1478f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-992f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-484f * -996f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(723f)) * -324f))), Struct_4(func_2(func_2(Struct_1(2147483647i, 9029u, 1586f, global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(trunc(2452f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -219f))), func_2(Struct_1(-39085i, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 0u, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), vec4<u32>(51718u, 2986u, 14351u, global1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1054f), _wgslsmith_div_u32(global1.a, global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(435f)) + -464f)), func_4(select(true, select(true, false, false), all(vec3<bool>(true, false, false))), Struct_1(_wgslsmith_div_i32(-10753i, -1i), ~14587u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a)), func_2(Struct_1(u_input.a.x | 27954i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.x, 25u)], 25u)], global1.a), 25u)], -241f, ~global1.a), 1041f)), ~(~1u));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b, 67995u), 23u)];
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a, u_input.a.x, u_input.a.x), vec4<i32>(var_0.a, var_0.a, u_input.a.x, 41527i)), 2147483647i, ~(-18205i), _wgslsmith_clamp_i32(1i, -2147483647i, u_input.a.x)), vec4<i32>(15999i, -56124i, -u_input.a.x, reverseBits(-u_input.a.x))), -(-(~vec4<i32>(-18440i, var_0.a, var_0.a, var_0.a)) ^ min(vec4<i32>(var_0.a, -37503i, u_input.a.x, 14855i), vec4<i32>(-48315i, -25086i, -69647i, var_0.a))));
    var var_3 = Struct_2(vec4<i32>(4037i, abs(-2147483647i), 54i, 0i), 4294967295u);
    let var_4 = Struct_4(Struct_1(-2147483647i, ~_wgslsmith_dot_vec2_u32(var_1.b, abs(vec2<u32>(0u, 34158u))), 2496f, abs(var_0.d)), Struct_1(firstLeadingBit(min(_wgslsmith_mod_i32(-9028i, var_0.a), -2147483647i)), global1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(Struct_1(u_input.a.x, 6953u, -209f, global0[_wgslsmith_index_u32(5440u, 25u)]), var_0.c).c))), func_4(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false)), Struct_1(37535i, 1u, _wgslsmith_f_op_f32(var_0.c + var_0.c), 0u)).b), func_4(global0[_wgslsmith_index_u32(18910u, 25u)] < countOneBits(~71295u), func_5(Struct_2(vec4<i32>(2147483647i, var_3.a.x, 1i, 0i), ~global0[_wgslsmith_index_u32(var_3.b, 25u)]), 275f, Struct_4(func_5(Struct_2(vec4<i32>(var_3.a.x, -2147483647i, var_3.a.x, var_0.a), global1.b.x), -133f, Struct_4(Struct_1(var_0.a, 0u, -272f, global0[_wgslsmith_index_u32(global1.a, 25u)]), Struct_1(2147483647i, global1.a, var_0.c, 4294967295u), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 0i, var_0.a), var_1.a), Struct_1(-17000i, 0u, 1000f, 36263u)), var_0.d), Struct_1(-46751i, global0[_wgslsmith_index_u32(global1.b.x, 25u)], var_0.c, global1.a), func_4(true, Struct_1(var_3.a.x, global0[_wgslsmith_index_u32(3416u, 25u)], var_0.c, global1.a)), Struct_1(var_3.a.x, var_1.a, var_0.c, 58644u)), ~(~4294967295u))), Struct_1(_wgslsmith_mult_i32(var_0.a, select(1i, _wgslsmith_add_i32(-9781i, -1i), true)), func_5(func_4(false, Struct_1(0i, 4294967295u, var_0.c, 1u)), _wgslsmith_f_op_f32(-var_0.c), Struct_4(Struct_1(-2147483647i, 4294967295u, 783f, 4294967295u), Struct_1(u_input.a.x, var_1.a, 312f, 86578u), Struct_2(var_3.a, var_3.b), Struct_1(u_input.a.x, var_3.b, var_0.c, 15141u)), 1u).d << (var_3.b % 32u), _wgslsmith_f_op_f32(-var_0.c), func_2(Struct_1(var_3.a.x, ~23756u, -670f, 29748u ^ var_0.b), var_0.c).d));
    return ~(~_wgslsmith_sub_vec3_u32(max(abs(vec3<u32>(global1.b.x, var_1.a, 0u)), ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u, global0[_wgslsmith_index_u32(global1.a, 25u)])), ~select(vec3<u32>(global0[_wgslsmith_index_u32(1u, 25u)], var_0.d, var_1.b.x), vec3<u32>(34773u, var_1.b.x, 61365u), true)));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_3(~firstTrailingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 25u)], 25u)], 25u)], _wgslsmith_div_u32(global1.b.x, 4294967295u))), vec2<u32>(3114u, 49387u) | _wgslsmith_div_vec2_u32(arg_1, ~_wgslsmith_clamp_vec2_u32(global1.b, vec2<u32>(78435u, arg_2), arg_1)));
    var var_1 = Struct_1(u_input.a.x & -2147483647i, 23072u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(518f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1471f + 1295f))))))), ~global0[_wgslsmith_index_u32(countOneBits(0u), 25u)]);
    let var_2 = true;
    var_0 = Struct_3(~(~1u), ~reverseBits(firstTrailingBit(~global1.b)));
    var var_3 = var_1.c;
    return func_4(all(select(select(vec4<bool>(arg_3.x, true, arg_3.x, var_2), vec4<bool>(arg_3.x, arg_3.x, true, var_2), select(vec4<bool>(var_2, arg_3.x, true, var_2), vec4<bool>(var_2, false, true, true), arg_3.x)), vec4<bool>(-696f == var_1.c, u_input.a.x < var_1.a, true, !arg_3.x), true)), Struct_1(abs(~51157i), global1.a, -1189f, var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-(~abs(~u_input.a)));
    var var_1 = func_6(func_1(), global1.b, func_5(Struct_2(-abs(vec4<i32>(37137i, u_input.a.x, u_input.a.x, u_input.a.x)), (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 25u)], 25u)] ^ global1.a) | ~global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(535f + 2015f))), Struct_4(func_5(Struct_2(vec4<i32>(var_0.x, 14994i, 0i, u_input.a.x), global1.b.x), _wgslsmith_f_op_f32(946f - 1000f), Struct_4(Struct_1(66096i, global0[_wgslsmith_index_u32(global1.b.x, 25u)], -814f, global0[_wgslsmith_index_u32(global1.b.x, 25u)]), Struct_1(var_0.x, global1.b.x, 1739f, global1.a), Struct_2(vec4<i32>(2147483647i, 2147483647i, 0i, u_input.a.x), 1118u), Struct_1(u_input.a.x, global1.b.x, -555f, global1.a)), max(1u, 41811u)), func_2(func_2(Struct_1(55108i, global1.a, -1000f, 65750u), -1000f), _wgslsmith_f_op_f32(ceil(1613f))), Struct_2(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, var_0.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], 25u)]), Struct_1(select(u_input.a.x, u_input.a.x, false), _wgslsmith_div_u32(1u, global1.a), _wgslsmith_div_f32(-204f, -418f), _wgslsmith_clamp_u32(global1.b.x, 1u, 71373u))), 1u).d, select(select(func_3(1274f), vec2<bool>(true, all(vec2<bool>(false, false))), false), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), 40307u < global0[_wgslsmith_index_u32(1702u, 25u)]), vec2<bool>(true, select(false, true, false))), select(_wgslsmith_div_f32(-249f, -516f) <= _wgslsmith_f_op_f32(floor(-361f)), select(global0[_wgslsmith_index_u32(4294967295u, 25u)] < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43830u, 25u)], 25u)], 25u)], true, false), true)));
    var var_2 = !vec4<bool>(~(478u << (1u % 32u)) <= global0[_wgslsmith_index_u32(1u, 25u)], !func_3(_wgslsmith_f_op_f32(-622f * 1834f)).x, global0[_wgslsmith_index_u32(1u, 25u)] < ~reverseBits(var_1.b), !func_3(_wgslsmith_f_op_f32(ceil(-198f))).x);
    let var_3 = -410f;
    var var_4 = Struct_4(Struct_1(_wgslsmith_dot_vec2_i32(min(var_0.xx, func_6(vec3<u32>(4294967295u, global1.b.x, global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<u32>(483u, 1u), 50193u, vec2<bool>(var_2.x, var_2.x)).a.xw), select(vec2<i32>(-25110i, var_1.a.x), ~var_1.a.xz, var_2.xz)), max(~(~var_1.b), _wgslsmith_dot_vec2_u32(~global1.b, global1.b)), _wgslsmith_div_f32(func_2(func_2(Struct_1(var_0.x, 4294967295u, var_3, global0[_wgslsmith_index_u32(4294967295u, 25u)]), 481f), -510f).c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_3, var_3))))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 25u)], 8678u) & vec3<u32>(var_1.b, var_1.b, 21400u), vec3<u32>(29738u, var_1.b, global1.a) ^ vec3<u32>(1u, var_1.b, global0[_wgslsmith_index_u32(global1.b.x, 25u)])))), func_5(func_6(max(~vec3<u32>(var_1.b, 1u, 85770u), vec3<u32>(global1.b.x, var_1.b, global1.a)), vec2<u32>(~0u, ~var_1.b), 4294967295u, var_2.yw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(871f)) * _wgslsmith_f_op_f32(var_3 - 621f)) - var_3), Struct_4(func_2(Struct_1(u_input.a.x, 6660u, var_3, var_1.b), var_3), Struct_1(_wgslsmith_add_i32(-2147483647i, u_input.a.x), ~6521u, var_3, global0[_wgslsmith_index_u32(0u, 25u)] & 4294967295u), func_6(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global1.b.x), vec3<u32>(var_1.b, 23840u, 0u)), max(vec2<u32>(47560u, 89294u), global1.b), 4294967295u, vec2<bool>(true, var_2.x)), Struct_1(-59438i, var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -403f), 1u)), func_4(var_2.x && var_2.x, func_5(Struct_2(vec4<i32>(u_input.a.x, var_0.x, 5360i, -10012i), global1.b.x), 582f, Struct_4(Struct_1(-1i, var_1.b, var_3, var_1.b), Struct_1(var_1.a.x, 1u, -780f, 1665u), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -13556i), 34851u), Struct_1(1906i, var_1.b, -1110f, 4294967295u)), 8787u)).b << (~(~global0[_wgslsmith_index_u32(4294967295u, 25u)]) % 32u)), func_4(true, Struct_1(-6950i, min(func_4(false, Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], var_3, global0[_wgslsmith_index_u32(global1.b.x, 25u)])).b, ~var_1.b), var_3, global0[_wgslsmith_index_u32(~global1.a, 25u)])), func_5(Struct_2(vec4<i32>(countOneBits(var_1.a.x), countOneBits(2147483647i), -29626i, var_1.a.x), global1.a), 310f, Struct_4(func_5(Struct_2(vec4<i32>(10468i, -22610i, 0i, u_input.a.x), 8194u), _wgslsmith_div_f32(153f, 491f), Struct_4(Struct_1(var_1.a.x, 0u, 1000f, global1.b.x), Struct_1(-52681i, 1u, var_3, 31810u), Struct_2(vec4<i32>(-60487i, 12457i, u_input.a.x, 1i), global0[_wgslsmith_index_u32(var_1.b, 25u)]), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 1906f, global1.a)), 0u), func_2(Struct_1(var_0.x, 1u, -294f, 0u), var_3), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-14988i, var_1.a.x, u_input.a.x, 0i), vec4<i32>(-29125i, u_input.a.x, -2147483647i, u_input.a.x)), ~14348u), func_5(Struct_2(var_1.a, global1.b.x), var_3, Struct_4(Struct_1(var_1.a.x, 1u, -1528f, 43552u), Struct_1(46320i, 4294967295u, 768f, global0[_wgslsmith_index_u32(2228u, 25u)]), Struct_2(vec4<i32>(-14561i, 2147483647i, u_input.a.x, 2114i), global0[_wgslsmith_index_u32(17312u, 25u)]), Struct_1(u_input.a.x, 1u, -1165f, 30732u)), 0u)), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.b, 24890u), 25u)] << (_wgslsmith_div_u32(43438u, ~var_4.a.b) % 32u), ~(~(~global0[_wgslsmith_index_u32(4294967295u, 25u)])), -func_6(vec3<u32>(var_1.b, global0[_wgslsmith_index_u32(39769u, 25u)], 4294967295u) ^ vec3<u32>(var_1.b, var_4.d.b, 5758u), _wgslsmith_mod_vec2_u32(~vec2<u32>(27814u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b, 25u)], 25u)], 25u)]), abs(vec2<u32>(var_1.b, 42448u))), func_2(var_4.d, var_4.b.c).b | _wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 25u)])), func_3(_wgslsmith_f_op_f32(-var_3))).a.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4.b.c + _wgslsmith_f_op_f32(var_4.a.c - -315f)), var_3, 347f, _wgslsmith_div_f32(var_4.b.c, var_4.d.c)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3, -1270f, var_4.d.c, 1000f)))))));
}


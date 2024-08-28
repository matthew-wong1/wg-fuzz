struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1101f, 956f, -1441f, -412f, -226f, 895f, 1408f, -2091f, -533f, 1000f, 646f, -712f, 1181f, 1254f, 2480f, 653f, 1190f, 281f, -1206f, -1000f, -2168f, -819f, 414f, -1378f, 2239f, 556f, 595f, -1000f, 870f, -158f, -1344f, -662f);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(518i, -1i, -17683i), vec3<u32>(59487u, 17528u, 0u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec2_u32(~global1.b.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(15311u, arg_2.b.x), global1.b.yx)))), vec2<u32>(_wgslsmith_dot_vec3_u32(max(arg_2.b | global1.b, ~arg_2.b), _wgslsmith_mod_vec3_u32(vec3<u32>(42310u, global1.b.x, 0u), arg_2.b)), _wgslsmith_mult_u32(~(~47833u), 0u)));
    return -(_wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(arg_2.a.x, 17645i)), ~1i) & -(i32(-1i) * -arg_2.a.x));
}

fn func_2() -> Struct_3 {
    global1 = Struct_1(~_wgslsmith_clamp_vec3_i32(u_input.a.wwy, vec3<i32>(-u_input.a.x, 0i, -1i), u_input.a.yxw), ~vec3<u32>(31003u, _wgslsmith_mod_u32(max(0u, 1u), 45191u), u_input.d));
    global1 = Struct_1(abs(global1.a), vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4911u, u_input.d, global1.b.x, 130559u), firstTrailingBit(vec4<u32>(0u, 42289u, global1.b.x, global1.b.x))), ~_wgslsmith_div_u32(123212u, _wgslsmith_div_u32(global1.b.x, 80967u)), global1.b.x));
    let var_0 = Struct_4(select(firstTrailingBit(vec2<i32>(func_3(-936f, vec2<i32>(-3494i, u_input.c), Struct_1(vec3<i32>(u_input.e, -10128i, u_input.c), vec3<u32>(1196u, u_input.d, global1.b.x))), global1.a.x)), u_input.a.zx, select(vec2<bool>(true, true), vec2<bool>(23855u >= u_input.d, true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), ~select(min(vec4<i32>(u_input.c, 2147483647i, -1178i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-13655i, u_input.e, -4295i, -2147483647i), vec4<i32>(-2147483647i, global1.a.x, u_input.b.x, -27596i))), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, u_input.e, u_input.a.x), -vec4<i32>(global1.a.x, -35271i, 1i, global1.a.x)), true), u_input.d, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.x, u_input.a.x, 1i), min(vec3<i32>(u_input.c, -2147483647i, global1.a.x), vec3<i32>(-1i, 4365i, global1.a.x)), abs(global1.a)) >> (~vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u)), select(global1.b >> (global1.b % vec3<u32>(32u)), reverseBits(reverseBits(vec3<u32>(0u, global1.b.x, 15636u))), all(vec3<bool>(true, true, true)))));
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    return Struct_3(Struct_2(vec2<u32>(reverseBits(69678u), global1.b.x ^ global1.b.x), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_3.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, -913f, 1213f, -2848f)), vec4<f32>(-323f, -1000f, 135f, global0[_wgslsmith_index_u32(var_0.b.x, 32u)]))) + vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(68773u, 32u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(31792u, 1u), 32u)], 298f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_2.a.a.x, 32u)])))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_3.c, 32u)], -488f, -1993f, global0[_wgslsmith_index_u32(35554u, 32u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(55757u, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], 254f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(67799u, 32u)], 1007f, 419f, -190f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(max(44556u, 0u), 32u)])), -1449f, all(select(arg_2.a.b, arg_2.a.b, arg_2.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(4294967295u), 32u)]))), global0[_wgslsmith_index_u32(global1.b.x, 32u)], -1000f), !(0i <= -_wgslsmith_dot_vec3_i32(u_input.a.wyz, global1.a))));
    global0 = array<f32, 32>();
    let var_2 = select(arg_2.a.b.xx, !vec2<bool>(all(!vec4<bool>(false, arg_2.a.b.x, false, false)), false), func_2().a.b.x);
    global0 = array<f32, 32>();
    return Struct_1(vec3<i32>(abs(23669i), arg_1, -_wgslsmith_mod_i32(arg_3.b.x, global1.a.x) | -countOneBits(global1.a.x)), ~var_0.b);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_4 {
    var var_0 = -109f;
    var var_1 = _wgslsmith_mult_vec2_u32(arg_2.b.xy, arg_2.b.xy);
    let var_2 = 34347i;
    global0 = array<f32, 32>();
    var var_3 = countOneBits(~global1.b.x);
    return Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a.x, arg_1.a.x), arg_1.a.yz), u_input.a, firstTrailingBit(1u), func_4(vec2<bool>(any(vec3<bool>(true, false, true)) | all(vec3<bool>(true, true, true)), false), var_2, func_2(), Struct_4(_wgslsmith_mult_vec2_i32(arg_1.a.xy, -global1.a.xy), u_input.a, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_1.b.x, var_1.x, 9179u), vec4<u32>(4294967295u, 1u, 4294967295u, 26306u))), func_4(vec2<bool>(true, true), i32(-1i) * -11136i, func_2(), Struct_4(arg_2.a.yx, u_input.a, arg_2.b.x, Struct_1(arg_2.a, arg_1.b))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_3 {
    let var_0 = func_5(_wgslsmith_f_op_f32(-arg_1.x), func_4(vec2<bool>(false, firstTrailingBit(global1.a.x) <= -7314i), global1.a.x | countOneBits(_wgslsmith_add_i32(-1i, -37129i)), func_2(), Struct_4(-global1.a.xz, vec4<i32>(-1i) * -vec4<i32>(u_input.c, global1.a.x, -2147483647i, u_input.c), _wgslsmith_dot_vec2_u32(arg_0.zy & vec2<u32>(4294967295u, global1.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 18229u), arg_0.xy)), Struct_1(~global1.a, vec3<u32>(arg_0.x, arg_0.x, global1.b.x) & vec3<u32>(u_input.d, arg_0.x, arg_0.x)))), Struct_1(firstTrailingBit(vec3<i32>(0i, countOneBits(2147483647i), u_input.e | global1.a.x)), ~firstLeadingBit(abs(vec3<u32>(arg_0.x, u_input.d, 20039u)))), global0[_wgslsmith_index_u32(~global1.b.x << (~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.b.x, arg_0.x), 1u) % 32u), 32u)]);
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzz, firstTrailingBit(vec3<i32>(-2147483647i, 90946i, 8832i) ^ max(vec3<i32>(global1.a.x, u_input.b.x, 6154i), vec3<i32>(global1.a.x, u_input.b.x, -1i)))), max(~func_5(_wgslsmith_div_f32(1000f, -1000f), func_4(vec2<bool>(true, false), 2147483647i, Struct_3(Struct_2(vec2<u32>(4294967295u, u_input.d), vec4<bool>(arg_2, false, arg_2, true))), Struct_4(vec2<i32>(-2056i, 0i), vec4<i32>(0i, global1.a.x, 12926i, global1.a.x), arg_0.x, Struct_1(global1.a, vec3<u32>(global1.b.x, u_input.d, 35490u)))), Struct_1(vec3<i32>(u_input.e, 0i, u_input.a.x), vec3<u32>(23351u, 4294967295u, 19177u)), _wgslsmith_f_op_f32(-arg_1.x)).a.x, (var_0.a.x << (~120176u % 32u)) << (_wgslsmith_div_u32(1u, ~arg_0.x) % 32u)));
    var var_2 = var_0.d.b.yx;
    var var_3 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(737f, global0[_wgslsmith_index_u32(50140u, 32u)]))), func_5(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.x << (u_input.d % 32u)), 32u)] - _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_2.x, 32u)]))), var_0.d, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f - global0[_wgslsmith_index_u32(countOneBits(var_0.c), 32u)]) + arg_1.x)).d, var_0.d, _wgslsmith_f_op_f32(max(-935f, global0[_wgslsmith_index_u32(abs(~(var_0.d.b.x ^ 4294967295u)), 32u)]))).d;
    return func_2();
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(f32(-1f) * -1322f));
    var var_1 = !vec2<bool>(arg_0, _wgslsmith_div_u32(~global1.b.x, _wgslsmith_mod_u32(0u, 1u)) < min(0u << (global1.b.x % 32u), arg_3.a.a.x));
    global0 = array<f32, 32>();
    let var_2 = Struct_4(_wgslsmith_clamp_vec2_i32(u_input.a.zx, -(~vec2<i32>(global1.a.x, u_input.e)), max(~vec2<i32>(-18334i, global1.a.x), u_input.b)), -min(-u_input.a, u_input.a), countOneBits(arg_1.a.x), func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(abs(reverseBits(vec3<i32>(u_input.c, global1.a.x, u_input.a.x))), vec3<u32>(max(22694u, 2354u), ~u_input.d, 4294967295u)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(820f + -756f)), func_5(-1417f, func_4(vec2<bool>(var_1.x, var_1.x), 1i, arg_3, Struct_4(u_input.a.wx, u_input.a, u_input.d, Struct_1(vec3<i32>(2147483647i, global1.a.x, u_input.b.x), global1.b))), Struct_1(vec3<i32>(global1.a.x, global1.a.x, u_input.c), vec3<u32>(13363u, arg_1.a.x, u_input.d)), _wgslsmith_f_op_f32(sign(1057f))).d, Struct_1(global1.a, ~global1.b), var_0).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + _wgslsmith_f_op_f32(select(932f, 691f, true)))).d);
    global1 = var_2.d;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * arg_2) - _wgslsmith_f_op_f32(round(475f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(832f, arg_2, arg_0)) + _wgslsmith_f_op_f32(2278f * -1263f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~64372u, 32u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + -676f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(719f, _wgslsmith_f_op_f32(min(-1000f, arg_2)), arg_2, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_3.a.a.x, 32u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, var_0, global0[_wgslsmith_index_u32(30678u, 32u)], global0[_wgslsmith_index_u32(arg_3.a.a.x, 32u)]), vec4<f32>(-730f, -1680f, global0[_wgslsmith_index_u32(70536u, 32u)], -912f), false)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_2)), 1240f)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~1u, 32u)], arg_2, any(arg_3.a.b.zz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 32u)])))), !arg_3.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(true, Struct_2(global1.b.xx, vec4<bool>(true, true, false, true)), -414f, func_1(global1.b, vec3<f32>(608f, global0[_wgslsmith_index_u32(101408u, 32u)], 1731f), true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-496f, 211f, 1716f, global0[_wgslsmith_index_u32(global1.b.x, 32u)]))))))), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(344f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.b.x, 32u)])) * _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.d, 32u)])))), 1000f, _wgslsmith_f_op_f32(select(491f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(28452u, 32u)]), true)))));
    var var_1 = global1.a;
    var_1 = max(vec3<i32>(~(reverseBits(u_input.b.x) >> (func_1(global1.b, vec3<f32>(var_0.x, 240f, global0[_wgslsmith_index_u32(global1.b.x, 32u)]), false).a.a.x % 32u)), func_4(select(vec2<bool>(false, true), func_1(global1.b, vec3<f32>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], 1000f, -1132f), true).a.b.xz, func_2().a.b.wx), min(0i, -17467i) & var_1.x, Struct_3(func_2().a), func_5(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(751u, 32u)])), Struct_1(u_input.a.wwy, global1.b), func_4(vec2<bool>(false, true), 1i, Struct_3(Struct_2(vec2<u32>(0u, global1.b.x), vec4<bool>(false, false, false, false))), Struct_4(var_1.zx, u_input.a, u_input.d, Struct_1(vec3<i32>(-2147483647i, 1i, u_input.a.x), global1.b))), _wgslsmith_f_op_f32(step(var_0.x, -245f)))).a.x, _wgslsmith_sub_i32(var_1.x, abs(0i))), vec3<i32>(global1.a.x, global1.a.x, 0i) ^ u_input.a.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.b.x, 32u)], var_0.x), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_f_op_f32(-var_0.x))) + vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(17041u, global1.b.x)), 32u)], var_0.x, -311f)));
}


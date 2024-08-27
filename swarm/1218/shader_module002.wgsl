struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec4<i32>(0i, 19193i, -11223i, 16956i)), Struct_3(vec4<i32>(1i, -80110i, 16979i, 9634i)), Struct_3(vec4<i32>(1i, -87935i, 19019i, 2147483647i)), Struct_3(vec4<i32>(22820i, 0i, 0i, 6838i)), Struct_3(vec4<i32>(-26629i, 0i, 2147483647i, -1i)), Struct_3(vec4<i32>(0i, 7001i, 1i, -1269i)), Struct_3(vec4<i32>(i32(-2147483648), 15458i, -80372i, -18152i)), Struct_3(vec4<i32>(0i, -1i, -1i, -1i)), Struct_3(vec4<i32>(0i, -56975i, -1i, -46639i)), Struct_3(vec4<i32>(10979i, 1i, 9312i, -1i)), Struct_3(vec4<i32>(-30245i, -17424i, i32(-2147483648), 2147483647i)), Struct_3(vec4<i32>(-34723i, 1i, 46327i, -22296i)), Struct_3(vec4<i32>(-1i, 1i, 45836i, 0i)), Struct_3(vec4<i32>(-1i, -28318i, -17905i, i32(-2147483648))), Struct_3(vec4<i32>(-73265i, 2147483647i, -41025i, i32(-2147483648))), Struct_3(vec4<i32>(2147483647i, -30993i, -1i, -50368i)), Struct_3(vec4<i32>(i32(-2147483648), -1i, -1i, 1i)), Struct_3(vec4<i32>(i32(-2147483648), 33856i, 1i, 2147483647i)), Struct_3(vec4<i32>(i32(-2147483648), -12585i, -9075i, -27123i)), Struct_3(vec4<i32>(30154i, -27822i, -19142i, 0i)), Struct_3(vec4<i32>(2147483647i, -19688i, -21030i, 2147483647i)), Struct_3(vec4<i32>(2147483647i, 2147483647i, -30137i, 2147483647i)), Struct_3(vec4<i32>(-1i, -70548i, -52100i, i32(-2147483648))), Struct_3(vec4<i32>(-11366i, i32(-2147483648), 1i, 20i)), Struct_3(vec4<i32>(0i, 28498i, i32(-2147483648), 41725i)), Struct_3(vec4<i32>(41550i, 0i, 43047i, 10443i)), Struct_3(vec4<i32>(1i, 1000i, -24191i, i32(-2147483648))), Struct_3(vec4<i32>(-17483i, 0i, -1i, 11439i)), Struct_3(vec4<i32>(-6771i, -1i, i32(-2147483648), 48929i)), Struct_3(vec4<i32>(-1i, 1i, -1i, -17983i)));

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(-4085i, 27i), 0u, vec4<bool>(false, false, false, false), vec3<i32>(22221i, -1i, -4647i)), Struct_1(vec2<i32>(-15826i, 20228i), 47413u, vec4<bool>(false, false, true, false), vec3<i32>(0i, 1i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), -36119i), 4294967295u, vec4<bool>(true, true, false, false), vec3<i32>(-1i, -1i, 1i)), Struct_1(vec2<i32>(-1i, 2147483647i), 1u, vec4<bool>(true, true, true, false), vec3<i32>(-1i, 15574i, -13149i)), Struct_1(vec2<i32>(-19548i, -1i), 1u, vec4<bool>(true, false, false, false), vec3<i32>(i32(-2147483648), 26170i, -45397i)), Struct_1(vec2<i32>(2147483647i, 1i), 0u, vec4<bool>(true, false, true, true), vec3<i32>(2147483647i, i32(-2147483648), 27910i)), Struct_1(vec2<i32>(1i, 1i), 36228u, vec4<bool>(false, false, false, false), vec3<i32>(38945i, 24325i, 2147483647i)), Struct_1(vec2<i32>(10227i, -27141i), 1u, vec4<bool>(true, true, true, true), vec3<i32>(29009i, 1i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 32492i), 73413u, vec4<bool>(false, false, false, false), vec3<i32>(0i, i32(-2147483648), 1i)), Struct_1(vec2<i32>(2147483647i, 30544i), 58593u, vec4<bool>(true, true, false, true), vec3<i32>(-3371i, 1i, -14211i)), Struct_1(vec2<i32>(0i, -1i), 0u, vec4<bool>(true, true, false, false), vec3<i32>(0i, -28395i, 33047i)), Struct_1(vec2<i32>(-69600i, -57468i), 41929u, vec4<bool>(false, true, true, false), vec3<i32>(1i, -7610i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), -1i), 4294967295u, vec4<bool>(true, false, false, true), vec3<i32>(1i, -36037i, 51756i)), Struct_1(vec2<i32>(-15015i, -1i), 38207u, vec4<bool>(false, true, true, true), vec3<i32>(-42137i, 965i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 32040i), 22845u, vec4<bool>(false, false, false, true), vec3<i32>(i32(-2147483648), 2147483647i, -1i)), Struct_1(vec2<i32>(2147483647i, 0i), 1u, vec4<bool>(true, true, false, true), vec3<i32>(1i, 26429i, 0i)), Struct_1(vec2<i32>(0i, 2147483647i), 17912u, vec4<bool>(false, true, true, true), vec3<i32>(0i, -19289i, -23849i)), Struct_1(vec2<i32>(-1i, -1i), 34324u, vec4<bool>(true, true, false, true), vec3<i32>(-5376i, -1i, 75762i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), 4294967295u, vec4<bool>(false, true, false, false), vec3<i32>(i32(-2147483648), 43412i, 27012i)), Struct_1(vec2<i32>(-3742i, 1i), 4294967295u, vec4<bool>(false, true, true, false), vec3<i32>(8891i, 23532i, -63846i)), Struct_1(vec2<i32>(0i, 1i), 0u, vec4<bool>(false, true, false, false), vec3<i32>(1i, 12159i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 2147483647i), 4294967295u, vec4<bool>(false, true, true, false), vec3<i32>(-1i, 16516i, -23143i)), Struct_1(vec2<i32>(2147483647i, -17184i), 4294967295u, vec4<bool>(true, false, true, true), vec3<i32>(-5836i, -29497i, 3186i)), Struct_1(vec2<i32>(1i, -45696i), 4294967295u, vec4<bool>(false, true, true, true), vec3<i32>(1975i, 1i, 1470i)), Struct_1(vec2<i32>(i32(-2147483648), 34621i), 11718u, vec4<bool>(true, true, false, true), vec3<i32>(0i, -12730i, 16600i)), Struct_1(vec2<i32>(49846i, -1544i), 4294967295u, vec4<bool>(true, true, true, true), vec3<i32>(1i, -26440i, i32(-2147483648))), Struct_1(vec2<i32>(0i, 0i), 0u, vec4<bool>(false, true, false, false), vec3<i32>(-24215i, 10720i, -39919i)), Struct_1(vec2<i32>(1i, 1246i), 1u, vec4<bool>(false, false, true, false), vec3<i32>(1i, 108322i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, 1i), 0u, vec4<bool>(false, false, true, false), vec3<i32>(1i, -10165i, 0i)), Struct_1(vec2<i32>(-22235i, -43033i), 4294967295u, vec4<bool>(true, true, false, true), vec3<i32>(0i, 0i, 37787i)), Struct_1(vec2<i32>(48885i, -1i), 4294967295u, vec4<bool>(false, true, true, false), vec3<i32>(0i, 1i, 69549i)), Struct_1(vec2<i32>(1i, 19882i), 20833u, vec4<bool>(true, true, true, true), vec3<i32>(i32(-2147483648), -15886i, 17727i)));

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global4 = array<Struct_1, 21>();
    let var_0 = -arg_1.a.x;
    var var_1 = u_input.a;
    var var_2 = Struct_1(min(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 0i), arg_1.a, abs(u_input.b)), reverseBits(-vec2<i32>(global0.b, var_0))), _wgslsmith_clamp_u32(abs(46093u), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.b, 64837u, ~4294967295u), vec3<u32>(0u, ~u_input.c, _wgslsmith_add_u32(8069u, 2308u))), reverseBits(min(arg_1.b ^ u_input.e, arg_0.x))), vec4<bool>(false, all(select(global2.wx, vec2<bool>(global2.x, false), true)), -1095f >= _wgslsmith_div_f32(-394f, _wgslsmith_f_op_f32(-global0.d.x)), !(global0.a.x < global0.a.x) || global0.c.x), -arg_1.d);
    var_1 = ~_wgslsmith_clamp_u32(max(48470u, ~abs(arg_0.x)), ~abs(2113u), reverseBits(arg_0.x));
    return global0.a.x;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_2.c.x;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global0.d.zz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.d.xz)))))), firstLeadingBit(arg_2.a.x), !arg_2.c.wxx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.x))), 1970f), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_3.yx, arg_2)), -824f, all(vec3<bool>(global0.c.x, global2.x, arg_2.c.x)))), 1064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(-global0.a.x))))));
    var var_1 = global1[_wgslsmith_index_u32(6868u, 30u)];
    global3 = array<Struct_1, 32>();
    let var_2 = arg_3.yw & min(~vec2<u32>(1u, ~arg_2.b), _wgslsmith_mod_vec2_u32(countOneBits(~u_input.d.xx), u_input.d.zz));
    return arg_2.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = 28164u | u_input.e;
    global3 = array<Struct_1, 32>();
    var_0 = arg_1.b;
    global3 = array<Struct_1, 32>();
    return global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), (abs(u_input.a) | u_input.c) & (u_input.e >> (0u % 32u)), abs(~(~0u)))), 32u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_2.c.yz;
    var var_1 = arg_2.c.wz;
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(select(-arg_2.a, vec2<i32>(2147483647i, abs(u_input.b.x)), global2.x & true), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_2.a.x, arg_1), ~13367i, u_input.b.x), global0.b)), min(arg_2.b, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 1u, u_input.e, 4294967295u), u_input.d) >> (~1u % 32u))), vec4<bool>(true, -firstLeadingBit(1i) > max(_wgslsmith_clamp_i32(1i, arg_2.a.x, global0.b), select(arg_1, 0i, global2.x)), global2.x, all(global2.yw)), countOneBits(_wgslsmith_mod_vec3_i32(arg_2.d, -vec3<i32>(30335i, arg_2.d.x, 27257i)) & vec3<i32>(2147483647i, ~u_input.b.x, arg_1)));
    global4 = array<Struct_1, 21>();
    let var_3 = !func_2(0u, vec4<u32>(arg_2.b, 52022u, arg_2.b, _wgslsmith_add_u32(~u_input.e, ~3861u)), Struct_1(_wgslsmith_mult_vec2_i32(u_input.b, select(vec2<i32>(var_2.d.x, arg_2.a.x), var_2.a, vec2<bool>(false, true))), 13667u, !arg_2.c, abs(var_2.d)), _wgslsmith_add_vec4_u32(vec4<u32>(19251u, var_2.b, 45347u, arg_2.b) ^ ~vec4<u32>(var_2.b, 30341u, 0u, arg_2.b), vec4<u32>(u_input.a, arg_2.b | 0u, 7565u, _wgslsmith_sub_u32(4294967295u, u_input.c)))).wzz;
    return Struct_2(vec2<f32>(-279f, _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * _wgslsmith_f_op_f32(exp2(arg_0.x))))), -30547i >> (arg_2.b % 32u), func_2(var_2.b, vec4<u32>(abs(~u_input.d.x), reverseBits(arg_2.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.b, var_2.b, arg_2.b), ~u_input.d), u_input.c), arg_2, u_input.d).zyx, global0.d);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> f32 {
    global1 = array<Struct_3, 30>();
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d * vec3<f32>(_wgslsmith_f_op_f32(1651f - -1747f), -1178f, 940f)), global0.d), -73339i, func_4(!select(func_2(4294967295u, u_input.d, global3[_wgslsmith_index_u32(13545u, 32u)], vec4<u32>(u_input.e, u_input.e, u_input.a, 23378u)), !vec4<bool>(arg_2, var_0.x, true, arg_2), true), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1121f))), 25535i, var_0.yzw, vec3<f32>(-1335f, arg_1, _wgslsmith_f_op_f32(select(-1329f, global0.d.x, arg_2))))));
    let var_1 = global1[_wgslsmith_index_u32(~1u, 30u)];
    var var_2 = Struct_3(_wgslsmith_sub_vec4_i32(abs(var_1.a), vec4<i32>(countOneBits(abs(global0.b)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.d.x, -1426f)), 81421i, global3[_wgslsmith_index_u32(select(u_input.d.x, u_input.a, global0.c.x), 32u)]).b, var_1.a.x, (u_input.b.x >> (u_input.a % 32u)) ^ -20972i)));
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(1u, 30u)], -1000f, global2.x)))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x + 1000f))));
    global1 = array<Struct_3, 30>();
    let var_1 = global2.x;
    global3 = array<Struct_1, 32>();
    var var_2 = func_4(vec4<bool>(global0.c.x, !global2.x, func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -284f, var_0))), global0.b, func_4(vec4<bool>(global0.c.x, global2.x, global2.x, global2.x), Struct_2(global0.d.yy, u_input.b.x, global0.c, global0.d))).c.x | !(!global0.c.x), any(func_2(firstTrailingBit(u_input.a), vec4<u32>(61067u, u_input.a, 1u, 4294967295u), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, 4294967295u), 32u)], u_input.d).zw)), Struct_2(vec2<f32>(-310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.d.x))), -1i, !global2.yyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d - global0.d)))));
    var var_3 = _wgslsmith_clamp_u32(var_2.b, var_2.b ^ u_input.d.x, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(505f, _wgslsmith_f_op_f32(floor(global0.d.x)))) + _wgslsmith_f_op_f32(round(1000f))), ~_wgslsmith_mod_u32(min(~13490u, var_2.b), _wgslsmith_mult_u32(27757u, 1u)), var_2.b, u_input.d.xzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - var_0)));
}


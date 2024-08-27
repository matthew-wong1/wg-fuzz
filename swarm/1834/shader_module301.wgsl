struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<f32>(107f, -675f, -1145f, 989f)), Struct_1(vec4<f32>(1742f, -813f, -798f, -2275f)), Struct_1(vec4<f32>(-521f, 115f, -228f, -1430f)), Struct_1(vec4<f32>(-1021f, 970f, -942f, 2747f)), Struct_1(vec4<f32>(-665f, -403f, -749f, 503f)), Struct_1(vec4<f32>(-1000f, 740f, -1727f, 1390f)), Struct_1(vec4<f32>(-1000f, 2378f, 464f, -2001f)), Struct_1(vec4<f32>(1986f, 240f, -226f, 1000f)), Struct_1(vec4<f32>(175f, -201f, 1219f, -1176f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<vec2<u32>, 13>;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.b;
    global2 = array<Struct_2, 25>();
    var var_1 = vec4<bool>(var_0.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - var_0.a.x)), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, var_0.a.x, global1.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.yxz - arg_0.c.a.zwz) + _wgslsmith_f_op_vec3_f32(arg_0.c.a.zyw - vec3<f32>(-1774f, arg_0.c.a.x, -224f)))), _wgslsmith_f_op_vec3_f32(-global1.a.xwz))));
    global0 = array<Struct_1, 9>();
    return _wgslsmith_div_f32(var_2.x, var_0.a.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(global1.a.wx));
    var var_1 = ~vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(1i, -1i)), ~abs(vec2<i32>(-1i, 15206i))), _wgslsmith_sub_i32(9989i, -firstTrailingBit(-47445i)));
    let var_2 = _wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(80004u, 1u), vec2<u32>(u_input.a.x, global4.x)), 25u)])))));
    return select(select(vec3<bool>(arg_0.x, 510f <= _wgslsmith_f_op_f32(global1.a.x + var_0.x), all(arg_0)), !select(!vec3<bool>(arg_0.x, false, true), vec3<bool>(true, true, true), true), true), !(!(!vec3<bool>(arg_0.x, true, arg_1))), !arg_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.b;
    var var_1 = Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, -1999f, arg_2.b.a.x, 338f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 163f, -453f, 833f) + vec4<f32>(-1186f, var_0.a.x, var_0.a.x, 684f)))))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(abs(878f)), _wgslsmith_f_op_f32(min(arg_2.b.a.x, var_0.a.x)), _wgslsmith_f_op_f32(-arg_2.c.a.x)), vec4<f32>(-218f, arg_2.e.a.x, _wgslsmith_div_f32(global1.a.x, -796f), -300f))), 0u, var_0);
    var var_2 = Struct_1(vec4<f32>(global1.a.x, global1.a.x, -1100f, global1.a.x));
    var_2 = Struct_1(var_2.a);
    let var_3 = var_2.a.x;
    return arg_2.e;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, 1u)), 9u)];
    var var_1 = any(vec3<bool>(arg_1, false, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(var_0.a));
    let var_3 = _wgslsmith_div_i32(-30625i, -countOneBits(0i >> (_wgslsmith_mod_u32(global4.x, 4294967295u) % 32u)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, -1173f, -213f, arg_2.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) * _wgslsmith_f_op_vec4_f32(abs(global1.a))))));
    return global2[_wgslsmith_index_u32(148189u, 25u)];
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x * func_4(func_2(vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), -vec3<i32>(0i, 1i, -7699i), Struct_2(vec2<u32>(global4.x, 0u), Struct_1(vec4<f32>(global1.a.x, arg_2.a.x, arg_2.a.x, -1000f)), Struct_1(global1.a), arg_1.d, Struct_1(vec4<f32>(global1.a.x, 1223f, global1.a.x, arg_1.c.a.x)))).a.x)) < global1.a.x;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-771f, global1.a.x, arg_1.c.a.x, 2605f) + vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, -434f, global1.a.x))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(904f, 399f, -390f, arg_2.a.x)))))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    global3 = array<vec2<u32>, 13>();
    var var_0 = func_6(vec2<bool>(~max(-28976i, -1i) == (max(-14940i, -15419i) >> ((arg_1 | u_input.a.x) % 32u)), true), func_5(func_4(func_2(vec3<bool>(true, true, true), true), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(131i, 10956i, 51843i), vec3<i32>(11580i, 0i, -31843i)), select(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(54383i, 2147483647i, 0i), false)), global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(arg_1, u_input.a.x), 45440u, true), 25u)]), true, func_4(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, -32710i), vec3<i32>(11672i, 17710i, -2147483647i))), global2[_wgslsmith_index_u32(min(~global4.x, 14310u), 25u)]), func_4(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), countOneBits(vec3<i32>(1i, 1i, 1i)), Struct_2(u_input.a.yx, Struct_1(vec4<f32>(1000f, arg_0.a.x, -742f, arg_2.a.x)), Struct_1(arg_2.a), _wgslsmith_mod_u32(30732u, 1u), arg_0))), func_5(arg_2, _wgslsmith_f_op_f32(floor(-440f)) < _wgslsmith_f_op_f32(step(216f, func_4(vec3<bool>(true, true, false), vec3<i32>(-2147483647i, 2300i, 25533i), Struct_2(vec2<u32>(1u, 0u), arg_2, arg_2, 0u, global0[_wgslsmith_index_u32(0u, 9u)])).a.x)), func_4(select(func_2(vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), false), vec3<i32>(i32(-1i) * -18760i, i32(-1i) * -2147483647i, 2147483647i), global2[_wgslsmith_index_u32(~(~u_input.a.x), 25u)]), func_5(arg_0, false, Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_0.a, vec4<f32>(-1010f, -1000f, arg_2.a.x, -1000f)))), func_5(func_4(vec3<bool>(false, true, true), vec3<i32>(0i, -23292i, 1i), global2[_wgslsmith_index_u32(1147u, 25u)]), true, func_5(Struct_1(arg_0.a), true, Struct_1(arg_2.a), global0[_wgslsmith_index_u32(u_input.a.x, 9u)]).b, arg_2).e).c).e);
    let var_1 = arg_2;
    let var_2 = global2[_wgslsmith_index_u32(var_0.a.x, 25u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-821f * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, var_0.c.a.x, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f + arg_2.a.x))));
    return _wgslsmith_f_op_f32(1275f - _wgslsmith_f_op_f32(var_1.a.x - -239f));
}

fn func_7(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = abs(-vec2<i32>(abs(9354i), countOneBits(-11394i))) << ((min(vec2<u32>(u_input.a.x, 11443u) | countOneBits(u_input.a.yz), ~firstLeadingBit(vec2<u32>(global4.x, 49615u))) ^ _wgslsmith_clamp_vec2_u32(u_input.a.zy, max(_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(global4.x, global4.x)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 13u)]), ~vec2<u32>(33086u, 2806u))) % vec2<u32>(32u));
    let var_1 = abs(firstTrailingBit(firstTrailingBit(abs(vec4<i32>(-1i, var_0.x, -1i, var_0.x)))));
    global3 = array<vec2<u32>, 13>();
    let var_2 = !(!(arg_1 || arg_0));
    var var_3 = abs(select(vec3<u32>(_wgslsmith_mod_u32(global4.x, 85919u), global4.x & 4294967295u, global4.x) & vec3<u32>(global4.x, 42719u, ~11513u), vec3<u32>(~4294967295u, 7425u, ~firstTrailingBit(50561u)), true));
    return func_5(func_6(select(vec2<bool>(select(var_2, true, true), !arg_1), !func_2(vec3<bool>(var_2, var_2, arg_0), true).yz, vec2<bool>(!arg_0, false && arg_1)), global2[_wgslsmith_index_u32(func_5(Struct_1(_wgslsmith_div_vec4_f32(global1.a, global1.a)), !func_2(vec3<bool>(arg_0, true, arg_0), true).x, Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - global1.a)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(15654u, _wgslsmith_div_u32(1u, 88630u)), 9u)]).a.x, 25u)], global0[_wgslsmith_index_u32(~0u, 9u)]).c, !(!all(select(vec4<bool>(arg_1, arg_1, true, arg_0), vec4<bool>(arg_1, var_2, arg_0, true), vec4<bool>(arg_0, false, false, true)))), func_6(vec2<bool>(false && func_2(vec3<bool>(false, false, var_2), var_2).x, arg_1), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~11118u, 1u), 25u)], global0[_wgslsmith_index_u32(0u >> (0u % 32u), 9u)]).c, global0[_wgslsmith_index_u32(4294967295u, 9u)]);
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(func_5(func_4(vec3<bool>(false, true, true), vec3<i32>(39828i, 2147483647i, -28768i), Struct_2(vec2<u32>(arg_0.d, global4.x), arg_1.b, Struct_1(arg_1.b.a), arg_0.a.x, Struct_1(vec4<f32>(-1155f, global1.a.x, arg_0.c.a.x, 1000f)))), false, func_7(false, true, 309f).c, arg_1.e).a, countOneBits(u_input.a.zx), ~arg_0.a | ~global3[_wgslsmith_index_u32(arg_0.a.x, 13u)]) << (arg_0.a % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~(max(u_input.a.zy, vec2<u32>(11471u, u_input.a.x)) | global3[_wgslsmith_index_u32(abs(u_input.a.x), 13u)]), vec2<u32>(~(~0u), (arg_0.d << (arg_0.a.x % 32u)) | global4.x)));
    var var_1 = arg_1.e.a.x;
    global2 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a * global1.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, -1069f, 586f, 1518f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, 148f, arg_0.e.a.x, arg_1.c.a.x)), _wgslsmith_div_vec4_f32(arg_1.c.a, vec4<f32>(arg_1.e.a.x, -1052f, 1000f, -163f)))), _wgslsmith_f_op_vec4_f32(trunc(global1.a))))));
    var var_3 = func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(13477u, countOneBits(~1u)), 9u)], !(!(-377f >= _wgslsmith_f_op_f32(var_2.x - arg_1.b.a.x))), Struct_1(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.a.x)) - 316f), _wgslsmith_f_op_f32(752f - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -152f))))), arg_1.b);
    return var_3.c;
}

fn func_9(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    var var_0 = u_input.a;
    var var_1 = vec2<f32>(arg_0.a.x, global1.a.x);
    var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.yw);
    global3 = array<vec2<u32>, 13>();
    var var_2 = -(~(-(2147483647i >> (var_0.x % 32u))));
    return _wgslsmith_f_op_vec4_f32(-global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(abs(0u), u_input.a.x, ~0u)), u_input.a) ^ vec3<u32>(firstLeadingBit(1u), u_input.a.x, 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_9(func_8(func_7(false, true, _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global4.x, 9u)], 1u, Struct_1(global1.a)))), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(~1u, 9u)], func_7(true, false, 998f).e, 4294967295u, Struct_1(global1.a))), ~global4.x)));
    var var_2 = func_7(!(false != !all(vec4<bool>(true, false, false, true))), select(!select(true, true, false) | true, all(vec3<bool>(true, true, true)), false), global1.a.x).c;
    global3 = array<vec2<u32>, 13>();
    var_2 = global0[_wgslsmith_index_u32(global4.x, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.xx, ~(u_input.a >> (u_input.a % vec3<u32>(32u))), vec3<f32>(global1.a.x, _wgslsmith_div_f32(-399f, _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, var_1.a.x) - func_5(var_1, true, var_1, Struct_1(vec4<f32>(var_1.a.x, -1220f, 393f, global1.a.x))).b.a.x))), -5035i, -41973i);
}


struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(30888i, -11707i, -1i, 52723i), 0u, vec3<bool>(true, true, false), 1u, vec4<u32>(21856u, 4294967295u, 0u, 120817u)), Struct_1(vec4<i32>(24226i, 1i, -1i, -84995i), 61477u, vec3<bool>(true, false, true), 23656u, vec4<u32>(4294967295u, 0u, 0u, 1865u)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 14806i, 1i), 4294967295u, vec3<bool>(true, false, false), 4294967295u, vec4<u32>(21227u, 0u, 1u, 54686u)), Struct_1(vec4<i32>(-15422i, -55260i, 26948i, 20107i), 4294967295u, vec3<bool>(true, true, true), 58575u, vec4<u32>(49132u, 16734u, 4294967295u, 1u)), Struct_1(vec4<i32>(0i, 1i, 20727i, 10001i), 4294967295u, vec3<bool>(false, false, true), 1u, vec4<u32>(77503u, 4294967295u, 73703u, 1u)), Struct_1(vec4<i32>(44253i, -21609i, -40968i, 1i), 82962u, vec3<bool>(true, true, false), 0u, vec4<u32>(4294967295u, 17145u, 0u, 0u)), Struct_1(vec4<i32>(2147483647i, -52600i, i32(-2147483648), -9116i), 0u, vec3<bool>(false, true, false), 0u, vec4<u32>(26991u, 0u, 1919u, 47030u)), Struct_1(vec4<i32>(2147483647i, 0i, 15126i, 13560i), 0u, vec3<bool>(false, false, true), 0u, vec4<u32>(4294967295u, 427u, 0u, 3990u)), Struct_1(vec4<i32>(-21950i, 0i, 0i, -35841i), 1u, vec3<bool>(true, false, false), 1u, vec4<u32>(4294967295u, 58162u, 1u, 4294967295u)), Struct_1(vec4<i32>(1i, 19254i, -5077i, -20882i), 1u, vec3<bool>(false, true, false), 1u, vec4<u32>(7899u, 1u, 1u, 83485u)), Struct_1(vec4<i32>(i32(-2147483648), -9010i, 0i, 2147483647i), 1u, vec3<bool>(true, false, false), 0u, vec4<u32>(76631u, 56285u, 1u, 54608u)), Struct_1(vec4<i32>(1i, 5491i, 5874i, -11089i), 4294967295u, vec3<bool>(true, false, true), 1u, vec4<u32>(73246u, 94138u, 4294967295u, 45435u)), Struct_1(vec4<i32>(-1i, -398i, 24436i, 25907i), 26969u, vec3<bool>(false, false, true), 342u, vec4<u32>(42634u, 19598u, 4294967295u, 32409u)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 14152i, 40045i), 1u, vec3<bool>(false, true, false), 9315u, vec4<u32>(53316u, 39457u, 19089u, 4294967295u)), Struct_1(vec4<i32>(24989i, 8496i, i32(-2147483648), 1i), 4294967295u, vec3<bool>(false, true, true), 0u, vec4<u32>(0u, 97255u, 27254u, 38551u)), Struct_1(vec4<i32>(-67680i, 40086i, 1i, 2147483647i), 9922u, vec3<bool>(false, true, false), 1u, vec4<u32>(17201u, 4294967295u, 45564u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), -62098i, 8755i, -21425i), 0u, vec3<bool>(false, false, false), 0u, vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), 1i, -9758i, 29619i), 55656u, vec3<bool>(false, true, false), 127369u, vec4<u32>(1u, 1u, 0u, 67659u)), Struct_1(vec4<i32>(-14109i, 1i, i32(-2147483648), 50159i), 27048u, vec3<bool>(false, false, true), 1u, vec4<u32>(20212u, 35704u, 0u, 31007u)), Struct_1(vec4<i32>(2147483647i, -1i, -9115i, -36980i), 0u, vec3<bool>(false, true, true), 40216u, vec4<u32>(4430u, 4294967295u, 46044u, 0u)), Struct_1(vec4<i32>(26730i, 0i, 24302i, -1i), 0u, vec3<bool>(false, false, false), 1u, vec4<u32>(0u, 23811u, 49553u, 4294967295u)), Struct_1(vec4<i32>(2147483647i, 1i, 0i, 1i), 19726u, vec3<bool>(true, false, true), 0u, vec4<u32>(0u, 1u, 24817u, 29691u)), Struct_1(vec4<i32>(57684i, 42733i, -1i, 2147483647i), 45944u, vec3<bool>(false, false, false), 4294967295u, vec4<u32>(62091u, 0u, 33284u, 27543u)));

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<vec3<bool>, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec4<u32> {
    var var_0 = max(~(~arg_1.b), 4294967295u);
    let var_1 = arg_1.c.x;
    var var_2 = arg_1.a.xzy;
    let var_3 = vec2<bool>(var_1, all(!arg_1.c));
    global0 = array<Struct_1, 23>();
    return arg_1.e;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1017f)) + vec2<f32>(-730f, -577f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, 2027f))))), vec2<bool>(false, 0u >= _wgslsmith_div_u32(u_input.c, firstTrailingBit(u_input.c)))));
    global2 = array<vec3<bool>, 29>();
    global2 = array<vec3<bool>, 29>();
    var var_2 = arg_1;
    return ~(func_3(_wgslsmith_div_vec2_f32(var_1, var_1), Struct_1(vec4<i32>(-1i, -43854i, 0i, 29941i), 67327u, vec3<bool>(arg_1.a.c.x, true, arg_1.a.c.x), 1u, arg_1.a.e), vec3<f32>(1065f, -318f, -579f), _wgslsmith_div_u32(var_2.a.e.x, 6803u)) << (vec4<u32>(1u, 7897u, arg_2.b << (1u % 32u), func_3(arg_0, var_0.a, vec3<f32>(var_1.x, arg_0.x, var_1.x), 42435u).x) % vec4<u32>(32u))) << (vec4<u32>(arg_2.d, _wgslsmith_sub_u32(1u, ~(arg_1.a.d ^ 93376u)), 8871u, ~arg_2.b) % vec4<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> bool {
    global0 = array<Struct_1, 23>();
    let var_0 = !vec2<bool>(arg_2.c.x, all(!select(vec2<bool>(false, arg_2.c.x), arg_2.c.xx, true)));
    let var_1 = Struct_1(vec4<i32>(~(arg_2.a.x | arg_2.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_3, arg_3, -54823i), vec4<i32>(39001i, 1i, arg_2.a.x, -2147483647i)), arg_2.a), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, -1i), vec2<i32>(2674i, 4787i))), select(1i, 2147483647i & arg_3, false)) ^ arg_2.a, ~(~u_input.c), vec3<bool>(!arg_2.c.x & true, arg_2.c.x, !(!all(vec2<bool>(arg_2.c.x, true)))), 26917u & _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-689f, -857f), vec2<f32>(-942f, 1029f))), Struct_1(vec4<i32>(arg_2.a.x, arg_0.x, -17012i, arg_3), 4294967295u, global2[_wgslsmith_index_u32(0u, 29u)], arg_2.b, vec4<u32>(arg_2.e.x, arg_2.d, 41004u, u_input.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, 1822f, -1391f)), 0u).x, ~1u), ~(vec4<u32>(arg_1, arg_1, 95292u, arg_1) ^ vec4<u32>(4988u, 1u, 1u, 1u)) << (abs(_wgslsmith_div_vec4_u32(~arg_2.e, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.e.x, 1u, 90609u), vec4<u32>(u_input.c, 4294967295u, arg_1, arg_1)))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_mult_i32(-min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.x, 26582i, 0i), max(var_1.a, arg_2.a))), -var_1.a.x);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(1310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(-124f))), _wgslsmith_f_op_f32(f32(-1f) * -199f), any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(797f + _wgslsmith_f_op_f32(-589f * -1830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-319f))), !(!arg_2.c.x)))));
    return false;
}

fn func_5(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = vec4<u32>(firstTrailingBit(1u), u_input.c, ~u_input.c, u_input.c);
    global1 = array<vec3<u32>, 25>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f - 1680f) * _wgslsmith_f_op_f32(ceil(-1420f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(302f, -1591f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -624f)))))), 140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - 199f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1784f, -842f, arg_1)) * _wgslsmith_f_op_f32(min(315f, 976f))), _wgslsmith_f_op_f32(trunc(1000f))))));
    global0 = array<Struct_1, 23>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(26i, arg_0, arg_0, u_input.a), firstTrailingBit(vec4<i32>(u_input.b, 42545i, u_input.a, 11025i))), select(vec4<i32>(-1i, arg_0, -35534i, arg_0) & vec4<i32>(-1i, 0i, u_input.b, -29796i), -vec4<i32>(46794i, 7452i, u_input.a, arg_0), !vec4<bool>(true, arg_1, true, false))), _wgslsmith_div_u32(~28535u, ~1u), !select(select(global2[_wgslsmith_index_u32(var_0.x, 29u)], global2[_wgslsmith_index_u32(19872u, 29u)], vec3<bool>(arg_1, arg_1, false)), vec3<bool>(arg_1, arg_1, false), true), _wgslsmith_mod_u32(reverseBits(0u & var_0.x), ~(~1u)), _wgslsmith_add_vec4_u32(var_0 ^ vec4<u32>(67559u, 0u, var_0.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x, 1u, u_input.c), vec4<u32>(var_0.x, var_0.x, u_input.c, 19629u))) << (var_0 % vec4<u32>(32u))));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = func_5(_wgslsmith_div_i32(~max(arg_0, ~1i), 0i), func_4(-(~arg_2.a.xyw) ^ min(arg_2.a.wzw, -arg_2.a.yxx), arg_2.b, Struct_1(-_wgslsmith_add_vec4_i32(arg_2.a, vec4<i32>(18348i, -1i, 1i, -3960i)), ~1u, select(vec3<bool>(true, true, arg_2.c.x), vec3<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x), true), u_input.c & _wgslsmith_mult_u32(0u, u_input.c), select(arg_2.e, func_2(vec2<f32>(-953f, 2076f), Struct_2(global0[_wgslsmith_index_u32(59180u, 23u)]), Struct_1(vec4<i32>(arg_0, -1i, arg_1, 0i), arg_2.b, vec3<bool>(true, arg_2.c.x, arg_2.c.x), arg_2.d, vec4<u32>(u_input.c, arg_2.b, u_input.c, arg_2.b))), select(false, false, false))), abs(u_input.a)));
    let var_1 = select(vec4<bool>(false & var_0.a.c.x, arg_2.c.x, any(!(!vec3<bool>(arg_2.c.x, false, var_0.a.c.x))), func_4(~var_0.a.a.wwx, countOneBits(1u), Struct_1(countOneBits(vec4<i32>(5901i, 2260i, arg_2.a.x, 3449i)), 17370u << (arg_2.d % 32u), arg_2.c, arg_2.e.x, arg_2.e), _wgslsmith_mult_i32(arg_0, -39295i) << (~1u % 32u))), vec4<bool>(false, var_0.a.a.x > -68150i, var_0.a.c.x != true, arg_2.c.x), vec4<bool>(true, var_0.a.c.x, any(vec3<bool>(true, !var_0.a.c.x, true)), arg_2.c.x));
    global0 = array<Struct_1, 23>();
    var var_2 = max(reverseBits(vec3<i32>(u_input.a, -countOneBits(-25034i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, u_input.b, 0i, -17793i) >> (arg_2.e % vec4<u32>(32u)), ~arg_2.a))), vec3<i32>(firstLeadingBit((-1i ^ u_input.a) ^ -110446i), _wgslsmith_sub_i32(-14144i ^ ~var_0.a.a.x, _wgslsmith_sub_i32(19667i, -1i)), select(0i, select(-arg_1, 2147483647i, true), true)));
    let var_3 = Struct_2(func_5(-reverseBits(arg_2.a.x), !any(var_0.a.c)).a);
    return ~var_3.a.a;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(761f * -1059f))), _wgslsmith_f_op_f32(888f * -1032f)), _wgslsmith_f_op_f32(abs(431f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1556f, -625f))) + _wgslsmith_f_op_f32(-2137f * _wgslsmith_f_op_f32(f32(-1f) * -369f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(174f, 549f) * -173f), -695f))), true));
    global0 = array<Struct_1, 23>();
    global1 = array<vec3<u32>, 25>();
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-432f, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2049f, var_0.x), vec2<f32>(var_0.x, var_0.x))))))), vec2<f32>(var_0.x, -603f)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 23u)];
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    var var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(func_6(global2[_wgslsmith_index_u32(~0u, 29u)], Struct_1(func_1(u_input.a, 2147483647i, Struct_1(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), u_input.c, vec3<bool>(false, true, false), u_input.c, vec4<u32>(0u, 45065u, 1u, 4294967295u))), ~26054u, !global2[_wgslsmith_index_u32(1u, 29u)], u_input.c, vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), ~vec4<u32>(func_6(global2[_wgslsmith_index_u32(75801u, 29u)], global0[_wgslsmith_index_u32(u_input.c, 23u)]).x, u_input.c, firstTrailingBit(50713u), u_input.c))), 23u)];
    global2 = array<vec3<bool>, 29>();
    let var_1 = func_5(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_0.a.x, var_0.a.x, u_input.b)), var_0.a.zww), var_0.d == var_0.d);
    global1 = array<vec3<u32>, 25>();
    var var_2 = Struct_2(Struct_1(countOneBits(vec4<i32>(var_1.a.a.x, -1i, -32362i, var_1.a.a.x)) << ((var_0.e << (vec4<u32>(var_1.a.e.x, 4294967295u, 0u, var_1.a.d) % vec4<u32>(32u))) % vec4<u32>(32u)), max(~select(u_input.c, var_1.a.b, var_1.a.c.x), max(u_input.c, var_0.e.x) & ~28659u), vec3<bool>(func_4(var_1.a.a.zzz | vec3<i32>(5624i, var_0.a.x, -1i), firstLeadingBit(1u), Struct_1(vec4<i32>(u_input.a, var_0.a.x, 25132i, -1i), var_1.a.e.x, global2[_wgslsmith_index_u32(u_input.c, 29u)], 91582u, vec4<u32>(89720u, 4294967295u, var_0.d, 0u)), 1i), false, true), ~1u, _wgslsmith_clamp_vec4_u32(~var_1.a.e, _wgslsmith_div_vec4_u32(var_1.a.e, func_3(vec2<f32>(-1000f, -302f), var_1.a, vec3<f32>(-1160f, 1959f, 1182f), var_0.d)), func_5(var_1.a.a.x ^ -25147i, all(var_0.c.yz)).a.e)));
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.a.a.x), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * -725f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f + -159f)) * -377f)), _wgslsmith_dot_vec3_i32(var_2.a.a.wyy, select(vec3<i32>(78620i, 2147483647i, 2147483647i) >> (global1[_wgslsmith_index_u32(var_0.b, 25u)] % vec3<u32>(32u)), ~var_1.a.a.xxz, 1u < var_0.e.x) << (abs(~var_0.e.zyw) % vec3<u32>(32u))), 1u);
}


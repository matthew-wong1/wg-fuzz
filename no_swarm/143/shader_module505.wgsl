struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<f32>, 3>;

var<private> global2: vec4<f32> = vec4<f32>(2542f, -201f, 1011f, -342f);

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(-6637i, -1i), false, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), -26919i), false, vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), 4294967295u), Struct_1(vec2<i32>(11298i, -4478i), false, vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), 0u), Struct_1(vec2<i32>(i32(-2147483648), 0i), false, vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), 1u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), true, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), 1u), Struct_1(vec2<i32>(49933i, 0i), false, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), 1u), Struct_1(vec2<i32>(44936i, -17855i), true, vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), 68445u), Struct_1(vec2<i32>(-32410i, 18773i), false, vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), 1u), Struct_1(vec2<i32>(i32(-2147483648), -36245i), false, vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), 101825u), Struct_1(vec2<i32>(14525i, -2724i), false, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), 4294967295u), Struct_1(vec2<i32>(-15854i, 14310i), false, vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), 10930u), Struct_1(vec2<i32>(0i, 23956i), true, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), 26936u), Struct_1(vec2<i32>(0i, 670i), true, vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), 4294967295u), Struct_1(vec2<i32>(23001i, -13438i), true, vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), 15567u), Struct_1(vec2<i32>(2147483647i, 1i), false, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), 0u), Struct_1(vec2<i32>(0i, i32(-2147483648)), true, vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), 34838u), Struct_1(vec2<i32>(18797i, 0i), false, vec4<bool>(true, false, false, true), vec3<bool>(false, true, true), 26044u), Struct_1(vec2<i32>(6375i, 1i), false, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), 1u), Struct_1(vec2<i32>(i32(-2147483648), 1i), false, vec4<bool>(true, true, false, true), vec3<bool>(false, true, false), 1u), Struct_1(vec2<i32>(43595i, 1i), false, vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), 0u), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), false, vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), 4294967295u), Struct_1(vec2<i32>(-23i, -4437i), false, vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), 1140u), Struct_1(vec2<i32>(0i, -1i), false, vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), 0u), Struct_1(vec2<i32>(1562i, 2147483647i), false, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), 4294967295u), Struct_1(vec2<i32>(-36940i, -28497i), true, vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), 67504u), Struct_1(vec2<i32>(-17607i, 43596i), false, vec4<bool>(false, true, false, true), vec3<bool>(false, false, false), 0u), Struct_1(vec2<i32>(0i, 10065i), true, vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), 15840u), Struct_1(vec2<i32>(-1i, -26666i), true, vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), 25641u), Struct_1(vec2<i32>(1i, 29616i), false, vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 9884u), Struct_1(vec2<i32>(2147483647i, -1i), true, vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), 7470u), Struct_1(vec2<i32>(24194i, -40455i), true, vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), 1u), Struct_1(vec2<i32>(0i, -46111i), true, vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), 16822u));

var<private> global4: array<vec2<u32>, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(global0.xy, true, select(vec4<bool>(global2.x <= _wgslsmith_f_op_f32(-global2.x), true, !any(vec3<bool>(false, true, false)), false), vec4<bool>(all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)), true, true), any(vec2<bool>(true, any(vec4<bool>(true, true, true, false))))), vec3<bool>(false, true, true), _wgslsmith_add_u32(_wgslsmith_clamp_u32(min(4294967295u, 1u) & max(u_input.c, u_input.a), _wgslsmith_sub_u32(select(u_input.b, u_input.a, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c))), ~countOneBits(0u)), ~(4294967295u >> (u_input.b % 32u))));
    var var_1 = Struct_2(false);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-372f, global2.x, 1402f, -462f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, 451f, -655f, 1303f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, 3412f, -140f, -841f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, 621f, global2.x, 414f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, global2.x, -418f), vec4<f32>(global2.x, 2088f, -660f, global2.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(-global2.x), global2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, -245f, 1896f, global2.x)))))));
    var_1 = Struct_2(!var_1.a);
    var var_2 = global3[_wgslsmith_index_u32(~(~firstTrailingBit(~reverseBits(0u))), 32u)];
    return _wgslsmith_mult_i32(~_wgslsmith_mod_i32(reverseBits(2147483647i), firstLeadingBit(~(-1414i))), global0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global3 = array<Struct_1, 32>();
    global0 = vec3<i32>((1i & arg_1.a.x) & -7865i, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, arg_1.a.x), -26077i) >> (u_input.c % 32u), -14940i), func_3());
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_2(func_2(global3[_wgslsmith_index_u32(max(firstLeadingBit(~19503u), 3785u), 32u)], func_2(func_2(func_2(Struct_1(vec2<i32>(arg_0.a.x, arg_1.a.x), false, arg_0.c, vec3<bool>(false, true, true), 1u), global3[_wgslsmith_index_u32(u_input.b, 32u)], vec4<f32>(1377f, global2.x, 199f, -820f)), arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, -945f, global2.x, 245f))), func_2(func_2(global3[_wgslsmith_index_u32(1u, 32u)], Struct_1(arg_1.a, arg_0.b, vec4<bool>(false, arg_0.b, arg_1.b, arg_0.d.x), vec3<bool>(true, arg_1.d.x, arg_0.b), arg_1.e), vec4<f32>(global2.x, global2.x, global2.x, global2.x)), Struct_1(global0.zx, arg_0.b, arg_1.c, vec3<bool>(false, true, arg_0.c.x), 7458u), _wgslsmith_f_op_vec4_f32(vec4<f32>(2382f, -133f, -2178f, 859f) + vec4<f32>(103f, 1963f, 1081f, 1270f))), vec4<f32>(_wgslsmith_f_op_f32(-742f + -1645f), _wgslsmith_f_op_f32(1000f + global2.x), 1182f, -481f)), vec4<f32>(_wgslsmith_f_op_f32(114f * _wgslsmith_f_op_f32(-global2.x)), 1003f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-543f))))), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, 0i), vec2<i32>(1i, func_3())), all(!vec4<bool>(arg_1.d.x, arg_1.d.x, arg_0.b, arg_1.b)), vec4<bool>(!all(vec4<bool>(arg_0.b, false, false, arg_0.b)), true, all(arg_1.c.xx) | arg_0.d.x, arg_1.c.x), vec3<bool>(true, !select(false, arg_0.b, arg_1.c.x), false), _wgslsmith_dot_vec2_u32(select(reverseBits(vec2<u32>(0u, 0u)), vec2<u32>(arg_0.e, 27584u), vec2<bool>(true, arg_1.d.x)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(global4[_wgslsmith_index_u32(12637u, 18u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(45053u, arg_0.e), global4[_wgslsmith_index_u32(u_input.c, 18u)]), global4[_wgslsmith_index_u32(~99035u, 18u)]))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global2.x)), -1038f, -1357f, 136f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, global2.x, global2.x, 515f)) - vec4<f32>(1777f, -347f, global2.x, -592f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) * 866f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), !any(vec4<bool>(false, true, var_0.c.x, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 742f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 820f)))))));
    global4 = array<vec2<u32>, 18>();
    let var_2 = ~reverseBits(_wgslsmith_div_i32(-347i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 17131i, -1708i), vec3<i32>(arg_0.a.x, -41640i, -1i)))));
    var var_3 = global0.xx;
    return arg_0.e ^ ~arg_1.e;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = 4294967295u;
    var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.a), arg_1.e, _wgslsmith_clamp_u32(arg_1.e, u_input.c, 95474u)), vec3<u32>(u_input.c >> (7401u % 32u), 4076u >> (arg_1.e % 32u), 38182u)) >> (~u_input.c % 32u)) ^ arg_1.e;
    var var_1 = min(select(vec4<u32>(1u, ~u_input.a, 1u, arg_1.e), vec4<u32>(arg_1.e, abs(arg_1.e), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, 1u, arg_1.e, 28775u), vec4<u32>(4294967295u, arg_1.e, arg_1.e, arg_1.e)), 1u), vec4<bool>(arg_1.d.x, all(vec3<bool>(true, false, false)), true, arg_1.d.x)), vec4<u32>(firstLeadingBit(u_input.a), arg_1.e, 1u, 1u)) << (vec4<u32>(arg_1.e, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.c), max(global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(0u, 18u)]))), ~abs(73852u), u_input.b & ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b, arg_1.e))) % vec4<u32>(32u));
    var_0 = ~reverseBits(u_input.a >> (~(~36088u) % 32u));
    let var_2 = -52264i;
    return Struct_2(all(arg_1.c));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    global0 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(~global0.x ^ -global0.x, select(_wgslsmith_mult_i32(global0.x, 28113i), ~global0.x, true), _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(global0.x, global0.x))), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -3859i, global0.x), vec3<i32>(-1i, global0.x, global0.x)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -1i, global0.x), vec3<i32>(global0.x, global0.x, -1i))), ~min(vec3<i32>(global0.x, 0i, -25487i), vec3<i32>(global0.x, global0.x, global0.x)))));
    let var_1 = !vec4<bool>(0i <= abs(global0.x), arg_0.a, true, true);
    var var_2 = min(vec4<u32>(~func_2(func_2(global3[_wgslsmith_index_u32(1u, 32u)], Struct_1(global0.zy, var_1.x, vec4<bool>(true, var_1.x, var_1.x, true), vec3<bool>(arg_0.a, true, arg_0.a), 21299u), vec4<f32>(-1377f, global2.x, 977f, global2.x)), global3[_wgslsmith_index_u32(~69020u, 32u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, global2.x, global2.x)))).e, ~1u, _wgslsmith_mod_u32(u_input.b, u_input.b), 6156u), ~vec4<u32>(~select(1u, 49787u, var_1.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(14636u, 12955u), global4[_wgslsmith_index_u32(u_input.a, 18u)], var_1.x), _wgslsmith_mult_vec2_u32(global4[_wgslsmith_index_u32(u_input.b, 18u)], global4[_wgslsmith_index_u32(u_input.b, 18u)])), u_input.c & (29800u ^ u_input.b), ~1u & u_input.b));
    var var_3 = var_1.x;
    return global3[_wgslsmith_index_u32(countOneBits(func_4(func_2(func_2(global3[_wgslsmith_index_u32(u_input.a | u_input.a, 32u)], Struct_1(vec2<i32>(global0.x, -2147483647i), true, vec4<bool>(false, arg_0.a, false, arg_0.a), var_1.zyw, var_2.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 190f, 583f, global2.x), vec4<f32>(global2.x, global2.x, global2.x, 1999f)))), Struct_1(-vec2<i32>(global0.x, -34089i), false, vec4<bool>(true, arg_0.a, true, true), vec3<bool>(var_1.x, var_1.x, false), _wgslsmith_dot_vec3_u32(var_2.yxw, vec3<u32>(var_2.x, 63761u, var_2.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1792f, global2.x, global2.x, 486f))))), func_2(global3[_wgslsmith_index_u32(~var_2.x, 32u)], Struct_1(vec2<i32>(global0.x, 22745i), true, select(vec4<bool>(arg_0.a, false, true, arg_0.a), vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, true, var_1.x, false)), !vec3<bool>(arg_0.a, var_1.x, false), u_input.a << (0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(global2.x - 985f), global2.x, _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(408f + 733f))))), 32u)];
}

fn func_1() -> i32 {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(747f - -226f) + _wgslsmith_f_op_f32(-global2.x))), global3[_wgslsmith_index_u32(1u ^ func_4(func_2(global3[_wgslsmith_index_u32(u_input.a, 32u)], global3[_wgslsmith_index_u32(52797u, 32u)], vec4<f32>(global2.x, global2.x, global2.x, 488f)), global3[_wgslsmith_index_u32(~56030u, 32u)]), 32u)]));
    global0 = vec3<i32>(-21123i, countOneBits(min(1i, var_0.a.x)) ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.x, global0.x) << (1u % 32u), countOneBits(-1i & global0.x)), var_0.a.x);
    var var_1 = func_2(func_2(func_2(func_2(Struct_1(global0.yz, false, vec4<bool>(true, true, false, var_0.c.x), vec3<bool>(true, false, var_0.b), 40538u), global3[_wgslsmith_index_u32(~var_0.e, 32u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, -716f, global2.x, 3022f))), Struct_1(abs(vec2<i32>(-1i, 0i)), true, select(vec4<bool>(true, var_0.d.x, true, var_0.d.x), vec4<bool>(false, var_0.b, var_0.c.x, false), vec4<bool>(true, var_0.c.x, false, false)), vec3<bool>(false, true, false), ~0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -192f, global2.x))), func_2(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(var_0.e, 12805u)), 32u)], Struct_1(vec2<i32>(-35712i, var_0.a.x) & global0.xx, var_0.b | var_0.b, vec4<bool>(false, false, var_0.b, var_0.d.x), vec3<bool>(true, var_0.c.x, false), 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -438f, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, global2.x, 227f, -2262f)))))), Struct_1(vec2<i32>(global0.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, 2147483647i, global0.x)), vec3<i32>(16090i, 7017i, 0i))), func_2(func_2(Struct_1(vec2<i32>(-30329i, -1i), var_0.c.x, vec4<bool>(var_0.c.x, true, false, var_0.b), var_0.d, 34389u), global3[_wgslsmith_index_u32(u_input.b, 32u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(1891f, global2.x, global2.x, -853f) + vec4<f32>(global2.x, -111f, 1016f, global2.x))), func_2(Struct_1(global0.yz, var_0.b, vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), var_0.e), func_2(global3[_wgslsmith_index_u32(33364u, 32u)], global3[_wgslsmith_index_u32(u_input.c, 32u)], vec4<f32>(-1306f, 127f, -119f, 3150f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(387f, -153f, -341f, global2.x))).b, !func_2(global3[_wgslsmith_index_u32(864u, 32u)], func_2(global3[_wgslsmith_index_u32(5632u, 32u)], global3[_wgslsmith_index_u32(22613u, 32u)], vec4<f32>(-1316f, global2.x, global2.x, -706f)), vec4<f32>(global2.x, 358f, 845f, global2.x)).c, vec3<bool>(select(false & var_0.d.x, all(var_0.c), var_0.b), any(!vec3<bool>(true, true, var_0.b)), !(1012f >= global2.x)), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-447f, global2.x), 429f, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -2585f))))).d;
    var var_2 = func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(191f))), -167f))), Struct_1(countOneBits(-var_0.a), all(vec2<bool>(func_6(Struct_2(false)).b, var_0.b)), func_6(func_5(_wgslsmith_div_f32(479f, global2.x), Struct_1(vec2<i32>(var_0.a.x, global0.x), true, var_0.c, vec3<bool>(true, var_0.b, false), u_input.c))).c, !vec3<bool>(var_0.a.x < var_0.a.x, var_1.x || var_1.x, var_1.x | true), firstLeadingBit(1u)));
    var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.b, 4665u), u_input.b)), 32u)];
    return -10551i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(global0.x & ~(-2147483647i), abs(~1i << (_wgslsmith_mult_u32(u_input.b, 0u) % 32u)) ^ _wgslsmith_mult_i32(~0i, firstLeadingBit(-global0.x)));
    global3 = array<Struct_1, 32>();
    let var_1 = vec3<i32>(global0.x >> (u_input.a % 32u), 14708i, _wgslsmith_mod_i32(firstLeadingBit(~2147483647i), 18395i) & (global0.x << ((~3145u >> (select(4294967295u, 4294967295u, true) % 32u)) % 32u)));
    global4 = array<vec2<u32>, 18>();
    let var_2 = vec4<i32>(func_1(), 9034i, 1i, ~global0.x);
    let var_3 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(650f, -494f))), func_2(func_2(func_2(global3[_wgslsmith_index_u32(6679u, 32u)], Struct_1(vec2<i32>(global0.x, global0.x), true, vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), 404u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -194f, 271f))), func_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 30611u), 32u)], global3[_wgslsmith_index_u32(abs(4294967295u), 32u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -355f, 586f, -388f) - vec4<f32>(-2083f, global2.x, 1273f, -956f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1119f, 900f, global2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, global2.x, global2.x, global2.x)))), func_6(func_5(_wgslsmith_f_op_f32(select(-1800f, global2.x, true)), Struct_1(vec2<i32>(69779i, -1i), true, vec4<bool>(true, true, true, false), vec3<bool>(false, true, true), u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(1407f - global2.x), -736f, _wgslsmith_f_op_f32(min(global2.x, 398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1463f);
}


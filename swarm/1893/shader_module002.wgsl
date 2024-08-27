struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_4(Struct_3(global0.x, Struct_1(true, !select(false, true, true), false, ~reverseBits(u_input.c))));
    var var_1 = var_0.a.b.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1535f)) - _wgslsmith_f_op_f32(-2033f - _wgslsmith_f_op_f32(f32(-1f) * -379f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a))));
    let var_3 = !vec4<bool>(false, _wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, var_0.a.a)), _wgslsmith_f_op_f32(-global0.x)), var_0.a.b.b, !var_0.a.b.b);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.a, var_0.a.a), vec2<f32>(728f, 632f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, var_0.a.a))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, 1000f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, -903f) + vec2<f32>(304f, var_0.a.a)))))), !var_3.zz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1489f * 131f));
}

fn func_2() -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(min(u_input.b.zzz, _wgslsmith_mod_vec3_i32(-u_input.b.yww, vec3<i32>(u_input.b.x, u_input.b.x, -9944i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(654f))));
    let var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), true, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), ~4294967295u);
    var var_1 = _wgslsmith_dot_vec3_u32((min(vec3<u32>(var_0.d, 4294967295u, u_input.c) << (vec3<u32>(74026u, var_0.d, 37913u) % vec3<u32>(32u)), select(vec3<u32>(var_0.d, 0u, u_input.c), vec3<u32>(u_input.c, var_0.d, 35534u), vec3<bool>(var_0.c, false, var_0.b))) | vec3<u32>(1u, ~var_0.d, 1u)) << (vec3<u32>(~u_input.c, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, var_0.d), vec4<u32>(4294967295u, u_input.c, 4294967295u, 41414u)), var_0.d | 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d, 27034u, 59973u), vec4<u32>(var_0.d, 0u, 4294967295u, 1u))) % vec3<u32>(32u)), vec3<u32>(~15760u, 4294967295u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, u_input.c, var_0.d, var_0.d), vec4<u32>(u_input.c, 21323u, 0u, 50897u)) % 32u), ~firstLeadingBit(34571u)));
    let var_2 = Struct_5(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 51564u, 1u) << (vec3<u32>(19680u, u_input.c, 6376u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.c, var_0.d)), vec3<u32>(33671u, u_input.c << (u_input.c % 32u), ~u_input.c)));
    var_1 = ~var_0.d;
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>(0u <= reverseBits(arg_0.d), -2147483647i <= u_input.a, arg_0.b, arg_0.d <= arg_0.d);
    var var_1 = reverseBits(_wgslsmith_clamp_u32(arg_0.d, _wgslsmith_sub_u32(~(~1u), firstTrailingBit(76284u) & abs(0u)), 47946u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, global0.x) * vec2<f32>(-706f, -307f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1369f, _wgslsmith_f_op_f32(min(-477f, global0.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), -1601f))));
    let var_2 = func_2();
    return Struct_2(func_2());
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = func_4(func_2());
    var_0 = func_4(Struct_1(select(false, arg_0.b, func_4(Struct_1(false, true, var_0.a.a, 4294967295u)).a.b), !func_2().c, !arg_0.a, u_input.c));
    var var_1 = func_4(Struct_1(u_input.a <= abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), !(!any(vec2<bool>(true, true))), !(func_4(var_0.a).a.c | true), min(countOneBits(1u), max(_wgslsmith_mult_u32(1u, arg_2), abs(0u)))));
    let var_2 = ~u_input.c ^ ~4294967295u;
    let var_3 = Struct_1(true, true, var_1.a.b, min(firstLeadingBit(7006u), firstTrailingBit(var_1.a.d)));
    return !(!vec2<bool>(var_0.a.c, var_1.a.a));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = true;
    let var_1 = !(func_1(func_2(), -119f, u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 932f, -1181f))).x & true) || ((i32(-1i) * -1i) < _wgslsmith_add_i32(~(u_input.a << (u_input.c % 32u)), u_input.a));
    var_0 = var_1;
    let var_2 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.c, 44581u)), ~vec2<u32>(u_input.c, 4294967295u))), vec2<u32>(_wgslsmith_add_u32(func_2().d, abs(_wgslsmith_mult_u32(u_input.c, 1u))), ~1u));
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(floor(-3078f)), Struct_1(true && any(vec4<bool>(arg_2.x, arg_2.x, true, arg_0.x)), arg_0.x, arg_2.x, abs(var_2.x))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(397f - 1019f)), func_4(Struct_1(!var_3.a.b.c, var_1, false, var_3.a.b.d)).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>((~u_input.a >> (firstLeadingBit(20745u) % 32u)) & -44478i, u_input.a, min(max(1i << (u_input.c % 32u), -15408i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, -16518i, u_input.a), -1i))), -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, 0i) ^ vec3<i32>(u_input.b.x, u_input.a, u_input.a)), vec3<i32>(u_input.b.x, firstTrailingBit(u_input.b.x), _wgslsmith_add_i32(u_input.b.x, u_input.b.x))));
    let var_1 = func_5(vec2<bool>(global0.x < _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-505f)), _wgslsmith_f_op_f32(-global0.x), 1u < u_input.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1326f)) - 239f))), !func_1(Struct_1(true, true, any(vec2<bool>(true, true)), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -252f), ~(~58429u), vec3<f32>(_wgslsmith_f_op_f32(545f * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -352f), -883f)));
    var var_2 = 17348u;
    global0 = vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) + -441f))));
    let var_3 = vec4<i32>(~(~39893i) << (0u % 32u), u_input.b.x, u_input.b.x, countOneBits(-var_0.x));
    let var_4 = Struct_1(!func_4(Struct_1(false, true, !var_1.b.a, _wgslsmith_add_u32(var_1.b.d, var_1.b.d))).a.b, 30924u <= min(u_input.c, ~var_1.b.d), any(vec2<bool>(true, true)), func_5(select(select(vec2<bool>(true, true), !vec2<bool>(var_1.b.b, var_1.b.a), vec2<bool>(var_1.b.c, true)), vec2<bool>(var_1.b.c, !var_1.b.a), var_1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(616f))), func_1(Struct_1(!var_1.b.c, any(vec2<bool>(true, true)), true, countOneBits(var_1.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), ~(~u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 600f, global0.x) - vec3<f32>(-387f, -1387f, -2135f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global0.x, 1286f))))).b.d);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1338f, -871f));
    var_0 = vec3<i32>(-1i, firstLeadingBit(reverseBits(2147483647i)) >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_4.d), vec2<u32>(1u, u_input.c)), ~u_input.c), reverseBits(4294967295u) ^ _wgslsmith_div_u32(u_input.c, u_input.c)) % 32u), abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(abs(_wgslsmith_add_i32(0i, 50223i))), 1i), 1i, ~(~select(vec3<u32>(34289u, var_4.d, u_input.c), ~vec3<u32>(20720u, 0u, u_input.c), !vec3<bool>(var_4.c, true, var_4.a))));
}


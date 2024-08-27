struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: Struct_1 = Struct_1(603u, true, false);

var<private> global3: u32 = 1u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    return select(firstLeadingBit(global2.a), u_input.a.x, true);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~func_3(), func_3()), true, global2.b);
    let var_1 = -111f;
    let var_2 = reverseBits(~_wgslsmith_dot_vec2_u32(u_input.a.yy, _wgslsmith_clamp_vec2_u32(u_input.a.xx | vec2<u32>(0u, u_input.a.x), ~global0[_wgslsmith_index_u32(28569u, 18u)], ~vec2<u32>(var_0.a, global2.a))));
    global0 = array<vec2<u32>, 18>();
    global1 = array<vec4<bool>, 30>();
    return ~(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(26193i, -28149i, 45448i), all(global1[_wgslsmith_index_u32(var_2, 30u)])) ^ vec3<i32>(~7078i, firstLeadingBit(-24748i), min(8227i, -2147483647i))) | select(vec3<i32>(18782i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, 1i))), max(vec3<i32>(1i >> (var_0.a % 32u), -41362i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -34103i, -12083i, 35900i), vec4<i32>(0i, 1i, 1i, 14778i))), vec3<i32>(-60785i, 1i, 13167i >> (u_input.a.x % 32u))), vec3<bool>(any(select(vec2<bool>(var_0.b, var_0.c), vec2<bool>(false, true), global2.b)), all(vec3<bool>(true, true, true)), select(var_0.b, false & global2.c, false)));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    global1 = array<vec4<bool>, 30>();
    global1 = array<vec4<bool>, 30>();
    var var_0 = -1213f;
    var var_1 = Struct_2(reverseBits(vec3<i32>(1i, firstLeadingBit(-arg_2.b), i32(-1i) * -arg_0.x)), -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c - vec4<f32>(-143f, arg_3.a, -1613f, arg_2.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, 1137f, arg_2.c.x, arg_2.c.x)) - _wgslsmith_f_op_vec4_f32(arg_2.c * vec4<f32>(-485f, 1042f, -617f, -1142f))))), -(-vec4<i32>(1i, 13973i, -51791i, -45561i) | vec4<i32>(19786i, ~arg_0.x, arg_0.x, arg_0.x)));
    let var_2 = Struct_3(-180f, true & !global2.b, global1[_wgslsmith_index_u32(firstLeadingBit(~(_wgslsmith_add_u32(global2.a, 16315u) << (~u_input.a.x % 32u))), 30u)], -(reverseBits(vec2<i32>(1i, -1i)) ^ firstTrailingBit(vec2<i32>(var_1.d.x, arg_0.x))), Struct_1(~1u, true | !all(arg_3.c.xzy), any(arg_3.c.wz)));
    return Struct_1(9633u, arg_1, all(select(arg_3.c, vec4<bool>(true, var_2.c.x, select(arg_3.e.c, global2.b, arg_3.e.c), global2.b), arg_2.c.x < _wgslsmith_f_op_f32(select(var_1.c.x, -791f, global2.b)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-250f, -2044f))));
    global0 = array<vec2<u32>, 18>();
    let var_1 = func_4(vec3<i32>(arg_3.x, i32(-1i) * -abs(arg_3.x), ~min(arg_3.x ^ 27627i, arg_3.x | -1i)), !all(!(!arg_2.zzw)), Struct_2(vec3<i32>(-1i) * -arg_3.zyw, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15687i, arg_3.x), firstTrailingBit(arg_3.ww)), 93997i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f - -208f) * -207f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(130f - 1754f))), 638f), _wgslsmith_mod_vec4_i32(arg_3, _wgslsmith_div_vec4_i32(arg_3 | vec4<i32>(-1i, arg_3.x, arg_3.x, arg_3.x), countOneBits(arg_3)))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1171f))), !arg_2.x, select(vec4<bool>(any(vec2<bool>(arg_1.b, arg_1.c)), true, arg_2.x, !arg_1.c), vec4<bool>(true, true, true, true), select(global1[_wgslsmith_index_u32(~arg_1.a, 30u)], !arg_2, !vec4<bool>(arg_0, global2.b, false, global2.b))), reverseBits(arg_3.xw), arg_1));
    global0 = array<vec2<u32>, 18>();
    let var_2 = false;
    return func_4(~_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_3.x, arg_3.x, -2284i), -firstTrailingBit(vec3<i32>(arg_3.x, -1i, 1i))), 18641i >= ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_3.x, arg_3.x, 1i)), vec3<i32>(arg_3.x, -1i, arg_3.x) ^ arg_3.wzy), Struct_2(~vec3<i32>(arg_3.x, firstTrailingBit(0i), func_2().x), 0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1934f), _wgslsmith_f_op_f32(562f * 2770f), _wgslsmith_f_op_f32(-596f * -338f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(382f - 1351f), _wgslsmith_f_op_f32(-719f + 723f), _wgslsmith_f_op_f32(-1618f + -741f), _wgslsmith_f_op_f32(343f * -480f))), _wgslsmith_div_vec4_i32(min(~arg_3, arg_3), select(vec4<i32>(-836i, arg_3.x, arg_3.x, 54642i), arg_3, any(vec2<bool>(arg_1.c, var_1.c))))), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1116f - -1000f) * -222f))), true, !arg_2, ~vec2<i32>(~arg_3.x, ~arg_3.x), Struct_1(var_1.a, arg_1.c, func_4(vec3<i32>(arg_3.x, arg_3.x, 0i), false, Struct_2(vec3<i32>(-2147483647i, arg_3.x, arg_3.x), arg_3.x, vec4<f32>(1105f, 126f, 830f, -2177f), arg_3), Struct_3(1051f, false, arg_2, arg_3.yw, Struct_1(0u, true, false))).c | all(arg_2.yyx))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    var var_0 = ~(-19566i);
    var var_1 = func_5(true, func_4(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -80700i, 53023i), vec3<i32>(0i, 2147483647i, 1i)), ~2147483647i, _wgslsmith_add_i32(-1i, -7460i))), !(select(0u, 1u, true) >= arg_2.x), Struct_2(func_2() | -vec3<i32>(42789i, 1i, -34328i), ~_wgslsmith_add_i32(-34753i, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1148f, -263f, -333f, 1560f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, -5380i), vec4<i32>(0i, 54004i, 30874i, 0i), -vec4<i32>(45922i, -37652i, 30218i, 0i))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-622f, -692f, global2.c)) - -516f), true, select(select(vec4<bool>(false, false, global2.c, false), arg_0, arg_0), select(vec4<bool>(arg_1, arg_0.x, global2.b, true), arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), arg_0.x), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(1i, 6681i)), max(vec2<i32>(-64110i, 1i), vec2<i32>(8312i, -44942i))), Struct_1(_wgslsmith_mult_u32(52771u, 0u), all(arg_0), false))), !(!arg_0), vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 4532i), ~vec2<i32>(1i, 1i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(10927i, 0i), abs(vec2<i32>(1i, 1i))), select(abs(max(36254i, 1i)), firstTrailingBit(i32(-1i) * -12032i), arg_0.x)));
    global2 = func_4(vec3<i32>(-2147483647i, max(~1i, i32(-1i) * -1i), -(~57060i)), all(select(select(arg_0.xww, vec3<bool>(arg_0.x, global2.c, arg_1), select(vec3<bool>(global2.c, true, false), vec3<bool>(false, arg_1, false), true)), !arg_0.ywz, select(select(arg_0.yzw, arg_0.yww, vec3<bool>(true, arg_0.x, false)), vec3<bool>(var_1.b, true, true), select(arg_0.wyw, vec3<bool>(false, global2.c, arg_0.x), false)))), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(-22863i, 24600i), _wgslsmith_div_i32(12153i, 1676i)), -vec3<i32>(-3450i, 12764i, -20669i) << ((vec3<u32>(4294967295u, 4294967295u, 50995u) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), 1i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), -812f, _wgslsmith_f_op_f32(step(330f, _wgslsmith_f_op_f32(abs(1889f)))), 1000f), abs(vec4<i32>(1i, 1i, 1i, 1i))), Struct_3(-1000f, arg_1 && (u_input.a.x > u_input.a.x), !(!(!vec4<bool>(true, var_1.b, global2.c, arg_1))), vec2<i32>(i32(-1i) * -58467i, 38222i) << ((vec2<u32>(24247u, var_1.a) & ~vec2<u32>(0u, global2.a)) % vec2<u32>(32u)), func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3132i, -2147483647i, 16527i), firstLeadingBit(vec3<i32>(35619i, -1i, -4450i)), vec3<i32>(2147483647i, 0i, -15562i) << (u_input.a % vec3<u32>(32u))), any(select(vec2<bool>(false, var_1.b), arg_0.xx, false)), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(58433i, 34955i, -1i), vec3<i32>(35321i, 24833i, 13559i)), 1i, _wgslsmith_div_vec4_f32(vec4<f32>(794f, 2360f, 409f, -669f), vec4<f32>(-190f, 1036f, 2024f, 1368f)), vec4<i32>(1i, 1i, 1i, 1i)), Struct_3(-285f, arg_0.x, !vec4<bool>(var_1.b, true, false, true), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 5430i), vec2<i32>(-6214i, 2147483647i)), func_5(false, Struct_1(arg_2.x, false, false), global1[_wgslsmith_index_u32(4294967295u, 30u)], vec4<i32>(-4989i, -18735i, 0i, -13061i))))));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(8373i, 1i, 0i), vec3<i32>(-2147483647i, 0i, 2147483647i))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-44437i, -36946i, -11699i), vec3<i32>(12925i, -15489i, -2147483647i)), vec3<i32>(42986i, -10914i, -2147483647i)) | _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 37559i, 0i, 0i), vec4<i32>(16346i, -45024i, -19967i, -3919i)), -2147483647i), 1i, select(53279i, ~(-31401i), true)), ~vec4<i32>(-2147483647i, max(~(-29424i), 1i), -_wgslsmith_clamp_i32(10156i, -19377i, 0i), abs(firstTrailingBit(-28770i))));
    var var_3 = max(var_2.yzw, var_2.zyw);
    return 2596f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 31793i;
    global3 = 0u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-888f - 425f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, global2.b), global2.b, u_input.a.xx))))))), -1012f);
    global3 = u_input.a.x;
    global2 = Struct_1(~(global2.a ^ ~(~42052u)), all(vec3<bool>(false, true, all(vec2<bool>(true, global2.c)))), any(!select(vec2<bool>(global2.b, global2.b), vec2<bool>(global2.c, false), select(true, true, global2.c))));
    let var_2 = any(!select(global1[_wgslsmith_index_u32(44954u, 30u)], select(!global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(reverseBits(0u), 30u)], false || global2.b), !vec4<bool>(true, true, false, global2.c)));
    global0 = array<vec2<u32>, 18>();
    var var_3 = Struct_1(33124u, true, true);
    let var_4 = Struct_2(~vec3<i32>(-13983i, -19387i, var_0), firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(-2147483647i, -488i), vec2<i32>(var_0, -44788i)), vec2<i32>(var_0, var_0) >> (vec2<u32>(20673u, var_3.a) % vec2<u32>(32u)), vec2<i32>(var_0, var_0)), vec2<i32>(~var_0, var_0))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - var_1.x), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, var_0 > 5782i, true, true), false & (global2.c || var_3.b), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, u_input.a.x)) ^ _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(14693u, 18u)], u_input.a.xz, global0[_wgslsmith_index_u32(1u, 18u)]))), var_1.x, 854f), -(~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(var_0, var_0, -78317i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.c.x * -1660f), u_input.a);
}


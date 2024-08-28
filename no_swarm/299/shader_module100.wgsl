struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 3>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = ~reverseBits(abs(-69077i) | abs(select(arg_0.a.b, 22845i, false)));
    let var_1 = Struct_3(Struct_2(arg_0.c, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.a))), ~0i), arg_0.a), _wgslsmith_f_op_f32(select(862f, arg_0.b.a, true)));
    global1 = array<vec2<f32>, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.a, -144f, -1266f), vec3<f32>(var_1.b, 396f, var_1.a.b.a), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(541f, 971f, 1022f) * vec3<f32>(var_1.a.b.a, arg_0.b.a, -348f))) + vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.c.a, 160f)), -1008f, _wgslsmith_f_op_f32(f32(-1f) * -243f)))));
    let var_3 = Struct_2(arg_0.b, Struct_1(var_1.a.a.a, var_0), arg_0.c);
    return var_1.a.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    global0 = true;
    var var_0 = u_input.a.zy;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(0u, var_0.x, arg_1.a & true) >> (u_input.a.x % 32u), var_0.x, min(~var_0.x, ~37192u)), countOneBits(u_input.c.x));
    var var_2 = ~0u;
    let var_3 = vec4<i32>(arg_2.b, _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_0.b.b, u_input.b, arg_2.b, -2147483647i)), vec4<i32>(arg_1.d.a.a.b, u_input.b, -15022i, 33231i) ^ vec4<i32>(42387i, arg_1.b.a.c.b, 1i, 0i)), select(~countOneBits(vec4<i32>(13584i, u_input.b, -380i, -2147483647i)), abs(~vec4<i32>(-38962i, -25284i, 1i, arg_1.d.a.c.b)), !vec4<bool>(arg_1.a, true, true, arg_1.c.x))), firstTrailingBit(~(~firstTrailingBit(arg_0.a.b))), _wgslsmith_mod_i32(u_input.b, (_wgslsmith_div_i32(-28269i, u_input.b) ^ _wgslsmith_clamp_i32(2147483647i, -37933i, arg_1.b.a.c.b)) ^ 1i));
    return _wgslsmith_f_op_f32(-1293f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = 0i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-445f * _wgslsmith_f_op_f32(min(-1177f, 800f))))) + 1f), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(-1464f, ~arg_1), Struct_1(1320f, i32(-1i) * -13143i), Struct_1(_wgslsmith_f_op_f32(-1000f * 116f), u_input.b)), Struct_4(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) && arg_0.x, Struct_3(Struct_2(Struct_1(-1000f, u_input.b), Struct_1(-602f, -2147483647i), Struct_1(-526f, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -488f)), select(arg_0.xz, select(vec2<bool>(true, true), arg_0.yz, vec2<bool>(true, arg_0.x)), !arg_0.x), Struct_3(Struct_2(Struct_1(-285f, arg_1), Struct_1(-351f, 2147483647i), Struct_1(993f, u_input.b)), 174f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1954f, -654f, false))), func_3(Struct_2(Struct_1(1197f, arg_1), Struct_1(-648f, arg_1), Struct_1(1000f, u_input.b)))), !vec4<bool>(true, true, all(vec2<bool>(arg_0.x, arg_0.x)), false))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(315f, u_input.b), Struct_1(-1000f, 2147483647i), Struct_1(-1693f, u_input.b)), Struct_4(arg_0.x, Struct_3(Struct_2(Struct_1(-1365f, 0i), Struct_1(-1669f, 18119i), Struct_1(1196f, arg_1)), 1683f), arg_0.yz, Struct_3(Struct_2(Struct_1(103f, arg_1), Struct_1(1170f, arg_1), Struct_1(725f, u_input.b)), 208f)), Struct_1(-232f, arg_1), vec4<bool>(true, true, true, arg_0.x))), 1f))));
    global1 = array<vec2<f32>, 3>();
    let var_2 = abs(vec4<i32>(arg_1, abs(func_3(Struct_2(Struct_1(var_1.x, -8888i), Struct_1(1124f, u_input.b), Struct_1(var_1.x, -12718i)))), arg_1, -1i));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-675f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), var_1.x)), var_1.x);
    return false;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = vec3<bool>(true, any(arg_1) || !(!(arg_1.x | false)), arg_1.x);
    global1 = array<vec2<f32>, 3>();
    let var_1 = Struct_3(Struct_2(arg_2.b, arg_2.c, Struct_1(-423f, -37619i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    global0 = !select(var_0.x, var_0.x, !(!(var_0.x && arg_1.x)));
    let var_2 = Struct_4(true, Struct_3(arg_2, 589f), select(select(var_0.xy, !(!vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(false, select(arg_1.x, false, var_0.x))), !vec2<bool>(func_2(vec4<bool>(true, var_0.x, false, false), u_input.b, u_input.a.x), var_0.x & false), !(!(arg_2.c.b <= 2147483647i))), Struct_3(var_1.a, -1315f));
    return _wgslsmith_div_i32(var_2.d.a.b.b, max(0i, min(select(var_2.b.a.b.b, countOneBits(0i), u_input.c.x >= u_input.c.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 23696i), vec3<i32>(-8615i, arg_2.b.b, arg_2.c.b)))));
}

fn func_6(arg_0: i32) -> Struct_4 {
    let var_0 = 4294967295u < _wgslsmith_mod_u32(min(countOneBits(77438u), ~u_input.c.x) ^ 1u, min(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) ^ ~1u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(315f, _wgslsmith_f_op_f32(round(-1120f))), arg_0), Struct_1(_wgslsmith_f_op_f32(abs(-1880f)), -1598i), Struct_1(-1493f, -select(1i, -20417i, 39413i < u_input.b)));
    let var_2 = var_1.c;
    let var_3 = vec3<i32>(min(_wgslsmith_sub_i32(select(-var_2.b, _wgslsmith_clamp_i32(1i, arg_0, var_1.c.b), all(vec2<bool>(var_0, true))), _wgslsmith_mult_i32(var_2.b, -44016i)), 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, -2147483647i & arg_0, abs(2147483647i), -36596i), vec4<i32>(min(0i, u_input.b), _wgslsmith_clamp_i32(1i, var_1.c.b, var_1.a.b), 1i, _wgslsmith_mult_i32(-21987i, var_2.b))), max(vec4<i32>(-59065i, -1i, firstLeadingBit(var_2.b), arg_0), vec4<i32>(-44899i, firstTrailingBit(arg_0), _wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 48782i, 0i), vec3<i32>(var_1.b.b, 27910i, 2871i))))), var_1.a.b);
    return Struct_4(false, Struct_3(Struct_2(var_1.c, var_1.c, var_1.a), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(var_2.a, u_input.b), var_1.b, Struct_1(-1388f, -1i)), Struct_4(true, Struct_3(Struct_2(var_1.b, Struct_1(var_1.b.a, var_1.a.b), Struct_1(1000f, u_input.b)), -129f), !vec2<bool>(var_0, var_0), Struct_3(Struct_2(var_1.b, var_1.c, Struct_1(-1000f, var_1.c.b)), 170f)), var_1.c, vec4<bool>(!var_0, !var_0, arg_0 != u_input.b, true)))), select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), !vec2<bool>(var_0, var_0)), !(!vec2<bool>(var_0, false)), var_0), vec2<bool>(false, false), select(vec2<bool>(!var_0, all(vec4<bool>(false, false, var_0, false))), !vec2<bool>(var_0, var_0), vec2<bool>(true, !var_0))), Struct_3(Struct_2(var_1.c, var_1.a, Struct_1(_wgslsmith_f_op_f32(ceil(-366f)), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f - -1425f))));
}

fn func_7(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(~var_0.d.a.b.b, -arg_0.d.a.a.b, -u_input.b), 1i, -max(arg_0.d.a.c.b, arg_2.a.b)), reverseBits(-vec3<i32>(-61196i, arg_0.d.a.b.b, arg_2.a.b))), ~vec3<i32>(2147483647i, u_input.b, 2147483647i));
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(abs(select(u_input.a, u_input.a, vec4<bool>(var_0.c.x, var_0.c.x, true, false)))) >> (~(~vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u)), ~firstTrailingBit(~vec4<u32>(1u, 4294967295u, 74261u, 64710u)));
    let var_3 = any(vec4<bool>(any(vec3<bool>(false, arg_1, true)), true, (any(var_0.c) != true) != var_0.a, var_0.a));
    var var_4 = arg_0.b.a.a;
    return var_0.b.a.c;
}

fn func_1() -> Struct_2 {
    let var_0 = func_7(func_6(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(655f, -2576f, -887f, 952f))), vec2<bool>(true, func_2(vec4<bool>(false, false, false, false), u_input.b, 19982u)), Struct_2(Struct_1(1435f, 20670i), Struct_1(-439f, u_input.b), Struct_1(295f, -8355i)), 1029f)), !(!any(vec3<bool>(false, false, true))) && !(!func_6(u_input.b).a), Struct_2(func_6(~(-8215i)).d.a.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -695f), u_input.b), func_6(~abs(-2837i)).b.a.b));
    let var_1 = Struct_4(true, func_6(~_wgslsmith_clamp_i32(u_input.b, firstTrailingBit(1i), ~var_0.b)).d, select(vec2<bool>(true, true || func_2(vec4<bool>(false, true, true, true), 19209i, 4294967295u)), select(vec2<bool>(u_input.a.x < 0u, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -699f > func_7(Struct_4(true, Struct_3(Struct_2(var_0, var_0, Struct_1(390f, u_input.b)), 549f), vec2<bool>(true, false), Struct_3(Struct_2(Struct_1(792f, u_input.b), Struct_1(var_0.a, 1i), Struct_1(var_0.a, -1i)), 136f)), false, Struct_2(Struct_1(-788f, 9515i), var_0, Struct_1(1211f, 0i))).a), vec2<bool>(_wgslsmith_f_op_f32(-var_0.a) <= _wgslsmith_f_op_f32(var_0.a * -1553f), true)), func_6(~func_7(Struct_4(false, Struct_3(Struct_2(Struct_1(-1227f, var_0.b), var_0, Struct_1(var_0.a, -1i)), var_0.a), vec2<bool>(false, true), Struct_3(Struct_2(var_0, var_0, Struct_1(-777f, var_0.b)), -333f)), false, Struct_2(Struct_1(888f, 1414i), var_0, var_0)).b).d);
    global1 = array<vec2<f32>, 3>();
    var var_2 = var_0.a;
    var_2 = var_1.d.b;
    return var_1.b.a;
}

fn func_8(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u) ^ vec2<u32>(u_input.c.x, 1u), vec2<u32>(29091u, 14551u))) << (firstTrailingBit(~firstLeadingBit(91687u)) % 32u), 3u)], global1[_wgslsmith_index_u32(22288u, 3u)]));
    var var_1 = -11389i;
    let var_2 = func_1();
    global0 = true;
    var var_3 = var_2.a.a;
    return -1111f;
}

fn func_9(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> StorageBuffer {
    global0 = func_2(!vec4<bool>(func_6(_wgslsmith_mult_i32(-2147483647i, u_input.b)).a, true, !all(vec2<bool>(true, true)), true), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))) | ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 6372i, -861i), vec3<i32>(u_input.b, 24190i, u_input.b)), countOneBits(vec3<i32>(0i, u_input.b, u_input.b) << (abs(vec3<u32>(u_input.c.x, 4294967295u, 102025u)) % vec3<u32>(32u)))), reverseBits(u_input.c.x));
    var var_0 = Struct_1(arg_2.x, u_input.b);
    var var_1 = arg_0 > ~u_input.c.x;
    let var_2 = ~firstLeadingBit(u_input.a.x);
    var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), true));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(611f - 162f), _wgslsmith_f_op_f32(round(arg_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)], vec2<f32>(1531f, 1154f))))), -53683i, _wgslsmith_add_vec2_i32(vec2<i32>(min(39437i, -9140i) ^ _wgslsmith_div_i32(26141i, u_input.b), -29126i), vec2<i32>(~_wgslsmith_mod_i32(var_0.b, -2147483647i), func_3(Struct_2(Struct_1(1096f, 17362i), Struct_1(-1111f, var_0.b), Struct_1(349f, var_0.b))) & ~u_input.b)), _wgslsmith_f_op_f32(min(-710f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - -625f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f - -1000f))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_9(abs(~u_input.a.x), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_8(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f))));
}


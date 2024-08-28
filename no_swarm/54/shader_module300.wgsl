struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: i32;

var<private> global2: bool = true;

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: bool) -> f32 {
    global0 = vec4<bool>(arg_3, ((~(-2147483647i) & -arg_1) ^ (i32(-1i) * -2147483647i)) > 1i, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) + -1362f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1549f)) - _wgslsmith_f_op_f32(abs(arg_0.e)))) == false, global0.x);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_div_f32(arg_0.e, 526f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - arg_0.e)), _wgslsmith_f_op_f32(sign(arg_0.b.x))))), all(select(global0.yz, vec2<bool>(false, true), global0.ww)));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(47629i | arg_1, (i32(-1i) * -24555i) >> (0u % 32u)), i32(-1i) * 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-43537i >> (~u_input.a.x % 32u), arg_0.a, arg_2, _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(22149i, arg_1), 42568i)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2, -8768i, arg_2, arg_0.a), vec4<i32>(arg_1, arg_1, -21554i, 2147483647i)), vec4<i32>(select(-9863i, arg_2, arg_3), ~(-6649i), -13119i, arg_2))), 22843i);
    var_0 = Struct_2(arg_0.e, !(29935i <= ~firstTrailingBit(32471i)));
    var var_2 = Struct_4(-441f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.e)), var_0.a)))), Struct_2(arg_0.c.x, true), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 33741u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.zx)), vec2<u32>(1u, ~4294967295u)), vec2<u32>(~(~18608u), ~_wgslsmith_clamp_u32(37599u, 0u, 105387u))), Struct_1(~arg_2 | (_wgslsmith_div_i32(36561i, arg_2) ^ -23830i), _wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_0.e, var_0.a, 139f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1056f, var_0.a), _wgslsmith_f_op_vec2_f32(-arg_0.d))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(541f, _wgslsmith_div_f32(-2436f, 1025f)) + _wgslsmith_f_op_vec2_f32(floor(arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-349f + -676f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, 1319f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.a, arg_0.c.x))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = !select(!(!select(vec4<bool>(arg_0.b, false, global0.x, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, global0.x, false), global0.x)), !(!select(vec4<bool>(global0.x, arg_0.b, false, true), vec4<bool>(arg_0.b, false, global0.x, global0.x), vec4<bool>(arg_0.b, true, false, arg_0.b))), all(vec3<bool>(arg_2 != arg_1.c.a, global0.x & false, !arg_0.b)));
    global1 = -1i;
    global3 = select(arg_2, ~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-2147483647i, arg_2, arg_1.a, arg_1.c.a)), vec4<i32>(-2147483647i, arg_1.c.a, arg_1.a, arg_1.a) >> (~vec4<u32>(u_input.a.x, arg_1.b, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), arg_0.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(select(689f, -1340f, false)))));
    let var_0 = !(all(select(select(global0.xy, vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, false)), !global0.zx, true)) && (false || all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    var var_1 = false;
    return vec4<bool>(true, -1000f > arg_3.x, arg_0.b, select(~min(arg_1.b, 1u), 0u, -2635f >= _wgslsmith_f_op_f32(arg_0.a - arg_0.a)) <= _wgslsmith_clamp_u32(57730u, ~abs(0u), min(arg_1.b, u_input.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: bool) -> Struct_3 {
    var var_0 = !func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-835f)) * _wgslsmith_f_op_f32(f32(-1f) * -402f)), arg_3), Struct_3(1i, arg_0.x, Struct_1(_wgslsmith_clamp_i32(17064i, -1i, 2147483647i), vec4<f32>(-1000f, -248f, 1626f, -1160f), vec2<f32>(1f, 1f), vec2<f32>(-457f, -525f), _wgslsmith_f_op_f32(sign(337f))), _wgslsmith_f_op_f32(func_3(Struct_1(13430i, vec4<f32>(-223f, -391f, -878f, 1116f), vec2<f32>(-314f, 723f), vec2<f32>(1450f, 1000f), -1765f), -17407i, -2147483647i, false))), _wgslsmith_mult_i32(abs(-7253i), -_wgslsmith_clamp_i32(-2147483647i, 28268i, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1432f, 624f) - vec2<f32>(-1086f, 1709f)))));
    let var_1 = arg_1;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1549f * _wgslsmith_f_op_f32(step(-616f, -1547f))) * _wgslsmith_f_op_f32(trunc(-102f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-368f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-31376i, vec4<f32>(1000f, -1434f, 602f, -1000f), vec2<f32>(118f, 320f), vec2<f32>(1157f, 1708f), -1082f), -10472i << (var_1 % 32u), 1i, true)) * -374f), _wgslsmith_f_op_f32(f32(-1f) * -386f))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-142f - -457f)))), true), ~(~(select(vec2<u32>(49245u, 21897u), arg_0.xx, true) ^ min(arg_2, vec2<u32>(arg_1, 4294967295u)))), Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(26560i, 27140i, -1i, -8785i), ~max(vec4<i32>(-31735i, -2147483647i, 68065i, 1i), vec4<i32>(-15478i, 1i, 16748i, 27809i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1899f, 1592f, -332f, -399f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-858f)), _wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(trunc(609f))))), vec2<f32>(-1030f, _wgslsmith_f_op_f32(ceil(-1245f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2203f, -1000f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1399f, -817f), vec2<f32>(1000f, -824f), vec2<bool>(var_0.x, global0.x)))))), _wgslsmith_f_op_f32(max(421f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1370f, 874f))))));
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(f32(-1f) * -1332f)), 1012f) - var_2.b), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_2.e.a, var_2.e.b, vec2<f32>(var_2.a, var_2.a), var_2.e.d, -232f), var_2.e.a, -2147483647i | var_2.e.a, select(true, false, global0.x)))), select(any(!vec4<bool>(true, true, arg_3, true)), arg_3, global0.x)), vec2<u32>(~(~_wgslsmith_dot_vec2_u32(arg_2, var_2.d)), arg_1 & ~arg_0.x), Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, _wgslsmith_f_op_f32(sign(-1981f)), -1276f, -561f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, var_2.b)), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.b)), _wgslsmith_f_op_f32(ceil(1943f))))), var_2.e.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-2147483647i, var_2.e.b, var_2.e.d, vec2<f32>(var_2.e.b.x, var_2.c.a), -1058f), firstTrailingBit(1i), -1i >> (var_1 % 32u), true)) + 222f)));
    global3 = _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-16233i, var_2.e.a), var_2.e.a), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-23018i, var_2.e.a), vec2<i32>(var_2.e.a, -1i), vec2<bool>(var_2.c.b, arg_3)), -vec2<i32>(2237i, var_2.e.a))), select(countOneBits(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_2.e.a), vec2<i32>(var_2.e.a, 1i))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(8973i, 2147483647i), vec2<i32>(-609i, var_2.e.a)), -vec2<i32>(var_2.e.a, var_2.e.a)) << (vec2<u32>(25737u, var_1 | arg_1) % vec2<u32>(32u)), vec2<bool>(any(select(vec3<bool>(false, false, true), var_0.xyz, false)), var_2.c.b)));
    return Struct_3(var_2.e.a, _wgslsmith_add_u32(~arg_1, ~(~var_1)), Struct_1(~var_2.e.a, var_2.e.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-336f, var_2.c.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(815f, 907f), vec2<f32>(var_2.e.e, 1048f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.c.a) - var_2.e.d)) * var_2.e.d), _wgslsmith_f_op_f32(floor(var_2.e.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-410f)), var_2.a));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    var var_0 = false;
    let var_1 = true;
    return Struct_1(arg_3.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.c.x, -1106f, arg_3.d, -740f) + vec4<f32>(-173f, -633f, 1555f, arg_3.c.d.x)), _wgslsmith_f_op_vec4_f32(-arg_2.c.b)))) + arg_2.c.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(vec4<u32>(arg_3.b, 4294967295u, 1u, u_input.a.x)), 3327u, vec2<u32>(arg_2.b, u_input.a.x) << (u_input.a.xy % vec2<u32>(32u)), false).c.c * vec2<f32>(arg_3.d, arg_2.c.c.x))), _wgslsmith_f_op_vec2_f32(-arg_3.c.c), arg_3.c.b.x);
}

fn func_6(arg_0: Struct_4) -> i32 {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.d.x, countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.d.x, u_input.a.x, 4294967295u), vec4<u32>(25039u, arg_0.d.x, arg_0.d.x, u_input.a.x)), 7354u), abs(select(vec4<u32>(4294967295u, 9475u, 4294967295u, arg_0.d.x), vec4<u32>(arg_0.d.x, 0u, 51504u, arg_0.d.x), true))), ~(~_wgslsmith_add_u32(19035u, firstTrailingBit(4294967295u))));
    let var_1 = !(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e.a, i32(-1i) * -48623i), max(vec2<i32>(30177i, arg_0.e.a), select(vec2<i32>(2147483647i, arg_0.e.a), vec2<i32>(arg_0.e.a, arg_0.e.a), global0.ww))) < -(~func_2(vec4<u32>(77948u, 49317u, 4294967295u, u_input.a.x), 1729u, vec2<u32>(8045u, var_0.x), true).c.a));
    return arg_0.e.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_3(func_6(Struct_4(-636f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -860f))), Struct_2(-309f, all(vec4<bool>(global0.x, true, false, true))), vec2<u32>(u_input.a.x, 1u), func_5(vec4<i32>(1i, 1i, 1i, 1i), select(global0.xx, vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), func_2(vec4<u32>(arg_0, 73533u, 1u, arg_0), 46288u, u_input.a.zy, global0.x), Struct_3(2147483647i, u_input.a.x, Struct_1(-61453i, vec4<f32>(1472f, 749f, 2081f, 537f), vec2<f32>(-161f, -722f), vec2<f32>(944f, 1000f), 305f), 704f)))), arg_0, Struct_1(~(~select(13052i, -35313i, global0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1203f, -1507f, -342f) + vec4<f32>(103f, 2085f, -664f, -941f))), vec4<f32>(1658f, -675f, 2084f, _wgslsmith_f_op_f32(-1017f * 1547f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(u_input.a.x, 0u, arg_0, u_input.a.x), 0u, vec2<u32>(u_input.a.x, u_input.a.x), global0.x).c.d * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(612f, -1603f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(874f, -825f) - vec2<f32>(-623f, -544f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1786f, 463f)))), _wgslsmith_f_op_f32(sign(727f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1153f, 2156f, global0.x)) * func_2(vec4<u32>(4499u, u_input.a.x, arg_0, 1u), 1u, u_input.a.yx, true).c.e)) + _wgslsmith_f_op_f32(trunc(-1153f))));
    let var_1 = Struct_4(var_0.c.b.x, var_0.d, Struct_2(-1101f, true), select(u_input.a.zz, ~vec2<u32>(4294967295u, _wgslsmith_div_u32(arg_0, arg_0)), global0.xx), var_0.c);
    let var_2 = var_0.c;
    global3 = _wgslsmith_mult_i32(~(-26989i), 0i);
    let var_3 = var_2;
    return func_5(max(-countOneBits(select(vec4<i32>(var_1.e.a, var_1.e.a, var_3.a, -178i), vec4<i32>(var_0.a, -1i, var_0.c.a, -5874i), vec4<bool>(var_1.c.b, true, true, false))), vec4<i32>(25518i, _wgslsmith_div_i32(-24333i, 2147483647i) | func_5(vec4<i32>(0i, var_1.e.a, 2147483647i, 9325i), vec2<bool>(var_1.c.b, var_1.c.b), Struct_3(var_1.e.a, 16969u, Struct_1(var_2.a, vec4<f32>(-2334f, -666f, var_0.d, var_2.e), vec2<f32>(var_1.a, 1335f), vec2<f32>(137f, -206f), -1434f), var_0.d), Struct_3(0i, arg_0, var_2, 1892f)).a, _wgslsmith_sub_i32(var_2.a, reverseBits(-43259i)), -13191i)), global0.zx, Struct_3(-3522i, ~(~1u), var_0.c, _wgslsmith_f_op_f32(ceil(-1292f))), func_2(firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(33619u, arg_0, arg_0, 98466u), vec4<u32>(59447u, u_input.a.x, var_0.b, 0u)), ~vec4<u32>(u_input.a.x, 19795u, u_input.a.x, u_input.a.x))), reverseBits(var_0.b), var_1.d, reverseBits(u_input.a.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, u_input.a.x, u_input.a.x) & vec3<u32>(var_1.d.x, arg_0, var_1.d.x), u_input.a ^ u_input.a)));
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> vec4<f32> {
    global2 = all(select(vec4<bool>(true, all(select(vec4<bool>(true, false, arg_0, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), true)), !(arg_1.b.x <= arg_1.e), all(select(global0.xyw, vec3<bool>(true, false, global0.x), global0.xxx))), !vec4<bool>(global0.x, arg_1.d.x <= -514f, arg_1.a >= -3231i, true), !select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, arg_0, global0.x, false), vec4<bool>(arg_0, global0.x, global0.x, arg_0), global0.x), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(global0.x, false, false, global0.x), global0.x))));
    var var_0 = Struct_4(648f, arg_1.d.x, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -766f))), u_input.a.x > ~4294967295u), ~u_input.a.xy, arg_1);
    global0 = select(!vec4<bool>((arg_1.a <= var_0.e.a) && func_4(Struct_2(arg_1.d.x, var_0.c.b), Struct_3(-20670i, 13176u, arg_1, arg_1.e), arg_1.a, vec2<f32>(-688f, -1000f)).x, !any(global0.yzz), var_0.c.b, false), vec4<bool>(var_0.c.b, arg_0, global0.x, min(var_0.d.x, var_0.d.x) < func_2(vec4<u32>(22544u, 1u, var_0.d.x, 17865u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 62543u, 40457u) % vec4<u32>(32u)), firstLeadingBit(u_input.a.x), u_input.a.xx, all(global0.wzz)).b), vec4<bool>(global0.x, (i32(-1i) * -2147483647i) <= (min(-22551i, arg_1.a) & (-15840i >> (u_input.a.x % 32u))), global0.x, true));
    let var_1 = all(vec2<bool>(arg_0, var_0.e.a > arg_1.a)) || ((all(select(global0.yx, vec2<bool>(false, arg_0), false)) | (true == (global0.x & var_0.c.b))) & select(true, false, !any(global0.wwy)));
    let var_2 = _wgslsmith_sub_i32(-13589i, arg_1.a);
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(-2660f)), _wgslsmith_f_op_f32(-func_5(-vec4<i32>(-13780i, -34769i, arg_1.a, -34382i), vec2<bool>(var_1, false), Struct_3(arg_1.a, var_0.d.x, Struct_1(7132i, vec4<f32>(723f, arg_1.b.x, var_0.e.e, arg_1.b.x), var_0.e.c, vec2<f32>(var_0.c.a, var_0.c.a), arg_1.b.x), var_0.e.d.x), Struct_3(var_0.e.a, u_input.a.x, Struct_1(0i, var_0.e.b, var_0.e.c, vec2<f32>(arg_1.e, var_0.b), -1300f), arg_1.b.x)).c.x), arg_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_5(vec4<i32>(var_2, -18221i, var_2, var_0.e.a), global0.wz, Struct_3(arg_1.a, 29584u, var_0.e, arg_1.c.x), Struct_3(arg_1.a, 48156u, Struct_1(var_2, vec4<f32>(1553f, -1000f, -724f, 752f), vec2<f32>(arg_1.e, arg_1.e), arg_1.c, -1117f), 1402f)), -var_0.e.a, -12751i & var_2, all(vec3<bool>(false, true, arg_0)))))), vec4<f32>(1638f, -295f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(777f * -2209f) + 971f), _wgslsmith_f_op_f32(sign(-756f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(func_3(func_2(vec4<u32>(48568u, 1u, 0u, u_input.a.x), var_0.d.x, var_0.d, false).c, _wgslsmith_sub_i32(-2147483647i, 0i), var_2, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(func_7(any(!vec4<bool>(true, global0.x, global0.x, global0.x)), func_1(u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(812f, 560f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(102f, -1002f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1357f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(40976u).e - -2634f))), _wgslsmith_f_op_f32(abs(831f)));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_5(select(firstTrailingBit(vec4<i32>(var_0.a, 0i, -1310i, var_0.a)), vec4<i32>(0i, 54962i, var_0.a, 1i), any(vec3<bool>(global0.x, global0.x, global0.x))), global0.xx, func_2(~vec4<u32>(u_input.a.x, 0u, 36356u, 1u), u_input.a.x, u_input.a.zy, true), Struct_3(max(var_0.a, -1i), ~7584u, Struct_1(var_0.a, vec4<f32>(var_0.e, 761f, var_0.b.x, -865f), vec2<f32>(var_0.b.x, var_0.d.x), var_0.c, 816f), -929f)).b.zzx));
    global2 = global0.x;
    var_0 = Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-34984i, var_0.a, 1i) & vec3<i32>(-1i, var_0.a, var_0.a), vec3<i32>(-99657i, 0i, -9922i) | vec3<i32>(-6392i, var_0.a, var_0.a)), i32(-1i) * -15510i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-1000f * 1950f), 1352f, _wgslsmith_f_op_f32(f32(-1f) * -477f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b.zz))), _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_f32(2386f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-663f)) + _wgslsmith_f_op_vec4_f32(func_7(var_0.a < -1i, func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), true).c)).x)));
    let var_3 = Struct_4(func_1(u_input.a.x ^ u_input.a.x).d.x, _wgslsmith_f_op_f32(-var_0.c.x), Struct_2(_wgslsmith_f_op_vec4_f32(func_7(false, func_1(6545u << (u_input.a.x % 32u)))).x, true), ~u_input.a.xy, Struct_1(16868i, var_0.b, var_0.b.zy, var_2.yz, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, vec3<u32>(36836u, ~(~u_input.a.x), 1u)), 1411i, _wgslsmith_f_op_f32(select(var_3.b, -665f, global0.x)), reverseBits(~reverseBits(-vec4<i32>(2147483647i, var_0.a, 4755i, 10674i))), -16300i);
}


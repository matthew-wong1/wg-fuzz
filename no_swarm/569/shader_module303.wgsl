struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(2672f, vec4<bool>(true, false, true, true)), Struct_3(-729f, vec4<bool>(false, false, true, true)), Struct_3(-380f, vec4<bool>(true, true, true, false)), Struct_3(-971f, vec4<bool>(true, true, true, false)), Struct_3(709f, vec4<bool>(true, true, true, false)), Struct_3(1000f, vec4<bool>(true, false, false, true)), Struct_3(936f, vec4<bool>(false, false, false, true)), Struct_3(-408f, vec4<bool>(false, true, false, false)), Struct_3(-2306f, vec4<bool>(false, false, false, false)), Struct_3(-1501f, vec4<bool>(false, false, false, true)), Struct_3(236f, vec4<bool>(true, false, true, true)), Struct_3(-1818f, vec4<bool>(true, false, false, false)), Struct_3(1901f, vec4<bool>(true, false, true, true)), Struct_3(-489f, vec4<bool>(true, false, false, false)), Struct_3(-859f, vec4<bool>(true, false, true, false)), Struct_3(-155f, vec4<bool>(false, true, false, false)));

var<private> global1: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(vec2<f32>(427f, -429f), vec3<bool>(true, true, false), 4294967295u, 612f), Struct_5(vec2<f32>(-636f, -311f), vec3<bool>(true, false, false), 4294967295u, -227f), Struct_5(vec2<f32>(690f, -1258f), vec3<bool>(true, false, false), 1u, 382f), Struct_5(vec2<f32>(-642f, -1189f), vec3<bool>(false, false, true), 17454u, -930f), Struct_5(vec2<f32>(-845f, -440f), vec3<bool>(false, false, false), 26789u, -732f), Struct_5(vec2<f32>(-356f, -401f), vec3<bool>(true, false, false), 6571u, 1000f), Struct_5(vec2<f32>(-1845f, -636f), vec3<bool>(true, true, false), 4294967295u, 164f), Struct_5(vec2<f32>(-266f, -1000f), vec3<bool>(false, false, true), 12315u, -169f), Struct_5(vec2<f32>(-1300f, 1619f), vec3<bool>(true, true, true), 12721u, 330f), Struct_5(vec2<f32>(-1174f, -1000f), vec3<bool>(false, false, true), 4294967295u, 448f), Struct_5(vec2<f32>(-233f, -241f), vec3<bool>(false, true, false), 53507u, -1890f), Struct_5(vec2<f32>(-286f, -664f), vec3<bool>(true, false, true), 0u, -1604f), Struct_5(vec2<f32>(-920f, -1169f), vec3<bool>(false, false, false), 8819u, 1000f), Struct_5(vec2<f32>(-523f, -1008f), vec3<bool>(false, true, false), 63058u, 213f), Struct_5(vec2<f32>(442f, -1000f), vec3<bool>(false, false, true), 28449u, -1231f), Struct_5(vec2<f32>(-364f, 1993f), vec3<bool>(true, false, true), 4294967295u, 2333f));

var<private> global2: array<vec3<i32>, 20>;

var<private> global3: array<vec4<bool>, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false)));
    var_0 = vec2<bool>(-1i < abs(_wgslsmith_div_i32(u_input.d.x, arg_1.b.x) >> (arg_1.c.x % 32u)), var_0.x);
    global1 = array<Struct_5, 16>();
    global1 = array<Struct_5, 16>();
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_1.c.x, arg_1.c.x), 16u)];
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-947f, arg_1.a.x, arg_1.a.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, var_1.d, arg_0.x, 696f) * arg_1.a), _wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(arg_1.a.x, var_1.d, 1268f, -273f)))))) + _wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(arg_1.a.x, arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, -1363f, var_1.b.x)), var_1.d))), _wgslsmith_f_op_vec4_f32(-arg_1.a), global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(53942u, u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.c, 27772u, arg_1.c.x), vec4<u32>(1767u, var_1.c, 1u, 59903u)))), 18u)]));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec4<f32> {
    var var_0 = reverseBits(~arg_0.b.c.zx);
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zy)), !vec3<bool>(true | any(global3[_wgslsmith_index_u32(72310u, 18u)]), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), all(global3[_wgslsmith_index_u32(4294967295u, 18u)]) && false), ~firstTrailingBit(0u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(arg_0.b.a.x + arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -1600f) - 296f)))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(arg_1.wyz, arg_0.b))));
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> vec4<bool> {
    global3 = array<vec4<bool>, 18>();
    var var_0 = Struct_5(arg_0.e.b.a.xz, !arg_0.a.b.wxw, _wgslsmith_dot_vec2_u32(vec2<u32>(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.e.b.c.x, arg_0.b.x), vec3<u32>(1u, arg_0.e.b.c.x, u_input.c)), 1u), arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-1550f, 1266f, 1000f), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.e.b.a - arg_0.e.b.a), select(u_input.d, arg_0.e.b.b, arg_0.a.b.x), ~arg_0.e.b.c))).x, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.c.x)), Struct_1(_wgslsmith_div_vec4_f32(arg_0.e.b.a, arg_0.e.b.a), firstLeadingBit(u_input.d), arg_0.e.b.c ^ arg_0.e.b.c))).x));
    global3 = array<vec4<bool>, 18>();
    var var_1 = _wgslsmith_dot_vec3_u32(~arg_0.e.b.c, arg_0.e.b.c | arg_0.e.b.c);
    global1 = array<Struct_5, 16>();
    return vec4<bool>(!(!(arg_0.a.b.x & arg_0.a.b.x)), !arg_0.a.b.x, arg_0.a.b.x, arg_1);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = firstLeadingBit(11273u);
    global2 = array<vec3<i32>, 20>();
    var var_1 = Struct_3(arg_1.a, func_5(Struct_4(Struct_3(255f, !arg_1.b), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(41018u, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(804f, arg_1.a, arg_0, arg_1.a) + vec4<f32>(645f, 729f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(u_input.b, Struct_1(vec4<f32>(-972f, arg_1.a, arg_0, arg_0), u_input.d, vec3<u32>(14309u, u_input.a, 4294967295u))), _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(1000f, 525f, arg_1.a), Struct_1(vec4<f32>(-2128f, -1036f, arg_0, arg_1.a), vec4<i32>(u_input.d.x, 1i, arg_2.x, u_input.d.x), vec3<u32>(4294967295u, u_input.a, 1u)))))), Struct_2(u_input.c, Struct_1(vec4<f32>(-312f, -145f, arg_1.a, -599f), vec4<i32>(0i, -27599i, u_input.d.x, arg_2.x), vec3<u32>(u_input.b, u_input.b, 1420u)))), true));
    global3 = array<vec4<bool>, 18>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -317f, -1238f, 1335f) - vec4<f32>(var_1.a, 1869f, arg_0, -162f))))), -u_input.d, max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.b), vec3<u32>(u_input.c, u_input.b, 4294967295u)) | 4294967295u, _wgslsmith_mod_u32(~12641u, ~22178u), max(1317u, u_input.b)), ~(~abs(vec3<u32>(25850u, 7113u, u_input.c)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> Struct_3 {
    global2 = array<vec3<i32>, 20>();
    global3 = array<vec4<bool>, 18>();
    let var_0 = global0[_wgslsmith_index_u32(26972u, 16u)];
    global0 = array<Struct_3, 16>();
    var var_1 = global1[_wgslsmith_index_u32((1u ^ _wgslsmith_sub_u32(1u, abs(arg_0.c.x) >> (arg_1.e.b.c.x % 32u))) & (~17319u >> (_wgslsmith_sub_u32(~24854u, u_input.a) % 32u)), 16u)];
    return Struct_3(-273f, func_5(arg_1, true));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> i32 {
    global2 = array<vec3<i32>, 20>();
    var var_0 = _wgslsmith_add_vec4_i32((_wgslsmith_sub_vec4_i32(u_input.d >> (vec4<u32>(u_input.c, u_input.b, u_input.a, 1u) % vec4<u32>(32u)), min(u_input.d, vec4<i32>(u_input.d.x, 35652i, 27409i, 26434i))) >> ((vec4<u32>(13043u, u_input.a, 33275u, u_input.b) << ((vec4<u32>(u_input.b, u_input.c, 4294967295u, 42123u) & vec4<u32>(1u, 0u, u_input.b, 107774u)) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), u_input.d.zw), u_input.d.x, arg_1.x, 25075i | arg_1.x), vec4<i32>((abs(u_input.d.x) | -1i) >> (17548u % 32u), -_wgslsmith_mod_i32(arg_1.x, u_input.d.x << (u_input.a % 32u)), abs(-34794i), -arg_1.x));
    let var_1 = select(2147483647i, ~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), -2147483647i << (u_input.c % 32u)), !any(global3[_wgslsmith_index_u32(4728u, 18u)])) >> (74399u % 32u);
    let var_2 = Struct_4(func_6(func_2(arg_0.x, Struct_3(_wgslsmith_f_op_f32(floor(arg_0.x)), vec4<bool>(true, true, false, true)), -_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 1i, var_1), var_0.xyx)), Struct_4(global0[_wgslsmith_index_u32(~(~u_input.b), 16u)], ~min(vec2<u32>(6774u, u_input.c), vec2<u32>(17852u, 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -249f, 1059f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(424f, 1178f, arg_0.x, arg_0.x), vec4<f32>(-383f, arg_0.x, 570f, arg_0.x))), Struct_2(11982u & u_input.a, Struct_1(vec4<f32>(1000f, arg_0.x, arg_0.x, arg_0.x), u_input.d, vec3<u32>(u_input.c, u_input.c, 0u))))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, min(56561u, u_input.a)), ~(~vec2<u32>(u_input.c, u_input.b)))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(max(-757f, -1000f)), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1511f + 1073f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(910f, -1405f, -1903f, -1892f) - vec4<f32>(1224f, arg_0.x, arg_0.x, -187f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-785f, -1005f, 1339f, 1179f) + vec4<f32>(arg_0.x, 499f, arg_0.x, -1813f)), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -774f, arg_0.x, 621f))))))), Struct_2(~u_input.b, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1084f), Struct_3(873f, vec4<bool>(true, false, false, false)), vec3<i32>(var_1, abs(var_1), -1i))));
    global0 = array<Struct_3, 16>();
    return -arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~u_input.a, 4294967295u, 22242u);
    let var_1 = abs(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, -(u_input.d.x | -12195i)), _wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(u_input.d.x, 26341i, -33700i, u_input.d.x)), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x), true), max(vec4<i32>(-3374i, 30122i, 0i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i))), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1072f, -198f, -425f), vec3<f32>(-512f, 1208f, 674f)), ~vec2<i32>(2147483647i, 0i)), u_input.d.x));
    global3 = array<vec4<bool>, 18>();
    global3 = array<vec4<bool>, 18>();
    global2 = array<vec3<i32>, 20>();
    global2 = array<vec3<i32>, 20>();
    let var_2 = -10583i;
    let x = u_input.a;
    s_output = StorageBuffer(select(38448u, ~1u, all(vec2<bool>(true, true))), -var_2, -2147483647i);
}


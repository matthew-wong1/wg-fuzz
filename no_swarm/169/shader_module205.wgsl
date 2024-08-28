struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(14963u, 1u, -165f, -1496f, 14062u), Struct_1(35700u, 49736u, 563f, 629f, 58263u), Struct_1(48133u, 4294967295u, 685f, 720f, 1u), Struct_1(24968u, 0u, 1641f, -1657f, 18240u), Struct_1(31787u, 33883u, 348f, -737f, 0u), Struct_1(38176u, 50732u, 1016f, -729f, 0u), Struct_1(0u, 1u, -1949f, -175f, 0u), Struct_1(98739u, 0u, 840f, -408f, 31885u), Struct_1(1u, 109635u, -143f, 1016f, 11788u), Struct_1(1u, 58719u, -2689f, 248f, 60000u), Struct_1(17737u, 4294967295u, -595f, -332f, 0u), Struct_1(45488u, 103419u, 420f, 343f, 29647u), Struct_1(1u, 45588u, -106f, 297f, 4294967295u), Struct_1(19084u, 4294967295u, 864f, 131f, 65714u), Struct_1(4294967295u, 15052u, -566f, 442f, 83370u), Struct_1(0u, 2873u, 628f, 676f, 4294967295u), Struct_1(48484u, 12597u, -1676f, 663f, 0u), Struct_1(39367u, 47494u, 890f, -1051f, 40012u), Struct_1(4294967295u, 45671u, -1045f, 1846f, 9714u), Struct_1(38230u, 4294967295u, 440f, -292f, 47597u), Struct_1(67791u, 2570u, -1000f, 676f, 30844u), Struct_1(49035u, 50996u, -2182f, 1000f, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 22>();
    var var_0 = arg_1;
    var_0 = Struct_1(u_input.a & abs(u_input.b.x), select(arg_1.e, _wgslsmith_dot_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, var_0.b) | vec2<u32>(33139u, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(29477u, 34321u), vec2<u32>(82335u, 28700u)))), arg_2.x == false), _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))), var_0.c, arg_1.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1639f, var_0.d), vec2<f32>(-231f, arg_1.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1033f, var_0.d) + vec2<f32>(-1107f, 2000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1060f, -228f) * vec2<f32>(arg_1.c, var_0.d)) * vec2<f32>(-303f, var_0.c)))));
    let var_2 = Struct_5(Struct_3(arg_0.x, ~arg_1.e, arg_3.zz >> (~vec2<u32>(2482u, 4294967295u) % vec2<u32>(32u)), arg_1, Struct_1(~(~var_0.b), ~(4294967295u | arg_1.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.d), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -816f)), firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 4294967295u)))), true, Struct_1(113270u, 41118u, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(step(709f, arg_1.d)), 82222u), Struct_4(Struct_3(!(!arg_2.x), ~(~u_input.b.x), firstTrailingBit(-arg_3.yy), arg_1, Struct_1(firstLeadingBit(var_0.b), u_input.a, -815f, -150f, min(0u, arg_1.a))), vec4<bool>(true, arg_2.x, true, arg_0.x), any(select(!vec4<bool>(true, arg_2.x, false, true), !vec4<bool>(false, arg_0.x, arg_0.x, true), any(arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), arg_1.c))));
    return countOneBits(abs(firstTrailingBit(~(u_input.b.x | 5947u))));
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_4(Struct_3(true, func_3(arg_0.b.zz, var_0.a.e, vec3<bool>(true, true, true), ~vec3<i32>(arg_0.a.c.x, -6083i, u_input.c)), firstTrailingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.a.c.x, var_0.a.c.x), vec2<i32>(13960i, 2147483647i), var_0.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.c.x, var_0.a.c.x), vec2<i32>(1i, -43764i)))), Struct_1(~55170u & var_0.a.e.a, arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f + var_0.a.d.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -499f))), 4294967295u), Struct_1(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(arg_0.a.e.a, u_input.b.x)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e.d) + _wgslsmith_f_op_f32(1000f + 755f)), _wgslsmith_f_op_f32(-1080f - _wgslsmith_f_op_f32(step(-1000f, var_0.a.d.c))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 74510u, arg_0.a.e.a), vec3<u32>(arg_0.a.e.b, 4294967295u, u_input.a)), _wgslsmith_mod_u32(0u, 18288u)))), vec4<bool>(!(_wgslsmith_f_op_f32(-var_0.a.e.d) < _wgslsmith_f_op_f32(floor(-1448f))), var_0.b.x, any(vec3<bool>(arg_0.a.a, var_0.b.x, var_0.a.d.d <= 326f)), any(!vec3<bool>(arg_0.a.a, var_0.a.a, var_0.b.x))), var_0.c);
    global0 = array<Struct_1, 22>();
    let var_2 = var_0.b.ywz;
    global0 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1255f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(-17020i, ~u_input.c), ~u_input.c, u_input.c, -u_input.c >> (u_input.a % 32u));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~arg_0.x, 22u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2025f)) - _wgslsmith_f_op_f32(arg_1 * -169f))), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(false, 31937u, var_0.yx, global0[_wgslsmith_index_u32(28182u, 22u)], Struct_1(0u, 1u, arg_1, -397f, 0u)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, true)))))), ~_wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(35927i, u_input.c) & var_0.wz) << (_wgslsmith_mod_u32(~_wgslsmith_sub_u32(arg_0.x, arg_3.x), 1u) % 32u), global0[_wgslsmith_index_u32(54620u, 22u)]);
    let var_2 = ~(~25043u);
    let var_3 = any(vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), any(vec3<bool>(true, true, true)))), any(vec3<bool>(true, select(true, true, false), any(vec2<bool>(true, true)))), true));
    var var_4 = Struct_1(~64360u, max(~3366u, _wgslsmith_mult_u32(~(var_1.a.b << (25790u % 32u)), _wgslsmith_dot_vec4_u32(arg_3, ~vec4<u32>(var_1.d.b, 9239u, 23064u, arg_3.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(var_3, var_2, var_0.ww, Struct_1(4294967295u, 29760u, 2043f, var_1.a.c, 39076u), Struct_1(31598u, var_1.d.e, arg_1, 1000f, u_input.b.x)), vec4<bool>(true, true, true, true), var_3))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c * -1172f), -311f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-454f, 242f))))), _wgslsmith_f_op_f32(var_1.d.d * _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-788f * -1803f))), ~((var_2 << (4294967295u % 32u)) ^ var_2));
    return Struct_3(any(select(!(!vec2<bool>(var_3, var_3)), select(!vec2<bool>(true, var_3), !vec2<bool>(var_3, false), !vec2<bool>(true, var_3)), any(select(vec3<bool>(true, false, false), vec3<bool>(var_3, false, false), var_3)))), 0u >> (abs(u_input.a) % 32u), _wgslsmith_div_vec2_i32(var_0.xx, var_0.yy), Struct_1(0u, var_4.a, -164f, -158f, var_1.a.b), Struct_1(var_4.e, var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -706f) + -153f), arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(45181u, var_2), var_1.d.b), countOneBits(vec2<u32>(79001u, 30185u)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> Struct_4 {
    global0 = array<Struct_1, 22>();
    let var_0 = countOneBits(4294967295u);
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_1 = arg_3;
    return Struct_4(func_1(reverseBits(vec3<u32>(var_0, ~56097u, select(arg_2.d.a, 82314u, arg_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, 2299f, arg_0.e.d, 613f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2342f, arg_2.a.d, arg_0.d.d, arg_0.e.c) * vec4<f32>(165f, -1348f, 1029f, arg_0.d.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2079f, arg_2.a.d, -325f, arg_1.c)))), _wgslsmith_mod_vec4_u32(vec4<u32>(264u, 0u, _wgslsmith_mult_u32(0u, arg_3.a.e.e), 10163u | var_0), ~(~vec4<u32>(arg_1.a, 4294967295u, arg_1.b, 4294967295u)))), vec4<bool>(any(arg_3.b.yww), any(select(!arg_3.b, arg_3.b, !vec4<bool>(arg_0.a, true, var_1.b.x, arg_0.a))), arg_0.a, !var_1.b.x), var_1.b.x);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_4(Struct_3(false, 1u, reverseBits(vec2<i32>(-18798i, 16877i)), func_4(arg_0.a, arg_0.a.d, Struct_2(func_1(vec3<u32>(1u, 0u, arg_0.a.e.e), 717f, vec4<f32>(-264f, -856f, arg_0.a.e.d, 311f), arg_2).d, _wgslsmith_f_op_f32(-arg_0.a.e.d), -24787i, Struct_1(arg_2.x, arg_0.a.b, arg_0.a.d.d, arg_0.a.e.d, arg_0.a.e.e)), Struct_4(arg_0.a, func_4(arg_0.a, Struct_1(u_input.b.x, 0u, -1808f, -674f, 4294967295u), Struct_2(Struct_1(0u, arg_0.a.d.e, 251f, arg_0.a.e.d, 3965u), arg_0.a.d.d, 1i, Struct_1(0u, 34935u, 1052f, 826f, 4294967295u)), Struct_4(arg_0.a, arg_0.b, false)).b, true)).a.d, global0[_wgslsmith_index_u32(37255u, 22u)]), func_1(vec3<u32>(max(~1u, ~32629u), func_3(!vec2<bool>(arg_1, arg_0.b.x), Struct_1(arg_2.x, 58313u, arg_0.a.d.d, arg_0.a.e.d, arg_2.x), vec3<bool>(true, false, false), ~vec3<i32>(-1i, arg_0.a.c.x, arg_0.a.c.x)), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(458f * arg_0.a.d.d)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(716f, -790f, arg_0.a.d.d, 330f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.c, arg_0.a.e.d, -1010f, -138f))))), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(arg_2, arg_2)), u_input.b.x & ~arg_0.a.e.e, 0u, ~(~arg_0.a.b))).e, Struct_2(Struct_1(~(~arg_0.a.e.a), ~select(62302u, arg_0.a.d.e, true), arg_0.a.e.d, _wgslsmith_f_op_f32(step(-421f, arg_0.a.d.d)), ~1u), 949f, -34784i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(49359u, func_1(arg_2.yzy, 1028f, vec4<f32>(arg_0.a.d.d, arg_0.a.d.c, -670f, -2292f), vec4<u32>(u_input.b.x, 0u, 32906u, 6777u)).b) | arg_0.a.d.a, 22u)]), Struct_4(arg_0.a, vec4<bool>(true, !(!arg_1), arg_1, arg_0.c | (true || arg_1)), all(arg_0.b.yzz) && !arg_1)).b.xwx;
    return Struct_1(arg_2.x ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(45298u, 4294967295u, u_input.a) & ~61914u, _wgslsmith_mod_u32(4294967295u, 21149u), 0u), 19694u, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.e.d, arg_0.a.d.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d.c)), _wgslsmith_dot_vec2_u32(~reverseBits(~arg_2.xz), ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = countOneBits(-min(vec2<i32>(u_input.c, 1i), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, 1166i), vec2<i32>(13248i, 1i))));
    let var_1 = func_5(func_4(func_1(~vec3<u32>(57001u, 4294967295u, u_input.b.x) << (max(vec3<u32>(1u, 0u, 43936u), vec3<u32>(u_input.b.x, u_input.b.x, 12767u)) % vec3<u32>(32u)), 1965f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1120f, -493f, -1305f, -1487f), vec4<f32>(455f, -904f, -638f, 228f)))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 4294967295u, u_input.b.x, 59579u)), vec4<u32>(24492u, 1u, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, 29362u, 38991u, u_input.b.x))), Struct_1(1u, ~func_1(vec3<u32>(4294967295u, u_input.b.x, u_input.a), 664f, vec4<f32>(-1440f, 356f, -1103f, 361f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 46331u)).b, -267f, -1190f, min(38834u, 1u)), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], _wgslsmith_f_op_f32(-func_1(vec3<u32>(0u, 1u, u_input.a), -1326f, vec4<f32>(-907f, 2269f, 712f, 400f), vec4<u32>(u_input.a, u_input.b.x, 0u, 32895u)).e.c), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, 0i), var_0.x), func_1(vec3<u32>(62923u, 11755u, 23145u) | vec3<u32>(u_input.b.x, 1u, 43512u), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(true, u_input.b.x, vec2<i32>(19753i, u_input.c), global0[_wgslsmith_index_u32(u_input.b.x, 22u)], Struct_1(1u, 1u, -1407f, -1011f, u_input.b.x)), vec4<bool>(false, true, true, true), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, -1000f, 1240f, 346f)), countOneBits(vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.a))).d), Struct_4(Struct_3(true, 22474u, ~vec2<i32>(u_input.c, var_0.x), func_1(vec3<u32>(40465u, 0u, u_input.b.x), 2041f, vec4<f32>(798f, -654f, -313f, -965f), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 1u)).d, global0[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(true, true, true, true), true)), true, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 38474u, 13527u, u_input.b.x), vec4<u32>(819u, u_input.b.x, 4294967295u, 19250u) ^ vec4<u32>(u_input.a, 0u, u_input.b.x, 48298u)), vec4<u32>(61268u, 1u, ~0u, _wgslsmith_clamp_u32(u_input.b.x, u_input.a, u_input.b.x)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 25042u, 45710u), vec4<u32>(40000u, 1u, 0u, u_input.b.x), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 0i), ~var_0), select(-vec2<i32>(-615i, -58335i), var_0, func_4(Struct_3(false, 4294967295u, var_0, Struct_1(u_input.a, var_1.a, 333f, 808f, var_1.a), var_1), Struct_1(43655u, 60147u, var_1.c, 1570f, u_input.a), Struct_2(global0[_wgslsmith_index_u32(0u, 22u)], -996f, -24247i, var_1), Struct_4(Struct_3(false, var_1.e, var_0, var_1, Struct_1(82756u, var_1.b, 1000f, var_1.d, u_input.b.x)), vec4<bool>(true, false, false, true), true)).b.ww)), max(var_0, (var_0 << (vec2<u32>(var_1.a, 46259u) % vec2<u32>(32u))) & ~vec2<i32>(48486i, u_input.c))), -31695i, var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, var_1.c, -981f), vec3<f32>(var_1.c, -128f, -387f)))), vec3<f32>(var_1.d, -241f, -891f))));
}


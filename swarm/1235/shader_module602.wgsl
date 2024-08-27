struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(2147483647i, vec2<f32>(_wgslsmith_f_op_f32(1523f + -810f), -1160f), u_input.a.x, any(vec4<bool>(false, false, arg_0.x, arg_0.x)), -23286i), u_input.c.x, u_input.c.yyz, Struct_1(firstLeadingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1438f, -1463f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1061f, 894f)))), u_input.a.x, arg_0.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, 2147483647i, -8801i)) ^ ~u_input.a.x), Struct_1(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) ^ ~(-29881i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-468f, 1251f), vec2<f32>(-948f, -1688f)) + vec2<f32>(462f, -2116f)), u_input.a.x, all(arg_0), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-14030i, u_input.a.x, -16158i)), u_input.a))), Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(623f, 1247f) + vec2<f32>(251f, 423f))), abs(u_input.a.x) ^ -1i, false, 58019i), min(~(4294967295u << (u_input.b % 32u)), 1u), reverseBits(u_input.c.zzw), Struct_1(~u_input.a.x, vec2<f32>(1f, 1f), -u_input.a.x, arg_0.x, ~(-2147483647i)), Struct_1(countOneBits(0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, -1100f)), _wgslsmith_dot_vec2_i32(~u_input.a.xz, vec2<i32>(2147483647i, u_input.a.x)), true, -67811i)));
    var var_1 = all(arg_0.xz);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zz, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zy, vec2<i32>(var_0.b.a.e, u_input.a.x), vec2<i32>(var_0.a.a.a, var_0.a.d.c)), ~vec2<i32>(-15776i, 50360i))), min(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-1i, -10227i)), max(1i, u_input.a.x)), u_input.a.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(668f)) - _wgslsmith_f_op_f32(-313f - var_0.a.d.b.x))) + var_0.a.e.b), abs(1i), !var_0.a.d.d, 3489i);
    var var_3 = 19783i;
    var var_4 = var_0.b.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-535f, -190f) - _wgslsmith_f_op_f32(-657f + var_0.a.d.b.x)) * var_4.b.x) * var_2.b.x));
}

fn func_4(arg_0: bool) -> bool {
    var var_0 = select(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(arg_0, false, arg_0), true)), !vec3<bool>(arg_0, arg_0, !arg_0), select(select(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, true)), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, true), arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, arg_0))), select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, false), false), arg_0 == true)), select(select(vec3<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0, true || arg_0), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false), !any(vec4<bool>(true, false, true, arg_0))), vec3<bool>(true, arg_0, all(vec2<bool>(arg_0, true))), select(arg_0, -2147483647i >= max(u_input.a.x, u_input.a.x), true)), true);
    let var_1 = Struct_3(Struct_2(Struct_1(max(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 30663i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-265f, 1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1754f, 575f) * vec2<f32>(1118f, -1302f))), ~(~44134i), !arg_0 != arg_0, select(-2147483647i, u_input.a.x, all(vec3<bool>(true, var_0.x, var_0.x)))), 62557u, u_input.c.yyw, Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1092f, 562f), vec2<f32>(-1166f, -2204f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, 1085f))), select(0i, u_input.a.x, all(vec3<bool>(arg_0, true, true))), any(vec4<bool>(false, var_0.x, true, false)), -1i & (2147483647i ^ u_input.a.x)), Struct_1(-(~0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 473f))) - vec2<f32>(368f, -879f)), u_input.a.x << (4294967295u % 32u), false, -12594i)), Struct_2(Struct_1(u_input.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, -1799f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, -172f))), _wgslsmith_mult_i32(u_input.a.x, -20414i >> (u_input.c.x % 32u)), true, -73420i), _wgslsmith_add_u32(abs(u_input.b), _wgslsmith_mod_u32(u_input.c.x, 19407u)) | u_input.c.x, abs(vec3<u32>(reverseBits(1u), ~u_input.b, _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.xw))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(486f, -1539f)))), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, 0i, 2147483647i)), u_input.a), select(var_0.x, arg_0, 1u < u_input.b), _wgslsmith_sub_i32(u_input.a.x, 1i)), Struct_1(~2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, 414f))), u_input.a.x, arg_0, 48702i)));
    let var_2 = var_1.b;
    var var_3 = abs(var_2.c);
    let var_4 = -461f;
    return any(!(!select(!vec3<bool>(var_2.a.d, false, false), !vec3<bool>(true, var_1.a.a.d, false), vec3<bool>(arg_0, var_1.a.d.d, arg_0))));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) - _wgslsmith_div_f32(-1436f, -206f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-831f, -397f)));
    var_0 = !func_4(1967f <= _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true))));
    let var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-888f, -1182f, true))) + 1089f) - _wgslsmith_f_op_f32(f32(-1f) * -208f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f))));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(34924i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1198f)))), u_input.a.x, any(select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(true, false, arg_0.x, arg_0.x), arg_0.x)), firstLeadingBit(firstTrailingBit(18819i))), max(u_input.c.x, 1u), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.c.yzz, u_input.c.yyy << (vec3<u32>(31271u, u_input.b, u_input.c.x) % vec3<u32>(32u)), select(vec3<u32>(u_input.b, 20375u, u_input.c.x), vec3<u32>(24186u, 0u, u_input.c.x), arg_0.x)), ~(u_input.c.xyz >> (u_input.c.wyy % vec3<u32>(32u)))), Struct_1(50322i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(466f, arg_1), vec2<f32>(arg_1, 726f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 644f)), true)), u_input.a.x, !arg_0.x, u_input.a.x), Struct_1(_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -13143i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1183f, arg_1), vec2<f32>(961f, 1000f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, 1487f)))), i32(-1i) * -9991i, any(arg_0.xz) || any(vec4<bool>(true, arg_0.x, true, arg_0.x)), countOneBits(480i))), Struct_2(Struct_1(u_input.a.x, vec2<f32>(arg_1, _wgslsmith_f_op_f32(select(180f, -251f, arg_0.x))), 16828i, any(select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, false, true, true), vec4<bool>(true, arg_0.x, false, true))), 0i), countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), u_input.c)), abs(vec3<u32>(firstTrailingBit(0u), ~1u, u_input.c.x & u_input.c.x)), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1706f, -1981f), vec2<f32>(arg_1, -232f))))), ~firstTrailingBit(u_input.a.x), false && all(arg_0), u_input.a.x), Struct_1(abs(~(-1i)), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_div_i32(u_input.a.x, 1i), _wgslsmith_div_f32(arg_1, arg_1) > arg_1, ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))));
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<i32>(~(-1466i), 0i, _wgslsmith_clamp_i32(u_input.a.x, 13417i, abs(-(u_input.a.x ^ 1i))), firstTrailingBit(~u_input.a.x));
    var_0 = vec4<i32>(_wgslsmith_div_i32(max(-1i, _wgslsmith_add_i32(-var_0.x, -18540i)), (1i >> (arg_0.b.b % 32u)) << (~abs(1u) % 32u)), arg_0.a.a.c, -1i, abs(i32(-1i) * -2147483647i));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.b, 1u), vec2<u32>(u_input.b, _wgslsmith_mult_u32(arg_0.b.c.x, 0u >> (arg_0.a.b % 32u))) & ((arg_0.a.c.yz >> (~u_input.c.yz % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, arg_0.a.c.x) ^ arg_0.a.c.yx, arg_0.b.c.zx & arg_0.b.c.xx)));
    var var_2 = Struct_3(func_5(!(!select(vec3<bool>(arg_0.b.d.d, arg_0.a.e.d, false), vec3<bool>(false, false, arg_0.b.a.d), arg_0.b.a.d)), _wgslsmith_f_op_f32(-arg_0.b.e.b.x)).b, func_5(select(vec3<bool>(arg_0.a.d.b.x == -1393f, true, all(vec4<bool>(arg_0.b.d.d, true, false, false))), vec3<bool>(arg_0.a.d.d, true, true), vec3<bool>(arg_0.b.e.d, !arg_0.b.a.d, func_4(arg_0.a.d.d))), arg_0.b.e.b.x).b);
    var_0 = ~vec4<i32>(~_wgslsmith_div_i32(16476i, u_input.a.x >> (var_2.b.c.x % 32u)), arg_0.b.e.a, ~1i, ~u_input.a.x);
    return var_2.a.e;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_2(func_6(func_5(vec3<bool>(true, arg_2.x, func_2(vec4<u32>(0u, arg_1.x, 25693u, 19069u))), -387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f - _wgslsmith_div_f32(-1103f, arg_0.b.x)))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(arg_1, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1.x, 1u), arg_1)), arg_1.x), vec3<u32>(_wgslsmith_clamp_u32(arg_1.x, u_input.c.x, _wgslsmith_div_u32(~7176u, ~11836u)), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(~61031u, 0u, 37165u, 63312u)), arg_1.x), func_6(Struct_3(func_5(select(arg_2, vec3<bool>(arg_2.x, true, arg_0.d), arg_2.x), 812f).b, Struct_2(func_5(arg_2, arg_0.b.x).a.a, abs(u_input.b), ~vec3<u32>(1u, 55513u, 24156u), arg_0, func_5(arg_2, arg_0.b.x).b.d)), 1449f), Struct_1(-52024i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1250f, 784f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1378f, -555f), vec2<f32>(arg_0.b.x, -1307f), vec2<bool>(true, true))))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.xy, u_input.a.zy, vec2<i32>(11666i, arg_0.e)), u_input.a.yx, u_input.a.yx), vec2<i32>(arg_0.c << (u_input.b % 32u), ~u_input.a.x)), true, -_wgslsmith_dot_vec2_i32(~u_input.a.xx, ~vec2<i32>(-80551i, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, -1000f, -1344f, var_0.d.b.x), vec4<f32>(var_0.e.b.x, arg_0.b.x, -747f, 1461f), vec4<bool>(var_0.e.d, false, arg_0.d, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.b.x, arg_0.b.x, 884f, 223f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.b.x, 946f, arg_0.b.x, arg_0.b.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * 424f) * _wgslsmith_f_op_f32(931f + 850f)), var_0.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b.x - arg_0.b.x)), _wgslsmith_f_op_f32(max(-243f, _wgslsmith_f_op_f32(var_0.e.b.x * -362f))))));
    var var_2 = Struct_2(func_6(Struct_3(var_0, var_0), func_5(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x), -1051f).b.a.b.x), min(~15151u, 1u), var_0.c, func_6(Struct_3(func_5(arg_2, var_0.a.b.x).b, Struct_2(arg_0, _wgslsmith_add_u32(34241u, u_input.c.x), arg_1, Struct_1(-23889i, vec2<f32>(-258f, var_0.d.b.x), 0i, false, arg_0.c), func_5(vec3<bool>(true, var_0.e.d, false), var_0.e.b.x).b.d)), -578f), func_5(arg_2, 137f).a.e);
    return !(!select(vec4<bool>(true, !arg_0.d, true || arg_0.d, var_0.c.x < 0u), select(!vec4<bool>(arg_2.x, false, var_2.e.d, false), !vec4<bool>(arg_0.d, var_2.d.d, var_2.a.d, var_0.a.d), select(true, arg_2.x, true)), vec4<bool>(true, true, true, true)));
}

fn func_7(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = ~abs(max(52197u, abs(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(13850u, u_input.c.x, 4294967295u, 0u)))));
    var_0 = firstTrailingBit(reverseBits(u_input.c.x));
    let var_1 = Struct_2(func_6(func_5(func_1(Struct_1(u_input.a.x, vec2<f32>(-1498f, -171f), arg_2, false, -32430i), u_input.c.zzw & u_input.c.wzy, !arg_3).yzx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f), func_6(Struct_3(Struct_2(Struct_1(arg_2, vec2<f32>(-240f, -150f), 2147483647i, false, -52896i), u_input.b, u_input.c.xyw, Struct_1(u_input.a.x, vec2<f32>(1217f, -1079f), 17481i, arg_0.x, -272i), Struct_1(-2147483647i, vec2<f32>(836f, -1220f), -1i, true, arg_2)), Struct_2(Struct_1(u_input.a.x, vec2<f32>(-1000f, 2367f), u_input.a.x, arg_0.x, 14014i), 4294967295u, vec3<u32>(u_input.c.x, 1u, 22988u), Struct_1(arg_2, vec2<f32>(-997f, -378f), u_input.a.x, true, u_input.a.x), Struct_1(-14838i, vec2<f32>(473f, -658f), u_input.a.x, arg_1.x, 30527i))), 1000f).b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(440f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1821f) * _wgslsmith_f_op_f32(-455f - 1000f)))), u_input.b, ~vec3<u32>(_wgslsmith_add_u32(1u, 44585u), u_input.c.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), u_input.c.wy)), func_5(!vec3<bool>(true, u_input.b <= u_input.b, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-692f)) - _wgslsmith_f_op_f32(132f * 1f))).b.a, Struct_1(26059i, vec2<f32>(-1458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(486f)))), abs(0i), false, -arg_2));
    var_0 = u_input.c.x << (27256u % 32u);
    let var_2 = Struct_4(Struct_3(var_1, Struct_2(Struct_1(abs(0i), _wgslsmith_f_op_vec2_f32(abs(var_1.e.b)), abs(-32619i), func_2(vec4<u32>(u_input.c.x, 60387u, 4294967295u, u_input.c.x)), -1i), _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(15589u, u_input.c.x)), ~vec3<u32>(64281u, 4294967295u, u_input.b), var_1.d, Struct_1(~(-11636i), vec2<f32>(var_1.a.b.x, var_1.e.b.x), arg_2, true, -arg_2))), _wgslsmith_sub_i32(17947i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, -1i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -9257i, -2147483647i), vec3<i32>(var_1.a.e, u_input.a.x, u_input.a.x)))), func_5(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1138f + 875f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)), var_1.a.b.x);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    let var_1 = Struct_1(22810i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1172f, -678f) - vec2<f32>(704f, 372f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -138f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1087f, 1203f)))))), ~1i, true, ~(-1i));
    var var_2 = func_7(vec4<bool>(var_1.d || !(!var_1.d), firstTrailingBit(min(42470u, u_input.b)) <= u_input.b, false, true), !(!select(!vec4<bool>(var_1.d, false, true, true), func_1(Struct_1(0i, var_1.b, u_input.a.x, var_1.d, 3926i), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<bool>(var_1.d, var_1.d, var_1.d)), !vec4<bool>(var_1.d, var_1.d, true, false))), -7283i, vec3<bool>(firstTrailingBit(reverseBits(var_1.c)) < select(u_input.a.x, min(var_1.a, u_input.a.x), !var_1.d), all(vec4<bool>(true, true, all(vec3<bool>(false, false, var_1.d)), var_1.d || var_1.d)), var_1.d));
    var var_3 = func_5(select(!(!(!vec3<bool>(true, var_1.d, var_2.a.e.d))), select(select(select(vec3<bool>(var_2.a.a.d, var_1.d, true), vec3<bool>(true, false, var_2.b.a.d), vec3<bool>(var_2.b.a.d, var_2.a.a.d, var_1.d)), vec3<bool>(true, true, var_2.b.a.d), !vec3<bool>(var_1.d, true, var_2.b.e.d)), vec3<bool>(!var_2.a.e.d, -1202f < var_2.b.a.b.x, !var_2.b.a.d), false), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.x)) * _wgslsmith_f_op_f32(ceil(-1819f)))))).a.e;
    var var_4 = var_2.a;
    var_3 = Struct_1(21966i, var_4.d.b, _wgslsmith_div_i32(var_2.b.a.a, ~0i), true, ~(var_4.a.e >> ((_wgslsmith_add_u32(u_input.b, u_input.c.x) << (u_input.b % 32u)) % 32u)));
    var_3 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_3.c, var_1.c) >> (vec3<u32>(30374u, 3996u, 9899u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(var_4.d.a, var_1.e, -10691i)) >> (vec3<u32>(72198u, var_4.b, 1841u) % vec3<u32>(32u))) >> (_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c.yzz ^ u_input.c.xzx, ~vec3<u32>(u_input.c.x, var_4.c.x, 0u))) % 32u), var_2.b.a.b, i32(-1i) * -u_input.a.x, true, -12785i);
    var_0 = select(1u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.c.x, var_2.a.b, u_input.b, var_2.a.c.x), u_input.c), _wgslsmith_dot_vec2_u32(var_2.b.c.xy, select(u_input.c.wz, u_input.c.yw, vec2<bool>(true, var_2.a.a.d))), firstLeadingBit(~var_2.a.b)), var_1.b.x >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(409f, var_4.a.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.b.x, ~22485u, 15009u, var_4.c.xy, u_input.a);
}


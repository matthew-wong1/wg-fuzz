struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1359f, -184f, 383f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, 918f, 1447f) - vec3<f32>(1105f, 912f, -501f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1496f, -1736f) + vec3<f32>(922f, -893f, 515f))), arg_2)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(632f))), 942f, -430f))), Struct_2(arg_3, firstTrailingBit(firstLeadingBit(countOneBits(-1i))), ~countOneBits(arg_3.c.zz), arg_3), u_input.c | ~arg_1.wzw, Struct_2(arg_3, min(-arg_1.x, -27616i), vec2<i32>(arg_1.x, u_input.c.x), Struct_1(vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), _wgslsmith_clamp_u32(arg_0.x, 52710u, 72198u)), ~max(arg_0, arg_3.a), vec4<i32>(reverseBits(arg_3.c.x), arg_1.x, firstTrailingBit(-75534i), -arg_1.x), u_input.a)), vec3<u32>(arg_0.x, arg_0.x, ~(~(4294967295u ^ arg_0.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -1708f), arg_3);
    global0 = array<vec3<bool>, 4>();
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    let var_0 = arg_1;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(-arg_2.a), 1101f, _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-arg_2.a))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_2.a))), _wgslsmith_f_op_f32(step(-225f, _wgslsmith_f_op_f32(-1065f * arg_2.a))), _wgslsmith_f_op_f32(func_3(abs(arg_2.b.a), vec4<i32>(arg_2.b.c.x, arg_2.b.c.x, arg_2.b.c.x, 1i), all(vec4<bool>(arg_0, false, var_0, var_1)), Struct_1(vec2<u32>(u_input.a, 41825u), arg_2.b.a, arg_2.b.c, u_input.a))), _wgslsmith_f_op_f32(min(1038f, _wgslsmith_f_op_f32(139f - 948f))))));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), select(true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, false, true)), true)), !(_wgslsmith_f_op_f32(-arg_2.a) < _wgslsmith_f_op_f32(-arg_2.a))));
    let var_1 = func_2((arg_1.b.c.x | _wgslsmith_dot_vec4_i32(arg_1.b.c, vec4<i32>(arg_0, arg_0, arg_2.b.c.x, -1i))) == ((i32(-1i) * -u_input.c.x) & -15636i), arg_2.b.d > min(max(_wgslsmith_add_u32(4304u, arg_2.b.a.x), 49737u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_2.b.a.x, 4294967295u, arg_2.b.a.x), vec4<u32>(arg_2.b.b.x, arg_2.b.b.x, arg_2.b.a.x, arg_1.b.d)), vec4<u32>(0u, 0u, 4294967295u, arg_1.b.b.x))), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f), arg_2.a))), func_2(true, any(!vec4<bool>(var_0, true, var_0, var_0)), arg_2).b)).b;
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    let var_2 = vec3<i32>(min(~_wgslsmith_mult_i32(select(0i, arg_0, var_0), abs(-57076i)), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(31553i, arg_2.b.c.x)), -_wgslsmith_add_vec2_i32(var_1.c.yx, arg_2.b.c.wy))), 1i, -2147483647i);
    return select(select(!vec2<bool>(true, select(var_0, var_0, var_0)), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), var_0), !vec2<bool>(false, var_0), vec2<bool>(var_0, true)), vec2<bool>(var_0, select(var_1.c.x < var_2.x, !var_0, all(vec2<bool>(var_0, false))))), !select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), vec2<bool>(select(true, var_0, true), true)), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, true)), vec2<bool>(false, var_0)), select(vec2<bool>(false, true), select(vec2<bool>(var_0, false), vec2<bool>(false, true), vec2<bool>(var_0, false)), vec2<bool>(false, false)), false));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    let var_0 = ~(-vec4<i32>(select(select(-1i, u_input.c.x, arg_0.x), -u_input.c.x, false), u_input.d, abs(u_input.d), u_input.d));
    global0 = array<vec3<bool>, 4>();
    let var_1 = true || arg_0.x;
    let var_2 = 1026f;
    global0 = array<vec3<bool>, 4>();
    return Struct_2(Struct_1(vec2<u32>(u_input.a, u_input.a), max(abs(vec2<u32>(u_input.a, u_input.a)) ^ ~vec2<u32>(49515u, 1u), ~min(vec2<u32>(u_input.a, 5641u), vec2<u32>(u_input.a, 11483u))), var_0, u_input.a), 548i, ~max(var_0.wx, u_input.c.xx) << (~abs(firstTrailingBit(vec2<u32>(u_input.a, 81598u))) % vec2<u32>(32u)), func_2(!(!(!var_1)), func_4(-1i, func_2(var_1, arg_0.x != false, func_2(false, false, Struct_3(129f, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec4<i32>(43408i, var_0.x, 2147483647i, var_0.x), 50483u)))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(arg_1, arg_1, Struct_3(178f, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(19610u, 26925u), var_0, 62590u))).b)).x, func_2(false, true, Struct_3(_wgslsmith_f_op_f32(func_3(vec2<u32>(64249u, u_input.a), vec4<i32>(-6033i, 1i, 1i, u_input.c.x), false, Struct_1(vec2<u32>(47295u, 23808u), vec2<u32>(1u, u_input.a), vec4<i32>(10936i, -2147483647i, -32195i, u_input.c.x), u_input.a))), func_2(false, false, Struct_3(-731f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, 48724u), vec4<i32>(u_input.d, u_input.c.x, u_input.d, u_input.d), u_input.a))).b))).b);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, -179f, -653f)))))), func_5(select(vec2<bool>(true, true), vec2<bool>(false, true), func_4(_wgslsmith_div_i32(u_input.b, 52367i), Struct_3(-684f, Struct_1(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, u_input.a), vec4<i32>(-22960i, 2147483647i, -1i, 1i), u_input.a)), func_2(true, false, Struct_3(170f, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u), vec4<i32>(u_input.d, u_input.c.x, u_input.b, u_input.b), u_input.a))))), true), u_input.c, Struct_2(Struct_1(vec2<u32>(0u, 28841u), vec2<u32>(25792u, u_input.a), vec4<i32>(-1i, u_input.c.x, u_input.d, 11128i) ^ vec4<i32>(u_input.c.x, -31292i, 0i, -10291i), ~(~u_input.a)), -22965i, vec2<i32>(-2147483647i >> (func_2(false, true, Struct_3(2327f, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec4<i32>(2147483647i, 42444i, u_input.c.x, -9300i), u_input.a))).b.d % 32u), ~u_input.b), Struct_1(abs(firstLeadingBit(vec2<u32>(1u, u_input.a))), max(vec2<u32>(26705u, 23250u), vec2<u32>(66691u, 0u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(20702u, u_input.a), vec2<u32>(23740u, 27699u)) % vec2<u32>(32u)), ~(-vec4<i32>(45366i, 2147483647i, 17671i, u_input.d)), ~select(0u, 23845u, true))), firstLeadingBit(_wgslsmith_mod_vec3_u32(select(vec3<u32>(3283u, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 22187u), vec3<u32>(12559u, 1u, 10003u), true), vec3<u32>(u_input.a, u_input.a, 15425u ^ u_input.a))));
    global0 = array<vec3<bool>, 4>();
    var var_1 = !vec4<bool>(false, !(!all(global0[_wgslsmith_index_u32(17224u, 4u)])), func_4(-abs(-11894i), Struct_3(_wgslsmith_f_op_f32(floor(2033f)), Struct_1(vec2<u32>(u_input.a, 35040u), vec2<u32>(4294967295u, 0u), vec4<i32>(u_input.c.x, u_input.b, -15200i, var_0.b.a.c.x), u_input.a)), func_2(4294967295u < u_input.a, any(vec4<bool>(false, true, true, false)), Struct_3(var_0.a.x, var_0.d.d))).x, any(vec2<bool>(true, false)));
    let var_2 = vec4<u32>(u_input.a, 0u, u_input.a, abs(20093u));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), -1179f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 103f) * vec2<f32>(var_0.a.x, var_0.a.x)) - _wgslsmith_div_vec2_f32(var_0.a.yy, var_0.a.xy))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0.a.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))), var_0.a.zx), func_4(reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, -25282i, 71382i, -34788i), vec4<i32>(-10227i, var_0.d.a.c.x, -59671i, -2147483647i)), 25593i)), func_2(true, true, func_2(!var_1.x, var_1.x, func_2(true, var_1.x, Struct_3(1447f, Struct_1(var_2.wz, var_0.e.zz, vec4<i32>(1i, var_0.c.x, u_input.c.x, u_input.c.x), var_0.d.d.a.x))))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, -1000f) - _wgslsmith_f_op_f32(select(-209f, var_0.a.x, var_1.x))), func_5(select(var_1.yw, vec2<bool>(true, true), var_1.x), !var_1.x).a))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_0.a.x))))), var_0.b, vec3<i32>(max(-26067i, var_0.d.a.c.x) | ~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -32731i, u_input.c.x, u_input.d), ~vec4<i32>(-1i, 0i, var_0.c.x, u_input.b)), -2147483647i) ^ abs(select(~u_input.c, ~vec3<i32>(u_input.c.x, u_input.d, u_input.c.x), u_input.b > -1568i)), var_0.d, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)), _wgslsmith_f_op_f32(floor(-228f)), -431f, _wgslsmith_div_f32(-1326f, -880f))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a | u_input.a, 1u, 4294967295u, u_input.a), countOneBits(vec4<u32>(_wgslsmith_div_u32(~u_input.a, ~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(63848u, 0u, 16202u, 28016u), select(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(37991u, 44932u, u_input.a, u_input.a), true)), ~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(67623u, u_input.a, 23453u)), select(vec3<u32>(9921u, 1u, 1u), vec3<u32>(u_input.a, 89801u, 44766u), false)))));
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    var_1 = vec4<u32>(0u, abs(29516u), 1u >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(6882u, firstLeadingBit(4409u)), ~(~var_1.x)) % 32u), 4294967295u);
    let var_2 = -1000f;
    let var_3 = func_1();
    var_1 = vec4<u32>(~var_1.x, 37305u, 1u, firstTrailingBit(~_wgslsmith_clamp_u32(var_3.b.d.a.x, 1u, 1u))) ^ vec4<u32>(5752u, u_input.a, 14354u, ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~27495u, 41981u, var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, var_2)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(585f, -672f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.yz), vec2<f32>(1553f, var_2), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.d.d, 37974u, var_3.d.a.d, 31376u), vec4<u32>(var_3.e.x, var_1.x, 1u, 0u)) > var_3.d.d.a.x))));
}


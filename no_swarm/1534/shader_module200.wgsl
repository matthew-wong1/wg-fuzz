struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: f32 = 2225f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = !select(vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, true), vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), true, false, (u_input.a >> (36993u % 32u)) >= -arg_0.a.b.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(true, true, select(true, true, true))));
    var var_1 = 1u;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(611f + -961f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f)));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(250f, -1003f, var_0.x)), _wgslsmith_f_op_f32(select(-881f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) - _wgslsmith_f_op_f32(1000f - -278f)), var_0.x)))));
    var_1 = u_input.b.x;
    return 357f;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)) + vec4<f32>(arg_1.x, -977f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-659f, 2125f)))))), arg_1.x));
    global1 = arg_1.x;
    let var_1 = !(!vec3<bool>(all(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, true, arg_0), arg_0)), all(vec4<bool>(false, true, true, arg_0)), arg_0));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(70615u, vec2<i32>(20374i, -34968i), u_input.c.x, u_input.c.yzw)))))) + 1528f));
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1055f - 1029f) + arg_1.x)))), max((_wgslsmith_div_vec2_i32(vec2<i32>(23664i, 1i), vec2<i32>(u_input.a, 2147483647i)) ^ reverseBits(vec2<i32>(u_input.a, u_input.a))) << (u_input.b % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(-1i), u_input.a), min(vec2<i32>(u_input.a, -1i), firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(arg_1.x * -1936f)))), Struct_1(46491u, _wgslsmith_add_vec2_i32(-(vec2<i32>(29738i, u_input.a) ^ vec2<i32>(u_input.a, -1i)), -select(vec2<i32>(-25672i, u_input.a), vec2<i32>(0i, 25783i), vec2<bool>(false, var_1.x))), 4294967295u, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 44550u, u_input.b.x), u_input.c.ywz) ^ (select(vec3<u32>(41119u, u_input.c.x, 1u), u_input.c.xww, var_1.x) & _wgslsmith_mult_vec3_u32(vec3<u32>(61035u, u_input.b.x, u_input.d), vec3<u32>(0u, 4092u, 18275u)))), Struct_1(~67791u, vec2<i32>(reverseBits(-2147483647i), firstLeadingBit(u_input.a)), ~max(abs(u_input.b.x), u_input.c.x), ~vec3<u32>(~u_input.e.x, u_input.c.x ^ u_input.b.x, u_input.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> Struct_5 {
    var var_0 = arg_0.a;
    let var_1 = !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), vec3<bool>(true, true, false)));
    let var_2 = select(vec4<bool>(abs(arg_0.d.b.x) == (i32(-1i) * -1i), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)) == arg_0.c, func_2(var_1.x | false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1272f))).c >= _wgslsmith_f_op_f32(-arg_0.a)), !select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, var_1.x, false, false), true), !vec4<bool>(var_1.x, false, var_1.x, false)), select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, false, false, var_1.x)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), !any(vec4<bool>(true, false, true, true))), !(!select(!vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, false, true, var_1.x))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) + _wgslsmith_div_f32(114f, 754f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2777f + -1531f) - _wgslsmith_f_op_f32(round(1146f))))), _wgslsmith_f_op_f32(func_3(Struct_3(func_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1290f, 548f))).e)))));
    global0 = array<vec3<f32>, 28>();
    return Struct_5(arg_0.d.b.x, Struct_3(Struct_1(min(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(74868u, u_input.b.x, 15495u, 107u)), countOneBits(0u)), vec2<i32>(u_input.a, _wgslsmith_sub_i32(-2147483647i, -1i)), _wgslsmith_clamp_u32(arg_2, u_input.d, arg_0.e.c), vec3<u32>(~arg_0.d.a, u_input.e.x, 1u))), Struct_2(arg_0.c, arg_0.d.b, arg_0.a, func_2(_wgslsmith_mult_i32(u_input.a, u_input.a) >= -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1655f, arg_0.a), vec2<f32>(arg_0.c, arg_0.c)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-522f, -1035f), vec2<f32>(284f, -435f), vec2<bool>(var_1.x, true))))).d, func_2(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-332f, arg_0.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.c) + vec2<f32>(arg_0.a, -899f)))).d), arg_1.x << (~_wgslsmith_mult_u32(0u ^ arg_0.d.a, ~u_input.c.x) % 32u));
}

fn func_5(arg_0: f32, arg_1: Struct_5) -> u32 {
    var var_0 = Struct_4(arg_0, vec3<bool>(!(u_input.a >= (i32(-1i) * -2147483647i)), true, all(vec2<bool>(true, true))), ~_wgslsmith_add_u32(abs(u_input.c.x), 22056u) >> (reverseBits(_wgslsmith_dot_vec2_u32(arg_1.b.a.d.yz, vec2<u32>(u_input.c.x, 33970u)) ^ 1u) % 32u), arg_1.c);
    global1 = arg_1.c.c;
    global0 = array<vec3<f32>, 28>();
    global1 = func_4(var_0.d, vec2<i32>(arg_1.a ^ -2147483647i, func_2(!select(var_0.b.x, var_0.b.x, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1300f, arg_0) + vec2<f32>(2130f, 1039f))))).e.b.x), ~var_0.d.d.a).c.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.a, arg_0, var_0.d.a) - global0[_wgslsmith_index_u32(4294967295u, 28u)]))))));
    return 1u;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(arg_0, vec2<i32>(_wgslsmith_mult_i32(-u_input.a, u_input.a), ~(-12827i)), _wgslsmith_dot_vec3_u32(u_input.e.xww, ~vec3<u32>(37623u, 4294967295u, 22770u)), u_input.c.xxy));
    var var_1 = max(_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(-2147483647i), var_0.a.b.x | (i32(-1i) * -3292i), -45299i ^ u_input.a, _wgslsmith_mod_i32(~15292i, -30880i >> (0u % 32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(var_0.a.b.x), 0i, reverseBits(-27574i), u_input.a), -(~vec4<i32>(-60763i, 2147483647i, 4347i, 1393i)))), _wgslsmith_add_vec4_i32(vec4<i32>(-78742i, var_0.a.b.x, -12136i, reverseBits(-1i)), vec4<i32>(func_2(true, _wgslsmith_f_op_vec2_f32(arg_2.xz - vec2<f32>(269f, arg_2.x))).e.b.x, 1i, reverseBits(select(23963i, u_input.a, false)), _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(var_0.a.b.x, var_0.a.b.x)))));
    var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, true)), vec2<i32>(u_input.a, 1i), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(338f, -2385f))), func_4(func_2(all(vec4<bool>(true, false, true, true)), arg_2.xy), func_4(Struct_2(-574f, vec2<i32>(-2147483647i, -18459i), arg_1, Struct_1(u_input.e.x, var_0.a.b, u_input.d, vec3<u32>(u_input.b.x, 9866u, 4294967295u)), Struct_1(var_0.a.d.x, vec2<i32>(8047i, var_0.a.b.x), arg_0, vec3<u32>(var_0.a.a, u_input.e.x, u_input.b.x))), var_0.a.b | var_1.xz, ~10796u).c.d.b, func_2(true, _wgslsmith_f_op_vec2_f32(sign(arg_2.zz))).e.d.x).b.a, var_0.a), var_0.a.b, abs(arg_0)).b;
    var var_2 = arg_0;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(abs(1114f)), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), any(vec4<bool>(false, false, true, true)))), var_0.a.a, Struct_2(_wgslsmith_f_op_f32(step(-1531f, 365f)), firstTrailingBit(vec2<i32>(var_1.x | u_input.a, var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(656f)) * 1373f))), func_2(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, arg_2.x)))))).d, var_0.a));
    return Struct_3(Struct_1(u_input.c.x, ~(~var_0.a.b) ^ -vec2<i32>(var_1.x, var_0.a.b.x), arg_0, vec3<u32>(var_0.a.c, 4294967295u, 124448u)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.e.zyw;
    let var_1 = 29592u;
    let var_2 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f - 212f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2782f)), _wgslsmith_f_op_f32(f32(-1f) * -574f))), func_4(func_2(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, 891f))), ~(~vec2<i32>(u_input.a, -12260i)), 0u)), func_2(any(vec4<bool>(false, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(765f * -1399f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(760f, 653f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1653f)))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1067f, -466f, -741f, -557f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(841f, 2070f, 109f, -418f), vec4<f32>(-1000f, -1483f, 136f, -195f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-527f, 2062f, -789f, -1633f), vec4<f32>(716f, -1000f, -387f, -1004f))) + vec4<f32>(270f, 472f, 746f, 409f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-507f, -1364f, -1120f, -481f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(602f, -759f, 1140f, -881f)))), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))))));
    var var_3 = var_2.a;
    let var_4 = 570f;
    return Struct_1(~var_2.a.a, var_2.a.b, u_input.e.x, var_3.d);
}

fn func_7(arg_0: Struct_5) -> Struct_3 {
    let var_0 = Struct_4(824f, vec3<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true, true), u_input.e.x, Struct_2(-313f, abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 23193i, u_input.a, u_input.a), vec4<i32>(-16216i, arg_0.b.a.b.x, arg_0.b.a.b.x, u_input.a)), 51247i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(arg_0.c.c))))), arg_0.c.d, Struct_1(23395u, ~_wgslsmith_div_vec2_i32(vec2<i32>(26915i, -1i), vec2<i32>(u_input.a, u_input.a)), ~(~4294967295u), func_2(true, vec2<f32>(arg_0.c.c, 380f)).d.d)));
    global0 = array<vec3<f32>, 28>();
    let var_1 = 1u;
    global0 = array<vec3<f32>, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.a, _wgslsmith_f_op_f32(-func_2(true, vec2<f32>(arg_0.c.a, -880f)).c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-540f - var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2266f, 677f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-462f, 715f, var_0.a, var_0.d.a) * vec4<f32>(arg_0.c.a, 1012f, 469f, var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c, arg_0.c.a, -1447f, var_0.d.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a, arg_0.c.c, 1000f, var_0.d.c) + vec4<f32>(var_0.d.c, var_0.a, 220f, var_0.d.c))))), !select(vec4<bool>(true, false, false, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, false), !vec4<bool>(var_0.b.x, var_0.b.x, true, false)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a, var_0.d.c, 106f, 892f) * vec4<f32>(arg_0.c.a, var_0.d.a, var_0.a, arg_0.c.c))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1159f, var_0.d.a, -854f, -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.a, 517f, -552f, arg_0.c.c), vec4<f32>(arg_0.c.c, var_0.d.c, arg_0.c.c, 154f), var_0.b.x)), any(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a, 1000f, 820f, -197f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, var_0.a, arg_0.c.a, 1798f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, arg_0.c.a, arg_0.c.a, 214f)), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)))))));
    return func_4(var_0.d, vec2<i32>(-func_6(1813u, _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.a, -1087f, 1197f, var_2.x))).a.b.x, 0i), var_1).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 28>();
    var var_0 = func_7(Struct_5(u_input.a, Struct_3(func_1()), Struct_2(1f, vec2<i32>(-u_input.a, -1589i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(0u, vec2<i32>(u_input.a, u_input.a), u_input.d, vec3<u32>(4294967295u, u_input.b.x, 4294967295u)))))), func_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-159f, -330f))).e, func_2(u_input.e.x == 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-774f, -216f))).e), -25131i));
    var var_1 = select(true, any(vec3<bool>(true, true, true)), select(true, false, true)) || any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true), true));
    var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1017f), -1897f, _wgslsmith_f_op_f32(-1000f * -421f)), global0[_wgslsmith_index_u32(~(~43915u), 28u)])) * vec3<f32>(_wgslsmith_f_op_f32(-1243f + -743f), -357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(848f)))))));
    global0 = array<vec3<f32>, 28>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x)));
    let var_3 = min(vec4<i32>(22008i, -4858i, -2147483647i, ~var_0.a.b.x), ~vec4<i32>(_wgslsmith_div_i32(1i >> (var_0.a.d.x % 32u), u_input.a), ~(~var_0.a.b.x), ~(~2147483647i), func_1().b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1599f, var_2.x, 1731f, var_2.x)))))));
}


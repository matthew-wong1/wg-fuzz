struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(33258u, 0u), vec2<u32>(47170u, 0u), vec2<u32>(52001u, 44298u), vec2<u32>(21367u, 39721u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(12246u, 9745u), vec2<u32>(0u, 15923u), vec2<u32>(0u, 38935u), vec2<u32>(1u, 1u), vec2<u32>(0u, 50797u), vec2<u32>(27498u, 6638u), vec2<u32>(0u, 52848u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(87598u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(0u, 595u), vec2<u32>(68965u, 125536u), vec2<u32>(62103u, 25218u), vec2<u32>(4294967295u, 25759u), vec2<u32>(0u, 35437u), vec2<u32>(0u, 72023u), vec2<u32>(0u, 0u), vec2<u32>(26676u, 1u), vec2<u32>(4294967295u, 63307u), vec2<u32>(0u, 1u), vec2<u32>(1u, 15040u), vec2<u32>(28382u, 0u), vec2<u32>(34223u, 4294967295u));

var<private> global1: Struct_3 = Struct_3(vec4<u32>(39549u, 47545u, 0u, 87673u), Struct_1(4659u), vec4<f32>(-932f, -735f, 156f, 622f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    return 1f;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_4 {
    global1 = Struct_3(vec4<u32>(16124u, 2378u, 86556u, _wgslsmith_mult_u32(~1u & arg_2.b.a, 86108u)), Struct_1(48241u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) * arg_2.d.c)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d.c * vec4<f32>(-1068f, -2112f, 347f, arg_2.a))), vec4<f32>(_wgslsmith_f_op_f32(func_3(global1.c.wy, global1.b.a, vec4<bool>(false, arg_1.x, true, arg_1.x), arg_1.x)), -1218f, 526f, 131f))));
    var var_0 = vec4<u32>(u_input.b, ~global1.a.x & ~16276u, 27879u, 4302u);
    global1 = Struct_3(max(vec4<u32>(arg_2.b.a & 1u, _wgslsmith_add_u32(14862u, var_0.x), 70505u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), arg_2.d.a.zxw)) | _wgslsmith_div_vec4_u32(arg_2.d.a, vec4<u32>(51289u, 66151u, 29364u, 120179u)), select(global1.a, _wgslsmith_mult_vec4_u32(~arg_2.d.a, global1.a), false)), Struct_1(4294967295u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, arg_2.a, arg_2.a, -1230f) + vec4<f32>(arg_2.a, 1483f, 1214f, -242f)), _wgslsmith_div_vec4_f32(vec4<f32>(-971f, global1.c.x, arg_2.d.c.x, 294f), vec4<f32>(607f, global1.c.x, -2162f, arg_2.d.c.x)), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1212f - -374f), global1.c.x, 425f, _wgslsmith_f_op_f32(-560f + arg_2.d.c.x))))));
    let var_1 = -2147483647i;
    let var_2 = Struct_2(_wgslsmith_div_u32(~38123u, _wgslsmith_clamp_u32(u_input.a, ~(~0u), _wgslsmith_mod_u32(min(43582u, arg_2.b.a), global1.b.a >> (global1.a.x % 32u)))));
    return Struct_4(_wgslsmith_mult_i32((abs(2147483647i) << (~4294967295u % 32u)) | select(arg_0, reverseBits(arg_2.c.x), all(vec3<bool>(arg_1.x, true, false))), ~(~arg_2.c.x)), arg_2.d);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4) -> u32 {
    var var_0 = true;
    var var_1 = arg_2.b;
    let var_2 = Struct_5(global1.c.x, func_2(~reverseBits(~arg_0), !select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), Struct_5(arg_2.b.c.x, global1.b, vec3<i32>(_wgslsmith_add_i32(-2147483647i, 1i), abs(arg_0), arg_2.a), arg_2.b)).b.b, ~u_input.e.zxz, arg_2.b);
    var var_3 = global1.c.x;
    let var_4 = arg_2.b.a;
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.b.a, ~1u), ~_wgslsmith_div_u32(arg_1.x, 62644u)), _wgslsmith_mult_u32(var_4.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.d.b.a, u_input.d.x, 4294967295u), 16434u) ^ select(abs(106179u), arg_2.b.b.a >> (68758u % 32u), all(vec4<bool>(false, true, true, false)))));
}

fn func_1() -> Struct_3 {
    global1 = Struct_3(vec4<u32>(func_4(-17933i, countOneBits(vec4<u32>(u_input.c.x, 4294967295u, 21821u, 4294967295u)), func_2(-21578i, vec2<bool>(true, false), Struct_5(global1.c.x, Struct_1(u_input.a), u_input.e.wxy, Struct_3(global1.a, Struct_1(u_input.a), global1.c)))) >> (1u % 32u), _wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(u_input.d.x ^ 1u, 30u)], _wgslsmith_mult_vec2_u32(u_input.c.ww, firstLeadingBit(vec2<u32>(u_input.b, 17264u)))), u_input.c.x, _wgslsmith_dot_vec4_u32(countOneBits(u_input.c >> (vec4<u32>(global1.a.x, 4294967295u, 4294967295u, u_input.c.x) % vec4<u32>(32u))), ~u_input.c << (global1.a % vec4<u32>(32u)))), global1.b, global1.c);
    let var_0 = Struct_3(abs(min(select(vec4<u32>(u_input.a, global1.b.a, 0u, 25656u) & u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 29379u, global1.a.x), vec4<u32>(u_input.b, global1.a.x, 4294967295u, global1.b.a)), true), vec4<u32>(global1.b.a, select(28081u, 19877u, false), u_input.c.x, abs(19333u)))), func_2(2147483647i, !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1294f), func_2(1i, vec2<bool>(true, true), Struct_5(global1.c.x, Struct_1(global1.a.x), u_input.e.zzy, Struct_3(global1.a, Struct_1(75999u), global1.c))).b.b, vec3<i32>(2330i, i32(-1i) * -2147483647i, i32(-1i) * -24738i), func_2(i32(-1i) * -2147483647i, vec2<bool>(false, true), Struct_5(global1.c.x, global1.b, vec3<i32>(1i, u_input.e.x, u_input.e.x), Struct_3(vec4<u32>(16903u, global1.a.x, u_input.a, global1.a.x), Struct_1(global1.b.a), vec4<f32>(1938f, global1.c.x, global1.c.x, -1340f)))).b)).b.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, -203f, 186f, -1000f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(global1.c))))))));
    let var_1 = _wgslsmith_clamp_u32(u_input.d.x ^ abs(_wgslsmith_div_u32(77443u, u_input.c.x & global1.a.x)), ~_wgslsmith_sub_u32(reverseBits(reverseBits(4294967295u)), max(var_0.b.a, 45201u) ^ 2699u), var_0.a.x);
    let var_2 = u_input.e.x;
    global0 = array<vec2<u32>, 30>();
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(-u_input.e, vec4<i32>(arg_3, _wgslsmith_sub_i32(36993i, u_input.e.x), 23474i ^ arg_1.x, u_input.e.x)), -abs(-2147483647i), -(-arg_1.x << (~(~23163u) % 32u)));
    let var_1 = select(vec2<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), vec2<bool>(any(vec2<bool>(true, all(vec2<bool>(false, true)))), true), select(vec2<bool>(true, select(false, true, true)), vec2<bool>(true, true), _wgslsmith_sub_i32(arg_1.x, ~arg_3) == (arg_1.x | var_0)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.c.x)), global1.c.x)) - -1000f))), arg_0.b, abs(~_wgslsmith_mod_vec3_i32(u_input.e.zxz, _wgslsmith_mod_vec3_i32(u_input.e.yyw, vec3<i32>(2147483647i, -6248i, var_0)))), arg_0);
    global0 = array<vec2<u32>, 30>();
    let var_3 = _wgslsmith_mult_u32(4294967295u, ~u_input.d.x);
    return Struct_4(abs(_wgslsmith_mult_i32(43619i, -17955i)), var_2.d);
}

fn func_6(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = Struct_3(vec4<u32>(u_input.d.x, 1u, u_input.c.x, _wgslsmith_dot_vec4_u32(~(arg_0.b.a >> (u_input.c % vec4<u32>(32u))), vec4<u32>(~global1.b.a, 0u, 35264u, arg_0.b.a.x))), global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c.x, -1003f, -1071f, -1000f)));
    var var_1 = reverseBits(u_input.c) >> (~func_2(min(firstTrailingBit(u_input.e.x), i32(-1i) * -14462i), select(vec2<bool>(true, false), vec2<bool>(true, true), true), Struct_5(_wgslsmith_f_op_f32(ceil(global1.c.x)), Struct_1(u_input.d.x), abs(vec3<i32>(58561i, 0i, 19865i)), func_2(u_input.e.x, vec2<bool>(false, true), Struct_5(-571f, Struct_1(arg_0.b.b.a), u_input.e.wwx, arg_0.b)).b)).b.a % vec4<u32>(32u));
    var_0 = Struct_3(global1.a, func_5(func_1(), u_input.e.zw ^ vec2<i32>(u_input.e.x | -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.a, 2147483647i, 56051i), vec4<i32>(u_input.e.x, -75571i, -2147483647i, 24646i))), vec4<f32>(1000f, arg_0.b.c.x, -799f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)))), 0i).b.b, arg_0.b.c);
    var_1 = func_2(~arg_0.a, vec2<bool>(true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), Struct_5(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f)))), Struct_1(0u), vec3<i32>(u_input.e.x, -47784i, (arg_0.a << (4294967295u % 32u)) & 2147483647i), arg_0.b)).b.a;
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1.b.a, 11065u), ~0u, u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), vec2<u32>(var_1.x, var_0.a.x))) >> (u_input.c % vec4<u32>(32u)), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c), func_5(Struct_3(vec4<u32>(var_1.x, 13182u, 72088u, 0u), var_0.b, var_0.c), u_input.e.xz, vec4<f32>(-727f, var_0.c.x, global1.c.x, var_0.c.x), u_input.e.x).b.a))), vec4<u32>(_wgslsmith_dot_vec3_u32(~(~u_input.c.yyy), var_1.wwy), firstTrailingBit(arg_0.b.a.x), max(var_0.b.a, 0u), _wgslsmith_dot_vec2_u32(max(~vec2<u32>(1u, var_0.a.x), vec2<u32>(arg_0.b.b.a, var_1.x)), _wgslsmith_add_vec2_u32(var_0.a.zx, global0[_wgslsmith_index_u32(global1.a.x, 30u)] | vec2<u32>(var_0.a.x, var_0.a.x)))));
    return StorageBuffer(-u_input.e.zxy, -arg_0.a, func_2(_wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(arg_0.a, u_input.e.x, arg_0.a, -1i)), u_input.e, true), ~_wgslsmith_mult_vec4_i32(u_input.e, u_input.e)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), Struct_5(_wgslsmith_f_op_f32(-arg_0.b.c.x), Struct_1(1u), -countOneBits(u_input.e.wzy), Struct_3(reverseBits(arg_0.b.a), func_5(Struct_3(global1.a, var_0.b, vec4<f32>(arg_0.b.c.x, -280f, arg_0.b.c.x, 250f)), vec2<i32>(-18747i, u_input.e.x), global1.c, arg_0.a).b.b, vec4<f32>(368f, arg_0.b.c.x, -1831f, var_0.c.x)))).b.a.x, vec3<u32>(func_4(u_input.e.x, global1.a, arg_0), 0u, 96610u), 250f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    var var_0 = vec3<u32>(_wgslsmith_div_u32(global1.a.x, ~6452u), 0u, ~(~(~_wgslsmith_clamp_u32(0u, u_input.c.x, 4294967295u))));
    var var_1 = -76875i;
    let var_2 = Struct_2(16354u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x));
    var var_4 = u_input.e;
    let x = u_input.a;
    s_output = func_6(func_5(func_1(), ~vec2<i32>(u_input.e.x ^ -8835i, u_input.e.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, global1.c.x, global1.c.x, -178f) - global1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2468f, 216f, global1.c.x, global1.c.x)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), -u_input.e.x));
}


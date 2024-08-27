struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_4, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(min(_wgslsmith_add_u32(0u, global0.x), global0.x), vec4<u32>(u_input.a, u_input.a, global0.x, firstLeadingBit(select(0u, 1u, false))), firstTrailingBit(~select(global0.x, 13583u, false)), 4294967295u, vec4<bool>(false, false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true)), ~select(firstLeadingBit(4294967295u ^ global0.x), global0.x & 1u, true), Struct_1(countOneBits(4294967295u) & firstTrailingBit(global0.x), ~select(vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(3956u, global0.x, global0.x, 4294967295u), vec4<u32>(u_input.a, 1u, u_input.a, 23851u), vec4<u32>(global0.x, u_input.a, global0.x, u_input.a)), any(vec4<bool>(false, false, false, true))), u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 0u, global0.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(34522u, 9860u, 1u, global0.x), vec4<u32>(global0.x, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, 0u, 10420u, u_input.a))), ~2348u), vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)))));
    var var_1 = ~(-countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-17797i, 22661i, 1i, 1i) >> (var_0.c.b % vec4<u32>(32u)), ~vec4<i32>(2147483647i, -43904i, -2147483647i, 0i))));
    let var_2 = var_0.a.e.x & true;
    var_0 = Struct_3(Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.x & u_input.a, ~global0.x), 4294967295u), vec4<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(var_0.c.c, var_0.c.c)), _wgslsmith_add_u32(u_input.a, u_input.a)), var_0.b, global0.x, firstTrailingBit(1u)), ~select(0u, var_0.a.c, any(var_0.c.e)), _wgslsmith_dot_vec3_u32(var_0.c.b.wxx, ~select(vec3<u32>(global0.x, 0u, global0.x), var_0.c.b.yww, true)), !select(select(var_0.c.e, var_0.a.e, vec4<bool>(var_0.c.e.x, false, false, false)), !vec4<bool>(false, var_0.a.e.x, false, false), vec4<bool>(true, false, true, var_2))), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_0.a.b, vec4<u32>(1u, 12607u & var_0.b, _wgslsmith_clamp_u32(4294967295u, var_0.a.d, 1u), var_0.c.b.x & 43437u))), Struct_1(abs(~(var_0.a.d ^ u_input.a)), vec4<u32>(var_0.c.d, 29629u, var_0.a.a, ~_wgslsmith_sub_u32(var_0.c.a, var_0.c.a)), abs(~countOneBits(global0.x)), 90379u, select(select(vec4<bool>(true, true, false, var_2), select(var_0.a.e, var_0.a.e, vec4<bool>(var_0.a.e.x, var_2, false, var_2)), select(var_0.a.e, vec4<bool>(var_0.a.e.x, var_2, true, true), false)), vec4<bool>(true, any(vec2<bool>(false, var_0.a.e.x)), true, false), var_0.c.e)));
    global0 = ~vec3<u32>(~max(global0.x, u_input.a & global0.x), 4294967295u, ~u_input.a);
    return abs(var_0.a.b.wwy);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, u_input.a, global0.x), func_3()), ~abs(vec3<u32>(global0.x, 7331u, u_input.a))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global0.x, global0.x, global0.x), vec4<u32>(19985u, global0.x, 25689u, 61130u)), ~vec4<u32>(4294967295u, 0u, 4294967295u, 22995u)), u_input.a, _wgslsmith_mult_u32(u_input.a | global0.x, ~22581u) | 8662u, select(vec4<bool>(select(false, true, true), all(vec3<bool>(false, true, true)), all(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false)), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(340f, 325f))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1622f, _wgslsmith_div_f32(-950f, 1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, -814f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, -763f) * vec2<f32>(-722f, -160f))))))), Struct_1(u_input.a, vec4<u32>(~1u, ~u_input.a << (global0.x % 32u), 20068u, _wgslsmith_mult_u32(3206u, 1u)), global0.x, _wgslsmith_sub_u32(1u, 0u ^ (global0.x ^ 46219u)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)));
    var var_1 = ((0i >> ((~u_input.a >> (~1u % 32u)) % 32u)) >= 63088i) | (arg_0 >= ((arg_0 << (1u % 32u)) << (abs(abs(13695u)) % 32u)));
    let var_2 = var_0.b;
    let var_3 = abs(vec2<u32>((~4294967295u | (var_0.a.c & 0u)) ^ 67525u, global0.x));
    global1 = array<Struct_4, 5>();
    return var_0.a.e.x;
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = max(vec3<i32>(2147483647i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(5121i, -30490i), ~2147483647i)), -abs(-12468i)), select(min(~(~vec3<i32>(2073i, -1i, 1i)), abs(vec3<i32>(2147483647i, 12216i, -2147483647i))), ~(-vec3<i32>(-1944i, -1850i, -3667i)), (_wgslsmith_clamp_u32(arg_0, arg_0, 39623u) & u_input.a) <= firstTrailingBit(_wgslsmith_div_u32(u_input.a, 13023u))));
    global0 = ~vec3<u32>(~_wgslsmith_sub_u32(~4294967295u, global0.x ^ 0u), u_input.a, 137359u);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-2218f * 411f), -656f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-992f, -1319f, 816f) - vec3<f32>(-845f, -332f, 1673f)))))))));
    var_0 = -abs(abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(var_0.x, 0i, var_0.x), false), ~vec3<i32>(31598i, var_0.x, -21591i), vec3<i32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(u_input.a, arg_0, 23624u) % vec3<u32>(32u)))));
    var var_2 = Struct_1(82172u, vec4<u32>(abs(23390u), u_input.a, select(48813u, _wgslsmith_mod_u32(global0.x, ~global0.x), true && func_2(17571i)), u_input.a), u_input.a, ~_wgslsmith_sub_u32(~(~61594u), max(1u, arg_0)), select(!vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, true), vec4<bool>(!any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true, 2147483647i >= _wgslsmith_mult_i32(var_0.x, 0i)), true));
    return Struct_4(Struct_3(Struct_1(1u, _wgslsmith_clamp_vec4_u32(var_2.b, vec4<u32>(9950u, 1u, 1u, 4294967295u), vec4<u32>(global0.x, 16953u, 64636u, 0u)) & (vec4<u32>(global0.x, arg_0, 39546u, 4294967295u) << (vec4<u32>(arg_0, 4294967295u, var_2.c, 0u) % vec4<u32>(32u))), 96973u, firstLeadingBit(~1u), select(!var_2.e, !vec4<bool>(var_2.e.x, true, var_2.e.x, var_2.e.x), false)), global0.x, Struct_1(firstTrailingBit(~0u), (var_2.b << (var_2.b % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(var_2.b, var_2.b), max(77843u >> (var_2.a % 32u), countOneBits(94928u)), 35828u, select(vec4<bool>(false, false, true, var_2.e.x), !var_2.e, var_2.e.x))), Struct_2(Struct_1(~(~0u), select(max(vec4<u32>(arg_0, 35455u, u_input.a, 1u), vec4<u32>(arg_0, 2630u, global0.x, 1u)), var_2.b, !var_2.e), _wgslsmith_sub_u32(var_2.a, ~u_input.a), 4294967295u ^ _wgslsmith_clamp_u32(0u, global0.x, 0u), var_2.e), _wgslsmith_f_op_vec2_f32(sign(var_1.zy)), Struct_1(1729u, var_2.b, _wgslsmith_sub_u32(global0.x & global0.x, 0u), countOneBits(12626u), select(!vec4<bool>(var_2.e.x, false, var_2.e.x, false), select(vec4<bool>(false, var_2.e.x, var_2.e.x, var_2.e.x), vec4<bool>(false, true, false, false), var_2.e.x), true))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_3 {
    global0 = func_1(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, global0.x), global0.zx), ~(~4294967295u), arg_2.x)).a.a.b.wyy;
    let var_0 = arg_1.a.c.e.x;
    let var_1 = 0i;
    global0 = arg_1.a.a.b.zyx;
    var var_2 = Struct_3(Struct_1(firstLeadingBit(abs(arg_1.b.c.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 39079u), ~arg_2.x, 27947u >> (0u % 32u), 4294967295u), arg_1.a.c.b | reverseBits(vec4<u32>(arg_2.x, 4294967295u, global0.x, arg_2.x)), _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(global0.x, arg_1.a.b, arg_1.a.c.b.x, u_input.a) & vec4<u32>(arg_2.x, arg_2.x, arg_1.b.c.b.x, u_input.a))), countOneBits(18968u), ~func_1(global0.x).a.c.c ^ 54585u, !vec4<bool>(true, arg_0, true, func_2(var_1))), _wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_mod_u32(arg_2.x, global0.x)), ~_wgslsmith_clamp_u32(~0u, firstTrailingBit(4294967295u), global0.x & 55093u)), func_1(0u).b.a);
    return arg_1.a;
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global0 = reverseBits(~vec3<u32>(abs(global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 93543u, 1u), vec3<u32>(20159u, global0.x, u_input.a)), ~arg_0.a.c) << (arg_0.c.b.xxy % vec3<u32>(32u)));
    global1 = array<Struct_4, 5>();
    let var_0 = ~vec2<i32>(~_wgslsmith_sub_i32(-2147483647i, ~2147483647i), firstTrailingBit(1i));
    let var_1 = Struct_1(1u, arg_0.a.b, _wgslsmith_sub_u32(~21721u, _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(u_input.a, 18748u, 1u, 43033u), vec4<u32>(global0.x, global0.x, 58180u, global0.x), arg_0.a.e), func_1(u_input.a).b.c.b, func_1(arg_0.c.a).a.a.e), abs(arg_0.a.b) << (reverseBits(vec4<u32>(arg_0.a.a, 23489u, 4294967295u, 33544u)) % vec4<u32>(32u)))), ~func_1(796u).b.a.c, !vec4<bool>(_wgslsmith_add_u32(u_input.a, arg_0.a.d) >= ~global0.x, arg_0.c.e.x, any(func_1(20678u).a.c.e), func_2(-1i)));
    let var_2 = func_1(~4294967295u).b;
    return Struct_2(Struct_1(75524u, arg_0.c.b, 1u, ~(~(~global0.x)), var_1.e), var_2.b, var_1);
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = vec2<i32>(-6016i, arg_0 << ((abs(4379u) >> (firstTrailingBit(~arg_2.c.a) % 32u)) % 32u));
    let var_1 = vec3<i32>(41424i, _wgslsmith_add_i32(var_0.x, 39042i), firstLeadingBit(~82038i));
    var var_2 = -var_0.x;
    let var_3 = Struct_1(func_3().x, ~reverseBits(arg_2.c.b), func_3().x, arg_3, vec4<bool>(arg_1 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_2.b.x * 351f)), true, func_2(_wgslsmith_mod_i32(countOneBits(var_1.x), ~(-16327i))), all(vec4<bool>(any(vec2<bool>(arg_2.a.e.x, false)), any(vec4<bool>(false, arg_2.a.e.x, false, false)), arg_2.a.e.x, false))));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -504f)));
    return Struct_3(Struct_1(~1u, var_3.b & vec4<u32>(arg_3 | 22723u, var_3.d >> (1u % 32u), _wgslsmith_mod_u32(11361u, 4294967295u), u_input.a), 9270u, func_3().x, !func_4(arg_3 < u_input.a, global1[_wgslsmith_index_u32(3535u, 5u)], ~var_3.b).c.e), ~(~reverseBits(firstTrailingBit(4294967295u))), func_1(~22803u).a.c);
}

fn func_7(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = abs(vec2<i32>(arg_0.x, arg_0.x));
    global0 = arg_2.c.b.wxz;
    global1 = array<Struct_4, 5>();
    var var_1 = ~_wgslsmith_mult_u32(~(~(~u_input.a)), 0u);
    var var_2 = countOneBits(~(-4366i));
    return func_4(true, func_1(~u_input.a), ~_wgslsmith_add_vec4_u32(max(func_6(arg_0.x, -683f, Struct_2(Struct_1(1u, vec4<u32>(0u, arg_2.c.a, u_input.a, global0.x), 22143u, 6178u, arg_2.a.e), vec2<f32>(1132f, 131f), Struct_1(0u, vec4<u32>(global0.x, arg_2.b, 4294967295u, arg_2.a.a), global0.x, arg_2.c.d, vec4<bool>(arg_2.c.e.x, true, false, true))), 14163u).a.b, vec4<u32>(1u, u_input.a, global0.x, 1u)), arg_2.a.b)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 5>();
    global1 = array<Struct_4, 5>();
    var var_0 = func_7(vec4<i32>(-58928i, ~(-countOneBits(2009i)), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-67486i, -2147483647i)), -vec2<i32>(-1i, -1i))), -1i), true, func_6(28518i, -294f, func_5(func_4(true, func_1(48277u), select(vec4<u32>(7627u, 80712u, 1u, global0.x), vec4<u32>(u_input.a, 49776u, global0.x, u_input.a), vec4<bool>(true, true, true, true)))), _wgslsmith_add_u32(0u, ~5374u & _wgslsmith_add_u32(u_input.a, 1u))));
    var var_1 = var_0.e.zyx;
    var var_2 = var_0.b;
    var var_3 = var_0.d;
    var var_4 = true;
    var var_5 = min(max(~var_2.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(32535u, u_input.a), global0.x)), ~u_input.a);
    var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-379f, _wgslsmith_f_op_f32(f32(-1f) * -1137f), func_4(var_0.e.x, func_1(22616u), _wgslsmith_add_vec4_u32(var_0.b, var_0.b)).b);
}


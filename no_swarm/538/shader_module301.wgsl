struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(91496u, 64945u, 5739u), vec3<u32>(4294967295u, 75545u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(1053u, 4294967295u, 0u), vec3<u32>(44605u, 1u, 4294967295u), vec3<u32>(4294967295u, 2444u, 9333u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(64669u, 4294967295u, 4294967295u), vec3<u32>(23361u, 0u, 50854u), vec3<u32>(1u, 2640u, 2609u), vec3<u32>(0u, 100887u, 1u), vec3<u32>(4294967295u, 9048u, 1u), vec3<u32>(27736u, 1u, 1u), vec3<u32>(32141u, 0u, 27693u), vec3<u32>(1u, 0u, 94377u), vec3<u32>(0u, 1u, 15362u), vec3<u32>(18406u, 57487u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(77457u, 1u, 4294967295u), vec3<u32>(4294967295u, 42111u, 16219u), vec3<u32>(18569u, 1u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32) -> i32 {
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    var var_0 = true;
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - -1643f)), ~(~(vec4<i32>(u_input.a.x, u_input.a.x, -15239i, arg_2) ^ vec4<i32>(9460i, arg_2, u_input.a.x, u_input.a.x))) >> (vec4<u32>(u_input.b, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), select(vec2<u32>(u_input.b, arg_1), vec2<u32>(arg_1, arg_1), vec2<bool>(true, true))), ~arg_1) % vec4<u32>(32u)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(1i), ~(vec2<u32>(arg_1, 88739u) ^ vec2<u32>(arg_1, u_input.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2177f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, -1462f, 492f))))), _wgslsmith_f_op_f32(exp2(arg_0)), -(vec4<i32>(u_input.a.x, arg_2, 0i, u_input.a.x) << (vec4<u32>(29920u, 58966u, u_input.b, u_input.b) % vec4<u32>(32u))) << (vec4<u32>(u_input.b & 1u, 22930u, ~u_input.b, arg_1 ^ u_input.b) % vec4<u32>(32u)), Struct_1(-(~(-3533i))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))), _wgslsmith_f_op_f32(step(1f, arg_0))));
    return _wgslsmith_mod_i32(select(-4253i, -34124i, ~var_1.c.a.c.x == 0u), var_1.c.c.x);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_4(arg_0, firstLeadingBit(min(arg_1, _wgslsmith_add_vec4_i32(select(arg_1, vec4<i32>(u_input.a.x, -1i, arg_1.x, -1i), vec4<bool>(false, false, false, true)), firstTrailingBit(vec4<i32>(1333i, 42575i, arg_1.x, arg_1.x))))), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(func_3(1283f, 4294967295u, -11137i)), max(~vec2<u32>(10284u, 75102u), vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2037f, -190f, arg_0, arg_0))))), _wgslsmith_f_op_f32(select(1f, -163f, u_input.a.x < u_input.a.x)), abs(vec4<i32>(32421i << (u_input.b % 32u), -arg_1.x, arg_1.x, arg_1.x)), Struct_1(i32(-1i) * -21915i), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1442f, arg_0) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -187f))))));
    let var_1 = vec3<u32>(u_input.b, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b), var_0.c.a.c.x), countOneBits(var_0.c.a.c))), ~u_input.b);
    let var_2 = u_input.b;
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    return firstTrailingBit(countOneBits(~1u));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -37939i, 1i, -47927i)), vec4<i32>(-14255i, -1i, arg_2.a, arg_2.a)) << (reverseBits(86348u) % 32u), -abs(min(u_input.a.x, 2147483647i))), 21348i);
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_0));
    global0 = array<vec3<u32>, 21>();
    let var_2 = true;
    var_0 = 0i;
    return Struct_2(select(!(!(!vec4<bool>(true, var_2, false, var_2))), vec4<bool>(!any(vec3<bool>(var_2, false, true)), ~u_input.b < ~u_input.b, select(all(vec2<bool>(var_2, var_2)), var_2, any(vec2<bool>(var_2, var_2))), var_2), vec4<bool>(!(var_2 & true), true, -247f >= arg_0, false)), Struct_1(abs(2147483647i)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(24632u, arg_1), min(vec2<u32>(arg_1, u_input.b), vec2<u32>(4294967295u, u_input.b))), min(vec2<u32>(arg_1, arg_1), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(arg_1, u_input.b)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, _wgslsmith_div_f32(-1543f, var_1), 1389f, _wgslsmith_f_op_f32(-727f + -668f)) * vec4<f32>(_wgslsmith_f_op_f32(-var_1), 1603f, _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(708f + arg_0))))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = min(_wgslsmith_add_vec2_u32(arg_0.a.c, ~(~(arg_0.a.c >> (vec2<u32>(arg_1, 65025u) % vec2<u32>(32u))))), (vec2<u32>(arg_3 << (arg_0.a.c.x % 32u), u_input.b) | _wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_1, u_input.b)), arg_0.a.c)) & arg_0.a.c);
    let var_1 = arg_0.a.b;
    var var_2 = arg_0.a.d.zx;
    let var_3 = vec3<u32>(arg_3, 1u, ~(~_wgslsmith_mod_u32(14841u & var_0.x, arg_3)));
    let var_4 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)))), firstLeadingBit(func_2(1170f, select(arg_0.c, vec4<i32>(var_1.a, 9768i, arg_2.x, -2147483647i), true & arg_0.a.a.x))), Struct_1(var_1.a));
    return var_4;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.d.x))), _wgslsmith_f_op_f32(min(arg_2.b, _wgslsmith_f_op_f32(arg_2.a.d.x - arg_2.b))), _wgslsmith_f_op_f32(-arg_2.a.d.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(666f, -1207f, -1926f))));
    let var_1 = arg_2.c.x;
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    return arg_2.c;
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_4) -> StorageBuffer {
    var var_0 = vec4<u32>(firstLeadingBit(~arg_3.c.a.c.x) ^ u_input.b, _wgslsmith_dot_vec3_u32(abs(global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec3<u32>(35301u, arg_2.c.a.c.x, _wgslsmith_clamp_u32(0u, 131u, arg_2.c.a.c.x) ^ u_input.b)), 19134u, _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, u_input.b), max(43949u, ~arg_1.c.a.c.x))));
    var var_1 = Struct_4(arg_1.a, vec4<i32>(~1i, reverseBits(u_input.a.x) >> (14696u % 32u), _wgslsmith_mod_i32(17502i, firstTrailingBit(2147483647i)), countOneBits(-1i)) >> (vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, arg_1.c.a.c.x, var_0.x), vec4<u32>(4294967295u, 4294967295u, u_input.b, arg_3.c.a.c.x)), _wgslsmith_mult_u32(~93086u, 1u), 11851u, _wgslsmith_div_u32(arg_2.c.a.c.x >> (6522u % 32u), ~arg_2.c.a.c.x)) % vec4<u32>(32u)), Struct_3(Struct_2(func_1(arg_2.c, firstLeadingBit(105477u), u_input.a.yz, 4294967295u).a, Struct_1(arg_3.b.x), min(arg_1.c.a.c, vec2<u32>(7623u, 0u)) >> ((vec2<u32>(1u, arg_2.c.a.c.x) ^ vec2<u32>(arg_2.c.a.c.x, var_0.x)) % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(f32(-1f) * -332f), arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - 596f)), min(arg_1.c.c, arg_3.b), arg_2.c.d, !arg_2.c.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_3.c.b)) - _wgslsmith_f_op_vec2_f32(trunc(arg_1.c.a.d.yx)))));
    var var_2 = ~_wgslsmith_add_i32(-(~u_input.a.x), u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_div_i32(-19875i, select(~min(-59685i, arg_2.c.d.a), 10899i, any(vec3<bool>(true, false, false)))));
    var var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.b.x, -73315i, 9359i), arg_3.b.ywy), -_wgslsmith_add_i32(1i, arg_3.b.x), 52850i), ~select(~(vec3<i32>(u_input.a.x, -2147483647i, 1i) & vec3<i32>(var_3.a, u_input.a.x, 0i)), -_wgslsmith_mult_vec3_i32(arg_1.b.wzw, vec3<i32>(16048i, 0i, var_1.c.c.x)), !arg_3.c.a.a.x & (arg_2.c.e.x | arg_3.c.e.x)));
    return StorageBuffer(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-arg_3.d.x))), _wgslsmith_f_op_f32(-arg_2.a)), ~(~vec4<u32>(arg_3.c.a.c.x, 4294967295u, 1u, u_input.b << (arg_2.c.a.c.x % 32u))), -min(var_4.zy, abs(vec2<i32>(2147483647i, 1i))), vec2<u32>(~arg_3.c.a.c.x, 1u), _wgslsmith_f_op_f32(max(arg_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b - 245f) - _wgslsmith_f_op_f32(abs(494f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(any(vec3<bool>(!all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)), true)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f * 1522f))), func_5(u_input.a, ~abs(vec2<i32>(u_input.a.x, 1i)), Struct_3(func_1(Struct_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(-1i), vec2<u32>(u_input.b, 72799u), vec4<f32>(-1976f, -2202f, -1026f, -573f)), -278f, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), Struct_1(44993i), vec4<bool>(false, false, true, false)), 14906u, u_input.a.zz, u_input.b), -582f, -vec4<i32>(u_input.a.x, 33306i, -68279i, 0i), func_1(Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(-22467i), vec2<u32>(223u, u_input.b), vec4<f32>(1000f, -245f, -1000f, -347f)), -227f, vec4<i32>(u_input.a.x, 56601i, -29600i, u_input.a.x), Struct_1(2147483647i), vec4<bool>(false, false, true, true)), 0u, vec2<i32>(6876i, u_input.a.x), u_input.b).b, func_1(Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(u_input.a.x), vec2<u32>(u_input.b, u_input.b), vec4<f32>(-338f, -1482f, -203f, 250f)), 1413f, vec4<i32>(u_input.a.x, u_input.a.x, 1i, 7052i), Struct_1(0i), vec4<bool>(true, false, false, true)), u_input.b, u_input.a.zx, u_input.b).a)), Struct_3(func_1(Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(61273i), vec2<u32>(85925u, 4294967295u), vec4<f32>(-1373f, 688f, -314f, -1000f)), -840f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -40181i), Struct_1(u_input.a.x), vec4<bool>(false, true, true, true)), u_input.b, vec2<i32>(u_input.a.x, 9504i) ^ u_input.a.xy, 1u), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 384f), _wgslsmith_f_op_f32(step(1014f, -1000f))), vec4<i32>(u_input.a.x, 1i, -12105i, _wgslsmith_div_i32(u_input.a.x, 16687i)), Struct_1(u_input.a.x), vec4<bool>(true, true, true, true)), vec2<f32>(-245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2443f, -1742f)) * 1837f))), Struct_4(1208f, vec4<i32>(func_5(vec3<i32>(21001i, u_input.a.x, -1i), vec2<i32>(u_input.a.x, u_input.a.x), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(u_input.a.x), vec2<u32>(1u, u_input.b), vec4<f32>(-1000f, 1012f, -495f, -202f)), -528f, vec4<i32>(7864i, -52623i, 2147483647i, 1i), Struct_1(33317i), vec4<bool>(false, false, false, false))).x, func_5(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), u_input.a.yx, Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(u_input.a.x), vec2<u32>(32402u, u_input.b), vec4<f32>(429f, 353f, -1201f, -1334f)), -1000f, vec4<i32>(u_input.a.x, -41156i, -2147483647i, u_input.a.x), Struct_1(1i), vec4<bool>(true, false, false, false))).x, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a.x, -14444i), -8309i), func_3(_wgslsmith_f_op_f32(f32(-1f) * -356f), ~u_input.b, -u_input.a.x)), Struct_3(Struct_2(vec4<bool>(true, true, false, true), func_1(Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(76833i), vec2<u32>(1u, u_input.b), vec4<f32>(1345f, -906f, -835f, -476f)), 771f, vec4<i32>(u_input.a.x, u_input.a.x, 48599i, 23068i), Struct_1(4898i), vec4<bool>(true, false, false, true)), 61675u, u_input.a.yx, 0u).b, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 25789u), vec2<u32>(39242u, 20384u)), vec4<f32>(-450f, -1000f, 147f, 1345f)), -1200f, vec4<i32>(~u_input.a.x, 2147483647i, i32(-1i) * -23637i, -2147483647i), func_1(Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(u_input.a.x), vec2<u32>(u_input.b, 4294967295u), vec4<f32>(-670f, -231f, 1261f, 469f)), 1000f, vec4<i32>(12972i, u_input.a.x, -2147483647i, 9198i), Struct_1(2147483647i), vec4<bool>(true, false, false, true)), u_input.b, u_input.a.yx ^ u_input.a.zx, u_input.b >> (1u % 32u)).b, vec4<bool>(any(vec2<bool>(true, false)), func_4(1177f, 4294967295u, Struct_1(u_input.a.x)).a.x, true, u_input.b <= 36333u)), vec2<f32>(1f, 1f)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)) - 1f), ~vec4<i32>(func_1(Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(0i), vec2<u32>(u_input.b, u_input.b), vec4<f32>(-1089f, 347f, 2893f, -1532f)), 768f, vec4<i32>(u_input.a.x, u_input.a.x, 1i, -1i), Struct_1(5015i), vec4<bool>(true, true, false, false)), u_input.b, u_input.a.zz, 14018u).b.a, u_input.a.x, u_input.a.x >> (u_input.b % 32u), ~u_input.a.x), Struct_3(Struct_2(vec4<bool>(false, true, true, false), func_4(-1232f, 75635u, Struct_1(-2147483647i)).b, vec2<u32>(u_input.b, 18201u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 172f, 807f, -798f) + vec4<f32>(702f, -275f, 712f, -1643f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(645f, 690f))), ~(vec4<i32>(-1i, u_input.a.x, -19756i, u_input.a.x) >> (vec4<u32>(u_input.b, 8388u, 4294967295u, u_input.b) % vec4<u32>(32u))), Struct_1(-40036i), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), vec2<f32>(213f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1025f, -977f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b == 27967u)))));
}


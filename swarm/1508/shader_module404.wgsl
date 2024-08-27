struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(min(-1324f, arg_0.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(370f * 1116f)))), 1f), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, u_input.b), _wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(11080u, u_input.b), false), min(vec2<u32>(u_input.a, 851u), vec2<u32>(u_input.a, 4294967295u))))), abs(~(~(~380u))), vec3<u32>(_wgslsmith_div_u32(countOneBits(u_input.b), ~u_input.b), ~(~u_input.a), ~u_input.b));
    var var_1 = Struct_2(Struct_1(var_0.b.x, select(-(vec2<i32>(1i, 1i) << (var_0.b % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(16624i, -1i), vec2<i32>(-2729i, -1i), vec2<i32>(1i, -21432i)), -vec2<i32>(-1i, -2147483647i)), false), !vec3<bool>(true, false, var_0.d.x < 49340u), 4294967295u, ~vec4<u32>(u_input.b, 0u, 0u, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(-1000f))), Struct_1(~1u, select(vec2<i32>(~(-8265i), 25397i), vec2<i32>(1i, 1i), vec2<bool>(true, 0u != var_0.b.x)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(any(vec2<bool>(true, false)), true, true)), countOneBits(1u), _wgslsmith_div_vec4_u32(max(vec4<u32>(19435u, 1u, var_0.c, u_input.b), vec4<u32>(8537u, u_input.b, u_input.a, 14667u)), ~vec4<u32>(u_input.a, 32204u, 1u, var_0.c)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 33600u, u_input.b, var_0.d.x), vec4<u32>(var_0.d.x, var_0.d.x, 4294967295u, u_input.a))), Struct_1(var_0.b.x, vec2<i32>(-77933i, firstLeadingBit(-28533i)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), 35014u, select(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, var_0.d.x, 1u, 15543u), vec4<u32>(108306u, var_0.b.x, 4294967295u, var_0.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 40547u, 1u, u_input.b), vec4<u32>(4294967295u, u_input.a, u_input.a, var_0.c), vec4<u32>(0u, var_0.c, u_input.a, 1u)), vec4<bool>(false, true, false, false)), ~min(vec4<u32>(u_input.b, var_0.b.x, 18334u, var_0.c), vec4<u32>(var_0.d.x, 0u, u_input.b, 2899u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true))));
    var var_2 = Struct_5(var_1.a.b);
    var var_3 = false;
    var var_4 = vec4<bool>(((_wgslsmith_dot_vec4_u32(vec4<u32>(76279u, var_1.d.d, var_0.d.x, 1u), vec4<u32>(var_0.b.x, 24137u, 47764u, 4294967295u)) < _wgslsmith_mult_u32(var_1.a.e.x, var_1.d.e.x)) | true) & var_1.a.c.x, false, !select(!var_1.d.c.x, var_1.a.c.x, false) || var_1.c.c.x, any(vec4<bool>(any(vec4<bool>(var_1.c.c.x, var_1.d.c.x, true, false)) & var_1.a.c.x, true, var_1.a.c.x, true | var_1.a.c.x)));
    return 2042f;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = arg_1;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(~arg_0.a.d, 1u), 49041u, max(1u, 97021u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1556f * 907f), arg_0.b, _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 2123f) * _wgslsmith_f_op_f32(-arg_0.b)), arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(325f, -645f, arg_0.b), vec3<f32>(arg_0.b, 1710f, 1060f))), _wgslsmith_f_op_f32(abs(arg_0.b)))))));
    var_0 = true && arg_1;
    var var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.d.b.x << ((arg_2 ^ u_input.a) % 32u), -reverseBits(-2147483647i)), arg_0.d.b), arg_0.d.b);
    return -4845i;
}

fn func_4(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = ~reverseBits(1u);
    var_0 = 20652u;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<f32>(1889f, 318f, 1810f), vec3<f32>(-1041f, 1997f, -917f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1494f), _wgslsmith_f_op_f32(min(-1719f, _wgslsmith_f_op_f32(-567f * -576f))), true)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(f32(-1f) * -744f))), -1343f)));
    let var_2 = vec2<i32>(_wgslsmith_div_i32(arg_0.x, arg_0.x), arg_0.x);
    var var_3 = Struct_2(Struct_1(abs(1u), select(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_2, var_2), -vec2<i32>(1i, arg_0.x)), _wgslsmith_clamp_vec2_i32(var_2, ~vec2<i32>(arg_0.x, arg_0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, var_2.x), vec2<i32>(arg_0.x, arg_0.x))), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec3<bool>(select(true, true, all(vec3<bool>(false, true, true))), !any(vec2<bool>(false, false)), select(select(true, true, true), u_input.b != u_input.a, true)), _wgslsmith_clamp_u32(firstTrailingBit(~16192u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b) ^ vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 6147u) ^ vec2<u32>(u_input.b, u_input.a)), u_input.a >> (~11918u % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(27131u, 0u, 119790u, 18639u), ~vec4<u32>(1u, u_input.b, u_input.a, 37989u), min(vec4<u32>(41280u, 0u, 75524u, u_input.b), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) << (reverseBits(vec4<u32>(22711u, 9267u, 80407u, u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(round(-573f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1419f * _wgslsmith_f_op_f32(step(var_1.x, 260f)))))), Struct_1(~_wgslsmith_mod_u32(u_input.b, 2634u) | 4294967295u, select(max(~vec2<i32>(var_2.x, -1i), arg_0), arg_0, vec2<bool>(false, all(vec2<bool>(true, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), all(vec4<bool>(false, true, true, false))), 66939u, _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b), u_input.b, 48674u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(2871u, u_input.a, 16209u, u_input.b), vec4<u32>(2068u, 4294967295u, 1u, u_input.b), vec4<u32>(2701u, u_input.b, u_input.a, 26176u)))), Struct_1(u_input.a, -arg_0, vec3<bool>(all(vec2<bool>(true, true)), true, all(vec4<bool>(false, true, false, false))), ~u_input.a, ~firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.a))));
    return select(var_3.c.c, select(var_3.d.c, vec3<bool>(true, true, true), select(select(!vec3<bool>(var_3.a.c.x, var_3.c.c.x, false), !var_3.c.c, vec3<bool>(var_3.a.c.x, false, var_3.c.c.x)), vec3<bool>(select(var_3.c.c.x, var_3.d.c.x, var_3.c.c.x), false, true), select(var_3.a.c, !var_3.c.c, var_3.c.c.x))), vec3<bool>(all(vec4<bool>(true && var_3.d.c.x, all(var_3.a.c.xx), var_1.x >= var_1.x, var_3.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(502f, -249f))) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), false));
}

fn func_1() -> Struct_1 {
    var var_0 = 4294967295u;
    var_0 = 1433u;
    var var_1 = func_4(vec2<i32>(-1i | func_2(Struct_2(Struct_1(3221u, vec2<i32>(5678i, 2147483647i), vec3<bool>(true, false, true), 1u, vec4<u32>(u_input.b, 1u, u_input.a, 1u)), 120f, Struct_1(1u, vec2<i32>(-2147483647i, -2147483647i), vec3<bool>(true, false, true), 1u, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), Struct_1(u_input.a, vec2<i32>(8312i, -2147483647i), vec3<bool>(true, false, true), u_input.a, vec4<u32>(72835u, 4294967295u, u_input.b, 6358u))), true, u_input.b), reverseBits(_wgslsmith_div_i32(-7270i, -17420i))));
    var var_2 = !var_1.x;
    let var_3 = abs(vec4<u32>(1u, 77744u, ~(u_input.b ^ abs(u_input.a)), 0u));
    return Struct_1(var_3.x, select(select(vec2<i32>(_wgslsmith_clamp_i32(1i, 14548i, 36475i), ~(-1i)), vec2<i32>(1i, i32(-1i) * -46210i), func_4(vec2<i32>(2147483647i, -1i) >> (var_3.xy % vec2<u32>(32u))).yz), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 0i, -36455i), vec4<i32>(2147483647i, -1i, -12024i, 0i)), 1i), vec2<bool>(true, var_1.x)), !(!(!(!vec3<bool>(var_1.x, false, var_1.x)))), _wgslsmith_div_u32(var_3.x, var_3.x), vec4<u32>(~firstTrailingBit(u_input.a | 4294967295u), ~(u_input.b | _wgslsmith_mod_u32(u_input.a, u_input.a)), ~var_3.x, _wgslsmith_add_u32(9586u, var_3.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    var var_0 = all(select(!vec4<bool>(true, arg_1.a.c.x, false, !arg_1.c.c.x), select(!(!vec4<bool>(arg_0.d.c.x, arg_1.a.c.x, true, arg_1.a.c.x)), vec4<bool>(arg_0.a.c.x, false, arg_1.a.c.x, any(vec3<bool>(true, arg_0.c.c.x, true))), !select(vec4<bool>(arg_1.c.c.x, false, false, arg_0.c.c.x), vec4<bool>(false, true, true, false), vec4<bool>(arg_1.a.c.x, true, arg_1.a.c.x, arg_1.a.c.x))), !all(vec4<bool>(arg_1.c.c.x, false, arg_1.c.c.x, arg_1.a.c.x))));
    var_0 = false;
    var_0 = !(!(!(~0i > func_1().b.x)));
    var_0 = true || arg_0.d.c.x;
    return Struct_4(~(~(~20114u)), Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_1.b, -606f, 1245f), vec4<f32>(-813f, arg_0.b, arg_0.b, 1620f), vec4<bool>(arg_0.c.c.x, true, true, arg_0.c.c.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, -526f, arg_1.b, 1112f), vec4<f32>(1074f, arg_1.b, arg_1.b, -1065f), vec4<bool>(false, arg_1.a.c.x, arg_1.a.c.x, true)))))), ~vec2<u32>(arg_0.a.d & 86163u, 7032u), 0u, arg_0.c.e.wzw), Struct_2(Struct_1(_wgslsmith_clamp_u32(min(85120u, 4294967295u), 0u >> (arg_0.c.d % 32u), ~16189u), arg_0.c.b, !arg_0.d.c, 1u, vec4<u32>(countOneBits(0u), u_input.b << (u_input.a % 32u), _wgslsmith_dot_vec2_u32(arg_0.c.e.zw, arg_0.d.e.xw), ~arg_1.a.e.x)), _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b)))), Struct_1(16068u, select(_wgslsmith_div_vec2_i32(arg_1.c.b, vec2<i32>(arg_1.d.b.x, arg_0.c.b.x)), -arg_0.a.b, arg_1.d.c.yz), vec3<bool>(!arg_0.c.c.x, !arg_1.d.c.x, true), ~select(arg_0.d.a, arg_1.c.d, false), vec4<u32>(arg_0.d.e.x, ~arg_1.c.a, min(u_input.b, arg_0.d.d), ~arg_1.d.a)), Struct_1(abs(~4294967295u), ~vec2<i32>(2147483647i, arg_1.c.b.x), vec3<bool>(false, arg_0.d.c.x, func_4(arg_0.d.b).x), 23621u, ~vec4<u32>(25754u, u_input.a, 1u, 4294967295u))));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(u_input.b, _wgslsmith_clamp_vec2_i32(arg_2.xz, arg_2.xy, countOneBits(arg_0.c.d.b)) | vec2<i32>(reverseBits(arg_2.x), _wgslsmith_sub_i32(0i, -2147483647i)), arg_0.c.d.c, select(countOneBits(abs(11189u)), 1u, arg_0.c.a.c.x), arg_0.c.d.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) + -1097f), arg_0.c.c, arg_0.c.c);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1206f * arg_0.c.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)))) + arg_0.c.b);
    let var_2 = vec4<bool>(arg_0.c.c.c.x, all(var_0.a.c), !all(func_4(~arg_0.c.d.b)), abs(reverseBits(u_input.b) >> ((var_0.a.e.x ^ arg_0.c.a.e.x) % 32u)) == 52070u);
    let var_3 = 1094f;
    var_0 = Struct_2(Struct_1(~abs(23824u), vec2<i32>(arg_2.x, _wgslsmith_dot_vec3_i32(~arg_2.xwx, -arg_2.xxy)), var_2.wzz, ~arg_1, firstLeadingBit(max(arg_0.c.d.e, ~vec4<u32>(0u, 4294967295u, 42199u, 0u)))), -1346f, var_0.c, arg_0.c.d);
    return arg_0.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(u_input.b, vec2<i32>(i32(-1i) * -20992i, 1i), vec3<bool>(true, true, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b) | vec3<u32>(3935u, u_input.a, u_input.a), ~vec3<u32>(u_input.b, 30944u, 26473u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a, 0u, 0u)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 32332u, 0u, u_input.b), vec4<u32>(41965u, u_input.a, 0u, 27323u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-158f, -1000f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(193f, 1848f)), -391f, false))), func_6(func_5(Struct_2(func_1(), -2323f, Struct_1(4294967295u, vec2<i32>(2147483647i, 2147483647i), vec3<bool>(true, false, true), u_input.a, vec4<u32>(22183u, u_input.b, u_input.a, u_input.a)), func_1()), Struct_2(Struct_1(u_input.b, vec2<i32>(1i, -1i), vec3<bool>(false, false, false), 4294967295u, vec4<u32>(u_input.a, 4294967295u, 6234u, u_input.a)), _wgslsmith_div_f32(1000f, -180f), func_1(), Struct_1(4294967295u, vec2<i32>(13783i, -62388i), vec3<bool>(true, false, true), 4294967295u, vec4<u32>(61319u, u_input.b, u_input.b, u_input.b)))), _wgslsmith_add_u32(0u, ~18798u), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-2147483647i), 1i, _wgslsmith_add_i32(-1i, -16161i), _wgslsmith_dot_vec4_i32(vec4<i32>(4364i, -1i, 4008i, 0i), vec4<i32>(49724i, -18324i, -2147483647i, -1i))), vec4<i32>(67802i, -41048i, 2147483647i, -41756i) >> ((vec4<u32>(0u, 1u, u_input.a, u_input.b) << (vec4<u32>(39551u, 4294967295u, 3532u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))), func_6(Struct_4(36458u, Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1278f, 813f, 1000f)), vec2<u32>(1u, 1u), u_input.a, ~vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_2(func_5(Struct_2(Struct_1(u_input.a, vec2<i32>(-47358i, 37557i), vec3<bool>(true, false, false), u_input.a, vec4<u32>(11606u, 4294967295u, 22019u, u_input.a)), -1788f, Struct_1(84375u, vec2<i32>(1i, 9082i), vec3<bool>(false, true, false), 4294967295u, vec4<u32>(28231u, 0u, 104608u, 0u)), Struct_1(u_input.a, vec2<i32>(30339i, 1669i), vec3<bool>(true, false, false), u_input.a, vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b))), Struct_2(Struct_1(0u, vec2<i32>(-1i, -2147483647i), vec3<bool>(false, false, false), 4294967295u, vec4<u32>(u_input.b, u_input.a, 4294967295u, 13828u)), -120f, Struct_1(u_input.a, vec2<i32>(0i, 1i), vec3<bool>(true, false, false), u_input.a, vec4<u32>(u_input.b, u_input.b, 1u, u_input.a)), Struct_1(u_input.b, vec2<i32>(1i, -21144i), vec3<bool>(false, false, true), u_input.b, vec4<u32>(0u, u_input.b, 53912u, 1u)))).c.c, _wgslsmith_f_op_f32(-366f * -336f), Struct_1(u_input.a, vec2<i32>(-38485i, 2147483647i), vec3<bool>(false, false, false), 0u, vec4<u32>(u_input.b, u_input.a, u_input.b, 105636u)), func_6(Struct_4(u_input.a, Struct_3(vec4<f32>(-260f, 293f, -1121f, -1000f), vec2<u32>(0u, 1u), 0u, vec3<u32>(u_input.a, u_input.a, u_input.b)), Struct_2(Struct_1(49880u, vec2<i32>(-30865i, -21621i), vec3<bool>(false, true, true), 14963u, vec4<u32>(0u, u_input.a, u_input.b, u_input.a)), -448f, Struct_1(1u, vec2<i32>(-1i, -28155i), vec3<bool>(true, true, true), 81259u, vec4<u32>(8744u, 1u, 0u, 0u)), Struct_1(u_input.b, vec2<i32>(0i, 0i), vec3<bool>(false, true, true), 27295u, vec4<u32>(1u, 0u, u_input.b, u_input.b)))), 1u, vec4<i32>(-2147483647i, -1i, 2147483647i, 1i)))), 74278u, vec4<i32>(1i, _wgslsmith_div_i32(firstLeadingBit(19014i), 10288i), max(~1i, 23758i), ~1i)));
    var var_1 = select(vec4<u32>(92647u, 2451u, u_input.a, u_input.b), var_0.c.e, select(select(vec4<bool>(true, var_0.a.c.x, true, false), select(vec4<bool>(var_0.c.c.x, false, var_0.a.c.x, false), select(vec4<bool>(var_0.a.c.x, var_0.c.c.x, false, true), vec4<bool>(var_0.c.c.x, true, var_0.d.c.x, false), vec4<bool>(false, var_0.d.c.x, true, false)), !vec4<bool>(var_0.c.c.x, var_0.d.c.x, false, true)), select(select(vec4<bool>(false, true, var_0.c.c.x, var_0.a.c.x), vec4<bool>(var_0.c.c.x, true, var_0.a.c.x, false), var_0.a.c.x), vec4<bool>(true, var_0.a.c.x, true, var_0.c.c.x), vec4<bool>(false, true, false, var_0.a.c.x))), vec4<bool>(true && var_0.a.c.x, all(func_1().c), true, true), false));
    var var_2 = vec2<u32>(~var_1.x << (50246u % 32u), 4294967295u);
    let var_3 = Struct_5(vec2<i32>(-1i, -4102i));
    var var_4 = vec3<i32>(~firstLeadingBit(abs(-var_0.a.b.x)), -(~(_wgslsmith_mod_i32(1i, var_3.a.x) >> (func_6(Struct_4(var_1.x, Struct_3(vec4<f32>(-1959f, var_0.b, -1094f, -188f), var_0.a.e.zx, 1u, vec3<u32>(79268u, 1u, var_0.a.e.x)), Struct_2(Struct_1(u_input.a, vec2<i32>(var_0.d.b.x, 25718i), var_0.d.c, u_input.b, vec4<u32>(var_1.x, var_0.d.e.x, 4294967295u, u_input.a)), var_0.b, var_0.c, var_0.c)), 33857u, vec4<i32>(var_3.a.x, 20i, 2147483647i, var_3.a.x)).e.x % 32u))), -var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(func_6(Struct_4(~0u, func_5(var_0, Struct_2(var_0.a, 1000f, Struct_1(0u, vec2<i32>(-2147483647i, var_4.x), var_0.c.c, 35368u, vec4<u32>(24380u, u_input.b, 4564u, var_2.x)), var_0.d)).b, func_5(var_0, Struct_2(Struct_1(14365u, vec2<i32>(1i, var_0.c.b.x), var_0.a.c, var_2.x, var_0.a.e), var_0.b, var_0.d, var_0.a)).c), u_input.b, ~vec4<i32>(var_4.x, -2147483647i, 0i, var_3.a.x)).b.x, (6172i ^ var_3.a.x) & _wgslsmith_add_i32(54194i, var_3.a.x)), vec3<u32>(u_input.a, func_6(Struct_4(~42715u, Struct_3(vec4<f32>(678f, 1084f, 776f, var_0.b), var_0.a.e.wz, u_input.a, vec3<u32>(var_1.x, 25194u, var_1.x)), func_5(Struct_2(Struct_1(27139u, vec2<i32>(34777i, var_4.x), var_0.c.c, 75719u, vec4<u32>(0u, var_2.x, var_2.x, 0u)), -261f, var_0.c, var_0.a), var_0).c), 0u, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a.x, var_4.x, 0i, 8772i), vec4<i32>(var_4.x, var_3.a.x, var_3.a.x, -12441i)))).e.x, ~u_input.b));
}


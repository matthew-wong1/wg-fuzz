struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 4>;

var<private> global2: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    var var_0 = min(firstLeadingBit(u_input.a), 27582u);
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(i32(-1i) * -29371i) >> (_wgslsmith_sub_u32(u_input.a << (arg_1.x % 32u), u_input.a ^ u_input.a) % 32u), arg_0, arg_0 | 1i, u_input.b.x), -vec4<i32>(arg_0, 51477i, -1i, _wgslsmith_add_i32(arg_0, 0i)) & vec4<i32>(~(~(-371i)), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -1i), u_input.b)), -(~(-16423i))));
    var var_2 = ~abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.zz, arg_1.zy), arg_1.xz), ~(4294967295u ^ u_input.a)));
    let var_3 = _wgslsmith_dot_vec2_u32(reverseBits(min(vec2<u32>(~0u, 0u), arg_1.xy)), ~vec2<u32>(0u, _wgslsmith_sub_u32(u_input.a << (21503u % 32u), abs(u_input.a))));
    let var_4 = Struct_2(~(~(min(var_3, u_input.a) >> (_wgslsmith_clamp_u32(0u, u_input.a, var_3) % 32u))));
    return (_wgslsmith_sub_i32(~(-u_input.d), 1i) | ~u_input.c) << (~var_3 % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = u_input.d != ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2147483647i, 0i), vec3<i32>(u_input.b.x, u_input.d, u_input.b.x)), vec3<i32>(u_input.c, 10152i, u_input.c) & vec3<i32>(u_input.d, -1i, u_input.d)), u_input.d);
    let var_1 = Struct_1(arg_2.x, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-348f, 1424f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2399f + 1349f), 1706f)), arg_2.x)));
    var var_2 = func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b.x, u_input.c, u_input.c), vec3<i32>(-2147483647i, u_input.d, 43418i)), vec3<i32>(_wgslsmith_mod_i32(18348i, -18255i), ~(-56462i), -1i)), reverseBits(vec3<u32>(_wgslsmith_mult_u32(0u, 24154u), arg_0.a, ~arg_1))) == u_input.c;
    global1 = array<Struct_2, 4>();
    let var_3 = firstTrailingBit(vec3<u32>(~(~arg_1), 1u, ~reverseBits(arg_1))) ^ vec3<u32>(arg_0.a, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.a, ~7249u), vec2<u32>(reverseBits(4969u), ~arg_0.a)));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2069f)))), _wgslsmith_mult_i32(u_input.d, 27530i), vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 277f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -432f))), arg_0)), _wgslsmith_f_op_f32(-arg_0), 529f));
    global2 = -204f;
    global1 = array<Struct_2, 4>();
    let var_1 = var_0.c.yyy;
    global1 = array<Struct_2, 4>();
    return vec4<f32>(-893f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_div_f32(-720f, var_1.x))))), -105f);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.c.x), i32(-1i) * -(~func_3(2147483647i, vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c - _wgslsmith_f_op_vec4_f32(-arg_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -577f, -303f, arg_1.a) * vec4<f32>(156f, arg_1.c.x, 484f, 1426f))))));
    global0 = countOneBits(arg_2.x >> (_wgslsmith_mult_u32(~arg_2.x, 4294967295u) % 32u));
    var var_1 = func_2(global1[_wgslsmith_index_u32(~firstLeadingBit(arg_2.x), 4u)], _wgslsmith_mod_u32(~u_input.a, ~_wgslsmith_clamp_u32(~1u, u_input.a, u_input.a << (71450u % 32u))), arg_1.c.yxw);
    let var_2 = ~vec3<u32>(1u, 1u, var_1.a);
    let var_3 = Struct_2(var_2.x);
    return var_3;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = func_2(Struct_2(u_input.a), select(func_2(func_5(true, Struct_1(719f, 27787i, vec4<f32>(323f, -605f, 1000f, 1000f)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 130194u)), arg_1.www), arg_0.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, 331f, 237f))))).a, 52716u, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -839f, -1911f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1110f, 1127f, 445f), vec3<f32>(-1000f, -1293f, -124f)))))));
    var var_1 = ~(~((vec2<i32>(0i, 53618i) ^ u_input.b) | ~u_input.b)) << (select(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 0u) & var_0.a, _wgslsmith_mult_u32(~58306u, ~u_input.a)), _wgslsmith_add_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_0.a, arg_0.a)), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), reverseBits(vec2<u32>(var_0.a, 4294967295u)))), any(select(select(vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1, arg_1.x), arg_1, all(arg_1)))) % vec2<u32>(32u));
    let var_2 = ~min(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.a, 1u), var_0.a | 63381u), func_2(func_5(true, Struct_1(163f, 0i, vec4<f32>(-782f, 735f, -622f, -727f)), vec2<u32>(arg_0.a, var_0.a), arg_1.xxx), 63511u << (0u % 32u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-348f, -1000f, -2245f), vec3<f32>(-392f, -2110f, -1000f)))).a, ~(~arg_0.a)));
    var_1 = u_input.b;
    var var_3 = Struct_1(1000f, abs(var_1.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(696f, _wgslsmith_f_op_f32(f32(-1f) * -1341f), 1f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1473f * 207f), _wgslsmith_f_op_f32(-800f + 492f), _wgslsmith_f_op_f32(trunc(766f)), _wgslsmith_f_op_f32(round(-373f)))))));
    return Struct_2(arg_0.a);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = u_input.d;
    let var_1 = func_6(func_5(true, Struct_1(1f, -_wgslsmith_sub_i32(-16612i, u_input.c), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(1000f * 626f), func_2(arg_0, arg_0.a, vec3<f32>(-618f, -319f, -199f)), _wgslsmith_mod_u32(54667u, arg_0.a)))), abs(firstLeadingBit(~vec2<u32>(6481u, arg_0.a))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false)), vec4<bool>(false, all(vec2<bool>(false, false)), true, true), vec4<bool>(true, true, true, true)));
    var var_2 = 1u;
    var_0 = u_input.c;
    var_0 = min(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b, ~u_input.b, u_input.b), u_input.b)) ^ countOneBits(~(-_wgslsmith_mod_i32(-2147483647i, -1527i)));
    return 1367f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(max(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-907f, -881f)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) - _wgslsmith_f_op_f32(func_1(Struct_2(1u)))), 446f)) - _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(17470u, u_input.a), 4u)], ~(~(~22642u)))).x);
    let var_0 = vec4<u32>(~func_6(func_5(all(vec3<bool>(false, true, false)), Struct_1(-1000f, u_input.d, vec4<f32>(724f, 1091f, 528f, -232f)), vec2<u32>(0u, u_input.a) ^ vec2<u32>(47135u, 4294967295u), vec3<bool>(true, true, true)), vec4<bool>(false, true, u_input.a != u_input.a, any(vec4<bool>(true, false, false, false)))).a, reverseBits(u_input.a | 4294967295u), 53611u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 74353u) << (u_input.a % 32u));
    global1 = array<Struct_2, 4>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(~_wgslsmith_mod_u32(34630u, 16617u)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(-422f, global1[_wgslsmith_index_u32(~1u, 4u)], 44459u)).x));
    global1 = array<Struct_2, 4>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -199f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -1113f)))), Struct_2(firstLeadingBit(u_input.a)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 1u), func_6(Struct_2(25405u), vec4<bool>(false, false, false, true)).a))).xzz, -_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, firstLeadingBit(u_input.b.x)), u_input.b.x), func_5(any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(func_1(func_2(Struct_2(u_input.a), var_0.x, vec3<f32>(1392f, -2374f, 2150f)))), firstTrailingBit(u_input.c), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(max(-2557f, -1817f)), Struct_2(u_input.a), ~var_0.x))), vec2<u32>(_wgslsmith_mod_u32(~0u, 1u), ~(~var_0.x)), select(vec3<bool>(any(vec3<bool>(true, false, true)), true, 25472i > u_input.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -2147483647i > u_input.c), true)).a, min(vec3<u32>(var_0.x | (var_0.x & 35595u), reverseBits(abs(30353u)), ~1u), var_0.xzy));
}


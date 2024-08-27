struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> vec2<u32> {
    let var_0 = abs(~arg_1.d.www);
    let var_1 = ~_wgslsmith_mult_vec4_i32(countOneBits(select(~vec4<i32>(arg_1.c.d, 30784i, 0i, 0i), vec4<i32>(-1i, arg_0.b.b, arg_1.a.b.b, arg_1.a.b.b), any(arg_2))), (vec4<i32>(0i, -470i, arg_3, arg_0.b.d) >> (vec4<u32>(0u, 0u, 69209u, 15925u) % vec4<u32>(32u))) & ~max(vec4<i32>(global0[_wgslsmith_index_u32(43640u, 18u)], u_input.e.x, u_input.d.x, -1i), vec4<i32>(arg_1.a.b.d, global0[_wgslsmith_index_u32(0u, 18u)], arg_1.c.d, arg_1.a.b.b)));
    let var_2 = !arg_1.c.a;
    var var_3 = arg_0;
    var var_4 = false;
    return ~(~(~var_0.zz) | min(select(~var_0.yy, _wgslsmith_mult_vec2_u32(u_input.b.yz, vec2<u32>(var_0.x, 0u)), select(vec2<bool>(var_2, arg_0.b.a), vec2<bool>(true, arg_2.x), true)), vec2<u32>(select(var_3.a.x, 0u, var_3.b.a), firstTrailingBit(1u))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<i32, 18>();
    let var_0 = 2147483647i;
    global0 = array<i32, 18>();
    var var_1 = Struct_4(Struct_2(func_3(Struct_3(abs(u_input.b.xx), Struct_1(true, 0i, 585f, global0[_wgslsmith_index_u32(u_input.b.x, 18u)])), Struct_4(Struct_2(vec2<u32>(u_input.a, 46092u), Struct_1(true, 2147483647i, -493f, -36719i)), _wgslsmith_f_op_f32(383f + 268f), Struct_1(arg_0.x, var_0, -469f, -24102i), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), !(!vec3<bool>(false, false, arg_0.x)), -global0[_wgslsmith_index_u32(21319u, 18u)] >> (u_input.a % 32u)), Struct_1(false, 9457i, _wgslsmith_f_op_f32(max(-776f, -177f)), ~var_0 ^ 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f)))), Struct_1(false, max(0i << (~u_input.b.x % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -633f))), u_input.e.x), _wgslsmith_sub_vec4_u32(u_input.b, max(firstLeadingBit(vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x)), abs(vec4<u32>(32251u, u_input.a, 1u, u_input.a) >> (u_input.b % vec4<u32>(32u))))));
    let var_2 = -307f;
    return Struct_1(true, global0[_wgslsmith_index_u32(max(~(~countOneBits(39500u)), var_1.d.x), 18u)], _wgslsmith_f_op_f32(f32(-1f) * -416f), ~(-1i));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_4(Struct_2(vec2<u32>(arg_2.x, u_input.b.x), Struct_1(true, -13520i, 291f, ~2147483647i)), _wgslsmith_div_f32(590f, arg_0.b.c), Struct_1(arg_0.b.a, -1i, 659f, u_input.c), arg_1);
    var var_1 = _wgslsmith_f_op_f32(max(arg_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c - _wgslsmith_f_op_f32(ceil(-906f)))))));
    var var_2 = Struct_3(vec2<u32>(arg_1.x, _wgslsmith_sub_u32(59573u, arg_2.x)), Struct_1(false, max(var_0.c.b | 2147483647i, -19758i << (var_0.a.a.x % 32u)) | (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.d, -1i, u_input.d.x, global0[_wgslsmith_index_u32(var_0.d.x, 18u)]), vec4<i32>(-20701i, -16610i, arg_0.b.d, global0[_wgslsmith_index_u32(arg_1.x, 18u)])) << (44038u % 32u)), -885f, select(19502i, ~1i, true)));
    let var_3 = -1395f;
    var_1 = -1000f;
    return _wgslsmith_f_op_f32(trunc(var_0.c.c));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> u32 {
    global0 = array<i32, 18>();
    var var_0 = ~vec3<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_div_u32(max(arg_1.x, arg_2), ~0u), arg_2), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(0u, arg_2) ^ reverseBits(arg_1.x)));
    var_0 = _wgslsmith_sub_vec3_u32(~u_input.b.wyw, _wgslsmith_add_vec3_u32(u_input.b.wzy << (u_input.b.yyz % vec3<u32>(32u)), u_input.b.xww & u_input.b.wwz) ^ select(select(~vec3<u32>(4294967295u, 3740u, 23222u), vec3<u32>(10345u, u_input.a, u_input.a), true), u_input.b.xxw, all(vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_div_vec4_u32(u_input.b | vec4<u32>(20357u, u_input.b.x, select(~arg_1.x, 4294967295u, true), u_input.a), ~firstLeadingBit(vec4<u32>(var_0.x & arg_2, ~56364u, 66874u >> (1u % 32u), var_0.x)));
    var_1 = abs(u_input.b);
    return ~_wgslsmith_div_u32(firstTrailingBit(select(var_0.x, 0u, false)), var_0.x) << (~func_3(Struct_3(vec2<u32>(16656u, arg_1.x), Struct_1(false, u_input.d.x, arg_3, 1i)), Struct_4(Struct_2(u_input.b.ww, Struct_1(false, 0i, 515f, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(vec2<bool>(true, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(158436u, arg_1.x, u_input.b.x, 43755u), u_input.b, vec4<u32>(u_input.a, 51310u, 0u, 1u))), vec3<bool>(true, true, all(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(0u, 1u, 0u)), 18u)]).x % 32u);
}

fn func_1() -> Struct_4 {
    global0 = array<i32, 18>();
    var var_0 = _wgslsmith_mod_u32(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(98556u, u_input.b.x, 0u, 1u), u_input.b)) >> (((_wgslsmith_mod_u32(53660u, u_input.b.x) >> (30687u % 32u)) >> (~(~4294967295u) % 32u)) % 32u), u_input.a);
    var_0 = ~func_5(_wgslsmith_div_f32(-1000f, -1000f), min(vec2<u32>(u_input.b.x, 1u) & abs(vec2<u32>(u_input.a, 15211u)), u_input.b.yy), u_input.b.x | 0u, _wgslsmith_f_op_f32(func_4(Struct_3(select(u_input.b.zy, vec2<u32>(u_input.a, 0u), vec2<bool>(true, true)), func_2(vec2<bool>(true, false))), vec4<u32>(1u & u_input.a, 21656u, u_input.b.x, ~4294967295u), u_input.b.zyw >> (vec3<u32>(65208u, u_input.b.x, u_input.a) % vec3<u32>(32u)))));
    var var_1 = ~2104u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, -588f, false)))) + _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(275f - -534f), 847f) + _wgslsmith_f_op_f32(-1530f + _wgslsmith_f_op_f32(select(-844f, 180f, false)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1338f, -425f)) * 598f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1502f + -376f), _wgslsmith_f_op_f32(round(-1036f)))), select(true, true, true)))));
    return Struct_4(Struct_2(u_input.b.zz, Struct_1(true, u_input.c, _wgslsmith_f_op_f32(2191f * -1048f), select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a), 18u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-957f)) * _wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 58596u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(108202u, u_input.b.x)), func_2(vec2<bool>(false, true))), u_input.b, firstTrailingBit(vec3<u32>(1u, 1u, 1u))))), func_2(!select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec3<bool>(false, false, false)))), u_input.b);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_2) -> vec2<u32> {
    global0 = array<i32, 18>();
    let var_0 = Struct_5(Struct_3(~arg_1.d.zy ^ _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.b.x, arg_2.a.x)), _wgslsmith_sub_vec2_u32(arg_1.d.zw, vec2<u32>(u_input.a, arg_1.d.x))), arg_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.c, arg_2.b.c) * vec2<f32>(arg_1.c.c, -389f)) * vec2<f32>(-1444f, arg_2.b.c)))), !(!vec2<bool>(arg_2.b.a, true)), Struct_1(func_1().c.a, arg_1.a.b.b, _wgslsmith_f_op_f32(step(183f, _wgslsmith_f_op_f32(ceil(-1389f)))), i32(-1i) * -firstLeadingBit(25939i)), 1i);
    global0 = array<i32, 18>();
    var var_1 = func_2(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_1.a.b.a, arg_1.a.b.a)))).d << (~var_0.a.a.x % 32u);
    global0 = array<i32, 18>();
    return abs(arg_1.a.a);
}

fn func_7(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = !(!select(!select(vec4<bool>(arg_0.b.a, arg_0.b.a, false, arg_0.b.a), vec4<bool>(arg_0.b.a, arg_0.b.a, false, arg_0.b.a), arg_0.b.a), !select(vec4<bool>(false, arg_0.b.a, false, true), vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a, arg_0.b.a), vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.b.a, true)), arg_0.b.a && true));
    let var_1 = ~(~_wgslsmith_mod_u32(~1u, 1527u));
    let var_2 = func_1();
    var var_3 = Struct_5(arg_0, vec2<f32>(var_2.a.b.c, _wgslsmith_f_op_f32(var_2.a.b.c + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.b.c - arg_0.b.c), _wgslsmith_f_op_f32(-var_2.a.b.c))))), !(!select(select(vec2<bool>(var_0.x, false), var_0.ww, arg_0.b.a), var_0.wx, select(vec2<bool>(var_0.x, var_2.a.b.a), var_0.yz, var_0.yx))), func_2(var_0.xy), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(u_input.e, u_input.e), _wgslsmith_mult_vec3_i32(u_input.e, u_input.e) << (~vec3<u32>(var_2.d.x, var_1, var_1) % vec3<u32>(32u))), -5591i));
    let var_4 = _wgslsmith_mult_i32(arg_1, select(-34635i, 10064i, func_1().a.b.a && all(vec4<bool>(true, var_2.c.a, var_0.x, var_3.c.x))));
    return func_2(vec2<bool>(true, false));
}

fn func_8(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    let var_0 = arg_2.b.a;
    global0 = array<i32, 18>();
    var var_1 = true || (_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(111f * _wgslsmith_f_op_f32(arg_1.c - 504f))) >= arg_2.b.c);
    let var_2 = ~_wgslsmith_mult_i32(0i, -countOneBits(global0[_wgslsmith_index_u32(36032u, 18u)] << (1u % 32u)));
    let var_3 = Struct_4(Struct_2(vec2<u32>(6720u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u) & 34104u), func_7(arg_2, _wgslsmith_mult_i32(u_input.d.x, arg_2.b.d))), _wgslsmith_div_f32(arg_2.b.c, -958f), func_7(Struct_3(abs(~arg_0.zy), func_2(vec2<bool>(true, true))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 18u)], countOneBits(arg_2.b.d)), _wgslsmith_mod_i32(abs(1495i), arg_2.b.b))), arg_0 << (_wgslsmith_mod_vec4_u32(vec4<u32>(abs(arg_2.a.x), abs(u_input.b.x), 56349u, 4294967295u >> (arg_2.a.x % 32u)), ~(~u_input.b)) % vec4<u32>(32u)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec2<bool>(any(vec3<bool>(true, false, false)), false), vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true));
    var var_1 = !select(var_0, vec2<bool>(false, _wgslsmith_div_u32(u_input.a, 0u) <= 0u), !(!vec2<bool>(true, var_0.x)));
    var var_2 = func_8(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), func_7(Struct_3(func_6(vec2<bool>(var_0.x, var_1.x), func_1(), Struct_2(u_input.b.wx, Struct_1(false, u_input.c, -965f, global0[_wgslsmith_index_u32(1u, 18u)]))), Struct_1(all(var_0), max(u_input.e.x, 41378i), func_1().c.c, 1i)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)]), Struct_3(_wgslsmith_sub_vec2_u32(abs(u_input.b.yw), vec2<u32>(u_input.a, ~0u)), Struct_1(true && var_1.x, ~global0[_wgslsmith_index_u32(~u_input.a, 18u)], 916f, abs(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 18u)], -26327i)))));
    let var_3 = Struct_1((func_8(~var_2.d, var_2.a.b, Struct_3(vec2<u32>(var_2.a.a.x, var_2.d.x), Struct_1(var_1.x, 14643i, var_2.b, 9025i))).d.x << (_wgslsmith_clamp_u32(reverseBits(var_2.d.x), _wgslsmith_add_u32(var_2.a.a.x, 1u), _wgslsmith_mult_u32(var_2.d.x, var_2.a.a.x)) % 32u)) < u_input.b.x, var_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec2<u32>(u_input.a, u_input.a) >> (var_2.d.zw % vec2<u32>(32u)), Struct_1(var_0.x, u_input.d.x, var_2.c.c, global0[_wgslsmith_index_u32(1u, 18u)])), max(var_2.d ^ vec4<u32>(u_input.b.x, 8096u, var_2.d.x, 1u), vec4<u32>(44209u, 15100u, 0u, 93917u) >> (var_2.d % vec4<u32>(32u))), var_2.d.yzx << (~vec3<u32>(0u, 65237u, 25081u) % vec3<u32>(32u))))), 2147483647i);
    let var_4 = func_8(~var_2.d << (u_input.b % vec4<u32>(32u)), var_3, Struct_3(_wgslsmith_clamp_vec2_u32(~u_input.b.wx, ~vec2<u32>(u_input.a, 4875u), ~u_input.b.xw) ^ vec2<u32>(4294967295u, func_8(vec4<u32>(125984u, var_2.d.x, 3890u, 77243u), var_3, Struct_3(vec2<u32>(46218u, u_input.b.x), var_2.c)).a.a.x), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.c.c))), _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(abs(228f)))), var_4.c.c, vec2<i32>(countOneBits(_wgslsmith_div_i32(~(-8990i), u_input.d.x)), func_8(~(vec4<u32>(11996u, 0u, 57267u, u_input.b.x) & vec4<u32>(var_2.a.a.x, 0u, 4294967295u, var_4.d.x)), func_2(vec2<bool>(false, var_1.x)), Struct_3(vec2<u32>(var_2.a.a.x, 0u) >> (vec2<u32>(30536u, 1503u) % vec2<u32>(32u)), var_2.a.b)).a.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.c, var_2.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, -1000f) + vec2<f32>(1000f, var_2.c.c))))))), var_2.b);
}


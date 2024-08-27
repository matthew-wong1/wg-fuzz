struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), -630f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1368f) - arg_0.x), -310f)), -1737f)), u_input.b.yyz, _wgslsmith_f_op_f32(f32(-1f) * -779f));
    return firstTrailingBit(u_input.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<bool>(false, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + 237f), 369f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -700f)))) <= arg_0.x, any(vec2<bool>(true, !all(vec3<bool>(true, false, false)))));
    var var_1 = vec3<u32>(52486u, u_input.c, ~((u_input.c << (u_input.c % 32u)) | 45643u));
    var_0 = vec4<bool>(true, false, any(var_0.yzz) == !all(vec2<bool>(false, var_0.x)), false);
    let var_2 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0.x, arg_1, -703f) - vec4<f32>(543f, 1721f, -516f, 1280f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1133f, arg_0.x, 301f, arg_0.x))))) ^ -40659i;
    let var_3 = vec4<f32>(365f, _wgslsmith_div_f32(389f, -1172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1681f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -796f) - -761f))), arg_0.x);
    return Struct_1(!(!vec3<bool>(true, var_0.x, true)), var_0.zw, abs(reverseBits(u_input.b)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1433f, -190f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-718f, 697f)), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1197f, _wgslsmith_f_op_f32(f32(-1f) * -1235f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f - 1828f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-458f + _wgslsmith_f_op_f32(-1114f + -492f)))))));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-665f)), _wgslsmith_f_op_f32(-651f * -646f))) * vec2<f32>(1f, 1f));
    var var_3 = Struct_3(Struct_2(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(48990u, 0u, 40680u), vec3<u32>(u_input.c, 72040u, 670u))), Struct_1(var_0.a, select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), vec2<bool>(var_1, var_0.b.x))), ~(~vec4<i32>(u_input.d, 0i, var_0.c.x, 14839i))), Struct_1(!select(vec3<bool>(true, false, var_1), var_0.a, var_0.a.x), var_0.b, vec4<i32>(2147483647i, var_0.c.x, -5713i, -1i))), u_input.c << (firstLeadingBit(~arg_0 << (reverseBits(arg_0) % 32u)) % 32u), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, -691f) + vec2<f32>(var_2.x, var_2.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1000f) * vec2<f32>(1180f, var_2.x)))), var_2.x).a.x, ~firstTrailingBit(min(vec4<u32>(7560u, 29097u, arg_0, u_input.c), select(vec4<u32>(arg_0, 43543u, arg_0, 31620u), vec4<u32>(4294967295u, 43446u, arg_0, 37605u), vec4<bool>(false, true, var_1, false)))), Struct_2(abs(abs(abs(vec3<u32>(u_input.c, u_input.c, arg_0)))), Struct_1(!(!vec3<bool>(true, true, var_0.a.x)), select(var_0.b, var_0.a.yx, var_0.a.yy), ~vec4<i32>(u_input.a.x, 15146i, u_input.b.x, arg_1.x)), var_0));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
    return var_3.a.a;
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = ~(-u_input.b);
    let var_1 = var_0.xx;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(step(195f, 272f)), vec3<i32>(767i, ~(~var_1.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f * -203f)));
    var var_3 = var_0.x;
    let var_4 = ~var_0;
    return Struct_2(~reverseBits(arg_0), Struct_1(func_2(vec2<f32>(_wgslsmith_div_f32(var_2.c, var_2.c), _wgslsmith_f_op_f32(max(var_2.a, var_2.a))), var_2.c).a, func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, -1000f) * vec2<f32>(var_2.a, var_2.c)))), _wgslsmith_f_op_f32(trunc(-1453f))).b, abs(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(275f, -852f) * vec2<f32>(var_2.c, var_2.a)), _wgslsmith_f_op_f32(var_2.c - var_2.a)).c)), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), func_2(vec2<f32>(var_2.a, var_2.a), -1493f).a), vec2<bool>(true, true), min(vec4<i32>(-u_input.b.x, _wgslsmith_sub_i32(-2147483647i, var_2.b.x), var_1.x, 1i), -var_0)));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = arg_0.a;
    let var_1 = var_0.b.c.zw;
    var var_2 = firstLeadingBit(firstTrailingBit(-_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.c.c.xwz, vec3<i32>(var_1.x, -1i, 0i)), arg_0.e.b.c.zxy)));
    var var_3 = arg_0.a;
    let var_4 = _wgslsmith_add_i32(var_3.b.c.x, ~u_input.b.x);
    return Struct_3(Struct_2(var_0.a ^ var_3.a, func_2(vec2<f32>(-916f, _wgslsmith_f_op_f32(-1014f + arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-711f * arg_1)))), func_2(vec2<f32>(_wgslsmith_div_f32(-744f, arg_1), 1918f), arg_1)), ~reverseBits(var_0.a.x), var_0.b.a.x, ~vec4<u32>(_wgslsmith_dot_vec4_u32(~arg_0.d, _wgslsmith_clamp_vec4_u32(arg_0.d, vec4<u32>(var_0.a.x, 18136u, 1u, 52714u), arg_0.d)), _wgslsmith_div_u32(9330u, reverseBits(arg_0.b)), _wgslsmith_mod_u32(1u, select(0u, 0u, false)), min(var_0.a.x | 4294967295u, firstLeadingBit(u_input.c))), arg_0.e);
}

fn func_6(arg_0: Struct_3) -> f32 {
    var var_0 = 787f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(-990f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f) - -1265f) - 1f));
    let var_2 = u_input.c;
    let var_3 = max(arg_0.a.a.zy, vec2<u32>(0u, u_input.c));
    let var_4 = all(select(select(!vec4<bool>(arg_0.c, true, true, false), vec4<bool>(arg_0.a.c.b.x, true, true, true), !arg_0.e.b.a.x), !select(vec4<bool>(arg_0.c, false, arg_0.e.c.b.x, true), vec4<bool>(true, arg_0.a.b.a.x, arg_0.e.b.b.x, arg_0.e.c.a.x), vec4<bool>(false, arg_0.c, arg_0.e.c.a.x, arg_0.e.c.b.x)), select(select(vec4<bool>(arg_0.c, false, arg_0.a.b.a.x, arg_0.e.b.b.x), vec4<bool>(arg_0.c, false, arg_0.e.b.a.x, arg_0.a.b.b.x), true), vec4<bool>(arg_0.e.c.a.x, arg_0.c, arg_0.a.c.a.x, arg_0.e.c.b.x), !arg_0.e.b.a.x))) || (76492u == u_input.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-831f)) * 454f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(func_5(Struct_3(func_4(func_1(4294967295u, u_input.a)), 13156u, select(any(vec3<bool>(true, false, true)), u_input.a.x >= u_input.d, true), vec4<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(4294967295u, 31934u)), 4294967295u, 31860u), Struct_2(~vec3<u32>(u_input.c, 17537u, 0u), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false), u_input.b), func_4(vec3<u32>(4294967295u, u_input.c, u_input.c)).c)), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) + -161f))))));
    var var_1 = ((u_input.c >= _wgslsmith_clamp_u32(u_input.c, abs(u_input.c), 1u)) && !any(vec2<bool>(true, false))) || !any(func_5(Struct_3(Struct_2(vec3<u32>(1u, 124063u, u_input.c), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), vec4<i32>(34016i, u_input.b.x, u_input.d, 0i)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), u_input.b)), u_input.c, true, vec4<u32>(8891u, 4294967295u, u_input.c, 4294967295u), Struct_2(vec3<u32>(0u, 0u, 17612u), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), vec4<i32>(1i, u_input.a.x, u_input.b.x, u_input.a.x)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true), vec4<i32>(u_input.b.x, 2147483647i, u_input.d, -9416i)))), _wgslsmith_f_op_f32(1855f + 1503f)).e.c.a);
    var_1 = _wgslsmith_div_i32(-483i, u_input.d) >= ~(-func_4(vec3<u32>(13711u, 4294967295u, 4294967295u)).b.c.x);
    let var_2 = func_4(~_wgslsmith_div_vec3_u32((vec3<u32>(0u, u_input.c, u_input.c) | vec3<u32>(u_input.c, 0u, u_input.c)) ^ vec3<u32>(u_input.c, u_input.c, 89469u), vec3<u32>(u_input.c << (48701u % 32u), u_input.c, u_input.c << (122053u % 32u)))).b;
    let var_3 = abs(u_input.c);
    let var_4 = _wgslsmith_mult_u32(52406u, 5683u);
    var_1 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.c.x, u_input.a.x, var_2.c.x), var_2.c.zxw)), _wgslsmith_dot_vec4_i32(u_input.b, func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 8326u), vec3<u32>(var_4, u_input.c, u_input.c))).c.c)) < _wgslsmith_dot_vec3_i32(var_2.c.yyw, -func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), -1000f).c.yyw);
    var var_5 = Struct_2(_wgslsmith_div_vec3_u32(select(~_wgslsmith_div_vec3_u32(vec3<u32>(var_3, 34778u, var_3), vec3<u32>(var_4, 106171u, 1u)), ~max(vec3<u32>(var_3, 111514u, var_4), vec3<u32>(61671u, 25563u, 124478u)), !func_5(Struct_3(Struct_2(vec3<u32>(var_4, var_3, 4294967295u), var_2, Struct_1(vec3<bool>(false, false, var_2.b.x), var_2.a.zz, vec4<i32>(u_input.a.x, 3062i, var_2.c.x, u_input.d))), 0u, false, vec4<u32>(4294967295u, 1u, var_4, 14973u), Struct_2(vec3<u32>(70473u, var_3, u_input.c), Struct_1(vec3<bool>(false, var_2.b.x, false), vec2<bool>(true, var_2.b.x), var_2.c), Struct_1(var_2.a, var_2.a.yy, vec4<i32>(u_input.a.x, -20749i, -44791i, u_input.b.x)))), -494f).e.c.a), ~vec3<u32>(~var_4, ~var_3, ~44866u)), func_4(select(~(vec3<u32>(u_input.c, 4294967295u, u_input.c) ^ vec3<u32>(u_input.c, 29281u, var_4)), func_1(_wgslsmith_sub_u32(0u, u_input.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(-7854i, 2147483647i), vec2<i32>(u_input.b.x, var_2.c.x), u_input.b.yw)), var_2.b.x)).c, Struct_1(var_2.a, var_2.b, ~func_5(func_5(Struct_3(Struct_2(vec3<u32>(var_4, var_3, 30451u), var_2, var_2), 4294967295u, var_2.a.x, vec4<u32>(0u, 49424u, var_3, var_4), Struct_2(vec3<u32>(var_4, u_input.c, 70607u), var_2, var_2)), var_0), -692f).a.b.c));
    let var_6 = vec4<i32>(_wgslsmith_sub_i32(min(~var_2.c.x, _wgslsmith_clamp_i32(u_input.d, u_input.a.x, var_5.c.c.x)) << (28224u % 32u), var_2.c.x), -var_2.c.x, -79642i, 19579i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0)))) - vec2<f32>(var_0, -1025f))), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(0i, -2147483647i, var_6.x)), _wgslsmith_div_vec3_i32(-vec3<i32>(18020i, -2147483647i, 0i), var_2.c.xyx)) ^ firstLeadingBit(-u_input.b.zxz), -2050f, _wgslsmith_div_u32(1u, var_4), vec3<i32>(var_2.c.x, var_6.x, -23694i));
}


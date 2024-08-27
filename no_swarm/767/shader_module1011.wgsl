struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = -825f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_5 {
    let var_0 = Struct_1(select(vec2<bool>(true, arg_2.c.b), vec2<bool>(true, false), arg_2.c.a), !(_wgslsmith_dot_vec3_u32(abs(arg_1), select(vec3<u32>(arg_2.b, arg_1.x, 0u), arg_1, vec3<bool>(arg_2.d, arg_2.d, arg_2.d))) == select(arg_2.b << (arg_0.x % 32u), 33600u & arg_3.x, true)), arg_2.e, max(1i, -(u_input.c.x ^ -51986i)) | -27866i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1440f, _wgslsmith_f_op_f32(-498f * -1500f), -1988f));
    var var_2 = ~(vec3<i32>(-1i) * -global0.xzz);
    let var_3 = 22057u;
    var var_4 = abs(_wgslsmith_add_vec2_u32(min(~vec2<u32>(arg_1.x, arg_1.x), ~countOneBits(vec2<u32>(arg_0.x, arg_0.x))), ~(~(~vec2<u32>(4294967295u, 0u)))));
    return Struct_5(45332u, !vec4<bool>(true, var_0.a.x, false, true));
}

fn func_3() -> f32 {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_u32(func_1(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 0u))), countOneBits(vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1759u, u_input.b, u_input.b, 55841u), vec4<u32>(0u, 75090u, u_input.b, 62153u)), min(57425u, 34186u))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(722f, -1965f)), select(~u_input.b, u_input.b, global0.x >= -18139i), Struct_1(vec2<bool>(false, true), all(vec2<bool>(false, false)), 733f, u_input.c.x & u_input.a), true && any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(sign(-168f))), select(firstTrailingBit(~vec2<u32>(60849u, 4294967295u)), ~vec2<u32>(4294967295u, u_input.b), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))).a, _wgslsmith_sub_u32(max(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 0u), u_input.b), 1u & u_input.b), max(0u, 1u)));
    var_0 = ~52475u;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f + -1435f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1256f))))), abs(func_1(abs(vec2<u32>(u_input.b, 11366u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 55026u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), Struct_4(-241f, 3447u, Struct_1(vec2<bool>(false, false), true, 970f, 0i), false, 1000f), min(vec2<u32>(13540u, u_input.b), vec2<u32>(u_input.b, 0u))).a) << ((abs(_wgslsmith_mult_u32(1u, u_input.b)) << (_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(u_input.b, 38495u)) % 32u)) % 32u), Struct_1(vec2<bool>(false, true), any(select(func_1(vec2<u32>(0u, 62778u), vec3<u32>(u_input.b, u_input.b, 0u), Struct_4(-421f, u_input.b, Struct_1(vec2<bool>(true, false), true, -673f, u_input.c.x), false, 784f), vec2<u32>(u_input.b, u_input.b)).b.zyz, select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(404f)))), 0i), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1760f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(402f, -1792f)))))));
    return _wgslsmith_f_op_f32(-1316f - var_2.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    var var_0 = Struct_5(4294967295u, vec4<bool>(true, (true | arg_3.b.x) && arg_3.b.x, arg_3.b.x != true, arg_2 < -1029f));
    let var_1 = 131456u;
    var var_2 = Struct_5(var_0.a, !vec4<bool>(arg_3.b.x, func_1(vec2<u32>(var_0.a, arg_3.a) | vec2<u32>(4294967295u, arg_3.a), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 4294967295u, arg_3.a), vec3<u32>(var_0.a, arg_3.a, var_1)), Struct_4(316f, 0u, Struct_1(vec2<bool>(var_0.b.x, true), false, arg_0.x, global0.x), false, 738f), vec2<u32>(var_1, 4294967295u) << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u))).b.x, true, true));
    var_2 = arg_3;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(func_3()), var_1, Struct_1(var_2.b.yx, true | func_1(abs(vec2<u32>(6716u, 1u)), ~vec3<u32>(4294967295u, var_1, u_input.b), Struct_4(498f, 45230u, Struct_1(arg_3.b.wx, false, arg_0.x, -1i), var_2.b.x, -1765f), ~vec2<u32>(var_2.a, var_1)).b.x, 321f, -(~_wgslsmith_clamp_i32(global0.x, global0.x, u_input.a))), all(vec4<bool>(true, !(global0.x < -27751i), select(false, -56073i != global0.x, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(2275f * arg_0.x)))))));
    return Struct_1(func_1(~(vec2<u32>(var_3.b, 0u) & vec2<u32>(var_3.b, 6881u)) >> (abs(vec2<u32>(4294967295u, 25072u) << (vec2<u32>(arg_3.a, var_0.a) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.a, max(var_1, 727u), 0u), countOneBits(~vec3<u32>(var_0.a, var_2.a, 29295u))), Struct_4(arg_0.x, 1u, Struct_1(vec2<bool>(arg_3.b.x, true), true, arg_0.x, 17091i), arg_3.a > ~27092u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 1885f))), abs(vec2<u32>(1u, _wgslsmith_mod_u32(4294967295u, var_0.a)))).b.ww, true, arg_0.x, var_3.c.d);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> vec4<i32> {
    global1 = 910f;
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * arg_1.a), _wgslsmith_f_op_f32(round(arg_0)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f) + arg_0) + arg_1.c.c))));
    global1 = 977f;
    global1 = -615f;
    global1 = _wgslsmith_f_op_f32(-var_0);
    return vec4<i32>(2147483647i, _wgslsmith_mult_i32(reverseBits(u_input.c.x) | 0i, arg_1.c.d), -1i & arg_1.c.d, _wgslsmith_add_i32(42325i, 2566i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(736f * 930f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(110f - -2019f), _wgslsmith_f_op_f32(floor(-928f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1312f + -620f) * _wgslsmith_div_f32(-359f, -536f))), true)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1162f, _wgslsmith_f_op_f32(1659f * 239f)))), 1u, func_2(vec2<f32>(_wgslsmith_f_op_f32(706f * -1000f), -525f), _wgslsmith_add_i32(0i, 8839i) << (~u_input.b % 32u), -155f, func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(87932u, 1u)), vec3<u32>(0u, u_input.b, u_input.b) | vec3<u32>(u_input.b, 30971u, 4294967295u), Struct_4(353f, u_input.b, Struct_1(vec2<bool>(true, true), true, 1283f, -27089i), true, -142f), reverseBits(vec2<u32>(u_input.b, 4294967295u)))), !(9400i != global0.x), _wgslsmith_f_op_f32(f32(-1f) * -669f)), !vec2<bool>(!all(vec3<bool>(true, false, false)), !any(vec4<bool>(true, false, false, false))));
    var var_0 = func_1(vec2<u32>(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 41358u, 0u), firstTrailingBit(vec3<u32>(0u, 1u, u_input.b))), (56489u >> (u_input.b % 32u)) << (max(18243u, 0u) % 32u)), 0u), ~countOneBits(~vec3<u32>(4039u, u_input.b, u_input.b)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f + -1057f)), u_input.b, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false))), any(vec4<bool>(false, false, true, false)) | true, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 811f), _wgslsmith_f_op_f32(1528f + -1190f))), ~min(-29258i, u_input.c.x)), select(all(func_1(vec2<u32>(12401u, 0u), vec3<u32>(u_input.b, 109670u, 1u), Struct_4(601f, u_input.b, Struct_1(vec2<bool>(false, true), false, 1960f, global0.x), false, -1367f), vec2<u32>(u_input.b, u_input.b)).b.yzw), true && select(true, true, false), _wgslsmith_mult_u32(25461u, u_input.b) == max(66721u, 24919u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(221f)))), ~max(vec2<u32>(u_input.b, ~3036u), vec2<u32>(u_input.b, u_input.b) >> (select(vec2<u32>(0u, u_input.b), vec2<u32>(4294967295u, u_input.b), true) % vec2<u32>(32u))));
    var var_1 = Struct_3(Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -618f), _wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(2147483647i, u_input.c.x)), -1820f, Struct_5(_wgslsmith_div_u32(u_input.b, 4294967295u), vec4<bool>(false, var_0.b.x, var_0.b.x, false))).c, Struct_1(func_1(~vec2<u32>(1u, var_0.a), firstLeadingBit(vec3<u32>(1u, var_0.a, u_input.b)), Struct_4(-1314f, 4294967295u, Struct_1(var_0.b.wx, var_0.b.x, -2100f, -1762i), var_0.b.x, -1076f), vec2<u32>(var_0.a, 4294967295u) & vec2<u32>(u_input.b, var_0.a)).b.yw, var_0.b.x, -618f, firstTrailingBit(_wgslsmith_mod_i32(u_input.a, 1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(165f, -1187f), _wgslsmith_f_op_f32(sign(-127f))))), vec4<i32>(firstTrailingBit(~(~4438i)), ~(~(-18278i)), max(-1i, firstTrailingBit(global0.x)), _wgslsmith_clamp_i32(u_input.c.x, 0i, global0.x) ^ global0.x), _wgslsmith_mult_i32(0i, reverseBits(max(func_2(vec2<f32>(156f, -675f), global0.x, -839f, Struct_5(50128u, var_0.b)).d, 1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.a.c);
    let var_3 = ~4294967295u;
    global0 = u_input.c;
    let var_4 = var_1.a;
    let var_5 = min(func_2(var_1.a.c, var_4.b.d, var_4.c.x, func_1(firstTrailingBit(vec2<u32>(u_input.b, 42053u) >> (vec2<u32>(1u, var_3) % vec2<u32>(32u))), ~(~vec3<u32>(var_0.a, 73678u, 0u)), Struct_4(-1388f, 0u, func_2(vec2<f32>(var_2.x, var_4.b.c), u_input.c.x, var_2.x, Struct_5(var_0.a, var_0.b)), false, _wgslsmith_div_f32(var_1.a.c.x, var_2.x)), firstTrailingBit(~vec2<u32>(u_input.b, var_3)))).d, -8645i);
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(var_0.b.yy, false, _wgslsmith_f_op_f32(func_3()), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, -868f), vec2<f32>(973f, var_4.c.x), vec2<bool>(true, var_4.b.a.x))), -1i, _wgslsmith_f_op_f32(round(var_4.b.c)), Struct_5(var_3, var_0.b)).d), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_4.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(614f, var_1.a.a) * var_1.a.c) * vec2<f32>(-908f, -1299f))))), -var_1.b, ~_wgslsmith_add_i32(~0i & var_4.b.d, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, firstTrailingBit(11110u), vec2<u32>(select(var_3, var_3, any(var_0.b.xzx)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, var_0.a), var_3)) & vec2<u32>(_wgslsmith_mod_u32(1u, ~var_3), ~_wgslsmith_add_u32(u_input.b, var_3)), -1626f);
}


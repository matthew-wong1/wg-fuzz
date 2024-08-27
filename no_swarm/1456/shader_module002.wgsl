struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = ~(min(1u, 8313u) ^ abs(~u_input.b.x));
    let var_1 = Struct_1(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f - -1285f)))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-786f, -430f))), u_input.d.x, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(abs(u_input.b.x), _wgslsmith_clamp_u32(u_input.a.x, 16349u, 0u))), u_input.a));
    var var_2 = firstTrailingBit(~(~u_input.a.x << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u)) ^ var_0);
    var var_3 = max(4294967295u, 1u);
    var var_4 = vec3<u32>(var_1.a | u_input.b.x, ~1u, var_0);
    return select(!(!(!select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, false, true), true))), !(!vec3<bool>(true, arg_1.x, all(vec4<bool>(var_1.b, true, arg_0.x, false)))), 4294967295u == select(_wgslsmith_mod_u32(_wgslsmith_div_u32(87824u, var_0), 18828u), countOneBits(var_4.x) ^ 38058u, true));
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !func_3(vec2<bool>(true, true), vec2<bool>(false, true)), all(vec3<bool>(false, true, false))));
    var_0 = _wgslsmith_f_op_f32(426f - _wgslsmith_f_op_f32(f32(-1f) * -1183f)) <= _wgslsmith_div_f32(arg_0.x, -1040f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, -1374f))) > 1118f;
    let var_1 = true;
    var_0 = all(!select(!func_3(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), select(func_3(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec3<bool>(true, true, var_1), true), true));
    return func_3(func_3(vec2<bool>(false, var_1), func_3(vec2<bool>(var_1, true), vec2<bool>(true, !var_1)).zx).yz, func_3(vec2<bool>(var_1, any(vec3<bool>(false, var_1, true))), select(vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(true, var_1)), select(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(false, false)), vec2<bool>(false, var_1), vec2<bool>(false, false)))).zy).yz;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~countOneBits(~_wgslsmith_clamp_u32(1u, arg_0.a, 4294967295u)), arg_2.b, (-2147483647i & _wgslsmith_mod_i32(u_input.c, arg_1.c << (arg_0.a % 32u))) | arg_2.c, max(firstTrailingBit(~u_input.b.zw), countOneBits(max(arg_1.d, arg_0.d))));
    var var_1 = !select(select(select(!vec4<bool>(true, arg_2.b, var_0.b, arg_1.b), !vec4<bool>(arg_0.b, arg_0.b, true, false), all(vec3<bool>(arg_2.b, true, arg_2.b))), select(vec4<bool>(true, true, arg_2.b, true), select(vec4<bool>(var_0.b, true, true, arg_0.b), vec4<bool>(arg_1.b, arg_2.b, arg_2.b, false), vec4<bool>(true, false, false, true)), false && arg_2.b), select(!vec4<bool>(true, true, arg_0.b, arg_1.b), !vec4<bool>(arg_1.b, arg_2.b, var_0.b, arg_0.b), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2.b, true, arg_1.b, arg_2.b), arg_1.b))), select(select(!vec4<bool>(false, arg_1.b, false, true), vec4<bool>(true, arg_0.b, false, false), !arg_0.b), select(select(vec4<bool>(true, var_0.b, arg_1.b, false), vec4<bool>(var_0.b, false, false, var_0.b), vec4<bool>(arg_1.b, false, arg_2.b, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, arg_2.b, false), vec4<bool>(false, arg_2.b, false, true)), !vec4<bool>(true, true, arg_0.b, false)), select(!vec4<bool>(false, true, var_0.b, true), select(vec4<bool>(false, var_0.b, true, true), vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(false, true, arg_1.b, true)), var_0.c <= arg_1.c)), _wgslsmith_dot_vec2_u32(var_0.d, _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a, 549u), vec2<u32>(arg_1.a, 63186u))) > var_0.d.x);
    var_1 = !(!(!select(vec4<bool>(var_1.x, false, arg_1.b, arg_2.b), select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.b, arg_1.b, var_1.x), true), false)));
    var var_2 = Struct_1(var_0.d.x, false | (!(arg_1.a <= arg_2.a) || true), ~arg_2.c, ~(~vec2<u32>(_wgslsmith_add_u32(0u, var_0.d.x), reverseBits(var_0.d.x))));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.xwz), !(!all(!var_1.ywz)), -1637i, arg_0.d);
    return arg_0;
}

fn func_1() -> vec4<i32> {
    let var_0 = vec2<f32>(2909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1920f + _wgslsmith_div_f32(1589f, -253f)))));
    var var_1 = func_4(Struct_1(1u, any(!func_2(vec4<f32>(1636f, var_0.x, var_0.x, 1602f))), select(~(-2147483647i), u_input.d.x, countOneBits(0u) >= countOneBits(u_input.b.x)), reverseBits(_wgslsmith_div_vec2_u32(u_input.b.zx, u_input.a)) & vec2<u32>(0u, 4294967295u)), Struct_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, 64443u), min(u_input.b.x, 1u), _wgslsmith_mod_u32(17292u, 4294967295u)), u_input.a.x ^ _wgslsmith_clamp_u32(0u, u_input.a.x, 1u)), false, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.d.x), -1i << (u_input.b.x % 32u)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), u_input.d))), u_input.b.xy), Struct_1(_wgslsmith_add_u32(~firstTrailingBit(u_input.a.x), u_input.a.x), !any(vec4<bool>(true, true, true, true)), 1i, _wgslsmith_add_vec2_u32(u_input.b.yz, min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.b.ww) << (~u_input.b.wx % vec2<u32>(32u)))));
    var var_2 = 1918f;
    var var_3 = func_4(Struct_1(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.d.x, u_input.b.x), ~u_input.b.zz) == _wgslsmith_clamp_u32(~u_input.b.x, var_1.a, 4294967295u ^ var_1.a), ~(firstTrailingBit(var_1.c) ^ abs(u_input.c)), vec2<u32>(_wgslsmith_mult_u32(~28172u, 1u), 4294967295u)), Struct_1(69578u, !func_3(vec2<bool>(var_1.b, var_1.b), !vec2<bool>(var_1.b, false)).x, firstLeadingBit(-2147483647i), ~(u_input.b.zy >> (~u_input.b.xy % vec2<u32>(32u)))), func_4(func_4(func_4(func_4(Struct_1(1u, false, var_1.c, u_input.a), Struct_1(u_input.b.x, true, 1i, var_1.d), Struct_1(2604u, var_1.b, u_input.c, vec2<u32>(u_input.b.x, var_1.a))), func_4(Struct_1(4294967295u, var_1.b, 4920i, vec2<u32>(u_input.a.x, 0u)), Struct_1(u_input.b.x, false, 16149i, u_input.a), Struct_1(78577u, false, var_1.c, var_1.d)), Struct_1(u_input.a.x, true, var_1.c, u_input.a)), Struct_1(u_input.b.x, false, -var_1.c, u_input.a ^ vec2<u32>(25928u, u_input.a.x)), Struct_1(1u, true, _wgslsmith_div_i32(-15771i, var_1.c), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(var_1.a, 75422u)))), func_4(Struct_1(22495u, all(vec2<bool>(var_1.b, true)), 32616i, ~u_input.b.zx), Struct_1(_wgslsmith_mult_u32(1u, var_1.d.x), var_1.b, -1i, ~var_1.d), func_4(Struct_1(43048u, var_1.b, var_1.c, vec2<u32>(var_1.d.x, var_1.d.x)), Struct_1(4294967295u, false, u_input.c, u_input.b.wz), Struct_1(var_1.d.x, var_1.b, 41428i, u_input.a))), func_4(Struct_1(~48261u, !var_1.b, var_1.c, u_input.b.zz), Struct_1(1u, var_1.c < u_input.c, _wgslsmith_div_i32(29817i, var_1.c), countOneBits(u_input.b.yy)), func_4(Struct_1(75422u, false, 1i, u_input.a), func_4(Struct_1(28538u, true, var_1.c, u_input.a), Struct_1(u_input.a.x, true, u_input.d.x, vec2<u32>(var_1.a, u_input.b.x)), Struct_1(40070u, false, var_1.c, vec2<u32>(u_input.b.x, var_1.d.x))), func_4(Struct_1(var_1.a, false, u_input.c, vec2<u32>(0u, u_input.b.x)), Struct_1(var_1.d.x, false, u_input.d.x, vec2<u32>(144493u, var_1.d.x)), Struct_1(24617u, var_1.b, u_input.d.x, vec2<u32>(u_input.b.x, var_1.a)))))));
    let var_4 = var_3.c >> (_wgslsmith_mod_u32(var_1.d.x << (~(u_input.b.x >> (111064u % 32u)) % 32u), 0u) % 32u);
    return countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.c, _wgslsmith_add_i32(0i, -33424i), _wgslsmith_add_i32(var_4, 20128i), -var_4), vec4<i32>(_wgslsmith_sub_i32(82226i, u_input.d.x), 0i, u_input.c, ~0i)) ^ ((~vec4<i32>(1i, var_1.c, 0i, u_input.c) >> (select(u_input.b, vec4<u32>(12911u, u_input.b.x, 4294967295u, 4294967295u), vec4<bool>(false, false, true, var_1.b)) % vec4<u32>(32u))) & vec4<i32>(u_input.d.x, ~47270i, 1i, var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 361f;
    let var_1 = func_1();
    let var_2 = func_4(Struct_1(_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x), false, _wgslsmith_add_i32(var_1.x, -2147483647i), ~select(vec2<u32>(4294967295u, 14052u), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(92155u, u_input.b.x)), true)), Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(18444u, 4294967295u), u_input.a), (-12879i ^ var_1.x) != ~(~u_input.d.x), _wgslsmith_dot_vec4_i32(-var_1, var_1), ~(~u_input.b.zw)), Struct_1(_wgslsmith_add_u32(max(u_input.b.x, u_input.a.x), u_input.a.x) >> (1u % 32u), true, var_1.x, vec2<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, -2035f))), 466f, 545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-484f)))));
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, countOneBits(~var_2.c), 2147483647i);
}


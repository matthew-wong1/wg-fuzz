struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_4(firstTrailingBit(arg_2.e.x), ~u_input.b.x, vec3<i32>(min(_wgslsmith_clamp_i32(-12571i, -1i, -2147483647i), 38241i & arg_2.b), 20717i, -14031i ^ firstTrailingBit(-9738i)) & vec3<i32>(~arg_2.a.c.a, min(max(u_input.a, 2147483647i), _wgslsmith_sub_i32(arg_2.d.c.d, u_input.a)), 1i), 4294967295u, abs(0u));
    let var_1 = ~abs(~min(_wgslsmith_div_vec2_u32(vec2<u32>(46623u, arg_2.e.x), vec2<u32>(arg_0, var_0.a)), ~vec2<u32>(46176u, 15316u)));
    var var_2 = false;
    var_0 = Struct_4(~1u, _wgslsmith_div_u32(var_0.e, 56446u), select(min(vec3<i32>(0i, var_0.c.x, -7346i), ~vec3<i32>(u_input.c, 0i, -2147483647i)), -vec3<i32>(17707i, arg_2.a.c.e, var_0.c.x), false) << (_wgslsmith_mod_vec3_u32(arg_2.e.wwz, ~(~vec3<u32>(var_1.x, 54319u, 0u))) % vec3<u32>(32u)), arg_0, abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, arg_0, 2877u), vec3<u32>(0u, 19542u, 1u))));
    let var_3 = u_input.c;
    return _wgslsmith_dot_vec4_u32(max(arg_2.e, firstLeadingBit(arg_2.e)), firstLeadingBit(arg_2.e));
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), 9117u, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 0u, min(65922u, 4294967295u), 0u), min(max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 14767u), vec4<u32>(4294967295u, 4294967295u, 1046u, u_input.b.x)), vec4<u32>(78053u, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(29640u, 4294967295u, u_input.b.x, 79965u))));
    var var_1 = Struct_4(~(~(~41290u)), ~(~(~_wgslsmith_sub_u32(1u, u_input.b.x))), reverseBits(reverseBits(~(~vec3<i32>(u_input.c, 1i, 0i)))), ~(~4294967295u) ^ ~max(u_input.b.x, var_0.x), select(func_3(u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -956f), Struct_3(Struct_2(1000f, 689f, Struct_1(-1i, true, true, u_input.c, u_input.c)), -28944i, 685f, Struct_2(1335f, -330f, Struct_1(u_input.c, true, false, u_input.c, u_input.c)), vec4<u32>(var_0.x, 1u, 4294967295u, u_input.b.x))) & var_0.x, (reverseBits(u_input.b.x) << (1u % 32u)) >> (~4294967295u % 32u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, -383f)))) > _wgslsmith_f_op_f32(sign(1f))));
    var_0 = vec4<u32>(12893u, u_input.b.x, var_1.e, u_input.b.x);
    var_0 = ~vec4<u32>(~var_1.e, select(select(38417u, var_1.e, all(vec4<bool>(false, false, true, false))), 1u, all(vec3<bool>(false, false, true))), var_1.e, var_1.b);
    var var_2 = vec4<i32>(45740i, _wgslsmith_div_i32(0i, var_1.c.x), var_1.c.x, min(u_input.c, u_input.c));
    return Struct_4(var_1.a, 91225u, ~var_2.xwz, 1453u, var_0.x);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec4<f32> {
    global0 = array<vec2<bool>, 25>();
    let var_0 = func_2();
    global0 = array<vec2<bool>, 25>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-180f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(803f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), Struct_1(countOneBits(~6107i), !(var_0.c.x < -25221i), true, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.c, arg_0.c), countOneBits(u_input.a)), vec2<i32>(_wgslsmith_clamp_i32(var_0.c.x, 1i, u_input.c), countOneBits(11634i))), 1i));
    var var_2 = Struct_1(-(_wgslsmith_dot_vec2_i32(var_0.c.yz, vec2<i32>(-17158i, -8084i)) | -34799i), var_1.c.c, all(vec3<bool>(any(!vec4<bool>(false, var_1.c.c, false, true)), var_1.c.b, _wgslsmith_mult_u32(1u, u_input.b.x) >= (arg_0.d ^ 4294967295u))), ~_wgslsmith_clamp_i32(arg_0.c.x, u_input.c, abs(max(-1i, var_0.c.x))), ~_wgslsmith_clamp_i32(~11633i, arg_0.c.x, var_1.c.a));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) + _wgslsmith_f_op_f32(-arg_1)), arg_1, _wgslsmith_div_f32(var_1.b, arg_1), -204f) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(arg_1 + var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -956f), -596f))));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(arg_0, false, !all(vec3<bool>(true, true, true)), -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(47586i, arg_0)), max(vec2<i32>(arg_0, 1i), vec2<i32>(-41586i, -18230i))), _wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, u_input.a), abs(vec2<i32>(arg_0, 0i)))), _wgslsmith_div_i32(u_input.a, -2147483647i));
    let var_1 = select(vec3<i32>(var_0.a, _wgslsmith_div_i32(-20063i, ~2147483647i), -1i), func_2().c, select(select(vec3<bool>(var_0.b, !var_0.b, true), !(!vec3<bool>(true, var_0.b, var_0.b)), vec3<bool>(false, true, var_0.c)), !vec3<bool>(any(vec3<bool>(false, var_0.b, false)), var_0.b, true), var_0.b && var_0.c));
    var var_2 = 485f;
    var var_3 = vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_0, u_input.c), u_input.c ^ var_1.x, _wgslsmith_div_i32(u_input.a, -1i), ~4534i), vec4<i32>(2147483647i, 1i, arg_0, 1i)), func_2().c.x);
    var var_4 = 4294967295u >> (1u % 32u);
    return Struct_2(_wgslsmith_f_op_f32(-501f + arg_1.x), -486f, Struct_1(_wgslsmith_add_i32(var_3.x, -2147483647i), var_0.b, -u_input.a >= 1i, -(~(-var_0.a)), firstTrailingBit(u_input.c) << (~func_2().a % 32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> Struct_3 {
    var var_0 = func_5(_wgslsmith_sub_i32(51449i, -18766i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-288f, 839f, -1000f, -490f) + vec4<f32>(1183f, 1134f, 186f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(463f, 779f, -221f, 816f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(), -533f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-760f, -1533f, -138f, -1244f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1294f, 160f, -1288f), vec4<f32>(-598f, -979f, 3265f, 448f), true))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1251f, var_0.a, var_0.b, 141f) + vec4<f32>(328f, var_0.a, var_0.a, var_0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -1101f, var_0.b) * vec4<f32>(var_0.b, var_0.b, 1195f, -267f))), _wgslsmith_f_op_vec4_f32(func_4(func_2(), _wgslsmith_f_op_f32(ceil(var_0.a)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a + 992f), 1000f, _wgslsmith_f_op_f32(656f + var_0.a), var_0.b))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(max(firstLeadingBit(arg_1), 0u), u_input.b.x & _wgslsmith_div_u32(18296u, 4294967295u), firstLeadingBit(arg_0), 22246u | _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_1, 22061u)), arg_1), _wgslsmith_f_op_f32(ceil(476f)))).x, _wgslsmith_f_op_f32(floor(var_0.a)), var_0.c);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(781f)), _wgslsmith_f_op_f32(var_1.x + 1230f), _wgslsmith_div_f32(429f, -2265f), _wgslsmith_f_op_f32(-var_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(select(-577f, var_2.a, select(any(global0[_wgslsmith_index_u32(14457u, 25u)]), var_2.c.b, arg_2))), -130f, -673f));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(2057f, 897f, 536f, -361f));
    return Struct_3(func_5(firstLeadingBit(min(-21289i, _wgslsmith_div_i32(arg_0.x, var_2.c.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a, 834f, 1128f, -305f), vec4<f32>(var_2.a, var_0.b, var_1.x, var_1.x))))))), ~(u_input.a << (~(~arg_1) % 32u)), var_0.b, Struct_2(var_0.a, _wgslsmith_f_op_f32(-var_2.b), Struct_1(-1i, !all(global0[_wgslsmith_index_u32(1u, 25u)]), var_2.c.b, 1i, (i32(-1i) * -40853i) >> (abs(u_input.b.x) % 32u))), vec4<u32>(arg_1, countOneBits(arg_1 >> (max(arg_1, arg_1) % 32u)), 1u, 29495u));
}

fn func_6(arg_0: Struct_3) -> vec4<f32> {
    return vec4<f32>(300f, 775f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a + arg_0.c))), _wgslsmith_f_op_f32(ceil(-1000f)))), arg_0.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-337f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 1481f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 437f))), -216f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(320f, 1000f))), -1005f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-886f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c, -37571i)), u_input.a, -10581i), ~23581u, true))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-399f, _wgslsmith_div_f32(_wgslsmith_div_f32(480f, 109f), _wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_vec4_f32(func_6(Struct_3(func_5(u_input.c, vec4<f32>(-1720f, 968f, 532f, 140f)), select(-29911i, -1i, true), _wgslsmith_f_op_f32(ceil(-982f)), func_1(vec3<i32>(39413i, 14369i, u_input.c), u_input.b.x, true).a, vec4<u32>(u_input.b.x, u_input.b.x, 83984u, u_input.b.x)))).x, 269f, 468f), _wgslsmith_div_vec4_f32(vec4<f32>(901f, _wgslsmith_f_op_f32(step(557f, _wgslsmith_f_op_f32(max(var_0.x, 1148f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(675f)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(358f - var_0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1183f, var_0.x, var_0.x, 134f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-601f, 464f, var_0.x, -282f), vec4<f32>(var_0.x, 2159f, -873f, var_0.x)))))), var_0.x <= var_0.x));
    var var_1 = func_2();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1402f - var_0.x)), var_0.x, Struct_1(-1i, true || all(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 25u)]), ((u_input.c >= -1i) || true) && all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), var_1.c.x, ~(-_wgslsmith_mod_i32(-9838i, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(64544i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), 196f, var_2.a, _wgslsmith_f_op_vec4_f32(func_6(func_1(vec3<i32>(17317i, -28086i, 13913i), var_1.e, false))).x)).c.d);
}


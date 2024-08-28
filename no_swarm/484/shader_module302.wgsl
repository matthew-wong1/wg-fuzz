struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_2, 12>();
    var var_0 = firstTrailingBit(vec2<i32>(u_input.a, u_input.a));
    global0 = array<Struct_2, 12>();
    let var_1 = !(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), false), true));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -241f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1233f + 1831f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-331f)), -974f))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(u_input.d, abs(u_input.e));
    var var_1 = u_input.d;
    let var_2 = select(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !(!vec3<bool>(true, true, all(vec3<bool>(false, false, true)))), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, select(false, false, false), true, u_input.a <= -982i), all(vec2<bool>(false, true)) | (u_input.a != arg_0))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1341f, -399f, 591f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1594f, 330f, -1184f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-620f, -305f, 190f) * vec3<f32>(2325f, -163f, -786f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1721f, 222f, -1183f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2798f, -1419f, 401f)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1003f, _wgslsmith_div_f32(-544f, -1266f), _wgslsmith_f_op_f32(round(-432f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-490f, -454f, -142f) - vec3<f32>(-430f, 583f, 2707f))))));
    var var_4 = u_input.a;
    return Struct_1(_wgslsmith_mod_u32(u_input.c.x, reverseBits(u_input.e)), max(_wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(-1i, arg_0, u_input.a, arg_0)), abs(select(vec4<i32>(arg_0, u_input.a, 7426i, arg_0), vec4<i32>(u_input.a, arg_0, u_input.a, 23227i), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), reverseBits(abs(-vec4<i32>(0i, -38326i, u_input.a, -33625i)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x))));
    var var_1 = arg_2.e;
    var var_2 = !(!vec4<bool>(1655f <= _wgslsmith_f_op_f32(-arg_3), false, arg_2.e.b.x > ~u_input.a, false));
    global0 = array<Struct_2, 12>();
    let var_3 = var_1.a;
    return !vec2<bool>(all(vec2<bool>(var_2.x, any(vec2<bool>(true, false)))), !all(select(vec4<bool>(arg_1.a.x, false, true, true), vec4<bool>(false, arg_1.a.x, var_2.x, var_2.x), vec4<bool>(true, false, true, var_2.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_clamp_i32(~2147483647i, firstLeadingBit(-firstTrailingBit(u_input.a)), 0i));
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var_0 = Struct_1(_wgslsmith_div_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(var_0.a, 74768u, var_0.a)) >> (abs(83551u) % 32u)), ~max(4294967295u, 33579u)), vec4<i32>(_wgslsmith_add_i32(u_input.a, -firstLeadingBit(var_0.b.x)), var_0.b.x, var_0.b.x, abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, u_input.a, var_0.b.x, -27292i), vec4<i32>(-26747i, -4208i, 48539i, u_input.a)))));
    var_0 = func_2(_wgslsmith_dot_vec3_i32(var_0.b.zyx, var_0.b.ywz));
    return global0[_wgslsmith_index_u32(u_input.d, 12u)];
}

fn func_6(arg_0: Struct_2) -> Struct_5 {
    var var_0 = Struct_1(~countOneBits(~76386u), vec4<i32>(-41342i, _wgslsmith_add_i32(_wgslsmith_mod_i32(~u_input.a, max(40277i, 1i)), i32(-1i) * -2147483647i), _wgslsmith_add_i32(u_input.a, abs(u_input.a)) & abs(arg_0.b.x >> (arg_0.d % 32u)), max(arg_0.b.x, abs(0i))));
    var var_1 = firstLeadingBit(18455u | (countOneBits(arg_0.c.a) >> (arg_0.a.a % 32u)));
    var var_2 = !vec3<bool>((min(4294967295u, var_0.a) >= var_0.a) || any(vec3<bool>(false, true, false)), ~(-arg_0.e.b.x) < 35560i, all(func_4(~var_0.a, Struct_4(vec2<bool>(false, true)), func_5(vec4<f32>(-1313f, -985f, -947f, -455f), vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(-345f)))));
    let var_3 = func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1071f - -321f)) + -1391f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(468f, _wgslsmith_f_op_f32(-161f * 408f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-109f)) * -1899f), var_2.x || var_2.x)), _wgslsmith_f_op_f32(min(-137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(249f, -131f, true))))), _wgslsmith_f_op_f32(1196f + -1485f)), select(vec2<bool>(func_4(reverseBits(0u), Struct_4(var_2.zz), arg_0, -230f).x, all(vec2<bool>(false, true))), vec2<bool>(var_2.x, func_4(_wgslsmith_mod_u32(var_0.a, 35475u), Struct_4(vec2<bool>(var_2.x, true)), func_5(vec4<f32>(-2489f, 1813f, 1160f, -969f), var_2.yx), _wgslsmith_f_op_f32(max(1546f, 169f))).x), false));
    global0 = array<Struct_2, 12>();
    return Struct_5(24241i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1053f, 597f) + vec2<f32>(-101f, 985f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1220f, -217f) * vec2<f32>(506f, 1184f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, -1000f))))), countOneBits(var_0.a));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_5) -> Struct_4 {
    let var_0 = func_6(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_f32(279f - arg_2.b.x), _wgslsmith_div_f32(-461f, -184f), arg_2.b.x)), func_4(49531u, Struct_4(vec2<bool>(true, true)), Struct_2(arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(-19667i, arg_2.a, -20344i), vec3<i32>(u_input.a, arg_1.b.x, u_input.a)), func_2(1i), abs(u_input.e), arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.x), 1f)))));
    let var_1 = !(!vec2<bool>(24801u >= _wgslsmith_add_u32(arg_2.c, arg_1.a), countOneBits(0i) > arg_1.b.x));
    global0 = array<Struct_2, 12>();
    var var_2 = var_0.a;
    global0 = array<Struct_2, 12>();
    return Struct_4(!select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, var_1.x, false))));
}

fn func_7(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.c.x, u_input.b), _wgslsmith_mod_u32(u_input.c.x, u_input.b) << (u_input.c.x % 32u)), ~_wgslsmith_mult_u32(u_input.e ^ 0u, ~u_input.e), u_input.b ^ _wgslsmith_mult_u32(u_input.b, 27325u << (u_input.c.x % 32u))), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a, -34600i, _wgslsmith_mod_i32(u_input.a, u_input.a) ^ 0i, u_input.a), vec4<i32>(i32(-1i) * -24738i, ~(-83355i), _wgslsmith_add_i32(~6059i, -14731i), _wgslsmith_mod_i32(max(-2147483647i, -1i), _wgslsmith_add_i32(u_input.a, u_input.a)))));
    let var_1 = Struct_5((1i & (u_input.a << (0u % 32u))) >> (~u_input.e % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1479f, -220f) + vec2<f32>(-298f, -558f)))), vec2<f32>(-600f, _wgslsmith_f_op_f32(1175f * _wgslsmith_f_op_f32(step(-603f, -1000f))))), ~(12748u << ((0u << (1u % 32u)) % 32u)) >> ((~4294967295u ^ _wgslsmith_mult_u32(var_0.a, var_0.a)) % 32u));
    var var_2 = func_6(Struct_2(func_2(_wgslsmith_div_i32(func_2(38700i).b.x, 21995i)), var_0.b.zyz, func_2(-100205i), _wgslsmith_sub_u32(1u, 0u) & _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, var_1.c, var_1.c, 4294967295u)), vec4<u32>(0u, 1u, var_0.a, var_1.c)), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)))), !(!arg_0.a)).e));
    let var_3 = ~(~(~_wgslsmith_mod_u32(func_2(var_0.b.x).a, ~31579u)));
    let var_4 = Struct_1(_wgslsmith_clamp_u32(~(~_wgslsmith_clamp_u32(u_input.b, u_input.c.x, 460u)), 1u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 65888u), vec2<u32>(var_0.a, 4147u)), ~var_0.a)), -select(-var_0.b, vec4<i32>(-1i, var_1.a, var_0.b.x, u_input.a), arg_0.a.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a, -6279i, u_input.a, var_1.a) << (vec4<u32>(95031u, var_0.a, var_2.c, 0u) % vec4<u32>(32u)), max(var_0.b, func_2(var_1.a).b)));
    return _wgslsmith_f_op_f32(trunc(1309f));
}

fn func_8(arg_0: bool, arg_1: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3()).x;
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(select(-474f, _wgslsmith_f_op_f32(max(443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1420f))))), any(!(!select(vec2<bool>(arg_1, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, arg_1))))));
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(271f, -1803f, 1695f))))), reverseBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_7(func_1(u_input.a, Struct_1(1u, vec4<i32>(-10264i, u_input.a, u_input.a, -10631i)), Struct_5(1i, vec2<f32>(-1000f, -1000f), 4294967295u)))))) >= -1024f, false);
}


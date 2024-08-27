struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(21902i, -27423i, -42568i, -52684i, -637i, -1i, 2147483647i, i32(-2147483648), 78926i, i32(-2147483648), -6789i, 27650i, -10353i, 1i, 1i, 5191i, 0i, i32(-2147483648), 32395i, 2147483647i, 22974i, 1i, i32(-2147483648), -35987i, 0i, 1i, i32(-2147483648), 1i, i32(-2147483648), 1i, i32(-2147483648));

var<private> global1: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = Struct_5(vec3<i32>(-1i) * -vec3<i32>(u_input.a, ~0i, -global0[_wgslsmith_index_u32(43068u, 31u)]), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 626f, 1649f, arg_3.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1398f, arg_3.x, 777f, -3050f) - vec4<f32>(arg_0.x, arg_3.x, global1.x, global1.x)))))));
    let var_1 = vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(global1.x)));
    let var_2 = _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~arg_1, _wgslsmith_add_u32(1u | arg_1, 1u)), (~vec3<u32>(arg_1, 4294967295u, arg_1) | vec3<u32>(arg_1, arg_1, arg_1)) >> (vec3<u32>(4294967295u, ~arg_1, ~1u) % vec3<u32>(32u))));
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    return var_0.a.xz;
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = true;
    let var_1 = 1514f;
    global0 = array<i32, 31>();
    var var_2 = ~(~global0[_wgslsmith_index_u32(~arg_0.x, 31u)]);
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(arg_0, arg_0 ^ reverseBits(select(vec3<u32>(44961u, 54910u, arg_0.x), vec3<u32>(45554u, 0u, 0u), false))), ~reverseBits(vec3<i32>(0i, u_input.a & 0i, 4763i)), global0[_wgslsmith_index_u32(~(~select(_wgslsmith_mod_u32(arg_0.x, arg_0.x), 4294967295u, var_0)), 31u)], Struct_1(-660f, u_input.a, ~(~(1u << (1u % 32u))), ~(-2147483647i), func_3(vec4<f32>(_wgslsmith_f_op_f32(-var_1), var_1, 586f, _wgslsmith_f_op_f32(global1.x - global1.x)), ~10675u, !vec2<bool>(var_0, true), vec3<f32>(1000f, -846f, _wgslsmith_f_op_f32(floor(446f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1))))), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, 0i >> (arg_0.x % 32u)), u_input.a), _wgslsmith_add_u32(countOneBits(firstTrailingBit(0u)), countOneBits(_wgslsmith_mult_u32(0u, arg_0.x))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(6307u, _wgslsmith_sub_u32(firstLeadingBit(arg_0.x), 49271u)), 31u)], firstTrailingBit(select(vec2<i32>(u_input.a, -2147483647i), func_3(vec4<f32>(var_1, 527f, -1000f, -1012f), 1u, vec2<bool>(true, var_0), vec3<f32>(-1000f, var_1, -1185f)), vec2<bool>(false, var_0)))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.d.a, -584f, global1.x, -362f), vec4<f32>(2026f, -1000f, global1.x, var_3.e.a), true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.a, -1055f, 1180f, -903f) * vec4<f32>(176f, var_3.d.a, var_3.e.a, var_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1008f, -822f, -920f, var_3.d.a)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_5) -> u32 {
    global0 = array<i32, 31>();
    global1 = vec2<f32>(arg_0.b.x, 1f);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.wy), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -3020f))), _wgslsmith_f_op_f32(f32(-1f) * -2294f)));
    global0 = array<i32, 31>();
    var var_0 = Struct_3(arg_1.e.e, 12958u, Struct_2(countOneBits(arg_1.e.e.c), arg_2.a << (vec3<u32>(arg_1.b, 1u, min(0u, arg_1.b)) % vec3<u32>(32u)), arg_1.e.e.d, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(372f)))), ~1i, 8135u, _wgslsmith_sub_i32(arg_0.a.x, u_input.a << (arg_1.e.d.c % 32u)), arg_0.a.yx), Struct_1(_wgslsmith_div_f32(-628f, _wgslsmith_f_op_f32(-1690f - -1307f)), 1i, arg_1.e.e.c, -1i ^ arg_0.a.x, abs(arg_0.a.xz))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-516f + -1538f), arg_2.b.x), arg_2.a.x, 0u | (firstLeadingBit(arg_1.a.c) << (_wgslsmith_div_u32(35189u, arg_1.e.e.c) % 32u)), 2147483647i, arg_0.a.xy), Struct_2(firstTrailingBit(~(~0u)), arg_2.a, 2147483647i, arg_1.a, Struct_1(arg_0.b.x, i32(-1i) * -35030i, arg_1.d.c, firstTrailingBit(~(-6320i)), reverseBits(vec2<i32>(arg_0.a.x, arg_1.d.b)))));
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    global1 = vec2<f32>(-1040f, global1.x);
    global0 = array<i32, 31>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1265f))), arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(floor(603f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 2237f))))));
    let var_1 = vec3<u32>(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 31445u, 53599u), ~vec4<u32>(4294967295u, 48124u, 16892u, 1u)) >> (reverseBits(16601u) % 32u)), ~func_4(Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(-35069i, 33692i, u_input.a), vec3<i32>(-2147483647i, u_input.a, global0[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(36109u, 4957u, 45781u)))), Struct_3(Struct_1(arg_1.x, 25542i, 55793u, u_input.a, vec2<i32>(global0[_wgslsmith_index_u32(30571u, 31u)], u_input.a)), 1u, Struct_2(30168u, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(61889u, 31u)], 0i), -2147483647i, Struct_1(var_0.x, -16743i, 0u, u_input.a, vec2<i32>(-26488i, -42385i)), Struct_1(arg_1.x, -34612i, 23018u, global0[_wgslsmith_index_u32(17392u, 31u)], vec2<i32>(54660i, -1i))), Struct_1(412f, global0[_wgslsmith_index_u32(26386u, 31u)], 4294967295u, u_input.a, vec2<i32>(global0[_wgslsmith_index_u32(6049u, 31u)], global0[_wgslsmith_index_u32(78545u, 31u)])), Struct_2(0u, vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(48008u, 31u)]), u_input.a, Struct_1(-1000f, -1i, 64216u, 2147483647i, vec2<i32>(u_input.a, u_input.a)), Struct_1(global1.x, global0[_wgslsmith_index_u32(0u, 31u)], 1u, u_input.a, vec2<i32>(10473i, global0[_wgslsmith_index_u32(4294967295u, 31u)])))), Struct_5(vec3<i32>(global0[_wgslsmith_index_u32(29590u, 31u)], 12181i, 40397i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1722f, arg_1.x, global1.x)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(4294967295u, 37160u, 37410u)), ~vec3<u32>(22319u, 30581u, 1u), true), reverseBits(~vec3<u32>(0u, 0u, 4294967295u))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4811u, 7289u), vec2<u32>(1u, 7636u)), ~(~vec2<u32>(63815u, 0u))), select(18608u, _wgslsmith_dot_vec4_u32(vec4<u32>(2153u, 79496u, 2632u, 76515u), vec4<u32>(4294967295u, 1u, 0u, 24845u)), true)));
    let var_2 = ~(~vec4<u32>(~(~0u), ~4294967295u, ~(~var_1.x), var_1.x));
    return Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 31u)], 0i << (0u % 32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(var_1.x, 31u)]), vec2<i32>(-14077i, global0[_wgslsmith_index_u32(58810u, 31u)])), firstLeadingBit(vec2<i32>(-14076i, 18100i)), -vec2<i32>(u_input.a, 0i)))), ~var_1.x, 1i, vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(var_2.x, 31u)]) & -(vec2<i32>(1i, u_input.a) ^ -vec2<i32>(2147483647i, u_input.a)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = !select(vec3<bool>(true, true, !any(vec3<bool>(false, false, true))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), arg_3 >= 1i);
    let var_1 = _wgslsmith_mod_i32(reverseBits(-global0[_wgslsmith_index_u32(20404u, 31u)]), -(~arg_3 & arg_2.c));
    var var_2 = Struct_5(~vec3<i32>(var_1, arg_2.d.e.x, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 526f, arg_2.e.a, global1.x) - vec4<f32>(global1.x, -839f, -500f, 939f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -1069f, arg_2.d.a, global1.x)))))));
    let var_3 = select(var_0.zz, var_0.xy, !(!(!var_0.x)));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f - _wgslsmith_f_op_f32(trunc(-2065f)))), func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b.x * arg_2.e.a))), vec3<f32>(_wgslsmith_f_op_f32(floor(377f)), _wgslsmith_f_op_f32(208f * arg_2.e.a), -1780f)).d, arg_1.c, -2147483647i, vec2<i32>(-2147483647i, 1i)), ~abs(53777u), arg_2, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), var_2.b.ywy), arg_2);
    return Struct_3(func_1(var_2.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.xwx * var_2.b.ywy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-370f, 414f, 439f), vec3<f32>(var_4.c.e.a, -588f, 2035f))), true))), func_4(Struct_5(select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.d, -5486i, var_1), var_2.a), firstLeadingBit(vec3<i32>(12252i, -19700i, arg_1.b)), false), vec4<f32>(1618f, var_2.b.x, -502f, 1374f)), Struct_3(arg_1, _wgslsmith_mod_u32(1u, ~15099u), arg_2, func_1(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_vec3_f32(exp2(var_2.b.wyz))), Struct_2(func_1(258f, var_2.b.zyy).c, var_2.a, var_1, func_1(arg_2.d.a, vec3<f32>(global1.x, var_2.b.x, var_4.c.e.a)), var_4.e.e)), Struct_5(arg_2.b, var_2.b)), Struct_2(~(~arg_0.x) | arg_2.e.c, countOneBits(~vec3<i32>(var_4.e.c, arg_1.b, u_input.a)), 1i, arg_1, func_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -355f, 1554f)))), func_1(_wgslsmith_f_op_f32(exp2(1f)), var_2.b.wxw), Struct_2(abs(25770u), firstTrailingBit(~arg_2.b) | vec3<i32>(_wgslsmith_mod_i32(arg_3, -2147483647i), max(1i, 0i), firstTrailingBit(var_4.d.e.x)), 43988i, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(829f - global1.x) - _wgslsmith_f_op_f32(833f * global1.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(var_2.b.wxw, var_2.b.yzw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 792f, global1.x))))), arg_2.e));
}

fn func_6(arg_0: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-342f, 341f) - vec2<f32>(540f, arg_0.d.a))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.a.a, _wgslsmith_f_op_f32(ceil(arg_0.d.a)))), -356f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(min(arg_0.d.a, -470f)) == global1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -817f, 616f, global1.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1902f, 262f, _wgslsmith_f_op_f32(sign(-1113f)), _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = vec3<i32>(1i, arg_0.d.e.x, -2147483647i);
    var var_3 = _wgslsmith_sub_i32(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.e.d.c, func_1(_wgslsmith_f_op_f32(596f + var_1.x), var_1.yxz).c), 31u)]), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2253f, var_0.x, var_0.x, -488f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2042f, -994f, 1331f, var_1.x), vec4<f32>(-1685f, 910f, var_1.x, -1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e.a, arg_0.d.a, -896f, var_0.x))), reverseBits(~_wgslsmith_mult_u32(arg_0.e.d.c, 4762u)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(round(var_1.wxz))).x);
    global1 = _wgslsmith_f_op_vec2_f32(var_1.wx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.yx, var_1.yy))) * var_1.xx));
    return Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(~11477u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.e.c, arg_0.c.d.c, 88656u, arg_0.d.c), vec4<u32>(arg_0.d.c, 44336u, arg_0.c.e.c, 4294967295u))), firstTrailingBit(~firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)))), func_5(_wgslsmith_mult_vec2_u32(min(~vec2<u32>(arg_0.e.e.c, arg_0.e.d.c), vec2<u32>(arg_0.e.a, 0u)), vec2<u32>(arg_0.c.a, 28900u)), Struct_1(-111f, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 0i, 34866i), abs(vec3<i32>(arg_0.a.b, 124786i, global0[_wgslsmith_index_u32(14208u, 31u)]))), 61887u, u_input.a, abs(var_2.xy >> (vec2<u32>(1u, arg_0.a.c) % vec2<u32>(32u)))), func_5(vec2<u32>(1u, 1u), arg_0.c.e, Struct_2(35745u, vec3<i32>(global0[_wgslsmith_index_u32(33918u, 31u)], 42412i, 0i) & arg_0.c.b, 1i, Struct_1(358f, u_input.a, arg_0.d.c, global0[_wgslsmith_index_u32(arg_0.b, 31u)], arg_0.a.e), Struct_1(-672f, -41976i, 94904u, arg_0.a.d, vec2<i32>(arg_0.c.b.x, 1i))), 0i).e, reverseBits(_wgslsmith_mult_i32(-u_input.a, global0[_wgslsmith_index_u32(1u, 31u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(561f)), global1.x));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(946f, global1.x)))), -323f)), 444f);
    var var_0 = vec2<i32>(global0[_wgslsmith_index_u32(min(countOneBits(1u), _wgslsmith_div_u32(15485u, 1u) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 61328u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % 32u)), 31u)], i32(-1i) * -2147483647i);
    global0 = array<i32, 31>();
    var var_1 = func_6(func_5(vec2<u32>(countOneBits(_wgslsmith_sub_u32(4294967295u, 1u)), 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), var_0.x, max(abs(0u), 47735u), global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(20655u)), 31u)], vec2<i32>(_wgslsmith_mult_i32(33150i, -18230i), var_0.x)), Struct_2(~(~1u), -vec3<i32>(-43105i, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 31u)]) | ~vec3<i32>(-2147483647i, var_0.x, 0i), global0[_wgslsmith_index_u32(1u, 31u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, ~33819u, _wgslsmith_dot_vec3_i32(vec3<i32>(-10142i, u_input.a, 0i), vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 31u)], 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -1i), vec2<i32>(-33265i, 44281i), vec2<i32>(72973i, 1i))), func_1(1f, vec3<f32>(1131f, 1508f, global1.x))), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 31u)], 1652i)));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<u32>(33615u, ~18656u) & max(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), var_1.a), vec2<u32>(var_1.b.d.c, var_1.a.x))) | ~var_1.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(-1357f * -269f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(279f + 420f), 798f, all(vec3<bool>(true, true, false))))), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c.e.a + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-var_1.b.c.e.a))), _wgslsmith_f_op_f32(abs(var_1.b.a.a)));
}


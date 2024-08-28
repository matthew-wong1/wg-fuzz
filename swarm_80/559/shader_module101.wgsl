struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(196f, -967f, -881f, -679f), vec4<f32>(-113f, -436f, -1062f, -1534f), vec4<f32>(816f, 1002f, -1066f, -139f), vec4<f32>(648f, -1234f, 424f, -1572f), vec4<f32>(1097f, -545f, 428f, -693f), vec4<f32>(-2099f, 475f, 1687f, -779f), vec4<f32>(-219f, 426f, 724f, -896f), vec4<f32>(-123f, 1692f, 1483f, -2085f), vec4<f32>(-1010f, -438f, 1842f, 2139f), vec4<f32>(-2263f, 493f, -537f, 269f), vec4<f32>(337f, 1753f, 1000f, 219f), vec4<f32>(1000f, 1030f, -1483f, 641f), vec4<f32>(699f, -2329f, 417f, -967f), vec4<f32>(-385f, 1124f, 319f, 933f), vec4<f32>(-1000f, -303f, 1172f, -1461f), vec4<f32>(-821f, 162f, 2023f, -1000f), vec4<f32>(-478f, 908f, 364f, 859f), vec4<f32>(304f, -1132f, -1865f, 1433f), vec4<f32>(777f, -1793f, 652f, 459f), vec4<f32>(1000f, -1658f, -135f, 370f), vec4<f32>(-121f, -826f, 1689f, -528f), vec4<f32>(-866f, 389f, 1772f, -498f), vec4<f32>(-403f, -397f, 153f, -1040f), vec4<f32>(686f, -1687f, 272f, -1998f), vec4<f32>(-1484f, 2154f, 247f, -750f), vec4<f32>(-585f, 889f, -529f, 1000f), vec4<f32>(-1186f, -248f, 1543f, 966f), vec4<f32>(1882f, 1610f, 990f, 434f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>) -> i32 {
    global0 = array<vec4<f32>, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(279f, 2829f, arg_1.x, arg_1.x))) + arg_1)))));
    let var_1 = Struct_2(~u_input.a, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -21593i, u_input.b.x, u_input.b.x), u_input.b), _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(-4000i, u_input.a))) | firstTrailingBit(u_input.a), Struct_1(countOneBits(0i), !(true || all(vec2<bool>(true, false))), -u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1119f, arg_1.x)))) + _wgslsmith_f_op_f32(1134f + _wgslsmith_div_f32(arg_1.x, -1910f))), vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), false)), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-1i, u_input.a)) ^ u_input.a, 0i, -42408i, abs(u_input.a)), arg_0);
    var var_2 = Struct_1(17562i, ~(~1i) >= (31482i >> (_wgslsmith_clamp_u32(~arg_0.x, select(arg_0.x, var_1.e.x, true), arg_0.x) % 32u)), -2147483647i, var_1.c.d, var_1.c.e);
    var_2 = var_1.c;
    return -min(var_1.c.c, 19148i);
}

fn func_2() -> u32 {
    global0 = array<vec4<f32>, 28>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(14123u, 1u, 1u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(87365u, 1u, ~11253u, 31560u)))), 28u)];
    var var_1 = Struct_1(func_3(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), firstTrailingBit(vec2<u32>(7656u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), 141f)) & -_wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(u_input.a, u_input.a)), false, -(~u_input.a) | -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2693f) + _wgslsmith_f_op_f32(f32(-1f) * -2336f)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), all(vec4<bool>(false, true, true, true))));
    var_1 = Struct_1(func_3(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 4800u)), vec4<u32>(4294967295u, 1u, 8935u, 13528u)), ~1u), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 41444u, 39012u), vec3<u32>(53776u, 1u, 13962u)), 28u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 256f, var_1.d, -1172f)), select(select(vec4<bool>(true, var_1.e.x, false, var_1.e.x), vec4<bool>(true, true, true, true), false), vec4<bool>(var_1.e.x, false, var_1.e.x, true), true)))), _wgslsmith_dot_vec3_i32(u_input.b.yxy & (vec3<i32>(u_input.a, -31643i, 2147483647i) >> (vec3<u32>(0u, 1019u, 1u) % vec3<u32>(32u))), ~vec3<i32>(u_input.a, var_1.a, u_input.b.x)) == _wgslsmith_clamp_i32(1i, -1i, var_1.a), 1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f * var_1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f), -589f)))), var_1.e);
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~firstLeadingBit(1u), 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(39623u, 42169u, 1u), vec3<u32>(46248u, 4294967295u, 4294967295u)), _wgslsmith_mult_u32(1u, ~21302u)), vec3<u32>(~1u, 4294967295u, abs(_wgslsmith_mod_u32(0u, 1u))));
    return 1u;
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<vec4<f32>, 28>();
    var var_0 = Struct_1(0i, any(select(vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true)))), -(~(i32(-1i) * -u_input.a)), 712f, select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, true, false)), select(true, false, true)), vec3<bool>(true, true, true), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true)))));
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-var_0.d) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, var_0.d, true))), _wgslsmith_div_f32(1562f, -712f))), _wgslsmith_add_i32(abs(~1i), u_input.b.x), _wgslsmith_f_op_f32(-736f + var_0.d), !var_0.e);
    let var_2 = var_0.d;
    let var_3 = select(!vec4<bool>(all(vec3<bool>(false, var_0.e.x, true)), !(!var_0.b), select(var_1.d == var_0.d, true, all(vec2<bool>(var_1.e.x, true))), select(var_0.b, any(var_1.e.yz), true)), vec4<bool>(all(!vec3<bool>(var_1.b, var_0.e.x, true)), !var_0.e.x, any(vec3<bool>(true, !var_1.b, select(false, false, false))), var_1.b), any(!select(!vec3<bool>(var_0.b, var_0.e.x, var_1.e.x), !vec3<bool>(true, var_1.e.x, var_0.b), !var_0.e)));
    return Struct_2(var_1.a, -31765i, var_1, u_input.b >> ((arg_0 ^ select(min(vec4<u32>(25785u, arg_0.x, 20413u, arg_0.x), vec4<u32>(1u, 1u, arg_0.x, 1u)), vec4<u32>(4294967295u, 69781u, arg_0.x, arg_0.x), !vec4<bool>(false, var_0.e.x, true, false))) % vec4<u32>(32u)), select(arg_0.wz, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(arg_0.x, arg_0.x) ^ vec2<u32>(32920u, 11812u)) & arg_0.xz, vec2<bool>(true, _wgslsmith_mod_u32(1u, 4294967295u) >= _wgslsmith_add_u32(arg_0.x, 0u))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec3<i32>(1i, (-12914i & arg_0.c.a) & max(arg_0.d.x, ~u_input.b.x), ~(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_3.a, arg_3.d.x, arg_0.d.x, arg_0.b), select(u_input.b, arg_3.d, arg_2)) >> (37168u % 32u)));
    let var_1 = any(vec3<bool>(!(!arg_0.c.e.x), true, any(select(arg_0.c.e.zy, select(vec2<bool>(false, true), arg_3.c.e.yy, true), vec2<bool>(false, true)))));
    var var_2 = ~(i32(-1i) * -2147483647i);
    let var_3 = func_4(vec4<u32>(1u, ~arg_3.e.x, _wgslsmith_mod_u32(arg_0.e.x, arg_3.e.x) | ~55500u, ~4294967295u) ^ vec4<u32>(min(_wgslsmith_sub_u32(1u, arg_0.e.x), 0u), _wgslsmith_sub_u32(arg_3.e.x, arg_0.e.x), ~(~arg_0.e.x), 34584u)).c.e;
    global0 = array<vec4<f32>, 28>();
    return Struct_2(-var_0.x, func_4(vec4<u32>(max(arg_3.e.x, arg_0.e.x), arg_0.e.x ^ 57200u, ~4294967295u, arg_0.e.x) & ~reverseBits(vec4<u32>(arg_0.e.x, arg_0.e.x, arg_3.e.x, arg_0.e.x))).a, func_4(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(arg_3.e.x, 0u, 1u, 1u), vec4<u32>(25074u, 20017u, 1u, arg_0.e.x), vec4<bool>(true, true, arg_0.c.b, false)), max(vec4<u32>(1u, arg_3.e.x, 0u, 0u), vec4<u32>(50417u, 1u, arg_3.e.x, 1u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.e.x, arg_3.e.x, arg_0.e.x, arg_3.e.x), vec4<u32>(33133u, 1u, arg_0.e.x, 22382u), vec4<u32>(36288u, 4294967295u, arg_3.e.x, 0u)))).c, ~_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-1i, var_0.x, u_input.a, -12642i)), select(vec4<i32>(-1i, 26637i, arg_0.a, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.x, 0i, u_input.a), vec4<i32>(16668i, u_input.a, arg_3.d.x, u_input.a)), select(vec4<bool>(false, true, false, var_1), vec4<bool>(false, false, arg_2, true), vec4<bool>(arg_0.c.e.x, var_1, false, var_3.x))), -select(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, arg_3.b, 7853i), vec4<bool>(true, false, var_3.x, var_1))), ~vec2<u32>(~_wgslsmith_add_u32(arg_3.e.x, 91999u), _wgslsmith_mod_u32(~arg_3.e.x, ~arg_0.e.x)));
}

fn func_1() -> i32 {
    var var_0 = func_5(func_4(vec4<u32>(~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(15224u, 3061u, 2411u), vec3<u32>(38340u, 13100u, 47424u)) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 38817u, 4294967295u), vec3<u32>(27695u, 15539u, 0u)), _wgslsmith_div_u32(0u, 4294967295u), func_2())), _wgslsmith_f_op_f32(f32(-1f) * -625f), true, Struct_2(min(-(~(-2147483647i)), u_input.b.x & u_input.b.x), 2147483647i, func_4(firstTrailingBit(vec4<u32>(5023u, 4294967295u, 4294967295u, 8485u))).c, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -99405i), vec4<i32>(u_input.a, 47904i, u_input.a, -2147483647i)), _wgslsmith_div_vec2_u32(~select(vec2<u32>(8475u, 68872u), vec2<u32>(5062u, 57601u), false), vec2<u32>(1u, 1u))));
    var var_1 = func_4(abs(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, var_0.e.x, 0u, 52921u), vec4<u32>(var_0.e.x, 1u, var_0.e.x, var_0.e.x)), vec4<u32>(1u, 4294967295u, 1u, var_0.e.x) >> (vec4<u32>(60508u, 77971u, 4294967295u, 36184u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.e.x, var_0.e.x, 0u, 1u), vec4<u32>(54882u, 100682u, 42764u, 15264u), vec4<u32>(var_0.e.x, 4294967295u, var_0.e.x, var_0.e.x)))) & (firstTrailingBit(vec4<u32>(87260u, var_0.e.x, 4294967295u, var_0.e.x)) | firstTrailingBit(vec4<u32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x)))).c;
    let var_2 = func_4(abs(vec4<u32>(firstTrailingBit(firstTrailingBit(var_0.e.x)), _wgslsmith_mod_u32(0u, ~var_0.e.x), var_0.e.x, _wgslsmith_add_u32(21705u >> (var_0.e.x % 32u), var_0.e.x))));
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1480f + var_1.d)) + var_0.c.d);
    return _wgslsmith_add_i32(var_1.c, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 28>();
    var var_0 = u_input.b.zxx;
    var var_1 = Struct_2(~(~func_1()), -12027i, func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(37198u, 1u, 24709u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(30791u, 12331u, 12203u, 0u), vec4<u32>(1u, 1u, 24234u, 0u)) >> (1u % 32u), 59618u, _wgslsmith_add_u32(0u, ~36699u))).c, min(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), u_input.b.x | u_input.a, ~u_input.a, ~(-2147483647i))), u_input.b), vec2<u32>(25110u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(15767u, 33363u, 4294967295u)), vec3<u32>(4294967295u, 54883u, 0u)) << (abs(7096u) % 32u)));
    let var_2 = func_5(func_5(func_5(func_4(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, 1u), vec4<u32>(17773u, var_1.e.x, var_1.e.x, var_1.e.x))), 136f, true, func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.e.x, 1u, var_1.e.x, var_1.e.x), vec4<u32>(64346u, 15939u, var_1.e.x, 4294967295u)))), -2325f, var_1.c.b, func_5(Struct_2(var_0.x, -2147483647i, Struct_1(var_1.c.c, true, 1i, -1000f, var_1.c.e), -vec4<i32>(-34926i, -11211i, var_1.b, var_0.x), var_1.e), var_1.c.d, ~var_1.c.a > (var_0.x >> (4704u % 32u)), func_5(Struct_2(u_input.a, var_1.a, var_1.c, u_input.b, var_1.e), _wgslsmith_f_op_f32(select(-1535f, var_1.c.d, var_1.c.b)), func_4(vec4<u32>(1u, 1u, var_1.e.x, 3914u)).c.e.x, Struct_2(u_input.a, 43810i, var_1.c, vec4<i32>(25367i, -1i, -2147483647i, var_0.x), vec2<u32>(var_1.e.x, var_1.e.x))))), 1051f, var_1.c.b, Struct_2(u_input.a, _wgslsmith_mult_i32(var_1.c.c, var_1.c.a | var_1.d.x) << (~var_1.e.x % 32u), Struct_1(-select(2147483647i, -1i, false), true, reverseBits(_wgslsmith_clamp_i32(var_1.d.x, 0i, u_input.a)), -1293f, !var_1.c.e), min(reverseBits(u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_1.b, var_0.x, u_input.b.x), u_input.b, -vec4<i32>(34900i, -2147483647i, var_0.x, var_1.b))), vec2<u32>(var_1.e.x, ~37379u))).c;
    var var_3 = var_2;
    let var_4 = func_4(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(var_1.e.x), select(4294967295u, 1u, true)), abs(_wgslsmith_clamp_u32(var_1.e.x, var_1.e.x, 56768u))), var_1.e.x, ~abs(~var_1.e.x), 1u));
    var var_5 = vec4<bool>(var_3.e.x, true, true, var_2.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(max(var_4.c.d, 773f))) * var_1.c.d), -107f, var_1.c.d), 1u, ~_wgslsmith_mod_i32(-1i, var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(868f))), var_3.d, -556f));
}


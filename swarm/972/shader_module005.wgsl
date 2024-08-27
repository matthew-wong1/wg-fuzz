struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(-4954i, -1i, 45013i), vec3<i32>(3205i, -7047i, -59027i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-25068i, 3128i, -3686i), vec3<i32>(6949i, 36694i, -1i), vec3<i32>(0i, 55669i, -1i), vec3<i32>(-23352i, 22308i, -44196i), vec3<i32>(-48745i, -29265i, -1i), vec3<i32>(-29706i, 31557i, 42349i), vec3<i32>(1i, 0i, 29898i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(1i, -48987i, 87038i), vec3<i32>(46405i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -3016i, 0i), vec3<i32>(0i, -1i, 26848i), vec3<i32>(i32(-2147483648), 0i, -11485i), vec3<i32>(-23480i, 1i, 2147483647i), vec3<i32>(28392i, i32(-2147483648), -47864i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(0i, 18445i, i32(-2147483648)), vec3<i32>(-28335i, -16630i, 41952i), vec3<i32>(7402i, -1i, -42755i), vec3<i32>(-10255i, -5321i, 5510i), vec3<i32>(1146i, -46606i, 15620i), vec3<i32>(51778i, -19471i, 1i), vec3<i32>(-18626i, -53926i, 1i));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true));

var<private> global2: f32 = -1483f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec3<f32> {
    global2 = arg_2.b.a.x;
    let var_0 = global1[_wgslsmith_index_u32(~44448u, 8u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2.b.a)))) * _wgslsmith_f_op_vec3_f32(ceil(arg_2.b.a)));
}

fn func_2() -> bool {
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-335f + 963f) * _wgslsmith_f_op_f32(ceil(-308f)))), ~_wgslsmith_add_u32(~21457u, _wgslsmith_mod_u32(1u, 1u)), Struct_3(vec4<bool>(true, true, true, select(true, false, false)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-439f, 661f, -2141f) - vec3<f32>(-1567f, -387f, 1000f)), 501f, 74900u, vec3<bool>(true, true, true), _wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x)), firstTrailingBit(~vec3<u32>(4294967295u, 1u, 0u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(932f, -336f), _wgslsmith_f_op_f32(abs(144f)))) + _wgslsmith_f_op_f32(ceil(-1000f)))), 1u, !(!vec3<bool>(false, all(vec3<bool>(false, false, false)), true)), -(~(-8456i << (1u % 32u))));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.b)))), var_0.c, Struct_3(!(!vec4<bool>(false, var_0.d.x, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-1610f, -1499f, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_div_u32(var_0.c, var_0.c), !vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 14988i, -6387i), vec4<i32>(var_0.e, var_0.e, var_0.e, 2147483647i))), min(vec3<u32>(var_0.c, var_0.c, 20810u), vec3<u32>(15300u, 0u, 4294967295u)) ^ vec3<u32>(var_0.c, 1u, 1u)))).x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(min(var_0.c, 0u), ~4294967295u, var_0.c << (24997u % 32u), ~var_0.c), vec4<u32>(1u, var_0.c, _wgslsmith_mult_u32(var_0.c, 0u), var_0.c)), var_0.c), select(select(var_0.d, !select(var_0.d, var_0.d, vec3<bool>(false, var_0.d.x, var_0.d.x)), !(!var_0.d.x)), var_0.d, vec3<bool>(!(!var_0.d.x), !all(vec3<bool>(false, true, var_0.d.x)), !all(vec2<bool>(true, true)))), -_wgslsmith_dot_vec2_i32(u_input.a.yx, select(u_input.a.xy, _wgslsmith_sub_vec2_i32(u_input.a.xx, u_input.a.xy), !var_0.d.x)));
    let var_1 = Struct_3(!select(select(select(vec4<bool>(false, var_0.d.x, false, true), vec4<bool>(false, false, true, false), vec4<bool>(var_0.d.x, false, false, false)), select(vec4<bool>(var_0.d.x, true, false, var_0.d.x), vec4<bool>(false, var_0.d.x, false, var_0.d.x), vec4<bool>(false, var_0.d.x, false, var_0.d.x)), select(vec4<bool>(true, var_0.d.x, var_0.d.x, false), vec4<bool>(false, false, var_0.d.x, false), var_0.d.x)), vec4<bool>(false, var_0.d.x, var_0.d.x || false, true), select(vec4<bool>(false, true, false, var_0.d.x), vec4<bool>(true, var_0.d.x, true, false), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1146f - var_0.b))), var_0.b, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 47221u, 18406u, 4730u), vec4<u32>(var_0.c, var_0.c, var_0.c, 20555u)) >> (43113u % 32u)), select(var_0.d, select(!var_0.d, select(var_0.d, var_0.d, vec3<bool>(var_0.d.x, true, var_0.d.x)), select(vec3<bool>(true, var_0.d.x, var_0.d.x), var_0.d, var_0.d.x)), var_0.d), -18934i), ~(~vec3<u32>(33014u, var_0.c, var_0.c) >> (~(~vec3<u32>(0u, var_0.c, var_0.c)) % vec3<u32>(32u))));
    return var_0.c > (var_1.c.x << (0u % 32u));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(arg_0);
    let var_1 = 1759f;
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1377f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))), 1000f), -2151f, ~arg_3, vec3<bool>((firstLeadingBit(u_input.a.x) << ((arg_3 >> (0u % 32u)) % 32u)) == u_input.a.x, _wgslsmith_mult_u32(~arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(10227u, arg_3), vec2<u32>(arg_3, arg_3))) <= ~(~arg_3), true), u_input.a.x);
    let var_3 = Struct_2(any(var_2.d) | arg_2.x);
    global0 = array<vec3<i32>, 28>();
    return Struct_1(vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1010f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-312f * _wgslsmith_f_op_f32(max(1191f, -554f)))))), -803f, _wgslsmith_clamp_u32(var_2.c, arg_3 ^ var_2.c, arg_3), vec3<bool>(false, true, true), -reverseBits(u_input.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mult_i32(max(i32(-1i) * -2686i, 49369i), countOneBits(-arg_1.e))), 1i);
    global2 = 1000f;
    let var_1 = select(select(vec3<bool>(arg_0.d.x, all(vec4<bool>(arg_1.d.x, arg_1.d.x, false, arg_2.d.x)), !arg_2.d.x), !vec3<bool>(!arg_0.d.x, arg_2.d.x, arg_2.e > u_input.a.x), !(!arg_0.d)), select(arg_0.d, vec3<bool>(false, arg_0.d.x, any(vec4<bool>(arg_2.d.x, arg_2.d.x, false, arg_2.d.x))), true), true);
    var var_2 = arg_1.d.x;
    global1 = array<Struct_2, 8>();
    return func_4(func_2(), arg_2.d.zy, arg_0.d.xx, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.c, 0u, arg_2.c, 36694u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.c, 0u, arg_2.c), vec4<u32>(60940u, arg_1.c, arg_2.c, 0u)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(25709u, 39021u, 0u, arg_0.c), vec4<u32>(1u, arg_0.c, arg_1.c, 68030u)))) >> (arg_0.c % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: vec2<u32>) -> bool {
    var var_0 = 965f;
    var var_1 = arg_3.x << (1u % 32u);
    global0 = array<vec3<i32>, 28>();
    var_0 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(trunc(arg_1.b.b)), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c)), Struct_3(!arg_1.a, func_4(any(vec4<bool>(true, arg_2, true, true)), vec2<bool>(false, true), arg_1.b.d.xx, ~4294967295u), vec3<u32>(arg_1.b.c, arg_1.b.c, arg_1.c.x) << (~arg_1.c % vec3<u32>(32u))))).x, _wgslsmith_f_op_f32(max(-2195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f + arg_1.b.b)))));
    return (false == (var_2.x == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.a.x, 155f, true)))))) || any(select(vec4<bool>(true, arg_0.d.x, select(arg_2, arg_0.d.x, arg_0.d.x), func_2()), select(!arg_1.a, !arg_1.a, arg_1.a), !func_1(Struct_1(vec3<f32>(arg_1.b.a.x, 365f, 749f), 532f, arg_3.x, vec3<bool>(true, arg_2, false), arg_0.e), Struct_1(vec3<f32>(arg_0.a.x, arg_1.b.b, arg_0.b), -1768f, arg_0.c, arg_1.a.ywz, 9291i), arg_1.b).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    var var_0 = Struct_3(vec4<bool>(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), !func_5(func_1(Struct_1(vec3<f32>(-740f, 391f, 1000f), 804f, 66220u, vec3<bool>(false, true, false), -36925i), Struct_1(vec3<f32>(1138f, -1352f, 1156f), 375f, 0u, vec3<bool>(false, false, false), -2147483647i), Struct_1(vec3<f32>(962f, 2388f, 2013f), -524f, 1u, vec3<bool>(false, false, false), u_input.a.x)), Struct_3(vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(-1264f, -468f, 461f), 215f, 83700u, vec3<bool>(true, true, true), -29605i), vec3<u32>(1u, 56238u, 1u)), u_input.a.x >= -1298i, ~vec2<u32>(1u, 44395u)), true, false), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-591f, -640f, -1352f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-434f, 722f, 2493f))))), -1711f, ~57515u, vec3<bool>(!select(false, false, true), true, !(u_input.a.x <= 1i)), u_input.a.x >> (~abs(1u) % 32u)), ~vec3<u32>(1u, 1u, 1u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(87142u, 61823u, 10439u), vec3<u32>(3295u, 4294967295u, 4294967295u)), _wgslsmith_clamp_u32(12378u, 4294967295u, 1u), _wgslsmith_mult_u32(0u, 4294967295u)), vec3<u32>(1u, 4294967295u, 1u)));
    var var_1 = global1[_wgslsmith_index_u32(~13935u, 8u)];
    global2 = 544f;
    var var_2 = func_1(func_4(all(select(var_0.a, var_0.a, !vec4<bool>(var_0.b.d.x, var_1.a, false, var_0.b.d.x))), vec2<bool>(var_1.a, (var_0.b.a.x <= 518f) != !var_0.a.x), vec2<bool>(true, !(false || var_0.b.d.x)), var_0.b.c), func_4(all(select(select(var_0.a, vec4<bool>(true, true, false, true), var_0.b.d.x), !vec4<bool>(false, var_0.a.x, true, var_1.a), !var_1.a)), func_1(var_0.b, var_0.b, var_0.b).d.zy, !select(vec2<bool>(false, var_1.a), select(vec2<bool>(true, true), vec2<bool>(true, true), false), var_1.a), var_0.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b), 2416f, 507f)), -113f, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.c.x, var_0.b.c), vec4<u32>(var_0.b.c, 1u, var_0.b.c, var_0.b.c))), func_4(var_0.b.d.x, select(!var_0.a.xz, !var_0.b.d.yy, func_2()), var_0.b.d.xz, _wgslsmith_div_u32(var_0.c.x >> (4294967295u % 32u), var_0.c.x)).d, 30204i));
    let var_3 = vec4<i32>(var_2.e << (_wgslsmith_clamp_u32(~abs(40709u), var_2.c & 39088u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c), ~vec4<u32>(11408u, 1u, 28937u, 4294967295u))) % 32u), var_2.e, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 31147i, ~2147483647i)), ~u_input.a), _wgslsmith_sub_i32(1i, -16293i));
    let var_4 = Struct_3(!var_0.a, func_1(Struct_1(var_2.a, _wgslsmith_f_op_f32(-var_2.b), ~1u, select(vec3<bool>(var_0.b.d.x, var_2.d.x, var_2.d.x), vec3<bool>(var_0.b.d.x, var_2.d.x, true), !vec3<bool>(false, false, var_1.a)), ~var_2.e), var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), 29581u, vec3<bool>(func_5(var_0.b, Struct_3(vec4<bool>(var_1.a, var_0.a.x, false, false), Struct_1(var_0.b.a, 467f, var_0.b.c, vec3<bool>(var_0.a.x, var_0.a.x, var_0.b.d.x), -1i), var_0.c), true, vec2<u32>(18691u, var_0.c.x)), var_2.c < var_2.c, func_2()), -8350i)), ~(var_0.c | vec3<u32>(var_0.b.c & 1u, 16466u & var_0.c.x, ~var_0.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x);
}


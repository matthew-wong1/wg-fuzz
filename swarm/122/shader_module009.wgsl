struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(0u, 17498u, 1u, 36642u), vec4<u32>(15892u, 36527u, 1195u, 7045u), vec4<u32>(19803u, 47922u, 1u, 4294967295u), vec4<u32>(4294967295u, 5782u, 4838u, 1u), vec4<u32>(52644u, 284u, 51214u, 1u), vec4<u32>(0u, 0u, 67695u, 1u), vec4<u32>(33978u, 24078u, 28703u, 28336u), vec4<u32>(0u, 32461u, 1u, 0u), vec4<u32>(21331u, 57295u, 9052u, 1u), vec4<u32>(79475u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(9395u, 1u, 138316u, 4294967295u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1368f - 1646f) - 138f));
    global1 = array<vec4<u32>, 11>();
    global0 = -688f;
    var var_0 = -(~(~(~u_input.d))) >> (min(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.b, u_input.c)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 45323u, u_input.c), vec3<u32>(u_input.b, u_input.b, u_input.c)), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), select(vec3<u32>(u_input.b, 22997u, 40941u), vec3<u32>(132240u, 0u, u_input.b), vec3<bool>(true, false, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.b), vec3<u32>(u_input.b, 1u, 11879u)))), select((vec3<u32>(4294967295u, u_input.b, 11908u) | vec3<u32>(u_input.a.x, 33597u, u_input.c)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(11153u, 28163u, u_input.b), vec3<u32>(u_input.a.x, 369u, 94951u)) % vec3<u32>(32u)), abs(vec3<u32>(1u, u_input.b, u_input.c)), 4294967295u <= (20712u ^ u_input.c))) % vec3<u32>(32u));
    var var_1 = Struct_2(-936f);
    return select(select(vec2<bool>(true, true), vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), false), vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), !all(vec4<bool>(false, true, true, true))), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650f + _wgslsmith_f_op_f32(max(-1684f, 1406f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2187f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-890f))))));
    var var_0 = Struct_1(~(74433u >> ((u_input.b & select(81741u, 68113u, arg_0.x)) % 32u)), _wgslsmith_add_vec3_u32(~arg_1, ~vec3<u32>(0u, _wgslsmith_add_u32(1u, arg_1.x), ~arg_1.x)), -377f, all(func_3()));
    var_0 = Struct_1(52859u, select(select(arg_1, ~arg_1, false & var_0.d) ^ (firstLeadingBit(vec3<u32>(arg_1.x, u_input.a.x, var_0.a)) << (vec3<u32>(var_0.a, 31494u, 1u) % vec3<u32>(32u))), ~(~(~vec3<u32>(1u, u_input.a.x, var_0.a))), vec3<bool>(true, var_0.c > -1029f, all(select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(arg_0.x, var_0.d, var_0.d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * 227f)), _wgslsmith_f_op_f32(min(var_0.c, 1784f))), var_0.d);
    var var_1 = 0u;
    var_0 = Struct_1(50271u, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(12947u, u_input.c, 26661u), arg_1 | arg_1, var_0.b >> (vec3<u32>(var_0.b.x, var_0.b.x, arg_1.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(f32(-1f) * -361f))), 1000f)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, var_0.d, false, true)), vec4<bool>(var_0.a <= 4294967295u, any(vec4<bool>(true, var_0.d, false, false)), -1277f <= var_0.c, arg_0.x), false)));
    return -438f;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> vec3<bool> {
    global1 = array<vec4<u32>, 11>();
    let var_0 = all(select(vec4<bool>(arg_0.a <= _wgslsmith_f_op_f32(arg_1 * arg_1), true, any(vec2<bool>(true, true)), true), vec4<bool>(false, false, abs(u_input.d.x) < (i32(-1i) * -1i), false), true));
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(u_input.c, u_input.b & ~u_input.a.x)), 11u)];
    let var_2 = Struct_2(-3066f);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(func_4(select(vec2<bool>(false, true), vec2<bool>(9072i <= arg_2, select(var_0, false, var_0)), !func_3()), ~abs(var_1.wxw))));
    return !select(vec3<bool>(var_0, _wgslsmith_f_op_f32(var_3.a * -928f) > _wgslsmith_f_op_f32(select(1825f, 1000f, var_0)), !func_3().x), vec3<bool>(-arg_2 < 7575i, true, _wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(-190f + arg_1)), all(vec2<bool>(true, true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    var var_0 = -(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(33377i, 1i, 35955i, -22921i), vec4<i32>(-7069i, -38566i, -1i, u_input.d.x)), abs(vec4<i32>(-1i, u_input.d.x, -2147483647i, u_input.d.x))) << (vec4<u32>(_wgslsmith_mult_u32(~u_input.a.x, 0u | u_input.c), select(u_input.a.x, select(u_input.a.x, 4294967295u, arg_1.x), !arg_1.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 32440u, u_input.a.x, u_input.c), min(vec4<u32>(1u, 1u, u_input.c, 67867u), global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), u_input.b) % vec4<u32>(32u)));
    let var_1 = Struct_1(firstTrailingBit(~(u_input.b ^ firstTrailingBit(0u))), ~min(firstLeadingBit(~vec3<u32>(4294967295u, 4294967295u, u_input.b)), ~abs(vec3<u32>(0u, 0u, 13163u))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-1468f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 + arg_2), -1676f, true)))), (~u_input.b << (((1u | u_input.b) << (4294967295u % 32u)) % 32u)) > ~(~u_input.c));
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -250f), 638f, select(arg_3.x, arg_1.x, true))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = !all(select(select(vec4<bool>(arg_1.d, true, arg_1.d, arg_1.d), !vec4<bool>(arg_2.d, arg_1.d, true, arg_2.d), u_input.d.x < u_input.d.x), select(select(vec4<bool>(false, arg_1.d, arg_2.d, false), vec4<bool>(true, arg_1.d, true, false), vec4<bool>(true, arg_1.d, arg_1.d, arg_1.d)), select(vec4<bool>(arg_2.d, arg_1.d, false, arg_1.d), vec4<bool>(false, arg_1.d, arg_2.d, arg_2.d), false), func_2(arg_0, 365f, u_input.d.x).x), false));
    global1 = array<vec4<u32>, 11>();
    let var_1 = Struct_2(1187f);
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(u_input.d.x & _wgslsmith_clamp_i32(countOneBits(u_input.d.x), reverseBits(-28672i), -u_input.d.x), -38912i), u_input.d.x);
    global1 = array<vec4<u32>, 11>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(!vec3<bool>(arg_2.d, arg_1.d, arg_1.d), !func_2(Struct_2(arg_2.c), arg_1.c, var_2.x), arg_1.c, !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_2.d, true))).a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1794f, _wgslsmith_f_op_f32(step(arg_2.c, arg_2.c))))), 1566f));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> bool {
    var var_0 = vec3<bool>(arg_0.d, !arg_0.d, false);
    global1 = array<vec4<u32>, 11>();
    var var_1 = 843f;
    var_1 = -328f;
    global0 = _wgslsmith_f_op_f32(func_6(func_5(!(!func_2(Struct_2(-1163f), 984f, arg_2)), !(!(!vec3<bool>(false, false, arg_0.d))), _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -558f)), var_0.xz), arg_0, Struct_1(~(~27449u), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), select(false || all(var_0.yz), _wgslsmith_mod_i32(-51558i, 11737i) < _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, arg_2, 26638i)), !(arg_0.d != false)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(!(u_input.d.x <= -2147483647i), func_1(Struct_1(4294967295u, vec3<u32>(0u, u_input.b, u_input.a.x), 2193f, true), vec3<u32>(48442u, 0u, 1u), i32(-1i) * -6646i)), !vec2<bool>(false, 19152u < u_input.a.x), !func_2(Struct_2(1427f), 1f, -u_input.d.x).zy);
    var var_1 = !vec4<bool>(func_2(Struct_2(_wgslsmith_f_op_f32(-447f * 1000f)), -649f, 1i).x, var_0.x, select(false & var_0.x, true, !all(vec4<bool>(false, true, true, false))), all(select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, var_0.x), false)) || false);
    let var_2 = func_5(select(vec3<bool>(!select(var_0.x, false, var_0.x), true, all(vec3<bool>(false, var_1.x, false))), !(!vec3<bool>(var_1.x, true, false)), true), !vec3<bool>(var_1.x, false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-315f)), _wgslsmith_f_op_f32(floor(-1000f))))), var_0);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~u_input.b), u_input.a.x, 4294967295u), 11u)];
    global1 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~(u_input.c & 17410u)), ~1u), countOneBits(vec4<u32>(_wgslsmith_add_u32(127356u ^ u_input.a.x, var_3.x), _wgslsmith_mod_u32(62160u, _wgslsmith_add_u32(var_3.x, var_3.x)), u_input.b & ~var_3.x, 46713u)), vec4<f32>(_wgslsmith_f_op_f32(-1213f * var_2.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) - 1016f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-968f * -536f))), _wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -1871f)))));
}


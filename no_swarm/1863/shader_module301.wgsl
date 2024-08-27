struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-38409i, true, 10004i, 0u, vec2<i32>(1919i, i32(-2147483648))), 176f, 7803i, vec4<i32>(-15359i, 1i, -1i, 0i)), Struct_2(Struct_1(0i, false, i32(-2147483648), 11666u, vec2<i32>(-1i, 2147483647i)), -390f, 2147483647i, vec4<i32>(-8700i, 2147483647i, 18277i, 3399i)), Struct_2(Struct_1(18161i, true, -29808i, 4294967295u, vec2<i32>(2147483647i, i32(-2147483648))), 739f, -1i, vec4<i32>(-11063i, -39951i, 0i, 12332i)), Struct_2(Struct_1(-59518i, false, i32(-2147483648), 2373u, vec2<i32>(0i, 0i)), 295f, 0i, vec4<i32>(11036i, -8748i, -1i, -54187i)), Struct_2(Struct_1(-1i, false, 2147483647i, 21680u, vec2<i32>(59117i, 1i)), 404f, -43468i, vec4<i32>(0i, 23980i, 1i, -1i)), Struct_2(Struct_1(17153i, false, i32(-2147483648), 0u, vec2<i32>(0i, -40674i)), -424f, -43218i, vec4<i32>(24691i, 2147483647i, 45574i, 1i)), Struct_2(Struct_1(-5614i, false, i32(-2147483648), 67786u, vec2<i32>(-24697i, -24818i)), 314f, 2147483647i, vec4<i32>(-1i, -70535i, 7315i, 1i)), Struct_2(Struct_1(-45944i, true, 21313i, 4294967295u, vec2<i32>(-43286i, i32(-2147483648))), 686f, 45975i, vec4<i32>(2161i, -1i, -23338i, 2147483647i)), Struct_2(Struct_1(-1i, false, -942i, 4294967295u, vec2<i32>(2147483647i, 0i)), 1916f, 0i, vec4<i32>(-19091i, -514i, 73273i, 47288i)), Struct_2(Struct_1(i32(-2147483648), true, -43179i, 17300u, vec2<i32>(-8927i, 34293i)), -647f, -3254i, vec4<i32>(-17259i, 1i, 35655i, -20354i)), Struct_2(Struct_1(-26723i, true, 2147483647i, 4294967295u, vec2<i32>(1i, 13002i)), 319f, -56449i, vec4<i32>(1i, 2147483647i, 2147483647i, 0i)), Struct_2(Struct_1(0i, false, 2147483647i, 1u, vec2<i32>(i32(-2147483648), -1i)), -1000f, 30486i, vec4<i32>(1i, 2147483647i, i32(-2147483648), -15225i)), Struct_2(Struct_1(-4266i, true, -51722i, 63950u, vec2<i32>(-2757i, 1i)), 410f, -1i, vec4<i32>(-28302i, 1i, 22224i, i32(-2147483648))));

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> i32 {
    global1 = ~reverseBits(~(~(26555u | arg_0.c.c.d)));
    var var_0 = -select(vec4<i32>(5419i, ~abs(26069i), u_input.a, -(~(-2147483647i))), firstTrailingBit(vec4<i32>(u_input.b, ~arg_0.c.c.e.x, firstLeadingBit(u_input.c), firstLeadingBit(u_input.c))), !all(!arg_0.c.d.yyx));
    global0 = array<Struct_2, 13>();
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(0i, ~_wgslsmith_mod_i32(countOneBits(-2971i), i32(-1i) * -1i)), countOneBits(_wgslsmith_mult_i32(abs(u_input.c), countOneBits(-9830i)) & u_input.c), _wgslsmith_add_i32(1i, -19806i), var_0.x);
    let var_2 = arg_0.c.d.yyw;
    return -45170i;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = abs(~firstTrailingBit(~arg_0.e.x));
    var var_1 = Struct_3(Struct_1(firstTrailingBit(2147483647i), !(_wgslsmith_f_op_f32(f32(-1f) * -218f) > _wgslsmith_f_op_f32(sign(2330f))), ~_wgslsmith_mod_i32(-arg_0.e.x, _wgslsmith_sub_i32(-2147483647i, u_input.b)), 0u, arg_0.e), 4294967295u, Struct_1(_wgslsmith_mult_i32(var_0, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 10252i, arg_0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.c, 1i), vec3<i32>(1i, 1i, 2147483647i))) >= -(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1i, -12671i) << (vec4<u32>(arg_0.d, arg_0.d, 13805u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(arg_0.e.x, arg_0.c, var_0, 33985i)), -vec4<i32>(arg_0.c, -28153i, arg_0.c, u_input.a)), _wgslsmith_add_u32(abs(arg_0.d), arg_0.d) | 1u, -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e.x, var_0, 26922i), vec3<i32>(-1i, u_input.b, -6032i)), 1i)), vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-478f)), -588f, select(arg_0.b, arg_0.b, false))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-437f, -694f, false)) + -724f), arg_0.b, any(select(vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(false, false), vec2<bool>(arg_0.b, true), vec2<bool>(false, true)), !vec2<bool>(false, arg_0.b))), !(!arg_0.b)));
    let var_2 = Struct_3(arg_0, (~abs(47386u) ^ _wgslsmith_add_u32(_wgslsmith_div_u32(63476u, arg_0.d), var_1.c.d)) << (_wgslsmith_mult_u32(~arg_0.d, ~(~arg_0.d)) % 32u), var_1.a, !select(var_1.d, var_1.d, -725f <= _wgslsmith_f_op_f32(ceil(219f))));
    global0 = array<Struct_2, 13>();
    let var_3 = var_2.a.d;
    return -616f;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(func_3(Struct_4(1684f, ~2147483647i, Struct_3(Struct_1(0i, true, u_input.c, 10430u, vec2<i32>(arg_0, arg_0)), 15455u, Struct_1(0i, true, u_input.a, 94723u, vec2<i32>(u_input.b, arg_0)), vec4<bool>(true, false, false, true))), 2199f), (all(vec4<bool>(true, true, true, false)) == true) | true, arg_0, ~_wgslsmith_add_u32(firstLeadingBit(0u), firstLeadingBit(4294967295u)), (_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c, 0i)) >> (vec2<u32>(10610u, 0u) % vec2<u32>(32u))) ^ ~(~vec2<i32>(u_input.c, 1675i)))));
    var var_1 = Struct_3(Struct_1(-abs(1i), true, 28353i, 13909u, -countOneBits(vec2<i32>(2147483647i, u_input.c)) >> (vec2<u32>(~0u, firstLeadingBit(4294967295u)) % vec2<u32>(32u))), ~_wgslsmith_mult_u32(~(33301u >> (1u % 32u)), _wgslsmith_clamp_u32(reverseBits(58611u), abs(0u), ~40387u)), Struct_1(9280i, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true)), _wgslsmith_add_i32(u_input.c, u_input.c), 42972u, vec2<i32>(-1i) * -(~vec2<i32>(arg_0, u_input.c))), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), select(false, true, false))), true, all(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(abs(-1553f))), -1160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(417f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) * _wgslsmith_f_op_f32(f32(-1f) * -606f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1324f, -2000f)) - -2548f))))));
    var var_3 = vec3<bool>(((1437f <= _wgslsmith_f_op_f32(max(var_2, 1499f))) & false) || (true && (false & all(var_1.d.wz))), var_1.c.b && any(!(!var_1.d.zyw)), all(select(select(!vec2<bool>(true, var_1.d.x), select(var_1.d.xz, var_1.d.ww, var_1.d.x), var_1.c.b), var_1.d.yz, all(select(var_1.d.zy, var_1.d.wz, var_1.d.yz)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_2, -114f)), _wgslsmith_f_op_f32(1305f + _wgslsmith_f_op_f32(max(-392f, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(807f, var_2)))), -2351f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-824f, var_2, 805f, 181f))))))));
    return Struct_4(-1000f, 0i, Struct_3(var_1.c, _wgslsmith_mod_u32(8166u, var_1.c.d), Struct_1(u_input.a, var_3.x, 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(46150u, var_1.a.d), vec2<u32>(var_1.c.d, 33120u)) % 32u), 0u, vec2<i32>(func_3(Struct_4(var_2, 0i, Struct_3(Struct_1(var_1.c.e.x, false, -1i, 38736u, var_1.a.e), 13678u, var_1.a, var_1.d)), var_2), var_1.c.a)), var_1.d));
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    global1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~1u, firstTrailingBit(max(1u, 1u))), 1603u, countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 55777u, 91996u, 121482u), vec4<u32>(1u, 1u, 1u, 1u)))) | ~1u;
    global1 = abs(1u);
    var var_0 = true;
    global1 = ~1u;
    var var_1 = func_2(27009i);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-424f)))))), 1456i, Struct_3(var_1.c.c, func_2(func_2(var_1.b).c.c.c).c.b & var_1.c.b, var_1.c.c, var_1.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = Struct_1(13808i, true, u_input.b, var_0, vec2<i32>(u_input.c << ((~1u >> (_wgslsmith_mult_u32(4256u, 0u) % 32u)) % 32u), ~select(-67744i, u_input.b, false)));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mult_u32(select(22685u & ~var_0, ~var_0, !select(var_1.b, var_1.b, var_1.b)), reverseBits(_wgslsmith_div_u32(0u, 4294967295u))) % 32u), 13u)];
    var_1 = Struct_1(-17943i << (0u % 32u), true, _wgslsmith_mod_i32(var_1.c, _wgslsmith_sub_i32(19396i, -(~30161i))), 4294967295u, -vec2<i32>(_wgslsmith_sub_i32(var_2.d.x, u_input.b) & _wgslsmith_sub_i32(34254i, -14109i), _wgslsmith_div_i32(-2147483647i, var_1.e.x)));
    var var_3 = _wgslsmith_f_op_f32(-603f + 113f);
    let var_4 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_2.b, 983f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b, 595f, -625f), vec3<f32>(-1406f, var_2.b, var_2.b), vec3<bool>(false, var_2.a.b, true))), vec3<f32>(var_2.b, var_2.b, var_2.b)))));
    var_2 = Struct_2(var_2.a, func_2(abs(u_input.c)).a, var_2.a.c, var_2.d);
    var var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(-u_input.a, ~(0i | var_5.c.e.x)), 1i));
}


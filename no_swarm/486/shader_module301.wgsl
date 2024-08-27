struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<i32>(4818i, 13954i), vec4<bool>(false, false, true, false), Struct_1(vec2<i32>(-8206i, 5339i), vec2<i32>(7980i, 1i)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-19298i, i32(-2147483648)))), Struct_3(vec2<i32>(1i, -42945i), vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(58949i, -38860i), vec2<i32>(-40888i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 1i))), Struct_3(vec2<i32>(i32(-2147483648), 33098i), vec4<bool>(false, false, true, true), Struct_1(vec2<i32>(12165i, 2147483647i), vec2<i32>(2147483647i, 4272i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -1i))), Struct_3(vec2<i32>(35664i, -10308i), vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(19958i, -59350i), vec2<i32>(-44945i, 1i)), Struct_1(vec2<i32>(-79721i, i32(-2147483648)), vec2<i32>(2147483647i, -1i))), Struct_3(vec2<i32>(1i, -6241i), vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(-35570i, -21529i), vec2<i32>(-1i, 1i))), Struct_3(vec2<i32>(97327i, 27253i), vec4<bool>(false, true, true, false), Struct_1(vec2<i32>(40588i, -1i), vec2<i32>(-25614i, -2517i)), Struct_1(vec2<i32>(-1i, -428i), vec2<i32>(4224i, 2147483647i))), Struct_3(vec2<i32>(-1i, 47240i), vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 27159i)), Struct_1(vec2<i32>(7318i, 1i), vec2<i32>(16119i, 2147483647i))), Struct_3(vec2<i32>(-1i, 0i), vec4<bool>(false, false, true, true), Struct_1(vec2<i32>(-11124i, -1i), vec2<i32>(22747i, -1i)), Struct_1(vec2<i32>(0i, -5308i), vec2<i32>(-18792i, 1i))), Struct_3(vec2<i32>(1i, -34571i), vec4<bool>(false, false, true, false), Struct_1(vec2<i32>(78732i, -69347i), vec2<i32>(i32(-2147483648), 10749i)), Struct_1(vec2<i32>(1i, 7530i), vec2<i32>(7612i, 2808i))), Struct_3(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, false, false, false), Struct_1(vec2<i32>(-58229i, -1i), vec2<i32>(26867i, -48671i)), Struct_1(vec2<i32>(-1i, 36475i), vec2<i32>(-20245i, 1i))), Struct_3(vec2<i32>(i32(-2147483648), -22943i), vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(-16518i, -1i), vec2<i32>(-3572i, 18257i)), Struct_1(vec2<i32>(34948i, 2772i), vec2<i32>(1i, -1i))), Struct_3(vec2<i32>(0i, 28861i), vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -32384i)), Struct_1(vec2<i32>(-27037i, -3963i), vec2<i32>(6938i, 44621i))), Struct_3(vec2<i32>(37733i, -10027i), vec4<bool>(false, true, false, true), Struct_1(vec2<i32>(-42177i, 18294i), vec2<i32>(3461i, 21922i)), Struct_1(vec2<i32>(44445i, 2131i), vec2<i32>(-25973i, -49081i))), Struct_3(vec2<i32>(-32460i, 16661i), vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(1i, -4892i), vec2<i32>(0i, -28800i)), Struct_1(vec2<i32>(-1i, -1i), vec2<i32>(1774i, -84673i))), Struct_3(vec2<i32>(2147483647i, -1i), vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, 363i)), Struct_1(vec2<i32>(44171i, -24731i), vec2<i32>(-45782i, -8266i))), Struct_3(vec2<i32>(1i, 1i), vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), -1i))));

var<private> global2: vec2<f32> = vec2<f32>(230f, 423f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2177f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) + _wgslsmith_f_op_f32(min(-823f, global2.x)))));
    let var_0 = arg_2;
    global2 = vec2<f32>(-200f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-249f))));
    global1 = array<Struct_3, 16>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(~abs(~vec2<u32>(1u, u_input.b)), ~(~vec2<u32>(1u, u_input.b)) & vec2<u32>(4294967295u, _wgslsmith_sub_u32(98988u, u_input.b)));
    return any(!(!(!vec3<bool>(arg_2.a.x, false, var_0.a.x))));
}

fn func_3(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<u32>(1u, u_input.a, u_input.a, ~(~u_input.b) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(abs(u_input.a), firstLeadingBit(1u)), ~u_input.a & u_input.b) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-2074f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-100f - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-874f + 462f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x * global2.x)))));
    return Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i ^ (-13541i << (var_0.x % 32u)), ~1i), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(55342i, 13216i, -10281i, 22234i), vec4<i32>(-34748i, 0i, 1i, -16676i)), 1i), -_wgslsmith_div_i32(2147483647i, -1i)), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-2147483647i, 41240i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-5067i, -50461i), vec2<i32>(8417i, 11915i)))), select(vec2<i32>(1i, 1i), (select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-24567i, 0i), vec2<bool>(arg_0, arg_0)) ^ max(vec2<i32>(-75973i, 1i), vec2<i32>(-12811i, 2147483647i))) & vec2<i32>(_wgslsmith_sub_i32(1i, 2147483647i), -2147483647i), arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-662f))))))));
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.b, 0u), firstTrailingBit(u_input.a)), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(6801u, u_input.a, u_input.a)), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1451u, 4294967295u, 0u), vec4<u32>(1u, u_input.a, 18471u, u_input.b)), 1u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(13289u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 45386u), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), select(firstTrailingBit(vec3<u32>(u_input.b, u_input.a, u_input.b)), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.b)), true)), min(vec3<u32>(~4294967295u, u_input.a, ~u_input.b), ~vec3<u32>(u_input.a, 95078u, 19321u)), _wgslsmith_div_vec3_u32(firstTrailingBit(abs(vec3<u32>(u_input.a, 21053u, u_input.a))), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.a)), abs(vec3<u32>(43565u, u_input.b, 26539u))))));
    return -1387f;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f - global2.x))), _wgslsmith_f_op_f32(floor(908f)), global2.x, _wgslsmith_f_op_f32(func_4(func_3(func_2(vec2<f32>(-1385f, global2.x), Struct_1(vec2<i32>(0i, 1i), vec2<i32>(-2147483647i, 23646i)), Struct_4(vec2<bool>(false, false)), Struct_2(1i))), ~(-23154i))))));
    global0 = -1000f;
    let var_1 = any(!select(vec3<bool>(true, false, select(true, false, false)), vec3<bool>(true, true, true), true));
    var var_2 = _wgslsmith_f_op_f32(func_4(Struct_1(vec2<i32>(-1i, _wgslsmith_div_i32(0i, select(52679i, -2147483647i, true))), vec2<i32>(func_3(any(vec2<bool>(var_1, false))).b.x, firstLeadingBit(2147483647i))), 42171i));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wz), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1357f))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-1165f * global2.x);
    var var_0 = true;
    var var_1 = vec4<u32>(u_input.b, ~reverseBits(_wgslsmith_mult_u32(59477u, ~u_input.a)), 4294967295u, u_input.b);
    let var_2 = all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec4<bool>(false, true, false, true)), func_1(), true, true), !vec4<bool>(true, true, all(vec2<bool>(false, false)), true)));
    let var_3 = ~select(vec4<i32>(-17034i, _wgslsmith_mod_i32(i32(-1i) * -1i, -18442i << (u_input.b % 32u)), select(1i, ~21608i, true), 0i), select(-vec4<i32>(-45532i, 2147483647i, 0i, 1i) | firstTrailingBit(vec4<i32>(-14340i, -39681i, 15483i, -1503i)), vec4<i32>(1i, 1i, 1i, 1i), !(!vec4<bool>(var_2, true, true, false))), !(!all(vec4<bool>(false, var_2, var_2, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-13524i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -2591f, -294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f * 1000f))) + vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(514f * 678f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(round(-1180f))))), -vec2<i32>(_wgslsmith_div_i32(~var_3.x, ~var_3.x), var_3.x), var_1.x);
}


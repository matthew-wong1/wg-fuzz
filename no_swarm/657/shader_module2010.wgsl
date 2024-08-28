struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec4<u32>(23643u, ~(~(1u >> (0u % 32u))), reverseBits(_wgslsmith_mult_u32(~12063u, 1u)), 22551u), u_input.c.xy, reverseBits(_wgslsmith_add_u32(6937u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1824u, 0u), vec2<u32>(0u, 4294967295u))))), _wgslsmith_add_u32(abs(0u), 1u), ~vec4<u32>(4294967295u, 0u, abs(~26384u), 56396u));
    var var_1 = false | global0[_wgslsmith_index_u32(var_0.d, 22u)];
    global0 = array<bool, 22>();
    let var_2 = ~_wgslsmith_sub_vec3_u32(var_0.e.wwy, var_0.e.wwy);
    var var_3 = select(-abs(~max(var_0.b, vec2<i32>(var_0.b.x, u_input.b))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(firstLeadingBit(abs(vec2<i32>(u_input.b, u_input.b))), -(vec2<i32>(2147483647i, var_0.b.x) ^ u_input.c.wx), firstLeadingBit(vec2<i32>(u_input.c.x, 10467i)))), false);
    return ~_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(1u, ~abs(var_2.x), var_2.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    let var_0 = u_input.c.zz;
    let var_1 = Struct_2(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, arg_0.x), 22u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 22u)], false)))), -145f, global0[_wgslsmith_index_u32(arg_1, 22u)], Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x << (4294967295u % 32u), 1u, 66753u, ~5461u), ~vec4<u32>(arg_1, 9104u, 35310u, arg_1) << (~vec4<u32>(arg_1, 8569u, arg_0.x, arg_0.x) % vec4<u32>(32u))), -(vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, -1i)), arg_1, arg_0.x << (_wgslsmith_mult_u32(func_3(), _wgslsmith_div_u32(arg_1, 43685u)) % 32u), vec4<u32>(~arg_0.x ^ arg_0.x, reverseBits(15295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 30646u, arg_1, arg_1), vec4<u32>(arg_0.x, 4294967295u, 1u, 11040u)), 22696u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(624f, -930f)), _wgslsmith_f_op_f32(424f * _wgslsmith_f_op_f32(round(2016f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1898f, 617f, -402f))))));
    return 2305u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<bool, 22>();
    var var_0 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(-(~arg_1.d.b.x), -24766i), -1i));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_3 + arg_3)));
    var var_3 = arg_1.d;
    return arg_0;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = func_4(Struct_1(vec4<u32>(0u, _wgslsmith_div_u32(7316u, 3723u) >> (1u % 32u), 4294967295u, ~func_2(vec2<u32>(121687u, 84760u), 4891u)), ~vec2<i32>(-1i, 1i), 4294967295u, ~1u, ~(~vec4<u32>(1u, 0u, 77881u, 4294967295u))), Struct_2(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 22u)], true, global0[_wgslsmith_index_u32(1u, 22u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(40848u, 22u)], false, global0[_wgslsmith_index_u32(1667u, 22u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(11830u, 22u)], true, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 22u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(56403u, 22u)], false, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(40051u, 22u)]), global0[_wgslsmith_index_u32(4294967295u, 22u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(12198u, 22u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(16657u, 22u)]))), Struct_1(vec4<u32>(~14367u, 1u, reverseBits(85751u), ~1u), ~vec2<i32>(u_input.c.x, -2147483647i), _wgslsmith_div_u32(4294967295u, 45137u) | func_3(), _wgslsmith_add_u32(~43771u, _wgslsmith_add_u32(0u, 10229u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 1u, 91260u), ~vec4<u32>(83329u, 32366u, 13184u, 1u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 1375f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, 283f, -220f)), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), all(vec2<bool>(false, global0[_wgslsmith_index_u32(26381u, 22u)])))))), !global0[_wgslsmith_index_u32(~0u, 22u)], _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + arg_0)))));
    var var_1 = Struct_1(~var_0.e, _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~countOneBits(var_0.b), -var_0.b), vec2<i32>(-u_input.b | select(var_0.b.x, 1i, true), -30840i)), ~0u, 1u, ~(~(~(~vec4<u32>(72483u, var_0.a.x, 37589u, var_0.e.x)))));
    var var_2 = !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], any(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.d, 22u)], true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 22u)], false), false), select(true, false, true))));
    var_1 = Struct_1(firstLeadingBit(var_1.a), vec2<i32>(countOneBits(var_1.b.x >> (17598u % 32u)) << (21579u % 32u), var_1.b.x), ~79365u, var_1.d, var_0.e);
    global0 = array<bool, 22>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(543f, arg_0.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) * _wgslsmith_f_op_f32(select(179f, -172f, global0[_wgslsmith_index_u32(4294967295u, 22u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 22>();
    let var_0 = Struct_2(vec4<bool>(!all(vec3<bool>(true, true, true)), false, true, global0[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-243f, 346f, 585f, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1150f, -1788f, -728f, -515f), vec4<f32>(160f, 1000f, -753f, -1027f))))))), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(2668u, func_4(Struct_1(vec4<u32>(97796u, 4294967295u, 32437u, 42958u), vec2<i32>(5065i, 11915i), 142u, 4294967295u, vec4<u32>(0u, 40030u, 1u, 4294967295u)), Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(62912u, 22u)]), 490f, true, Struct_1(vec4<u32>(60566u, 1u, 66381u, 0u), vec2<i32>(u_input.c.x, -73114i), 103833u, 69355u, vec4<u32>(4294967295u, 0u, 2865u, 0u)), vec3<f32>(-754f, 185f, 1085f)), any(vec4<bool>(global0[_wgslsmith_index_u32(27718u, 22u)], true, global0[_wgslsmith_index_u32(80766u, 22u)], true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1424f, 232f, -535f, -399f) + vec4<f32>(-148f, -489f, -479f, -763f))).d, 0u), 22u)], func_4(Struct_1(select(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), reverseBits(vec4<u32>(4294967295u, 15819u, 0u, 15819u)), true), _wgslsmith_div_vec2_i32(u_input.c.zy, vec2<i32>(-7174i, u_input.c.x)), 1u, 9580u, min(vec4<u32>(0u, 4294967295u, 0u, 13938u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 59752u, 0u, 1u), vec4<u32>(26632u, 5764u, 0u, 0u)))), Struct_2(select(!vec4<bool>(global0[_wgslsmith_index_u32(30691u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], false, global0[_wgslsmith_index_u32(4294967295u, 22u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(24633u, 22u)], false, true), global0[_wgslsmith_index_u32(1u, 22u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(1120u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], true, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(627u, 22u)]), global0[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), -1040f), true, func_4(Struct_1(vec4<u32>(4294967295u, 0u, 31536u, 1u), u_input.c.yx, 81450u, 1u, vec4<u32>(4294967295u, 75652u, 59003u, 796u)), Struct_2(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], true), -254f, false, Struct_1(vec4<u32>(6758u, 0u, 62231u, 0u), u_input.c.wy, 4294967295u, 4294967295u, vec4<u32>(1u, 1u, 21467u, 135494u)), vec3<f32>(2197f, -408f, -217f)), global0[_wgslsmith_index_u32(firstLeadingBit(25498u), 22u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(1993f, -276f, -1047f, 1000f) - vec4<f32>(-283f, 1884f, 202f, 857f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_clamp_u32(9462u, 23701u, func_3()) <= func_4(Struct_1(vec4<u32>(23975u, 3017u, 0u, 27710u), u_input.c.xw, 1u, 0u, vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_2(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(9073u, 22u)]), 1182f, global0[_wgslsmith_index_u32(1u, 22u)], Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), vec2<i32>(u_input.a, u_input.b), 1u, 4294967295u, vec4<u32>(16019u, 91636u, 28017u, 46054u)), vec3<f32>(837f, 1256f, -852f)), any(vec2<bool>(global0[_wgslsmith_index_u32(10824u, 22u)], global0[_wgslsmith_index_u32(48900u, 22u)])), vec4<f32>(-1209f, -1000f, 338f, 251f)).a.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-224f, -1562f, 1000f, 838f))))), vec4<f32>(_wgslsmith_f_op_f32(max(1681f, -1821f)), 1000f, _wgslsmith_f_op_f32(483f - -471f), 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2161f, -1167f, 1994f)))))));
    let var_1 = var_0;
    global0 = array<bool, 22>();
    let var_2 = var_0.a.wxx;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -158f);
    var_3 = 758f;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(-1i) * -(vec4<i32>(-20264i, u_input.a, u_input.c.x, var_0.d.b.x) >> (vec4<u32>(var_1.d.c, 53607u, var_0.d.c, 24616u) % vec4<u32>(32u))), u_input.c, !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, abs(var_1.d.c), func_3()), 22u)]), var_1.d.e.x);
}


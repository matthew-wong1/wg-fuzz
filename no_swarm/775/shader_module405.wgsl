struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-165f, 77209u, vec2<f32>(340f, 901f), -1310f), Struct_1(-1589f, 42874u, vec2<f32>(-1128f, -1344f), 2592f), Struct_1(-1586f, 39763u, vec2<f32>(-107f, 550f), -965f), Struct_1(740f, 51714u, vec2<f32>(1340f, 759f), 1419f), Struct_1(-820f, 1u, vec2<f32>(-113f, -372f), -437f), Struct_1(467f, 55770u, vec2<f32>(-614f, 1505f), -145f), Struct_1(2025f, 57953u, vec2<f32>(-1327f, 1284f), 442f), Struct_1(-955f, 24540u, vec2<f32>(-354f, -1108f), 840f), Struct_1(1000f, 15747u, vec2<f32>(2837f, -853f), -1761f), Struct_1(766f, 75149u, vec2<f32>(418f, -619f), 2328f), Struct_1(-822f, 37009u, vec2<f32>(-2668f, 107f), 1187f), Struct_1(-2254f, 1u, vec2<f32>(-882f, 1760f), -1221f), Struct_1(368f, 11957u, vec2<f32>(771f, -105f), 1909f), Struct_1(1526f, 35022u, vec2<f32>(1000f, -294f), 585f), Struct_1(1448f, 41528u, vec2<f32>(-908f, 952f), -218f), Struct_1(2298f, 8397u, vec2<f32>(-707f, -638f), 447f), Struct_1(208f, 0u, vec2<f32>(631f, -201f), -677f), Struct_1(103f, 113u, vec2<f32>(-1386f, 407f), -678f), Struct_1(-1265f, 39976u, vec2<f32>(244f, 736f), 1690f), Struct_1(-542f, 53311u, vec2<f32>(1000f, 1358f), -2078f), Struct_1(732f, 66727u, vec2<f32>(-2174f, 2638f), 1131f), Struct_1(1073f, 67204u, vec2<f32>(426f, 586f), -1332f), Struct_1(926f, 58714u, vec2<f32>(-278f, 1000f), -1000f), Struct_1(-1214f, 64324u, vec2<f32>(-754f, 207f), -1171f), Struct_1(780f, 1u, vec2<f32>(164f, -555f), -737f));

var<private> global1: Struct_1 = Struct_1(554f, 35300u, vec2<f32>(-669f, -1175f), -1700f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    var var_0 = all(select(select(vec3<bool>(!arg_1, true, arg_0.d >= global1.a), select(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, false), true), vec3<bool>(false, true, arg_1), arg_1), vec3<bool>(arg_1, true, !arg_1)), select(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, true, arg_1)), select(!vec3<bool>(true, true, arg_1), !vec3<bool>(arg_1, arg_1, arg_1), arg_1), false), any(select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false)), all(vec2<bool>(true, arg_1))))));
    var var_1 = Struct_1(1000f, ~select(arg_0.b, ~(~u_input.b), any(!vec2<bool>(arg_1, false))), vec2<f32>(_wgslsmith_f_op_f32(global1.d * -991f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_f32(max(1f, global1.d)))), global1.d);
    var var_2 = 4294967295u;
    var var_3 = !select(select(select(vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, true))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, arg_1)), !select(arg_1, true, arg_1)), !(!select(vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, true, true))), arg_1);
    let var_4 = _wgslsmith_mod_u32(0u, max(42404u, 12450u));
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec3<u32>(u_input.a.x, 1u, ~(u_input.b ^ countOneBits(arg_0))) ^ ~vec3<u32>(arg_0, func_3(Struct_1(global1.a, arg_0, global1.c, 913f), true, vec4<i32>(0i, -22564i, 1i, -28989i)), 4294967295u);
    var var_1 = abs(select(-min(firstTrailingBit(vec3<i32>(-29212i, -21572i, -2147483647i)), select(vec3<i32>(-22035i, 18265i, -11532i), vec3<i32>(-16328i, 22525i, 1i), false)), vec3<i32>(_wgslsmith_clamp_i32(1i, ~1i, _wgslsmith_clamp_i32(27628i, 0i, 2147483647i)), countOneBits(~(-2147483647i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 50416i, 6254i)), ~vec3<i32>(-29714i, 1i, 1i))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.c.x == global1.b), true)));
    var var_2 = ~arg_0;
    var var_3 = global1.c;
    let var_4 = vec3<bool>(any(!vec4<bool>(any(vec2<bool>(true, false)), true, false, true)), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))) & true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, true)), all(vec3<bool>(true, false, true)) == (var_1.x < var_1.x))));
    return 43241u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.a), abs(arg_1.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 1f)), -913f), arg_1.d);
    var var_0 = 525f;
    let var_1 = arg_1;
    global0 = array<Struct_1, 25>();
    global1 = Struct_1(514f, 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1123f, var_1.d))));
    return arg_2;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = vec3<bool>(true, any(vec3<bool>(~21110u < _wgslsmith_dot_vec4_u32(u_input.a, u_input.c), true, true)), reverseBits(_wgslsmith_sub_i32(i32(-1i) * -31505i, _wgslsmith_add_i32(0i, 1i))) == ~(~(-1i >> (u_input.c.x % 32u))));
    var var_1 = 1510f;
    let var_2 = func_4(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_0.x, arg_0.x)) | func_2(select(39454u, 43053u, false))), 25u)], Struct_1(-911f, _wgslsmith_mult_u32(select(arg_1.b, _wgslsmith_clamp_u32(4294967295u, arg_1.b, u_input.e), true), ~(~arg_1.b)), _wgslsmith_f_op_vec2_f32(global1.c - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1248f, -1000f) - arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 391f)))), -2077f), var_0.x);
    var var_3 = arg_1;
    let var_4 = !vec4<bool>(reverseBits(~4294967295u) != ~(u_input.c.x & 14719u), !var_2, any(!(!vec4<bool>(true, var_2, false, var_0.x))), all(select(vec3<bool>(var_0.x, var_2, false), !vec3<bool>(var_2, var_0.x, var_0.x), !var_0.x)));
    return select(vec3<bool>(func_4(Struct_1(-848f, var_3.b, global1.c, -534f), Struct_1(var_3.d, arg_0.x, arg_1.c, 642f), any(vec3<bool>(var_4.x, var_4.x, true))) || true, !(!var_4.x), true), var_4.zxz, !var_4.wyw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    let var_0 = select(vec4<bool>(false, any(!func_1(u_input.c.wy, global0[_wgslsmith_index_u32(global1.b, 25u)], global1.d)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true), vec4<bool>(func_4(Struct_1(_wgslsmith_f_op_f32(global1.a * 1945f), func_3(Struct_1(global1.a, u_input.a.x, global1.c, -1150f), false, vec4<i32>(704i, -36076i, 1i, 35167i)), global1.c, global1.a), global0[_wgslsmith_index_u32(u_input.b, 25u)], all(vec3<bool>(true, true, true))), ~(~global1.b) > u_input.a.x, any(func_1(u_input.a.yy, global0[_wgslsmith_index_u32(~global1.b, 25u)], _wgslsmith_f_op_f32(-global1.c.x)).xx), true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)) & ((~global1.b <= global1.b) | !any(vec4<bool>(false, true, true, true))));
    let var_1 = 1u;
    var var_2 = global1.d;
    global1 = global0[_wgslsmith_index_u32(global1.b, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -1i, ~vec4<i32>(~reverseBits(-1i), 14645i, ~(~(-2147483647i)), _wgslsmith_mult_i32(~(-2147483647i), 1i)), ~vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-563i, 4169i), vec2<i32>(-37154i, -1i)), 1i, min(-11539i, _wgslsmith_dot_vec4_i32(vec4<i32>(-45426i, 0i, 26871i, -1i), vec4<i32>(-1i, 8456i, -25769i, -5177i))), 1i), vec4<f32>(-512f, 872f, _wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(abs(-1000f))));
}


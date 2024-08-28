struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(2393f, -1689f, 201f, 1770f, 1000f, -590f, 1047f, 1483f, -1170f, 2537f, 482f, -2409f, 1862f, 1091f, 1507f, -163f, -932f, -577f, -166f, 1000f, -1159f, -1000f, 849f, -383f, -612f, -1424f, 623f, 744f, -528f, 532f);

var<private> global1: array<Struct_3, 9>;

var<private> global2: array<bool, 24> = array<bool, 24>(false, false, false, true, true, true, true, true, false, false, false, false, false, false, false, false, true, true, false, false, true, true, false, false);

var<private> global3: array<i32, 11> = array<i32, 11>(0i, i32(-2147483648), -741i, 28846i, 0i, 0i, -32834i, 22681i, -81863i, 2147483647i, -3353i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 24u)];
    var var_1 = -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-15088i, global3[_wgslsmith_index_u32(49020u, 11u)]), vec2<i32>(u_input.a, 1582i)) >> (vec2<u32>(28690u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-15924i, -3672i) ^ vec2<i32>(u_input.a, 0i), vec2<i32>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)]))), vec2<i32>(global3[_wgslsmith_index_u32(~1u, 11u)], countOneBits(-36387i)));
    var_1 = vec2<i32>(-1i, ~(~_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 11u)], abs(var_1.x), global3[_wgslsmith_index_u32(1u, 11u)])));
    var var_2 = Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), all(select(vec4<bool>(global2[_wgslsmith_index_u32(59479u, 24u)], false, true, false), vec4<bool>(global2[_wgslsmith_index_u32(55485u, 24u)], global2[_wgslsmith_index_u32(1027u, 24u)], false, true), global2[_wgslsmith_index_u32(6348u, 24u)])) && (_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] + global0[_wgslsmith_index_u32(29001u, 30u)]) >= -1260f), select(-_wgslsmith_div_vec4_i32(vec4<i32>(-20029i, 1i, u_input.a, -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(54961u, 11u)], 2147483647i, global3[_wgslsmith_index_u32(74046u, 11u)], var_1.x)), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2537i, global3[_wgslsmith_index_u32(4578u, 11u)], u_input.a, 23142i), vec4<i32>(var_1.x, var_1.x, 0i, 1i)), vec4<i32>(u_input.a, var_1.x, 1i, u_input.a) << (vec4<u32>(9302u, 25601u, 4294967295u, 0u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(abs(0u), 24u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(~21140u, 24u)], global2[_wgslsmith_index_u32(23329u, 24u)], all(vec4<bool>(true, global2[_wgslsmith_index_u32(72136u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u >> (1u % 32u), firstTrailingBit(1u) | (~9361u ^ firstTrailingBit(1u))), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-215f, global0[_wgslsmith_index_u32(14558u, 30u)], true)))) + global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(74491u, countOneBits(4294967295u), global2[_wgslsmith_index_u32(1u, 24u)]), select(_wgslsmith_sub_u32(61161u, 5682u), 4294967295u >> (0u % 32u), global2[_wgslsmith_index_u32(22372u >> (0u % 32u), 24u)])), 30u)]), vec3<bool>(false, all(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(36634u, 24u)]))), global0[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(54297u, 4294967295u, 0u), _wgslsmith_clamp_u32(47717u, 1u, 97426u)), 30u)] < 1035f), !vec3<bool>(false, any(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 24u)], true, global2[_wgslsmith_index_u32(41905u, 24u)])), !(global0[_wgslsmith_index_u32(1u, 30u)] != global0[_wgslsmith_index_u32(48359u, 30u)])));
    var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a.x, var_2.a.a.x, 20141u), vec3<u32>(var_2.a.a.x, 74294u, 4294967295u)), 4294967295u), ~1u, var_2.a.a.x, var_2.a.a.x), !global2[_wgslsmith_index_u32(~var_2.a.a.x, 24u)], _wgslsmith_mod_vec4_i32(~var_2.a.c, vec4<i32>(-1i) * -vec4<i32>(-55612i, global3[_wgslsmith_index_u32(1u, 11u)], 0i, -27851i))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(103239u, 30u)], !vec3<bool>(!var_2.e.x & !var_2.e.x, global2[_wgslsmith_index_u32(33401u, 24u)], any(vec2<bool>(true, true))), var_2.e);
    return global0[_wgslsmith_index_u32(var_2.a.a.x, 30u)];
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-854f * -1000f)));
    global2 = array<bool, 24>();
    global2 = array<bool, 24>();
    global2 = array<bool, 24>();
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global0[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(29813u, 24u)])))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(arg_0.a)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    global3 = array<i32, 11>();
    let var_0 = ~0i;
    global1 = array<Struct_3, 9>();
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(19307u, 1602u, 4294967295u, 37947u), ~vec4<u32>(30816u, 0u, 1u, 5487u)), !any(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], true, false)), ~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 30538i, 0i), vec4<i32>(var_0, -2147483647i, global3[_wgslsmith_index_u32(27094u, 11u)], 6264i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(~4294967295u, ~0u, true), _wgslsmith_sub_u32(25337u, 1u)), 30u)]), _wgslsmith_f_op_f32(sign(-586f)), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], true, false), !vec3<bool>(false, global2[_wgslsmith_index_u32(9448u, 24u)], false), global2[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(select(false, false, true), true, global2[_wgslsmith_index_u32(0u, 24u)]), false), select(vec3<bool>(!any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], false)), !any(vec4<bool>(global2[_wgslsmith_index_u32(10834u, 24u)], false, global2[_wgslsmith_index_u32(39564u, 24u)], true)), !global2[_wgslsmith_index_u32(0u, 24u)] || true), vec3<bool>(1i <= var_0, global2[_wgslsmith_index_u32(countOneBits(1u), 24u)], !global2[_wgslsmith_index_u32(~1u, 24u)]), select(vec3<bool>(!global2[_wgslsmith_index_u32(40384u, 24u)], true, all(vec4<bool>(global2[_wgslsmith_index_u32(42246u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], true, true))), !(!vec3<bool>(global2[_wgslsmith_index_u32(4285u, 24u)], global2[_wgslsmith_index_u32(50071u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)])), select(!vec3<bool>(global2[_wgslsmith_index_u32(22068u, 24u)], true, global2[_wgslsmith_index_u32(6138u, 24u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(17273u, 24u)], global2[_wgslsmith_index_u32(23528u, 24u)], global2[_wgslsmith_index_u32(9714u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], false, global2[_wgslsmith_index_u32(0u, 24u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(21427u, 24u)], false, global2[_wgslsmith_index_u32(17139u, 24u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], true), true)))));
    let var_2 = var_1.a.a.yx;
    return -607f;
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], 2147483647i, 65787i, 1i), vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(1u, 11u)], u_input.a, 2147483647i)), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 11u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 42290i), vec2<i32>(-1i, 21557i)) << (_wgslsmith_div_vec2_u32(vec2<u32>(65745u, 31196u), vec2<u32>(4294967295u, 9301u)) % vec2<u32>(32u))) & -reverseBits(_wgslsmith_div_i32(18038i, u_input.a)), 1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(abs(-2147483647i), 0i, global3[_wgslsmith_index_u32(~81715u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)]), vec4<i32>(1i, 0i, _wgslsmith_add_i32(u_input.a, -2147483647i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(4093u, 11u)], global3[_wgslsmith_index_u32(21427u, 11u)])), vec4<bool>(!global2[_wgslsmith_index_u32(76677u, 24u)], true, 1i < u_input.a, false)), abs(firstTrailingBit(vec4<i32>(-17081i, u_input.a, 19018i, global3[_wgslsmith_index_u32(4294967295u, 11u)])) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(48040u, 11u)]), vec4<i32>(-3790i, 1i, -2195i, 0i)))));
    let var_1 = Struct_1(vec4<u32>(54853u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 34912u), abs(vec2<u32>(0u, 4294967295u))), firstLeadingBit(_wgslsmith_sub_u32(select(0u, 1u, global2[_wgslsmith_index_u32(144674u, 24u)]), abs(52880u))), ~86483u ^ select(1u, 1u, true)), global2[_wgslsmith_index_u32(~firstLeadingBit(~82368u), 24u)], var_0);
    let var_2 = abs(var_0.x);
    var var_3 = -36884i;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a.x, 30u)]));
    return Struct_1(var_1.a, var_1.b, select(vec4<i32>(_wgslsmith_div_i32(var_0.x, -5841i), -6704i, ~var_0.x, reverseBits(reverseBits(15901i))), vec4<i32>(_wgslsmith_sub_i32(-u_input.a, i32(-1i) * -1i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.c.x, -6792i), firstLeadingBit(0i), 1i), ~(-var_1.c.x), -20971i), 2147483647i != -_wgslsmith_mult_i32(var_1.c.x, 61700i)));
}

fn func_1() -> u32 {
    global0 = array<f32, 30>();
    var var_0 = firstTrailingBit(vec3<i32>(~(max(-16062i, -24238i) & u_input.a), u_input.a, max(u_input.a, global3[_wgslsmith_index_u32(75444u, 11u)])));
    let var_1 = func_5(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(-941f), Struct_1(vec4<u32>(51092u, 36707u, 0u, 159u), global2[_wgslsmith_index_u32(66338u, 24u)], vec4<i32>(var_0.x, 25734i, 2147483647i, global3[_wgslsmith_index_u32(6194u, 11u)]))))), 1607f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] - _wgslsmith_f_op_f32(sign(261f)))));
    var var_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 1u << (var_1.a.x % 32u), var_1.a.x, ~(~var_1.a.x)), all(select(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 24u)], true, true, true), select(vec4<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 24u)], true, var_1.b, false), vec4<bool>(global2[_wgslsmith_index_u32(9487u, 24u)], false, global2[_wgslsmith_index_u32(var_1.a.x, 24u)], var_1.b), true), any(vec3<bool>(true, global2[_wgslsmith_index_u32(var_1.a.x, 24u)], var_1.b)))), abs(var_1.c)), _wgslsmith_f_op_f32(func_3()), 376f, !vec3<bool>(var_1.b, all(vec3<bool>(var_1.b, true, var_1.b)), _wgslsmith_f_op_f32(min(1020f, global0[_wgslsmith_index_u32(4597u, 30u)])) == global0[_wgslsmith_index_u32(~var_1.a.x, 30u)]), select(!vec3<bool>(global2[_wgslsmith_index_u32(~var_1.a.x, 24u)], true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.a.x, var_1.a.x), 24u)]), !select(vec3<bool>(var_1.b, false, var_1.b), !vec3<bool>(true, global2[_wgslsmith_index_u32(var_1.a.x, 24u)], true), var_1.a.x != 30949u), all(!(!vec2<bool>(var_1.b, var_1.b)))));
    var_2 = Struct_2(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1625f) + var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-102f, var_2.c)) * global0[_wgslsmith_index_u32(~14104u, 30u)]), _wgslsmith_div_f32(-1743f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(96966u, 30u)] - -221f)), all(select(var_2.d, var_2.d, var_1.b))))), !var_2.e, var_2.d);
    return ~(~var_1.a.x);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(arg_1, 30u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], -429f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 221f, -294f) + vec3<f32>(-437f, -111f, global0[_wgslsmith_index_u32(945u, 30u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4913u, 30u)]), _wgslsmith_div_f32(-803f, -1646f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, 1u), 30u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 2339f, global0[_wgslsmith_index_u32(37710u, 30u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(arg_1, 30u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 782f, global0[_wgslsmith_index_u32(arg_1, 30u)]) + vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 30u)], -527f, 1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -155f, -458f) + vec3<f32>(-660f, global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(83601u, 30u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1003f, 1133f, 600f))))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(-1710f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(1u, 9u)])))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 30u)]) + global0[_wgslsmith_index_u32(4294967295u, 30u)]), var_0.x, global0[_wgslsmith_index_u32(arg_1, 30u)]));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> StorageBuffer {
    global2 = array<bool, 24>();
    let var_0 = false | any(arg_1.e.zy);
    global3 = array<i32, 11>();
    let var_1 = true;
    global3 = array<i32, 11>();
    return StorageBuffer(2412u, min(_wgslsmith_sub_i32(arg_1.a.c.x, i32(-1i) * -1i), ~func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-931f, -147f), arg_0.yy))).c.x), vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(select(506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1583f + -1076f)), any(!arg_1.e.xy))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-418f)), 625f)), -820f), max(~arg_1.a.c.xw, _wgslsmith_sub_vec2_i32(abs(arg_1.a.c.yx), arg_1.a.c.xy >> (arg_1.a.a.zw % vec2<u32>(32u)))) ^ arg_1.a.c.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 11>();
    var var_0 = global1[_wgslsmith_index_u32(~(~1u), 9u)];
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_6(global3[_wgslsmith_index_u32(func_1() >> (1u % 32u), 11u)], func_1(), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(65832u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))))), Struct_2(Struct_1(~vec4<u32>(54737u, 0u, 111384u, 0u), 2147483647i > global3[_wgslsmith_index_u32(~0u, 11u)], ~vec4<i32>(5560i, global3[_wgslsmith_index_u32(3259u, 11u)], u_input.a, global3[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(-693f, -743f), var_0.a), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 24u)]), global2[_wgslsmith_index_u32(55608u, 24u)])), vec3<bool>(-1i <= u_input.a, all(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, true, true)), false)), 1i & _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -7504i), vec2<i32>(u_input.a, u_input.a))), vec2<i32>(34953i, -6990i)), global2[_wgslsmith_index_u32(98325u, 24u)]);
}


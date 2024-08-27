struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<u32, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    return _wgslsmith_f_op_f32(sign(arg_0.a));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(748f, -1867f)) - -687f) * -1020f), _wgslsmith_f_op_f32(func_1(Struct_1(-1000f, u_input.a.x, ~global1[_wgslsmith_index_u32(u_input.a.x, 18u)], countOneBits(-7702i), 81664u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-180f, select(global1[_wgslsmith_index_u32(arg_0, 18u)], arg_0, false), min(3478u, u_input.a.x), i32(-1i) * -2147483647i, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f + _wgslsmith_div_f32(-1000f, 874f)) + _wgslsmith_f_op_f32(-2440f - -1000f))));
    global0 = vec3<bool>(~4294967295u > _wgslsmith_mod_u32(u_input.a.x, ~(~arg_0)), true, _wgslsmith_sub_u32(abs(~arg_0), u_input.c) >= _wgslsmith_mod_u32(u_input.a.x, 22660u));
    global0 = !vec3<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 12989i, -2147483647i), vec3<i32>(-712i, -2147483647i, -11105i)) < -83972i, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 18u)], 0u, 42432u), ~vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)) > 1u, var_0.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 342f));
    var var_1 = min(firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a)), 2175u ^ ~arg_0);
    var var_2 = firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(~63501u, ~(729u << (global1[_wgslsmith_index_u32(u_input.b, 18u)] % 32u))), 16727u));
    return 10777i;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = func_3(45046u);
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(466f)))))), _wgslsmith_add_u32(0u, arg_0.x), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, 23408u, 4294967295u, 40464u) >> (vec4<u32>(arg_1.c, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0u, 12213u) % vec4<u32>(32u)))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 19751u, arg_0.x, 4294967295u), select(vec4<u32>(arg_1.c, arg_0.x, 16361u, 76291u), vec4<u32>(2833u, 34163u, u_input.a.x, arg_1.b), vec4<bool>(false, true, global0.x, false)))), arg_1.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 5414u, arg_0.x), vec3<u32>(7839u, _wgslsmith_dot_vec4_u32(vec4<u32>(31781u, 1u, global1[_wgslsmith_index_u32(arg_0.x, 18u)], u_input.b), vec4<u32>(u_input.a.x, 0u, arg_0.x, 66726u)), _wgslsmith_div_u32(arg_0.x, 1u))) % 32u), ~0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<u32, 18>();
    var var_0 = ~abs(_wgslsmith_add_i32(countOneBits(arg_1.d), -arg_0.d) | (arg_0.d | -arg_1.d));
    let var_1 = ~vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 18u)]), reverseBits(14285u)), ~0u), ~1u);
    global1 = array<u32, 18>();
    return ~_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(8631u), max(arg_1.b, 65921u), 47095u), abs(~vec3<u32>(0u, 96544u, arg_0.c)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> StorageBuffer {
    global0 = vec3<bool>(any(vec2<bool>(arg_3, any(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(false, false, true, global0.x), vec4<bool>(arg_2.x, false, arg_2.x, false))))), true | any(vec2<bool>(true, true)), true);
    let var_0 = func_2(vec2<u32>(global1[_wgslsmith_index_u32(abs(24936u), 18u)], 1u >> (~u_input.a.x % 32u)) | vec2<u32>(_wgslsmith_mod_u32(u_input.c >> (29078u % 32u), 17981u), arg_1.b), Struct_1(1619f, func_4(Struct_1(arg_0.a, arg_0.c, ~0u, arg_1.d, firstTrailingBit(14989u)), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(45137u, 23930u), u_input.a), func_2(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(arg_0.e, 18u)]), Struct_1(831f, 26069u, global1[_wgslsmith_index_u32(4401u, 18u)], 10915i, arg_1.b), arg_0.a, vec3<f32>(-1054f, 561f, 1016f)), arg_1.a, vec3<f32>(arg_0.a, 311f, -1118f))).x, ~(~1u), select(arg_1.d, 385i, any(select(global0.xz, arg_2.xz, global0.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e, 52636u, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.b, 20174u, 14906u, global1[_wgslsmith_index_u32(0u, 18u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a)))), -403f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1895f, arg_1.a, arg_0.a) - vec3<f32>(-1940f, -1705f, arg_1.a))))))));
    var var_1 = ~((vec3<u32>(1u, ~var_0.e, 0u ^ arg_1.c) >> (vec3<u32>(66706u, 5114u, 1u) % vec3<u32>(32u))) >> (abs(reverseBits(select(vec3<u32>(5984u, arg_1.e, 1u), vec3<u32>(33332u, 4294967295u, var_0.e), false))) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(51518u, 18u)], 6610u, u_input.b), vec3<u32>(arg_0.c, 4294967295u, 4294967295u)), _wgslsmith_clamp_u32(24228u, arg_1.e, arg_0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, 1u), vec3<u32>(24362u, var_1.x, u_input.a.x))), abs(global1[_wgslsmith_index_u32(4294967295u, 18u)] | 39425u)), 10854u ^ reverseBits(arg_0.e), ~arg_1.d, _wgslsmith_dot_vec4_u32(max(vec4<u32>(_wgslsmith_div_u32(93996u, u_input.b), var_0.c, 1u, ~arg_0.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, 0u, arg_0.b, global1[_wgslsmith_index_u32(arg_1.c, 18u)]) >> (vec4<u32>(6177u, 24245u, 4294967295u, 8337u) % vec4<u32>(32u)), select(vec4<u32>(var_0.e, var_0.c, global1[_wgslsmith_index_u32(1u, 18u)], arg_1.b), vec4<u32>(arg_1.b, arg_0.c, 0u, 4294967295u), vec4<bool>(false, arg_2.x, global0.x, arg_2.x)), vec4<u32>(u_input.c, 14077u, 59113u, u_input.b))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, var_0.c), 1u, ~0u, 46401u), ~(~vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u)), vec4<u32>(max(4294967295u, var_1.x), 1u, var_1.x, arg_1.b))));
    let var_3 = _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(-1i, -1i) >> (_wgslsmith_clamp_u32(arg_0.c, arg_0.b, 1u) % 32u), var_0.d), _wgslsmith_add_vec2_i32(abs(~vec2<i32>(1i, 1i)), vec2<i32>(abs(_wgslsmith_mult_i32(arg_0.d, -19697i)), var_0.d)));
    return StorageBuffer(~var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(func_1(var_0))), arg_0.a, -756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    let x = u_input.a;
    s_output = func_5(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(1154f, _wgslsmith_f_op_f32(func_1(Struct_1(-2423f, 0u, 1u, 28386i, u_input.b)))), -209f), _wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37598u, 18u)], 18u)])), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 4294967295u, 1u)), func_4(func_2(vec2<u32>(u_input.a.x, u_input.b), Struct_1(-1261f, 4294967295u, 0u, -2147483647i, u_input.a.x), 872f, vec3<f32>(104f, 1102f, -695f)), func_2(u_input.a, Struct_1(-985f, 1u, 0u, 2147483647i, 66346u), 289f, vec3<f32>(-130f, 519f, -660f)))), u_input.b, -(countOneBits(2147483647i) << (_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 16384u, 21955u) % 32u)), ~u_input.b), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f), -1545f))), ~global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, 15949u), 18u)], _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~88180u, 0u, _wgslsmith_mult_u32(4294967295u, u_input.c)), 41057u | global1[_wgslsmith_index_u32(88691u, 18u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16634u, 18u)], 18u)], 1u, u_input.b), vec3<u32>(39993u, 9407u, u_input.b)), ~0u)), -2147483647i, 1u), select(!(!select(vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, true), vec3<bool>(true, false, global0.x))), select(select(select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x)), vec3<bool>(global0.x, global0.x, true), global1[_wgslsmith_index_u32(38823u, 18u)] < u_input.a.x), vec3<bool>(true | global0.x, global0.x, false), all(select(vec2<bool>(true, false), global0.yx, global0.xz))), vec3<bool>(any(!vec3<bool>(true, global0.x, true)), true, true)), false == global0.x);
}


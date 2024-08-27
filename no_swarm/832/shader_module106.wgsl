struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: f32 = -1802f;

var<private> global2: i32 = -1i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = Struct_1(~(-vec2<i32>(-26581i, arg_0.a.x)), countOneBits(firstTrailingBit(69636u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) - -1379f) * _wgslsmith_div_f32(-725f, -493f)), arg_1.d.x, false)), vec2<f32>(arg_1.c, arg_1.c));
    var var_1 = true;
    global1 = 1782f;
    global0 = array<u32, 27>();
    let var_2 = arg_1.c;
    return ~(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, var_0.b) | _wgslsmith_clamp_u32(_wgslsmith_sub_u32(20878u, 1u), arg_0.b | arg_0.b, 64213u), 27u)] << (36519u % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    global2 = 14797i;
    global2 = 0i;
    global2 = ~u_input.d.x;
    var var_0 = 363f;
    var var_1 = ((u_input.d.xxx ^ firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, -9638i))) ^ vec3<i32>(~(-42915i), _wgslsmith_sub_i32(arg_1.a.x, firstTrailingBit(arg_1.a.x)), _wgslsmith_add_i32(arg_1.a.x, abs(arg_1.a.x)))) | u_input.d.ywx;
    return select(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.b, 1u) >> (0u % 32u), 39161u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, arg_1.b), 27u)], _wgslsmith_sub_u32(firstTrailingBit(arg_1.b), 4294967295u))), min(~0u, func_3(Struct_1(vec2<i32>(-82285i, arg_1.a.x), 1u << (global0[_wgslsmith_index_u32(4294967295u, 27u)] % 32u), arg_1.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(2042f, arg_0) * arg_1.d)), arg_1, arg_0 >= 618f)), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = any(!(!select(vec3<bool>(arg_1, false, true), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, true, true), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, false, false)))));
    let var_1 = -9716i;
    global2 = select(reverseBits(2147483647i), _wgslsmith_mod_i32(-32060i, 2070i), true);
    let var_2 = -(-((vec4<i32>(-16252i, arg_0.x, -37463i, arg_0.x) & vec4<i32>(var_1, arg_0.x, 1i, -2147483647i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(8633u, arg_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69979u, 27u)], 27u)], 31064u), vec4<u32>(4294967295u, u_input.b, 60665u, 4294967295u)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(~4294967295u, 1u), firstLeadingBit(arg_3.b) ^ arg_3.b, (arg_2.x >> (arg_3.b % 32u)) >> (min(arg_3.b, 23930u) % 32u), (1u ^ global0[_wgslsmith_index_u32(arg_2.x, 27u)]) << (~0u % 32u)) % vec4<u32>(32u)));
    let var_3 = -1i;
    return arg_3;
}

fn func_1() -> vec3<bool> {
    var var_0 = func_4(~vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.c.x, u_input.d.x), vec3<i32>(-6503i, -2147483647i, 0i)) | -26427i), true, _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(0u, u_input.a, 0u))), vec3<u32>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -2154f), Struct_1(vec2<i32>(0i, u_input.c.x), 0u, -316f, vec2<f32>(944f, -563f))), abs(0u), 55320u)), Struct_1(~_wgslsmith_clamp_vec2_i32(countOneBits(u_input.c), ~vec2<i32>(u_input.c.x, u_input.c.x), firstTrailingBit(vec2<i32>(u_input.c.x, -49420i))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(16053u, 27u)], u_input.b), ~global0[_wgslsmith_index_u32(48255u, 27u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 4294967295u, 30872u)), _wgslsmith_f_op_f32(ceil(-863f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-974f, -762f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(421f, 180f), vec2<f32>(577f, -600f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, -321f)), vec2<bool>(true, true))))));
    global1 = 1467f;
    var var_1 = func_4(vec2<i32>(reverseBits(-var_0.a.x), 31208i), true, countOneBits(vec3<u32>(_wgslsmith_clamp_u32(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_sub_u32(1u, var_0.b), 3285u), countOneBits(firstLeadingBit(1174u)), ~_wgslsmith_clamp_u32(1u, var_0.b, 5377u))), Struct_1(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], var_0.b), firstLeadingBit(vec2<u32>(13431u, 4294967295u) & vec2<u32>(global0[_wgslsmith_index_u32(52434u, 27u)], 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, 460f) - 427f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(var_0.c, 990f, true)))));
    var var_2 = ~max(vec3<u32>(~_wgslsmith_clamp_u32(var_1.b, 1u, 0u), 67202u, ~var_1.b), vec3<u32>(~0u, _wgslsmith_mod_u32(1u, var_1.b), 1u) >> (vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_1.b, global0[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b, 27u)], 27u)], 27u)], 0u)) % vec3<u32>(32u)));
    let var_3 = func_4(select(countOneBits(vec2<i32>(u_input.c.x, -1i)), ~u_input.c, true), any(vec3<bool>(true, true, true)) && false, _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a & var_0.b, _wgslsmith_dot_vec2_u32(var_2.xz, ~vec2<u32>(4294967295u, var_1.b)), ~var_0.b), max(~vec3<u32>(23139u, 67296u, 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(var_0.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], 6829u) ^ ~vec3<u32>(4294967295u, 0u, 1u))), Struct_1(u_input.c, func_3(func_4(vec2<i32>(u_input.c.x, var_1.a.x), false, ~vec3<u32>(global0[_wgslsmith_index_u32(var_2.x, 27u)], 6701u, global0[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_1(u_input.c, global0[_wgslsmith_index_u32(u_input.a, 27u)], var_1.d.x, var_1.d)), Struct_1(vec2<i32>(-2147483647i, u_input.d.x), ~var_2.x, -617f, var_0.d), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.d)))));
    return select(!vec3<bool>(false, true, 602f > _wgslsmith_f_op_f32(exp2(var_3.d.x))), vec3<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), false);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(-(u_input.d.yx & countOneBits(-arg_1.a)), true, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(1u, 75687u, global0[_wgslsmith_index_u32(u_input.a, 27u)])), abs(vec3<u32>(arg_1.b, 21764u, arg_1.b))), vec3<u32>(1u, 1u, 0u) & vec3<u32>(63317u, u_input.a, global0[_wgslsmith_index_u32(42730u, 27u)])), ~(~vec3<u32>(4294967295u, 1u, u_input.b)) >> (~(~vec3<u32>(15696u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), Struct_1(arg_1.a, min(_wgslsmith_mod_u32(arg_1.b, max(4294967295u, global0[_wgslsmith_index_u32(18643u, 27u)])), 0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1115f))), _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_vec2_f32(floor(arg_1.d))));
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(arg_1.d))));
    var var_2 = Struct_1(var_0.a << (vec2<u32>(global0[_wgslsmith_index_u32(reverseBits(func_3(arg_1, arg_1, arg_0.x)), 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(3309u, arg_1.b, 1u), ~vec3<u32>(arg_1.b, 8404u, 31629u))) % vec2<u32>(32u)), 5328u ^ var_0.b, 783f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d, vec2<f32>(-914f, var_0.d.x)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1071f * 791f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-355f)), var_0.c)))));
    global2 = min(max(firstLeadingBit(_wgslsmith_mod_i32(0i, var_2.a.x)), var_2.a.x), ~abs(i32(-1i) * -var_2.a.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 2147483647i;
    global1 = -471f;
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1829f);
    var var_1 = func_5(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), func_1(), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_1()), func_4(vec2<i32>(u_input.d.x | _wgslsmith_mod_i32(1i, 1i), abs(0i) & (6031i ^ u_input.c.x)), !(!any(vec2<bool>(true, true))), ~(~vec3<u32>(20522u, 29120u, global0[_wgslsmith_index_u32(u_input.a, 27u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(10019u, 27u)], 29265u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13243u, 27u)], 27u)]) % vec3<u32>(32u))), Struct_1(_wgslsmith_clamp_vec2_i32(u_input.c, firstTrailingBit(vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(u_input.d.x, u_input.d.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.a) << (~26329u % 32u), 27u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + -1465f), _wgslsmith_f_op_f32(select(var_0, -756f, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0)))))));
    global1 = -252f;
    let var_2 = !((global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 27u)] <= ~(~u_input.b)) & true);
    var var_3 = func_5(func_1(), func_5(select(!(!vec3<bool>(true, var_2, var_2)), select(vec3<bool>(var_2, var_2, true), select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, true), vec3<bool>(false, var_2, var_2)), var_2), var_2), func_4(func_4(-var_1.a, true, vec3<u32>(80u, 1u, 23920u), func_5(vec3<bool>(var_2, false, true), Struct_1(u_input.d.xz, 23876u, var_0, var_1.d))).a, _wgslsmith_f_op_f32(var_0 + var_1.c) == _wgslsmith_div_f32(-441f, -531f), ~(~vec3<u32>(4294967295u, 60153u, global0[_wgslsmith_index_u32(1u, 27u)])), func_5(!vec3<bool>(var_2, var_2, var_2), func_4(u_input.c, var_2, vec3<u32>(0u, var_1.b, global0[_wgslsmith_index_u32(var_1.b, 27u)]), Struct_1(var_1.a, 6159u, var_0, vec2<f32>(var_1.c, -1698f)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1330f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(-117f, var_1.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, -633f, var_3.d.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d.x, var_0, var_1.c))))))));
    let var_5 = func_4(func_5(vec3<bool>(var_2, !all(vec4<bool>(var_2, var_2, true, true)), false), Struct_1(-select(vec2<i32>(-17322i, u_input.d.x), var_3.a, true), firstTrailingBit(abs(global0[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -721f)), vec2<f32>(var_4.x, _wgslsmith_div_f32(var_1.d.x, 747f)))).a, true, vec3<u32>(4294967295u, abs(reverseBits(~u_input.b)), var_1.b << (0u % 32u)), func_4(-vec2<i32>(var_3.a.x, 3958i ^ var_1.a.x), var_2, ((vec3<u32>(var_1.b, global0[_wgslsmith_index_u32(4294967295u, 27u)], 4294967295u) >> (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u))) << (select(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(13260u, 4294967295u, 82533u), var_2) % vec3<u32>(32u))) >> (~abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], 4294967295u, 0u)) % vec3<u32>(32u)), func_5(select(select(vec3<bool>(var_2, true, true), vec3<bool>(var_2, var_2, true), var_2), vec3<bool>(var_2, var_2, var_2), true), Struct_1(select(u_input.c, var_3.a, vec2<bool>(true, true)), var_1.b << (4294967295u % 32u), _wgslsmith_f_op_f32(-var_3.c), vec2<f32>(-466f, 1443f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(0u, var_1.b), vec2<u32>(var_3.b, 4294967295u), vec2<bool>(true, false))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_5.b), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_3.b), vec2<u32>(72009u, var_3.b))) | vec2<u32>(u_input.b & 2168u, ~var_5.b), vec2<bool>(_wgslsmith_f_op_f32(select(967f, var_4.x, var_2)) >= _wgslsmith_f_op_f32(exp2(var_3.d.x)), var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(var_0 - -852f), _wgslsmith_f_op_f32(-var_3.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, var_4.x, var_4.x)) + vec3<f32>(var_1.c, var_4.x, 364f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c) + _wgslsmith_f_op_f32(-var_4.x)) - 207f)), ~u_input.d, vec2<i32>(~var_1.a.x, var_3.a.x) ^ (u_input.c << (_wgslsmith_sub_vec2_u32(vec2<u32>(41686u, 4514u) ^ vec2<u32>(50059u, global0[_wgslsmith_index_u32(93346u, 27u)]), vec2<u32>(var_3.b, var_5.b)) % vec2<u32>(32u))));
}


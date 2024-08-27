struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-257f, -233f, -916f, 1480f, -1141f, -528f, -1675f, 514f, -836f, 1107f, 682f, 1346f, -248f, 378f, 507f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_3(~1u, 34857i);
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_1 = -((select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-26242i, -2147483647i, var_0.b, -17006i), vec4<i32>(var_0.b, 21586i, 31001i, u_input.e), vec4<i32>(var_0.b, var_0.b, 28083i, arg_1.a)), vec4<i32>(0i, u_input.e, -2147483647i, 18894i) & vec4<i32>(var_0.b, u_input.e, arg_1.a, var_0.b), !arg_1.c.d) << (~vec4<u32>(var_0.a, 38958u, arg_2, arg_1.c.b.x) % vec4<u32>(32u))) | (-vec4<i32>(u_input.c, u_input.e, u_input.c, arg_1.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -8627i, var_0.b, arg_1.a) | vec4<i32>(var_0.b, arg_1.a, -7334i, var_0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 28587i, u_input.e, arg_1.a), vec4<i32>(var_0.b, 28881i, var_0.b, 1i)))));
    let var_2 = -(~32819i);
    return !vec3<bool>(!(!arg_1.c.d) != all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, arg_1.c.d), true)), false, arg_1.c.d);
}

fn func_2() -> Struct_3 {
    var var_0 = select(vec3<bool>(true, !all(func_3(1u, Struct_2(u_input.e, Struct_1(-485f, vec2<u32>(u_input.a, 4294967295u), u_input.d, true), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 15u)], vec2<u32>(30369u, u_input.d), 9556u, false)), u_input.b)), any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(true, true)))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec4<bool>(func_3(1u, Struct_2(2147483647i, Struct_1(-1131f, vec2<u32>(u_input.b, 9447u), 4294967295u, false), Struct_1(604f, vec2<u32>(u_input.d, u_input.b), u_input.a, false)), ~22699u).x, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(26835u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], false)) <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(37762u, 15u)], -1741f), abs(u_input.d) < countOneBits(15403u), any(vec2<bool>(true, true)))));
    global0 = array<f32, 15>();
    let var_1 = -2147483647i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(41493u, 15u)], 1000f, false)) + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.b, 15u)]))) * -774f))), ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(min(vec2<u32>(u_input.b, u_input.d), vec2<u32>(4294967295u, u_input.b))), vec2<u32>(u_input.d, u_input.d) ^ ~vec2<u32>(8034u, u_input.a), vec2<u32>(u_input.a, ~7804u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(35429u, u_input.a), vec2<u32>(0u, 35789u))), _wgslsmith_mult_i32(i32(-1i) * -u_input.e, ~2147483647i) > firstTrailingBit(u_input.e));
    let var_3 = vec3<f32>(var_2.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(select(~var_2.c, ~u_input.b, !var_2.d), 15u)], 806f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(93048u, 40066u)) & _wgslsmith_mod_u32(~var_2.c, 4294967295u), 15u)]));
    return Struct_3(countOneBits(~u_input.b), var_1);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = var_0.a;
    let var_2 = ~arg_1.b;
    var var_3 = arg_1.a;
    let var_4 = Struct_4(Struct_1(898f, vec2<u32>(u_input.b, 4294967295u), arg_1.b.x, arg_1.d || arg_1.d), ~(~_wgslsmith_div_u32(5199u, var_2.x)), ~vec4<u32>(1u, var_0.a, ~_wgslsmith_sub_u32(u_input.d, arg_1.b.x), ~1u & _wgslsmith_mod_u32(4294967295u, var_2.x)), true);
    return Struct_3(102131u, max(max(-(u_input.c >> (72020u % 32u)), -19776i), func_2().b));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, arg_0.a, arg_0.a), vec4<u32>(u_input.b, arg_0.a, u_input.d, 2994u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, arg_0.a, arg_0.a, 11234u)) | firstTrailingBit(vec4<u32>(u_input.d, arg_0.a, u_input.a, u_input.b))), vec4<u32>(_wgslsmith_add_u32(~u_input.a, _wgslsmith_mult_u32(0u, 76528u)), arg_0.a, arg_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(6821u, u_input.b)))), countOneBits(arg_0.a & (arg_0.a ^ ~arg_0.a)), false);
    var var_1 = ~(arg_0.b >> (4294967295u % 32u));
    let var_2 = select(firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.e, 16750i, -2147483647i) | _wgslsmith_div_vec3_i32(vec3<i32>(-19672i, arg_0.b, u_input.e), vec3<i32>(arg_0.b, u_input.e, u_input.c)), ~vec3<i32>(arg_0.b, -2147483647i, u_input.c))), vec3<i32>(arg_0.b, firstLeadingBit(-2147483647i), _wgslsmith_add_i32(_wgslsmith_sub_i32(max(-29182i, u_input.e), func_1(global0[_wgslsmith_index_u32(31608u, 15u)], Struct_1(global0[_wgslsmith_index_u32(51987u, 15u)], vec2<u32>(4294967295u, arg_0.a), arg_0.a, false)).b), arg_0.b)), true);
    let var_3 = Struct_1(-565f, vec2<u32>(~(~(~13035u)), u_input.a), ~0u, !all(vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true)));
    global0 = array<f32, 15>();
    return Struct_4(Struct_1(-342f, vec2<u32>(~_wgslsmith_div_u32(0u, 31049u), ~109399u), ~1u, !(_wgslsmith_sub_i32(arg_0.b, u_input.c) != -arg_0.b)), var_3.b.x | var_0, ~vec4<u32>(var_0, arg_0.a, u_input.a, ~var_0), var_3.d);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> u32 {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = Struct_4(arg_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a | arg_2.a.c, u_input.d), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(80953u, 1u), arg_2.c.yx))), max(_wgslsmith_div_vec4_u32(select(~arg_2.c, vec4<u32>(arg_2.a.c, 97340u, u_input.b, arg_2.b) ^ vec4<u32>(17877u, 1u, u_input.d, 0u), arg_0), ~vec4<u32>(43812u, 17730u, u_input.b, 0u) | vec4<u32>(u_input.d, u_input.a, u_input.d, arg_2.c.x)), vec4<u32>(4294967295u, arg_2.a.c ^ arg_2.c.x, (16785u << (u_input.b % 32u)) << (~7914u % 32u), _wgslsmith_div_u32(34454u, ~u_input.d))), arg_2.d);
    let var_1 = func_4(Struct_3(1u, select(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1, arg_1), u_input.e), u_input.e, true))).c.xzx;
    let var_2 = Struct_5(Struct_2(u_input.e, func_4(func_2()).a, func_4(Struct_3(arg_2.a.b.x ^ 4294967295u, -arg_1)).a), arg_2.a);
    return max(firstLeadingBit(var_0.a.b.x), ~_wgslsmith_div_u32(var_2.a.c.c, 1u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, -780f, -1187f)))))));
    let var_1 = -855f;
    var var_2 = !arg_1.d;
    var_2 = true;
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-351f))), var_1))), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.c, ~19544u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1047u), vec2<u32>(u_input.b, arg_0.b.x), arg_0.b ^ arg_1.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~(arg_0.b ^ vec2<u32>(47953u, arg_1.b.x)), arg_1.b)), arg_1.b.x, ~(~u_input.e) > (0i >> (arg_1.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 15u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(46953u, 15u)]))))), vec2<u32>(u_input.b | ~(u_input.b >> (u_input.a % 32u)), ~1u), ~(u_input.a >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(11723u, 0u)) ^ max(61123u, 4294967295u)) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) + -888f), _wgslsmith_f_op_f32(floor(-775f))) < _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 15u)] * -2695f));
    var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-830f + var_0.a))) * _wgslsmith_f_op_f32(-var_0.a)), abs(var_0.b), func_5(all(vec2<bool>(true, var_0.d)), u_input.c, func_4(func_1(1222f, Struct_1(global0[_wgslsmith_index_u32(0u, 15u)], var_0.b, 34812u, var_0.d)))), var_0.d), func_4(Struct_3(_wgslsmith_div_u32(var_0.c, u_input.b), _wgslsmith_sub_i32(u_input.e, -42089i))).a);
    var var_1 = Struct_3(var_0.c << (u_input.a % 32u), max(~u_input.e, -27040i));
    let var_2 = Struct_3(var_1.a, ~_wgslsmith_add_i32(var_1.b, _wgslsmith_div_i32(var_1.b, -43603i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a * 1343f), 1269f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, -926f)))));
    var var_4 = func_3(0u, Struct_2(countOneBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, var_1.b), max(1i, var_2.b))), func_4(Struct_3(4294967295u, 0i)).a, func_6(func_6(Struct_1(var_3.x, var_0.b, 4294967295u, true), Struct_1(820f, vec2<u32>(var_2.a, var_1.a), 4294967295u, true)), func_6(Struct_1(-362f, var_0.b, var_2.a, var_0.d), func_6(Struct_1(var_3.x, vec2<u32>(1u, 10432u), var_0.c, var_0.d), Struct_1(1136f, vec2<u32>(1u, u_input.b), 133609u, false))))), 4294967295u).yz;
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}


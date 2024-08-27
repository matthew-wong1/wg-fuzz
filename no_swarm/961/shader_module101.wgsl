struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<u32>, 26>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = ~u_input.d.x;
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(~abs(_wgslsmith_mod_u32(u_input.e.x, 44057u)), _wgslsmith_mult_u32(firstLeadingBit(38853u), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], global2[_wgslsmith_index_u32(21241u, 26u)]) << (abs(u_input.d.x) % 32u))), 1u, u_input.d.x);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-416f, -1087f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1807f + _wgslsmith_f_op_f32(-1698f - 114f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-787f)) - -1000f), _wgslsmith_f_op_f32(trunc(-1690f))))));
    let var_4 = Struct_3(global1.x, 994f, ~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~u_input.d.x, 26u)], vec3<u32>(countOneBits(58660u), _wgslsmith_dot_vec3_u32(vec3<u32>(906u, var_1.x, 84434u), global2[_wgslsmith_index_u32(u_input.d.x, 26u)]), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.e.x, 26u)], global2[_wgslsmith_index_u32(var_1.x, 26u)]))), Struct_2(vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true, false)), var_3.x);
    return 1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_3(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-430f, -392f, true)), -172f, false)) - _wgslsmith_f_op_f32(max(1000f, -500f)))), ~_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(0u, 26u)], vec3<u32>(arg_1, arg_1, arg_0.x)), _wgslsmith_mult_vec3_u32(arg_0, arg_0), true), max(global2[_wgslsmith_index_u32(firstLeadingBit(arg_1), 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 26u)])), Struct_2(vec4<bool>(true, true | all(vec2<bool>(false, true)), false, any(vec4<bool>(true, true, true, true)))), -224f);
    return min(~min(max(vec4<u32>(arg_1, var_0.c, var_0.c, arg_0.x), vec4<u32>(u_input.d.x, var_0.c, 22595u, 12324u)), vec4<u32>(var_0.c, 1u, 3565u, 54997u) ^ vec4<u32>(u_input.e.x, arg_0.x, u_input.d.x, arg_0.x)), vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(14949u), (var_0.c << (u_input.e.x % 32u)) << (_wgslsmith_mod_u32(var_0.c, u_input.d.x) % 32u)), ~arg_0.x, 4294967295u, u_input.d.x));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = vec2<u32>(~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e.x, 17002u), _wgslsmith_mult_u32(u_input.d.x, 46816u), min(u_input.e.x, 0u)) >> (~0u % 32u)), 0u);
    let var_1 = vec4<u32>(u_input.d.x, firstTrailingBit(~0u), ~u_input.d.x, (13298u & var_0.x) & 1u);
    var var_2 = var_0.x;
    var var_3 = 0i;
    var_3 = global1.x;
    return func_4(var_1.wzx, func_3());
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, arg_1.d.x))))), ~57724u, Struct_2(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))), arg_1.e);
    let var_1 = Struct_1(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.b.x, 51971u, u_input.e.x), (vec3<u32>(u_input.d.x, 44914u, u_input.d.x) | arg_1.a) & ~vec3<u32>(26299u, 1u, 0u)), arg_1.c.x), ~(~(func_4(arg_1.b.xyx, 30343u) & (arg_1.b ^ arg_1.b))), vec2<u32>(reverseBits(func_3()), func_2(arg_1.e, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(var_0.a, 19258i, 1i)), vec3<i32>(arg_0.x, 2147483647i, u_input.b) >> (vec3<u32>(4294967295u, 23596u, var_0.c) % vec3<u32>(32u))), arg_1.d).x), vec3<f32>(var_0.e, _wgslsmith_f_op_f32(-var_0.b), var_0.b), arg_1.d.x);
    global1 = arg_2.ywy;
    var var_2 = var_1.d.xx;
    global2 = array<vec3<u32>, 26>();
    return Struct_2(var_0.d.a);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_5(-vec2<i32>(u_input.a, 1i ^ _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, -1i))), Struct_1(countOneBits(global2[_wgslsmith_index_u32(~(~584u), 26u)]), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 439f)), u_input.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1933f, 1000f, 1119f)))))), u_input.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(404f, _wgslsmith_div_f32(-490f, 707f), _wgslsmith_f_op_f32(f32(-1f) * -158f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_2.x, 59498i), select(arg_2.x, u_input.b, arg_0.a.x), abs(-1i), -12936i >> (arg_1 % 32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 28287i, -6137i, 0i), vec4<i32>(global1.x, -17415i, -1i, arg_2.x)), reverseBits(vec4<i32>(-654i, 10193i, arg_2.x, global1.x)), ~vec4<i32>(arg_2.x, -15942i, 1i, -18765i))), _wgslsmith_div_vec4_i32(~vec4<i32>(-40346i, 26215i, 1i, global1.x) & select(vec4<i32>(2147483647i, u_input.b, -2147483647i, global1.x), vec4<i32>(arg_2.x, u_input.a, arg_2.x, arg_2.x), arg_0.a.x), vec4<i32>(global1.x, _wgslsmith_div_i32(global1.x, u_input.a), _wgslsmith_div_i32(7277i, -2147483647i), arg_2.x))));
    var var_1 = Struct_1(~vec3<u32>(4294967295u, min(~32073u, ~arg_1), ~0u), vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(95739u, u_input.e.x, u_input.e.x), ~(~0u)), ~0u, u_input.d.x, _wgslsmith_sub_u32(abs(71943u), u_input.e.x)), firstLeadingBit(vec2<u32>(~u_input.d.x, u_input.d.x)) >> (~((vec2<u32>(u_input.d.x, 40997u) & u_input.d) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, 8917u), vec2<u32>(arg_1, u_input.e.x), u_input.e) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2547f, -1602f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -137f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(285f))))), 240f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-959f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f + -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(965f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(-var_1.e));
    let var_3 = ~(vec4<i32>(global1.x, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.x, 43901i), vec3<i32>(6525i, u_input.c.x, -4715i)), abs(-1i)), 1i) >> (var_1.b % vec4<u32>(32u)));
    var var_4 = var_1.d.x;
    return ~(~(~(~arg_1 | ~1u)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    global2 = array<vec3<u32>, 26>();
    global0 = array<vec2<f32>, 21>();
    let var_0 = Struct_3(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, -1i), -67291i), 104f, arg_1.a.x, func_5(global1.zz, arg_1, _wgslsmith_div_vec4_i32(-select(vec4<i32>(global1.x, -1i, 1i, u_input.c.x), vec4<i32>(global1.x, 60938i, -16272i, global1.x), true), min(~vec4<i32>(global1.x, -19175i, u_input.b, u_input.c.x), vec4<i32>(global1.x, 9708i, -38380i, 0i) & vec4<i32>(-13341i, u_input.c.x, 13299i, 9099i)))), arg_1.d.x);
    global1 = vec3<i32>(u_input.a, -abs(2147483647i), u_input.b) << (reverseBits(~(~vec3<u32>(u_input.d.x, 10905u, 1u)) ^ _wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(arg_1.c.x, 26u)], select(global2[_wgslsmith_index_u32(1u, 26u)], vec3<u32>(var_0.c, var_0.c, 21699u), var_0.d.a.yzz), vec3<u32>(1u, arg_1.a.x, 95258u))) % vec3<u32>(32u));
    global0 = array<vec2<f32>, 21>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(global0[_wgslsmith_index_u32(func_1(Struct_2(vec4<bool>(true, true, true, true)), reverseBits(select(u_input.e.x, 4294967295u, true)), vec2<i32>(65270i, -2147483647i) & vec2<i32>(global1.x, -5284i)), 21u)], Struct_1(global2[_wgslsmith_index_u32(1u, 26u)], ~(~vec4<u32>(42533u, 19505u, 3841u, 61278u)), ~_wgslsmith_clamp_vec2_u32(u_input.e, u_input.d, u_input.e), vec3<f32>(_wgslsmith_div_f32(-544f, 654f), 1228f, _wgslsmith_f_op_f32(sign(1268f))), -1462f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1855f, 362f)) - 528f)), u_input.d.x, Struct_2(vec4<bool>(select(true, true, true), (0i < u_input.b) || true, true, !select(true, true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)))));
    global0 = array<vec2<f32>, 21>();
    var var_1 = Struct_1(~(~vec3<u32>(1u, var_0.c, u_input.d.x >> (0u % 32u))), abs(~(~firstTrailingBit(vec4<u32>(var_0.c, u_input.d.x, 17567u, var_0.c)))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.c, 0u)), ~vec2<u32>(4294967295u, 9477u)) << (vec2<u32>(0u, ~select(49266u, 1u, var_0.d.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1289f, 1f, _wgslsmith_f_op_f32(-2477f - _wgslsmith_f_op_f32(var_0.e + -205f))) - vec3<f32>(_wgslsmith_f_op_f32(min(-1164f, var_0.b)), -1229f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.e)))))), 178f);
    var var_2 = min(vec4<i32>(reverseBits(~_wgslsmith_add_i32(var_0.a, global1.x)), abs(select(min(14123i, 1i), -1i, u_input.e.x >= u_input.d.x)), global1.x, 0i), vec4<i32>(1i, u_input.b, -(~_wgslsmith_clamp_i32(-2147483647i, 44143i, 47565i)), -1i));
    let var_3 = Struct_1(select(_wgslsmith_div_vec3_u32(var_1.a, ~vec3<u32>(var_1.a.x, var_0.c, 0u)), vec3<u32>(var_0.c, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 4294967295u), 34594u), min(func_1(var_0.d, 4294967295u, global1.xy), 4294967295u & var_0.c)), !(!var_0.d.a.xyx)), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, var_0.c, var_1.a.x, u_input.e.x) | vec4<u32>(var_1.b.x, 35126u, 29332u, 22734u), var_1.b)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(func_2(var_1.e, vec3<i32>(-2147483647i, -1i, 2147483647i), var_1.d).x, 1u), ~(~0u)), var_1.a.zz), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1581f, _wgslsmith_f_op_f32(var_1.e - var_1.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))), var_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-820f, var_0.e, -2225f))), _wgslsmith_f_op_f32(floor(var_1.d.x)));
    let var_4 = var_3;
    let var_5 = vec2<i32>(_wgslsmith_add_i32(u_input.b, -13651i), global1.x);
    var var_6 = var_2.wzx;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(firstLeadingBit(vec2<u32>(var_4.b.x, 1u))), ~(~var_1.c)) & var_4.b.xw, var_0.c, -3487f, 14047i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_4.e)))))));
}


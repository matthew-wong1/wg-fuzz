struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = countOneBits(vec3<i32>(max(27255i, -50704i), 27776i, _wgslsmith_dot_vec3_i32(vec3<i32>(82838i, 2147483647i, arg_0.c), vec3<i32>(16093i, arg_0.c, u_input.a.x)) << (u_input.b % 32u))) ^ (-u_input.c.yzx | _wgslsmith_mult_vec3_i32(min(select(u_input.c.ywy, u_input.c.zzz, false), vec3<i32>(arg_0.c, u_input.a.x, u_input.a.x)), vec3<i32>(_wgslsmith_div_i32(arg_0.c, arg_0.c), arg_0.c ^ 10518i, _wgslsmith_clamp_i32(8673i, u_input.a.x, -2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - 147f), arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1));
    var var_2 = Struct_3(true, abs(~0u), _wgslsmith_div_i32(max(arg_0.c, ~_wgslsmith_mult_i32(arg_0.c, u_input.c.x)), 2147483647i), Struct_2(Struct_1(arg_0.d.a.a), arg_2.a));
    let var_3 = 1i;
    let var_4 = arg_0.d.b;
    return select(select(select(!(!vec4<bool>(false, arg_0.a, arg_0.a, true)), vec4<bool>(true, var_2.a == false, true | arg_0.a, 31368i >= var_2.c), false), vec4<bool>(!(arg_2.b.a.x < 0u), !any(vec2<bool>(false, var_2.a)), var_2.a, select(21075i <= u_input.a.x, true, all(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)))), !(!select(vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, false, false, arg_0.a), arg_0.a))), select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(false | (true | var_2.a), true, -2147483647i > ~arg_0.c, var_2.a), !vec4<bool>(true, true, select(arg_0.a, false, arg_0.a), arg_0.a)), (~var_2.c ^ 0i) > -_wgslsmith_add_i32(-arg_0.c, arg_0.c));
}

fn func_2() -> Struct_2 {
    var var_0 = func_3(Struct_3(true, u_input.b, firstLeadingBit(i32(-1i) * -1i), Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.b)), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 86265u))))), 1f, Struct_2(Struct_1(vec2<u32>(abs(u_input.b), _wgslsmith_mod_u32(u_input.b, 4294967295u))), Struct_1(select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), false))));
    var_0 = vec4<bool>(!all(var_0.wy), !(!all(var_0.yzy)), true, var_0.x);
    var var_1 = Struct_2(Struct_1(~(~vec2<u32>(u_input.b, 16025u) | ~vec2<u32>(u_input.b, u_input.b))), Struct_1(select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(max(u_input.b, 4294967295u), 4294967295u), !select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x))));
    var_1 = Struct_2(Struct_1(~select(_wgslsmith_sub_vec2_u32(vec2<u32>(18432u, 9827u), var_1.b.a), vec2<u32>(u_input.b, 3265u) << (var_1.b.a % vec2<u32>(32u)), var_0.x == var_0.x)), Struct_1(_wgslsmith_sub_vec2_u32(~var_1.b.a, ~vec2<u32>(14072u, var_1.b.a.x)) ^ _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(0u, 4294967295u)), var_1.a.a)));
    return Struct_2(Struct_1(vec2<u32>(var_1.b.a.x, 1u) >> (select(~vec2<u32>(u_input.b, var_1.a.a.x), vec2<u32>(0u, 31447u) & vec2<u32>(0u, u_input.b), vec2<bool>(var_0.x, var_0.x)) % vec2<u32>(32u))), Struct_1(~(~vec2<u32>(var_1.b.a.x, 47782u))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(318f + _wgslsmith_f_op_f32(f32(-1f) * -150f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))))))), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x);
    var var_1 = arg_3.b;
    var_1 = arg_3.b;
    var var_2 = func_2();
    var var_3 = firstTrailingBit(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.a.a, vec2<u32>(var_1.a.x, u_input.b)), func_2().b.a.x, _wgslsmith_add_u32(53688u, var_2.a.a.x), 31120u | arg_3.b.a.x) & firstTrailingBit(select(vec4<u32>(u_input.b, u_input.b, var_1.a.x, 24555u), ~vec4<u32>(u_input.b, var_1.a.x, 0u, u_input.b), true)));
    return vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(119833u, u_input.b), max(arg_3.a.a.x, var_3.x)), vec2<u32>(min(0u, arg_3.b.a.x), _wgslsmith_clamp_u32(48629u, arg_3.a.a.x, 243u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.a.x, 4294967295u, var_2.a.a.x, ~0u) << (~vec4<u32>(var_3.x, 18316u, arg_3.b.a.x, 8557u) % vec4<u32>(32u)), vec4<u32>(1u, abs(_wgslsmith_div_u32(var_1.a.x, var_3.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.a.x, arg_3.b.a.x, 4294967295u), ~vec3<u32>(1u, var_1.a.x, var_1.a.x)), countOneBits(firstLeadingBit(var_2.b.a.x)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = !(!vec3<bool>(1i != _wgslsmith_add_i32(-2147483647i, u_input.c.x), true, select(u_input.c.x == -29796i, true, !arg_0.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1112f)))))));
    var var_2 = func_4(_wgslsmith_div_i32(u_input.a.x, -(~(-2147483647i))), ~arg_2.c, vec4<f32>(1f, 1f, 1f, 1f), func_2());
    var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(min(firstTrailingBit(51208u), 10824u), 4294967295u), ~vec2<u32>(~var_2.x, 28345u));
    var_2 = func_2().b.a;
    return arg_2.d.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_3 {
    let var_0 = 106871u;
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -193f);
    var var_3 = func_2().a;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return Struct_3(!(!(!any(vec4<bool>(false, true, true, false)))), countOneBits(reverseBits(~arg_0.a.x)), _wgslsmith_dot_vec3_i32(-u_input.c.wyy, min(u_input.c.zxx, u_input.c.wxw)), Struct_2(arg_0, Struct_1(~var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.c, -(countOneBits(firstTrailingBit(u_input.c)) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -16984i, u_input.a.x, u_input.a.x))), true);
    let var_1 = func_5(Struct_1(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 23684u), func_1(vec4<bool>(false, false, false, false), 1u, Struct_3(false, u_input.b, var_0.x, Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b)), Struct_1(vec2<u32>(u_input.b, 32943u)))), vec4<bool>(true, true, false, true))))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(69885u, u_input.b), vec2<u32>(10936u, 1u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4739u), vec2<u32>(u_input.b, 36681u)), vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(58962u, u_input.b), vec2<u32>(u_input.b, 0u)))), 1u), 78698u << (u_input.b % 32u));
    let var_2 = !func_3(var_1, _wgslsmith_f_op_f32(step(-576f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, -1000f)))), func_5(var_1.d.b, vec2<u32>(var_1.b, 61489u) | select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 4294967295u), vec2<bool>(false, var_1.a)), select(var_1.b, 0u, false) | 0u).d);
    var_0 = -u_input.c;
    var var_3 = vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.c.xww ^ reverseBits(vec3<i32>(var_1.c, u_input.c.x, u_input.a.x)), select(vec3<i32>(-71974i, 1i, u_input.c.x), _wgslsmith_mult_vec3_i32(u_input.c.xyw, u_input.c.xzz), true)), select(1i, 2147483647i, any(var_2.zy)), ~_wgslsmith_dot_vec3_i32(u_input.c.yzy, abs(vec3<i32>(2147483647i, 2147483647i, u_input.c.x)))) & u_input.c;
    var_3 = firstLeadingBit(max(u_input.c, ~vec4<i32>(var_1.c | var_3.x, var_0.x, -2147483647i, _wgslsmith_div_i32(var_3.x, var_3.x))));
    var var_4 = _wgslsmith_add_i32(var_0.x, _wgslsmith_clamp_i32(firstTrailingBit(~var_3.x), -var_1.c, ~var_3.x | 7495i));
    let var_5 = func_5(func_5(var_1.d.b, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(var_1.d.b.a.x, ~55166u)), min(9406u, 1u)).d.b, ~(~vec2<u32>(~27264u, func_1(vec4<bool>(true, true, true, true), 4294967295u, var_1, var_2).x)), ~(func_4(2147483647i, -2147483647i, vec4<f32>(-970f, -551f, 1119f, 723f), Struct_2(Struct_1(vec2<u32>(u_input.b, 0u)), Struct_1(vec2<u32>(var_1.b, 30248u)))).x | _wgslsmith_mult_u32(u_input.b, 0u)) ^ (u_input.b & u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~var_5.b, (select(-var_0.wy, vec2<i32>(u_input.a.x, var_1.c) & var_0.ww, !var_5.a) & vec2<i32>(-var_5.c, -44852i)) ^ vec2<i32>(func_5(Struct_1(var_5.d.b.a), var_1.d.a.a, var_5.d.b.a.x).c, 0i));
}


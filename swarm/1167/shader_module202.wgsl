struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global0 = Struct_2(firstTrailingBit(-42914i), any(select(vec3<bool>(true, any(vec4<bool>(global0.b, true, global0.b, false)), global0.b), vec3<bool>(true, all(vec3<bool>(true, false, true)), true & global0.b), global0.b)));
    global0 = Struct_2(1i, global0.b);
    var var_0 = all(select(select(vec4<bool>(!global0.b, u_input.a > u_input.a, true, !global0.b), vec4<bool>(true, any(vec4<bool>(false, global0.b, false, global0.b)), global0.b, !global0.b), false), !select(select(vec4<bool>(global0.b, global0.b, false, global0.b), vec4<bool>(global0.b, false, global0.b, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, global0.b, true, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b)), any(!select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(false, global0.b, false, global0.b)))));
    let var_1 = ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(34350u, u_input.a), u_input.a) | firstLeadingBit(67392u);
    global0 = Struct_2(abs(i32(-1i) * -5092i), !global0.b);
    return select(~(-(~global0.a)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, -52806i, -1i, global0.a), min(vec4<i32>(-13993i, global0.a, 13579i, global0.a), vec4<i32>(global0.a, global0.a, -29293i, global0.a))), global0.b) << (min(~firstLeadingBit(var_1) >> (_wgslsmith_mod_u32(countOneBits(42851u), ~u_input.a) % 32u), ~4294967295u) % 32u);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(select(global0.a, global0.a, global0.b) ^ _wgslsmith_sub_i32(global0.a, 51031i), global0.a), -_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0.a, global0.a), vec2<i32>(-1i, global0.a), min(vec2<i32>(global0.a, -13348i), vec2<i32>(0i, 2147483647i)))), !global0.b);
    global0 = Struct_2(global0.a, all(vec2<bool>(true, any(vec3<bool>(true, global0.b, global0.b)))));
    global0 = Struct_2(global0.a, !(!global0.b));
    var var_0 = func_3();
    return Struct_2(0i, select(!any(vec4<bool>(true, false, global0.b, global0.b)), global0.b, false));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global0 = func_2();
    let var_0 = select(min(vec4<i32>(~7658i, -35612i, arg_2.a << (16242u % 32u), arg_2.a) ^ (-vec4<i32>(27645i, -25500i, arg_2.a, global0.a) | (vec4<i32>(55001i, 31714i, arg_2.a, arg_2.a) | vec4<i32>(arg_2.a, global0.a, -15916i, 1i))), reverseBits(abs(reverseBits(vec4<i32>(-213i, global0.a, global0.a, global0.a))))), (vec4<i32>(1i, arg_2.a, 1i, arg_2.a) << (~vec4<u32>(arg_0.x, 69188u, arg_0.x, arg_0.x) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, -73968i, 72832i, -38249i), vec4<i32>(-1i, global0.a, global0.a, -1i)) << (~vec4<u32>(arg_0.x, 127414u, 0u, arg_0.x) % vec4<u32>(32u)), ~(~vec4<i32>(arg_2.a, -1i, arg_2.a, 0i))), select(!vec4<bool>(false, global0.b, false, all(vec2<bool>(global0.b, global0.b))), vec4<bool>(any(vec2<bool>(true, true)), false, all(vec4<bool>(true, false, arg_2.b, global0.b)) || true, true), !(global0.a > 1i)));
    var var_1 = Struct_1(vec4<bool>(true, any(select(select(vec2<bool>(arg_2.b, true), vec2<bool>(true, false), vec2<bool>(global0.b, true)), select(vec2<bool>(arg_2.b, false), vec2<bool>(true, false), vec2<bool>(global0.b, global0.b)), vec2<bool>(false, true))), global0.b, -77841i >= _wgslsmith_sub_i32(firstLeadingBit(arg_2.a), global0.a)), vec4<bool>(arg_2.b, global0.b & false, arg_2.b & arg_2.b, false), false, -1284f);
    var var_2 = !select(all(select(select(vec4<bool>(arg_2.b, global0.b, global0.b, false), vec4<bool>(false, arg_2.b, var_1.c, false), var_1.b), var_1.b, !arg_2.b)), var_1.c, global0.b);
    global0 = arg_2;
    return ~(~select(~(vec3<i32>(-16934i, arg_2.a, -21645i) >> (vec3<u32>(arg_0.x, arg_0.x, 2415u) % vec3<u32>(32u))), ~vec3<i32>(1i, -1i, global0.a), true));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(select(vec4<bool>(global0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(13125u, u_input.a)) < select(55068u, u_input.a, global0.b), u_input.a != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 49915u)), true), select(!select(vec4<bool>(true, arg_0.b, arg_0.b, global0.b), vec4<bool>(arg_0.b, global0.b, false, global0.b), vec4<bool>(true, arg_0.b, global0.b, arg_0.b)), vec4<bool>(true, !arg_0.b, arg_0.b && arg_0.b, global0.b), !all(vec3<bool>(global0.b, global0.b, true))), true), vec4<bool>(true, arg_0.b, (_wgslsmith_mult_u32(27352u, 22368u) < u_input.a) || select(true, !arg_0.b, true), true | (~u_input.a >= 4767u)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(-1541f + -899f))))));
    global0 = func_2();
    var var_1 = arg_0;
    global0 = Struct_2(_wgslsmith_mod_i32(0i ^ -arg_1.x, func_2().a) & firstTrailingBit(firstLeadingBit(arg_1.x) ^ 1i), false);
    var var_2 = Struct_1(vec4<bool>(!(!(!var_0.b.x)), true, var_0.c, _wgslsmith_mod_u32(0u, select(u_input.a, u_input.a, true)) < ~0u), var_0.a, firstLeadingBit(-reverseBits(-2147483647i)) <= ~(~var_1.a >> (u_input.a % 32u)), 107f);
    return Struct_1(!var_0.a, !(!var_0.b), ~u_input.a < ~select(u_input.a, u_input.a, false), 1000f);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = func_2();
    global0 = func_2();
    global0 = Struct_2(abs(global0.a), all(select(!vec4<bool>(false, false, arg_3.c, arg_2.c), !(!arg_3.b), func_2().b)));
    var var_0 = arg_3.d;
    let var_1 = u_input.a;
    return func_2();
}

fn func_1() -> vec3<i32> {
    global0 = func_6(func_5(Struct_2(3390i, false), func_4(_wgslsmith_add_vec2_u32(max(vec2<u32>(83156u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(0u, 37143u)), _wgslsmith_f_op_f32(f32(-1f) * -1029f), func_2())), firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(55526u, 4294967295u, u_input.a), abs(vec3<u32>(0u, 24665u, 19889u))), ~vec3<u32>(u_input.a, u_input.a, 1u))), func_5(func_2(), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global0.a, global0.a), vec3<i32>(global0.a, 52826i, global0.a)) << (vec3<u32>(u_input.a, u_input.a, 10400u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a, 24630i, global0.a) << (vec3<u32>(u_input.a, 1u, 0u) % vec3<u32>(32u)), vec3<i32>(0i, global0.a, -2147483647i)))), func_5(Struct_2(_wgslsmith_clamp_i32(~25771i, 0i | global0.a, _wgslsmith_sub_i32(0i, 1i)), global0.b == true), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a, -34800i, 11814i) ^ vec3<i32>(global0.a, global0.a, global0.a), vec3<i32>(-8056i, global0.a, global0.a)), max(vec3<i32>(28305i, global0.a, 0i) & vec3<i32>(0i, -5499i, 0i), -vec3<i32>(global0.a, -58080i, global0.a)))));
    let var_0 = vec4<i32>(_wgslsmith_div_i32(~(-global0.a), _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstLeadingBit(-24216i), 1i), _wgslsmith_add_i32(_wgslsmith_add_i32(global0.a, -2147483647i), ~(-1i)))), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, ~(-5762i), 55474i), vec3<i32>(~(-1i), global0.a, 1i) & (vec3<i32>(global0.a, 1i, 0i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global0.a, global0.a, -1i), vec3<i32>(global0.a, -35276i, global0.a)))), global0.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-328f, _wgslsmith_f_op_f32(349f - -102f))), 484f)));
    return var_0.xyz << (~firstLeadingBit(select(_wgslsmith_div_vec3_u32(vec3<u32>(80090u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 95794u)), select(vec3<u32>(1u, 0u, 38943u), vec3<u32>(u_input.a, 88150u, u_input.a), false), vec3<bool>(global0.b, false, true))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 1u), ~vec3<u32>(reverseBits(1u), ~u_input.a | ~u_input.a, _wgslsmith_mult_u32(1u, 0u) << (~u_input.a % 32u)));
    var var_1 = !(!((u_input.a > var_0.x) || (global0.b & global0.b))) && false;
    global0 = Struct_2(countOneBits(0i), global0.b);
    let var_2 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(103848i, -6183i, global0.a) ^ countOneBits(vec3<i32>(62593i, global0.a, 1i))) | func_1(), vec3<i32>(global0.a, 30495i | -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.a, -19203i), vec3<i32>(-2147483647i, 2147483647i, global0.a)), global0.a), vec3<i32>(global0.a | (global0.a & ~global0.a), select(-global0.a, ~(-13683i), true), -2147483647i));
    let var_3 = Struct_1(vec4<bool>(!any(!vec4<bool>(false, global0.b, global0.b, global0.b)), false, any(!(!vec2<bool>(global0.b, global0.b))), global0.b), select(select(vec4<bool>(global0.b, true, select(true, false, false), true), !select(vec4<bool>(false, false, false, global0.b), vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(false, false, true, global0.b)), vec4<bool>(func_2().b, u_input.a >= 22506u, false, false)), !(!(!vec4<bool>(global0.b, true, global0.b, global0.b))), vec4<bool>(true, any(vec4<bool>(global0.b, true, global0.b, true)), !global0.b, all(vec2<bool>(true, false)))), true, -133f);
    let x = u_input.a;
    s_output = StorageBuffer(select(((vec4<i32>(global0.a, 2309i, var_2.x, -17221i) << (vec4<u32>(113034u, 4294967295u, u_input.a, 1u) % vec4<u32>(32u))) | max(vec4<i32>(global0.a, global0.a, var_2.x, var_2.x), vec4<i32>(var_2.x, 269i, -31903i, var_2.x))) & vec4<i32>(-4361i, firstLeadingBit(global0.a), min(var_2.x, var_2.x), global0.a), select(vec4<i32>(1i, var_2.x, -global0.a, global0.a), vec4<i32>(global0.a ^ global0.a, _wgslsmith_mult_i32(global0.a, -1i), 2147483647i, ~(-9524i)), true), var_3.a), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(47204u, 15416u)), var_0.zz));
}


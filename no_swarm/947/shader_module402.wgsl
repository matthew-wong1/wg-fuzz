struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, -15187i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), -545f, true, ~1u);
    let var_1 = false;
    var var_2 = select(select(!(!vec4<bool>(false, var_0.c, true, true)), !select(vec4<bool>(var_0.c, var_1, false, var_1), vec4<bool>(var_1, var_0.c, true, var_0.c), any(vec3<bool>(true, var_0.c, var_0.c))), vec4<bool>(!all(vec3<bool>(var_1, var_1, false)), var_1, var_1, true)), !vec4<bool>(!any(vec4<bool>(var_1, false, false, true)), false, all(!vec4<bool>(var_1, false, var_1, false)), false), any(vec2<bool>(var_0.c, _wgslsmith_mod_i32(18438i, var_0.a.a.x) <= (u_input.a ^ 0i))));
    var_2 = select(select(select(!vec4<bool>(var_2.x, true, var_0.c, true), vec4<bool>(var_0.b >= 938f, var_2.x, true, var_2.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true && var_2.x, true, true), vec4<bool>(!var_1, u_input.a <= var_0.a.a.x, false, true), vec4<bool>(false, 1u < var_0.d, true, true)), all(var_2.wyw)), select(vec4<bool>(all(select(vec4<bool>(var_1, var_2.x, true, var_1), vec4<bool>(true, var_0.c, var_2.x, var_1), vec4<bool>(true, var_0.c, true, var_1))), any(select(vec2<bool>(var_0.c, var_2.x), var_2.ww, true)), any(vec4<bool>(false, true, var_0.c, false)), !var_0.c), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, false), !(!vec4<bool>(var_1, false, var_2.x, false)), var_2.x), false), _wgslsmith_f_op_f32(var_0.b + -881f) < _wgslsmith_f_op_f32(885f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f * var_0.b)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))) * -1857f), true, !var_2.x & true);
    return min(~36805u | countOneBits(var_0.d), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(27602u, ~var_0.d)), vec2<u32>(var_0.d, min(31211u, var_0.d) | max(41066u, 56954u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = -(~arg_0.x);
    let var_1 = vec4<bool>(false, all(vec3<bool>(false, false, arg_2.x > func_3())), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), -31580i >= (-48084i & arg_1))), select(false, _wgslsmith_clamp_u32(arg_2.x, ~arg_2.x, ~arg_2.x) == (arg_2.x & (62520u | arg_2.x)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_2 = Struct_2(Struct_1(abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_3, -29051i, arg_0.x, arg_0.x), firstTrailingBit(vec4<i32>(1i, arg_0.x, u_input.a, 1635i)), -vec4<i32>(1i, arg_1, 0i, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -993f)))), !(!var_1.x), 37294u << (firstLeadingBit(min(~arg_2.x, select(63316u, arg_2.x, false))) % 32u));
    var var_3 = true;
    let var_4 = Struct_1(~var_2.a.a);
    return Struct_1(abs(var_4.a << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(arg_2.x, arg_2.x, var_2.d, 4294967295u)), ~vec4<u32>(var_2.d, 46765u, 0u, var_2.d), arg_2) % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec3_i32(-firstLeadingBit(countOneBits(-vec3<i32>(-1i, arg_3.a.a.x, -50936i))), reverseBits(arg_2.b.a.xzz) << (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)));
    let var_1 = arg_2;
    var var_2 = vec3<bool>(arg_3.c, false, -(_wgslsmith_mult_i32(var_0.x, arg_3.a.a.x) >> (~1u % 32u)) > 52562i);
    var_0 = var_1.b.a.yyy;
    let var_3 = ~firstTrailingBit(arg_3.a.a.zxz);
    return Struct_2(var_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(512f))), arg_2.d, ~0u);
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2097f)), _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(1866f * _wgslsmith_f_op_f32(round(-709f)))));
    let var_1 = 1010f;
    let var_2 = true;
    var var_3 = !var_2;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-248f)), arg_2.b);
    return Struct_3(vec4<i32>(-1i, u_input.a, 2506i, -24377i), arg_2.a, func_4(~arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 * var_0.x))), Struct_3(arg_3.a ^ vec4<i32>(arg_2.a.a.x, arg_1, 48447i, arg_2.a.a.x), Struct_1(~arg_3.a), arg_2, arg_2.c), Struct_2(arg_2.a, _wgslsmith_div_f32(459f, var_1), var_2, arg_2.d)), !(_wgslsmith_add_u32(arg_2.d >> (0u % 32u), 0u >> (arg_2.d % 32u)) < arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(arg_0.a, arg_0, Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -470f) * -1453f)), false, 72672u), true);
    let var_1 = func_5(firstTrailingBit(abs(reverseBits(vec3<u32>(12886u, 0u, 38785u)) << (reverseBits(vec3<u32>(var_0.c.d, var_0.c.d, var_0.c.d)) % vec3<u32>(32u)))), countOneBits(firstLeadingBit(2147483647i)), func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.d << (1u % 32u), ~arg_1), ~vec2<u32>(arg_1, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1062f), Struct_3(arg_0.a, func_2(vec3<i32>(arg_0.a.x, arg_0.a.x, 630i), i32(-1i) * -2147483647i, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 74201u, 1u), vec4<u32>(arg_1, arg_1, var_0.c.d, 38512u)), _wgslsmith_sub_i32(-2147483647i, u_input.a)), var_0.c, true), Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, 0i, -47841i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)), !var_0.d, var_0.c.d >> (0u % 32u))), arg_0);
    var_0 = func_5(_wgslsmith_add_vec3_u32(vec3<u32>(func_3(), 19063u, ~(~var_1.c.d)), vec3<u32>(arg_1, 64674u, 1u)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(func_2(var_1.a.wwy, var_1.b.a.x, vec4<u32>(var_1.c.d, var_0.c.d, 1u, var_1.c.d), 2147483647i).a.zw << (~vec2<u32>(1u, 10367u) % vec2<u32>(32u)), vec2<i32>(u_input.a, -66127i)), vec2<i32>(2147483647i | (-25966i ^ var_0.a.x), 1i)), func_4(arg_1, _wgslsmith_f_op_f32(-var_0.c.b), func_5(vec3<u32>(_wgslsmith_add_u32(var_0.c.d, 25772u), _wgslsmith_sub_u32(var_0.c.d, 1u), 12988u), -2147483647i, var_0.c, func_5(vec3<u32>(arg_1, arg_1, 90414u), _wgslsmith_div_i32(var_0.b.a.x, -10941i), func_5(vec3<u32>(arg_1, var_0.c.d, 1u), 13602i, var_0.c, Struct_1(arg_0.a)).c, func_4(var_1.c.d, 715f, Struct_3(vec4<i32>(-2147483647i, 2147483647i, var_0.b.a.x, u_input.a), Struct_1(vec4<i32>(2147483647i, 0i, 1i, 4528i)), var_0.c, var_0.c.c), var_0.c).a).b), Struct_2(func_5(~vec3<u32>(var_1.c.d, 51933u, 13288u), 1i, func_5(vec3<u32>(arg_1, 0u, arg_1), u_input.a, Struct_2(Struct_1(vec4<i32>(-66584i, var_0.c.a.a.x, u_input.a, 1i)), -1000f, var_0.c.c, 0u), Struct_1(vec4<i32>(u_input.a, -1i, 1i, 1i))).c, arg_0).c.a, _wgslsmith_f_op_f32(f32(-1f) * -1373f), var_0.d, arg_1)), var_1.c.a);
    var var_2 = any(select(vec4<bool>(!any(vec3<bool>(var_0.c.c, var_0.c.c, var_1.c.c)), all(vec2<bool>(true, true)), true, true), vec4<bool>(any(vec3<bool>(false, var_1.d, var_0.d)), false, any(vec3<bool>(var_1.c.c, false, var_1.c.c)), true), true));
    var_2 = !var_1.d;
    return Struct_1(~var_1.a & countOneBits(vec4<i32>(_wgslsmith_mod_i32(u_input.a, -2147483647i), ~arg_0.a.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, 2147483647i), arg_0.a.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(Struct_1(countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (vec4<u32>(67152u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))), 1u), _wgslsmith_div_f32(-1000f, -308f), false & (func_4(max(11088u, 21523u), 705f, func_5(vec3<u32>(1u, 48481u, 65875u), u_input.a, Struct_2(Struct_1(vec4<i32>(2147483647i, 79403i, u_input.a, u_input.a)), 1335f, false, 100556u), Struct_1(vec4<i32>(-22393i, 11948i, u_input.a, u_input.a))), Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -1628f, true, 27036u)).a.a.x > 1i), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), false)) ^ (~4294967295u >> (0u % 32u)));
    var var_1 = var_0;
    var var_2 = !select(!vec4<bool>(all(vec3<bool>(var_1.c, var_1.c, var_1.c)), var_0.c, false, var_1.c), vec4<bool>(false || all(vec3<bool>(false, var_1.c, var_1.c)), !var_1.c, !select(true, var_1.c, false), true && var_0.c), !vec4<bool>(true, !var_0.c, false, var_1.c));
    var_1 = Struct_2(func_1(var_1.a, ~select(_wgslsmith_mod_u32(0u, 12875u), var_1.d, 4294967295u > var_0.d)), 1209f, var_2.x, max(1u, 24270u));
    let var_3 = ~(~(~var_0.d));
    var var_4 = all(!(!(!(!vec4<bool>(false, true, false, var_2.x)))));
    var var_5 = ~(var_1.a.a >> (abs(~vec4<u32>(28350u, 15858u, var_1.d, var_1.d)) % vec4<u32>(32u)));
    var var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(var_1.d), 0u));
}


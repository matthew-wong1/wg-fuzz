struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(15754u, 1u, 89446u), abs(vec3<u32>(4294967295u, u_input.a.x, 18902u))), false, _wgslsmith_mult_u32(u_input.a.x, 0u));
    var var_1 = Struct_1(~firstTrailingBit(vec3<u32>(74169u | u_input.a.x, ~var_0.c, 0u)), var_0.b | ((!var_0.b || true) && var_0.b), var_0.c & 4294967295u);
    var_0 = Struct_1(~reverseBits(_wgslsmith_mult_vec3_u32(var_1.a >> (vec3<u32>(23028u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(35611u, var_0.a.x, 32873u) & vec3<u32>(1u, var_1.a.x, 21238u))), true, abs(abs(0u)));
    var var_2 = Struct_1(~var_0.a, var_1.b, ~max(1u, reverseBits(var_0.a.x & 5586u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(225f * 823f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2130f, 812f)))) * -999f));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-360f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), var_0));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, 168f), vec2<f32>(-1122f, var_0)))) + vec2<f32>(-917f, _wgslsmith_f_op_f32(var_1.x + -1659f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_1.x), var_1.x));
    var_2 = var_1.x;
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-774f * -1046f));
    let var_1 = vec3<f32>(552f, _wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, -111f)), _wgslsmith_f_op_f32(min(-1420f, 445f)), arg_2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2560f * 463f))))), _wgslsmith_f_op_f32(-795f * 184f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1)));
    let var_3 = func_2(Struct_1(arg_2.a, true, arg_0.x), !any(select(vec4<bool>(arg_2.b, arg_2.b, false, true), vec4<bool>(false, true, arg_2.b, arg_2.b), arg_2.b)), func_2(arg_2, any(vec4<bool>(any(vec3<bool>(arg_2.b, arg_2.b, true)), arg_2.b, false, false)), func_2(func_2(func_2(arg_2, arg_2.b, arg_2), true, Struct_1(vec3<u32>(42512u, u_input.a.x, arg_0.x), false, arg_2.a.x)), false, func_2(arg_2, false, func_2(arg_2, arg_2.b, arg_2)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-397f))), 599f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1))))))));
    return Struct_1(~func_2(func_2(func_2(Struct_1(arg_2.a, arg_2.b, 32291u), false, var_3), var_3.b, Struct_1(vec3<u32>(arg_1.x, 4294967295u, u_input.a.x), false, u_input.a.x)), !arg_2.b, arg_2).a, var_3.b, arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_add_u32(countOneBits(arg_1.a.x), ~arg_0.a.x);
    let var_1 = min(-(~11628i), 2147483647i);
    let var_2 = -521f;
    var var_3 = ~countOneBits(_wgslsmith_mult_vec3_u32(arg_0.a, _wgslsmith_div_vec3_u32(arg_1.a, vec3<u32>(98970u, var_0, 0u)))) ^ vec3<u32>(_wgslsmith_clamp_u32(~arg_1.a.x, ~func_2(Struct_1(arg_0.a, arg_2.x, 20050u), arg_2.x, arg_1).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 38516u, 1u, arg_0.c), vec4<u32>(89951u, arg_1.a.x, u_input.a.x, 0u))), 38608u, ~reverseBits(arg_1.c >> (arg_0.a.x % 32u)));
    var_3 = vec3<u32>(var_0, u_input.a.x, 1u & countOneBits(_wgslsmith_mod_u32(func_4(var_3.yy, vec2<u32>(0u, var_0), arg_0).a.x, abs(u_input.a.x))));
    return ~(min(countOneBits(~vec3<u32>(51634u, 18388u, 4294967295u)), vec3<u32>(arg_1.c, ~var_0, countOneBits(arg_0.a.x))) | ~(~arg_1.a));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = func_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(159585u, 1u), vec2<u32>(arg_1.x, 372u)), func_5(Struct_1(arg_1, arg_0.x, var_0), Struct_1(vec3<u32>(var_0, 0u, arg_1.x), false, u_input.a.x), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))).x, ~arg_1.x >> (_wgslsmith_mult_u32(18387u, var_0) % 32u)), !(!(!arg_0.x)), ~abs(1u)), true, Struct_1(arg_1 << (vec3<u32>(~u_input.a.x, var_0, var_0) % vec3<u32>(32u)), !arg_0.x, 3346u));
    let var_2 = u_input.c.x;
    let var_3 = func_2(func_2(func_2(Struct_1(abs(var_1.a), true, _wgslsmith_div_u32(81131u, 1u)), arg_0.x, Struct_1(select(var_1.a, var_1.a, vec3<bool>(true, true, false)), false, ~0u)), any(!(!vec4<bool>(true, arg_0.x, false, arg_0.x))), func_4(~select(vec2<u32>(var_1.c, var_0), arg_1.xz, arg_0), (vec2<u32>(u_input.a.x, 69705u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, var_1.a.x) % vec2<u32>(32u)), Struct_1(firstLeadingBit(var_1.a), true, 1u))), arg_0.x, Struct_1(var_1.a, select(func_4(vec2<u32>(0u, 77378u), vec2<u32>(var_0, 5674u), Struct_1(arg_1, var_1.b, arg_1.x)).b && true, false, all(select(vec4<bool>(true, arg_0.x, arg_0.x, var_1.b), vec4<bool>(arg_0.x, true, false, var_1.b), false))), _wgslsmith_sub_u32(~(arg_1.x | 40241u), _wgslsmith_add_u32(19377u, u_input.a.x) ^ ~var_0)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) + -1000f);
    return Struct_1(var_3.a, arg_0.x, firstLeadingBit(func_4(arg_1.zz, vec2<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), var_3).a.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.c.x;
    var var_1 = func_6(!vec2<bool>(false, false & any(vec2<bool>(false, false))), _wgslsmith_clamp_vec3_u32(func_5(func_4(~u_input.a, reverseBits(u_input.a), func_2(Struct_1(vec3<u32>(0u, u_input.a.x, 7424u), false, 1u), false, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 20809u), true, u_input.a.x))), Struct_1(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), true, max(u_input.a.x, u_input.a.x)), vec4<bool>(u_input.a.x != 59435u, any(vec3<bool>(true, false, false)), func_4(u_input.a, u_input.a, Struct_1(vec3<u32>(28728u, u_input.a.x, u_input.a.x), false, 4294967295u)).b, true)), vec3<u32>(countOneBits(~u_input.a.x), u_input.a.x, ~func_4(u_input.a, vec2<u32>(u_input.a.x, 7079u), Struct_1(vec3<u32>(68453u, u_input.a.x, 1u), false, 4294967295u)).a.x), vec3<u32>(~(~14688u), u_input.a.x, ~u_input.a.x)), vec2<f32>(-293f, 1346f), 1f);
    var var_2 = Struct_1(~_wgslsmith_sub_vec3_u32(abs(var_1.a), var_1.a) | var_1.a, !(!(func_4(var_1.a.zz, u_input.a, Struct_1(var_1.a, false, 1u)).c != 1u)), ~min(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 12100u), ~u_input.a.x ^ ~var_1.a.x));
    var_1 = func_6(vec2<bool>(var_1.b, true), min(var_2.a, vec3<u32>(firstLeadingBit(var_2.c >> (1u % 32u)), u_input.a.x, var_2.c & func_6(vec2<bool>(var_1.b, var_2.b), vec3<u32>(19170u, 0u, 0u), vec2<f32>(-273f, 1683f), -743f).a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(275f * 878f), _wgslsmith_div_f32(-441f, -403f)) - vec2<f32>(_wgslsmith_f_op_f32(-1719f - -353f), _wgslsmith_f_op_f32(588f * -601f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) + _wgslsmith_f_op_f32(1738f + -827f))));
    var var_3 = func_2(func_4(func_4(vec2<u32>(u_input.a.x, 724u << (0u % 32u)), vec2<u32>(var_1.a.x, firstTrailingBit(1u)), Struct_1(var_2.a, true, ~var_1.c)).a.xy, vec2<u32>(u_input.a.x, var_2.c << (select(var_1.c, 4294967295u, false) % 32u)), func_6(select(vec2<bool>(true, true), !vec2<bool>(var_2.b, var_2.b), 60155u < var_2.c), vec3<u32>(firstLeadingBit(var_1.c), 1u, u_input.a.x), vec2<f32>(-1000f, -1596f), 460f)), all(vec2<bool>(true, false)), Struct_1(firstTrailingBit(min(vec3<u32>(20463u, var_2.c, var_2.c), vec3<u32>(var_2.a.x, u_input.a.x, var_1.c))), all(select(vec4<bool>(true, true, var_1.b, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), false)), ~u_input.a.x));
    return !select(select(select(select(vec3<bool>(var_1.b, var_3.b, var_3.b), vec3<bool>(true, true, var_1.b), true), select(vec3<bool>(true, var_1.b, false), vec3<bool>(false, true, var_2.b), vec3<bool>(true, false, var_3.b)), var_1.b != var_3.b), vec3<bool>(true, select(false, false, var_1.b), var_2.b), var_3.b), vec3<bool>(var_2.b, any(!vec2<bool>(var_1.b, false)), any(vec3<bool>(false, var_3.b, var_2.b)) != !var_2.b), vec3<bool>(!(false && var_2.b), var_3.b, any(vec4<bool>(var_1.b, var_3.b, var_2.b, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(!any(func_1()), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !(!(u_input.b <= u_input.c.x)), false), false);
    var var_1 = func_4(_wgslsmith_mod_vec2_u32(~(~_wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), ~func_5(func_6(var_0.yx, vec3<u32>(27226u, 4294967295u, u_input.a.x), vec2<f32>(518f, -1797f), 199f), func_2(Struct_1(vec3<u32>(u_input.a.x, 10531u, u_input.a.x), var_0.x, 0u), true, Struct_1(vec3<u32>(u_input.a.x, 81942u, u_input.a.x), false, u_input.a.x)), vec4<bool>(false, true, var_0.x, true)).xz), vec2<u32>(countOneBits(~1u), 0u), Struct_1(vec3<u32>(func_5(Struct_1(vec3<u32>(u_input.a.x, 25551u, u_input.a.x), false, 26215u), Struct_1(vec3<u32>(u_input.a.x, 1u, 0u), false, u_input.a.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)).x << (1u % 32u), func_2(func_6(vec2<bool>(false, var_0.x), vec3<u32>(4881u, u_input.a.x, u_input.a.x), vec2<f32>(-350f, 1000f), 649f), false, Struct_1(vec3<u32>(1u, 4294967295u, 0u), false, 4294967295u)).a.x, 1u), func_2(Struct_1(vec3<u32>(u_input.a.x, 0u, 28814u), true, ~u_input.a.x), !all(vec3<bool>(true, false, var_0.x)), func_2(func_4(vec2<u32>(u_input.a.x, 22862u), vec2<u32>(1u, u_input.a.x), Struct_1(vec3<u32>(u_input.a.x, 14338u, u_input.a.x), var_0.x, 4294967295u)), var_0.x, func_4(u_input.a, u_input.a, Struct_1(vec3<u32>(1u, u_input.a.x, 11904u), false, u_input.a.x)))).b, countOneBits(~(~u_input.a.x)))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(~(~max(u_input.c.x, -2147483647i)), ~(~_wgslsmith_add_i32(-9936i, 62716i))), -28222i);
}


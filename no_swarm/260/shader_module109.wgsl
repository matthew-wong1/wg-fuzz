struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = firstLeadingBit(~(-1i)) >= abs(reverseBits(-arg_0.x));
    let var_1 = _wgslsmith_add_vec2_i32(abs(firstTrailingBit(vec2<i32>(i32(-1i) * -20701i, 2147483647i))), -(arg_0.wx | ((vec2<i32>(-23065i, 1i) & vec2<i32>(2147483647i, arg_0.x)) << (min(u_input.a, u_input.a) % vec2<u32>(32u)))));
    var var_2 = firstTrailingBit(~(~(vec4<u32>(u_input.a.x, 19417u, u_input.a.x, u_input.a.x) | vec4<u32>(43591u, 4294967295u, u_input.a.x, u_input.a.x)) & vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(1u, 22242u), max(0u, 1u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)))));
    var var_3 = 81321u;
    let var_4 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(622f - 537f), _wgslsmith_f_op_f32(step(926f, -284f)))))), 376f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-233f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1837f, 789f, 596f, -1769f)))))) - vec4<f32>(530f, -408f, 1431f, _wgslsmith_f_op_f32(abs(1f)))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-708f + 1000f), _wgslsmith_f_op_f32(arg_2 - arg_2))))), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1867f, 795f, -383f, arg_2))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(2147483647i, arg_3.x, arg_1.x, -7593i))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-441f, -1279f, 366f, -245f), vec4<f32>(arg_0, -458f, arg_0, -192f))))), vec3<bool>(true, select(false, true, any(vec2<bool>(true, false))), false), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(1u, 6471u, u_input.a.x)), abs(vec3<u32>(3768u, 2377u, u_input.a.x)), true)), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(arg_0, reverseBits(select(abs(vec2<i32>(arg_3.x, -2147483647i)), vec2<i32>(-2147483647i, -2923i), all(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, 838f, arg_0)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(673f, 243f, -1369f, arg_0), vec4<f32>(-326f, 2597f, arg_0, -1225f))))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true))))));
    let var_1 = var_0.d.c;
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_1.wyw, var_0.b.b.wxw)), var_0.d.c.wyz, var_0.b.c)) * _wgslsmith_f_op_vec3_f32(trunc(var_0.b.b.yyz))), Struct_2(select(vec2<bool>(!var_0.b.c.x, any(var_0.b.a)), select(select(var_0.b.c.xz, vec2<bool>(false, var_0.b.a.x), var_0.b.c.yz), var_0.b.a, !var_0.b.a.x), !var_0.b.c.xz), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x - var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - var_0.a.x), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-360f)))), !(!select(var_0.b.c, var_0.b.c, vec3<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x))), var_0.b.d), var_0.c, var_0.d);
    var var_2 = 1701f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -1508f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x * arg_0)))) - var_0.b.b.x);
    return 769f;
}

fn func_1(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(2372f, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -9345i, 0i), vec4<i32>(arg_0.x, -1i, -11274i, arg_0.x)), -513f, firstTrailingBit(vec4<i32>(-11642i, arg_0.x, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1202f + -231f)), -785f), Struct_2(vec2<bool>(all(vec2<bool>(true, true)), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-493f, 1600f, -3146f, 192f), vec4<f32>(-209f, 2693f, 910f, -656f), vec4<bool>(false, true, true, false))))), vec4<f32>(1f, 1f, 1f, 1f)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), reverseBits(~vec3<u32>(1u, u_input.a.x, u_input.a.x))), ~vec2<u32>(30657u, u_input.a.x), Struct_1(1150f, firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_0, abs(vec2<i32>(-21176i, arg_0.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(180f, -697f, -301f, 207f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, -1046f, 745f, -661f)))))));
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1449f + var_0.d.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_0.b.b.x * 368f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(559f)))), var_0.b, vec2<u32>(33854u, ~_wgslsmith_mult_u32(~var_0.b.d.x, var_0.c.x)), Struct_1(_wgslsmith_f_op_f32(sign(var_0.d.c.x)), select(firstLeadingBit(vec2<i32>(var_0.d.b.x, -3332i)), countOneBits(arg_0), var_0.b.a.x), vec4<f32>(var_0.a.x, _wgslsmith_f_op_vec4_f32(func_3(-vec4<i32>(1i, 20261i, arg_0.x, var_0.d.b.x))).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), -466f)), var_0.d.c.x)));
    var var_1 = arg_0.x;
    let var_2 = !vec4<bool>(!(select(var_0.c.x, var_0.c.x, true) <= max(var_0.c.x, u_input.a.x)), !(!(!var_0.b.a.x)), var_0.b.a.x, true);
    var_1 = ~_wgslsmith_mod_i32(-arg_0.x | _wgslsmith_sub_i32(1i, var_0.d.b.x), arg_0.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(348f, var_0.d.a, var_0.d.c.x) * vec3<f32>(1000f, 255f, 256f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1630f, var_0.a.x, -163f))))) * var_0.d.c.zxx) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -2700f, 281f)), _wgslsmith_f_op_vec3_f32(step(var_0.d.c.wyy, vec3<f32>(var_0.a.x, 514f, -1139f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-177f - 1031f), -1000f, -2607f)) * _wgslsmith_f_op_vec3_f32(func_1(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(0i, 0i) >> (u_input.a % vec2<u32>(32u)), false)))), Struct_2(!vec2<bool>(all(vec4<bool>(true, true, false, true)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), !(u_input.a.x > u_input.a.x)), vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(abs(38208u), u_input.a.x), firstTrailingBit(~1u))), ~(~(~u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-562f + -912f), -787f)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, -2632i), vec2<i32>(-10994i, 1i)), vec2<i32>(0i, 53460i)), vec2<i32>(1i, 1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f - 804f)), _wgslsmith_f_op_f32(-1913f - _wgslsmith_f_op_f32(abs(-458f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(688f, 692f))), -100f)));
    let var_1 = Struct_5(var_0.b);
    var var_2 = select(select(select(vec4<bool>(var_1.a.a.x, var_0.b.a.x, !var_0.b.a.x, all(vec2<bool>(false, false))), vec4<bool>(false, all(var_1.a.c), var_1.a.a.x, true), true), vec4<bool>(true, any(vec2<bool>(var_1.a.c.x, false)), false, var_0.b.c.x), var_1.a.c.x), select(vec4<bool>(false, !all(var_0.b.c), !var_1.a.a.x & (var_0.d.b.x >= 1311i), false), !select(select(vec4<bool>(true, var_0.b.a.x, true, var_0.b.a.x), vec4<bool>(true, var_0.b.c.x, var_1.a.a.x, var_0.b.c.x), var_1.a.c.x), select(vec4<bool>(var_1.a.c.x, var_0.b.c.x, false, var_1.a.c.x), vec4<bool>(false, true, var_1.a.a.x, false), false), vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, true)), !(!vec4<bool>(true, var_1.a.a.x, false, var_0.b.a.x))), false);
    var_2 = select(vec4<bool>(var_2.x, !(var_1.a.c.x && var_0.b.a.x) || true, !any(vec3<bool>(var_2.x, var_1.a.a.x, true)), true), !(!vec4<bool>(all(var_0.b.a), false, false, 1u == var_0.c.x)), !(!(!(!vec4<bool>(var_0.b.c.x, var_2.x, var_0.b.a.x, false)))));
    var var_3 = var_0;
    var_3 = var_0;
    var_2 = vec4<bool>(var_0.b.c.x, var_0.b.c.x, all(vec3<bool>(false, true, all(!var_2.zxz))), var_1.a.c.x);
    let var_4 = Struct_4(Struct_2(!vec2<bool>(true, var_2.x), _wgslsmith_f_op_vec4_f32(-var_0.d.c), select(select(!vec3<bool>(true, var_2.x, var_2.x), select(var_2.wyy, var_0.b.c, false), !vec3<bool>(true, var_3.b.c.x, var_0.b.a.x)), var_0.b.c, var_0.c.x <= (u_input.a.x | var_1.a.d.x)), vec3<u32>(109933u, ~_wgslsmith_clamp_u32(96235u, 7549u, var_3.c.x), ~1u)), Struct_2(!var_0.b.c.xx, var_3.d.c, var_0.b.c, var_0.b.d & (~var_1.a.d ^ ~vec3<u32>(4294967295u, var_1.a.d.x, var_1.a.d.x))));
    var var_5 = select(vec2<bool>(true, var_2.x), var_1.a.a, !(_wgslsmith_f_op_f32(floor(var_4.b.b.x)) != _wgslsmith_div_f32(var_3.a.x, var_4.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1268f)), _wgslsmith_f_op_f32(abs(-1759f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) * _wgslsmith_f_op_f32(-var_4.b.b.x)))), _wgslsmith_div_vec3_u32(abs(~var_0.b.d) >> ((var_1.a.d << (~var_4.a.d % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, var_1.a.d.x, var_0.b.d.x)), ~(~var_3.b.d))));
}


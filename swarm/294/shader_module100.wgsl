struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> vec2<bool> {
    let var_0 = ~(~vec3<i32>(-2147483647i, ~arg_0.c, -13513i) << ((vec3<u32>(_wgslsmith_sub_u32(arg_2, arg_2), firstTrailingBit(31028u), arg_2) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2, 4294967295u, arg_2), vec3<u32>(arg_2, arg_2, arg_2) << (vec3<u32>(40876u, arg_2, arg_2) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_1 = arg_1.x;
    let var_2 = arg_0.b.x && arg_0.b.x;
    var var_3 = var_2;
    let var_4 = Struct_1(arg_0.a.a, arg_0.a.b);
    return arg_0.b.zz;
}

fn func_3(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1941f - _wgslsmith_f_op_f32(f32(-1f) * -555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f - 1556f))), vec3<f32>(1f, 1f, 1f)), !vec4<bool>(true, true, any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, false), true)), false), 1i);
    var var_1 = var_0.a.b.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)) + _wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b.x, var_0.a.a))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.b.x)));
    var var_2 = var_0.b;
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~81395u ^ (1u << (select(0u, select(4294967295u, 1u, true) ^ ~0u, any(vec2<bool>(true, true))) % 32u));
    var_0 = 1u;
    var var_1 = Struct_1(-838f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.x, -1180f, arg_0.b.x))) * _wgslsmith_f_op_vec3_f32(trunc(arg_0.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.b))), true))));
    var var_2 = _wgslsmith_add_i32(min(~(-2833i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-7640i, u_input.a)))) & u_input.a, firstLeadingBit(abs(u_input.a) ^ 2147483647i));
    var var_3 = -_wgslsmith_dot_vec4_i32(min(vec4<i32>(min(2737i, u_input.a), 1i, max(2147483647i, 25091i), firstLeadingBit(0i)), vec4<i32>(1i, countOneBits(u_input.a), -1i, ~u_input.a)), vec4<i32>(-_wgslsmith_mult_i32(u_input.a, 0i), firstLeadingBit(~(-1i)), -u_input.a << (1u % 32u), u_input.a));
    return 40129u;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(func_3(vec2<bool>(!(!arg_3), true)), select(select(vec4<bool>(false | arg_3, true, !arg_3, true), !select(vec4<bool>(true, arg_3, false, arg_3), vec4<bool>(arg_3, false, arg_3, true), true), any(vec2<bool>(arg_3, arg_3))), select(select(!vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(arg_3, arg_3, true, arg_3), any(vec3<bool>(true, arg_3, false))), vec4<bool>(true, false || arg_3, arg_2 >= arg_2, !arg_3), arg_2 > _wgslsmith_mult_u32(arg_2, 50155u)), vec4<bool>(any(vec4<bool>(arg_3, arg_3, true, false)), arg_3, 13762i != max(arg_1.x, 31529i), true)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(arg_1.wz, arg_1.zy)) ^ ~(~_wgslsmith_mult_i32(3364i, -1i)));
    let var_1 = var_0.b;
    var var_2 = var_0.b;
    let var_3 = abs(~vec4<u32>(68184u, 73796u >> (_wgslsmith_sub_u32(arg_2, 1u) % 32u), ~4294967295u, _wgslsmith_mult_u32(32222u, ~arg_2)));
    let var_4 = 1u ^ var_3.x;
    return var_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = -914f;
    var var_1 = ~firstLeadingBit(66926u);
    let var_2 = _wgslsmith_f_op_f32(sign(arg_1.b.a.a));
    let var_3 = arg_1.c.yy ^ max(max(vec2<u32>(arg_1.c.x, ~0u), ~max(arg_1.c.xz, arg_1.c.xz)), firstTrailingBit(vec2<u32>(arg_1.c.x, 31342u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1018f * 1386f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-arg_1.e.a.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, -486f) - _wgslsmith_f_op_f32(sign(var_2))), arg_1.e.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1158f)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(func_3(!arg_1.e.b.wy).b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-729f, -240f, arg_1.b.a.a) * vec3<f32>(124f, -632f, 1000f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, arg_0.b.x, -966f)), vec3<f32>(148f, -165f, 1188f))))), arg_1.d.b, u_input.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(1000f, -firstLeadingBit(-vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i)), func_4(func_3(func_2(Struct_2(Struct_1(-579f, vec3<f32>(970f, 384f, 358f)), vec4<bool>(false, false, false, false), u_input.a), vec3<i32>(u_input.a, -29102i, -1i), 0u, u_input.a))), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), true))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, 1220f, -232f, -1041f))))), Struct_2(func_5(-165f, vec4<i32>(-8237i, u_input.a, 1i, u_input.a), ~0u, any(vec3<bool>(false, true, true))), vec4<bool>(false, true, false, true), ~(-22937i)), vec3<u32>(37763u, 4294967295u, func_4(Struct_1(1177f, vec3<f32>(-211f, 574f, -1000f))) >> (1u % 32u)), Struct_2(Struct_1(-2834f, vec3<f32>(-1448f, 198f, 898f)), vec4<bool>(true, true, true, u_input.a < -20048i), 0i), Struct_2(Struct_1(-1255f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, 590f, -485f) * vec3<f32>(284f, 844f, -710f))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), 45545i)));
    var_0 = Struct_2(var_0.a, var_0.b, -12874i);
    let var_1 = vec4<i32>(_wgslsmith_div_i32(55725i, u_input.a), firstTrailingBit(firstTrailingBit(_wgslsmith_div_i32(51481i, abs(var_0.c)))), abs(-11864i), i32(-1i) * -_wgslsmith_clamp_i32(3917i, var_0.c, -2147483647i));
    var_0 = Struct_2(var_0.a, select(!vec4<bool>(var_0.b.x, all(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), var_0.b.x, var_0.b.x), vec4<bool>(!all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), false, true, var_0.b.x), any(func_6(Struct_1(var_0.a.b.x, vec3<f32>(var_0.a.a, -1005f, 505f)), Struct_3(vec4<f32>(-894f, -859f, 269f, 733f), Struct_2(Struct_1(var_0.a.b.x, vec3<f32>(905f, 885f, var_0.a.a)), vec4<bool>(false, true, var_0.b.x, true), var_1.x), vec3<u32>(64657u, 16394u, 4294967295u), Struct_2(var_0.a, var_0.b, u_input.a), Struct_2(Struct_1(var_0.a.a, var_0.a.b), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), var_0.c))).b)), 38837i);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a))), var_0.a.b), !var_0.b, select(u_input.a, -u_input.a, var_0.b.x));
    return func_3(vec2<bool>(true, true));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<bool>(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(12395u, 17039u, 0u), vec3<u32>(29643u, 29162u, 16081u))) <= 6064u, true, any(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_2(arg_0, vec4<bool>(any(func_6(func_5(arg_1.b.x, vec4<i32>(44548i, arg_2, u_input.a, -24564i), 13856u, true), Struct_3(vec4<f32>(arg_1.b.x, arg_1.a, 880f, 343f), Struct_2(Struct_1(arg_1.a, arg_0.b), vec4<bool>(var_0.x, var_0.x, var_0.x, false), -1i), vec3<u32>(84348u, 2282u, 0u), Struct_2(arg_1, vec4<bool>(false, false, var_0.x, false), arg_2), Struct_2(arg_0, vec4<bool>(var_0.x, var_0.x, var_0.x, false), arg_2))).b), select(any(var_0.zy), var_0.x, true), select(all(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x))), true, true), false), arg_2);
    let var_2 = Struct_3(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(432f, var_1.a.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x + 359f), -265f), func_1().a, var_1.b.x))), Struct_2(arg_0, !(!vec4<bool>(var_0.x, var_1.b.x, false, var_1.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-30411i, 25860i, u_input.a, arg_2) | vec4<i32>(arg_2, -1i, 9271i, 1i), -(~vec4<i32>(u_input.a, var_1.c, u_input.a, u_input.a)))), ~(~(~max(vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 14108u, 1u)))), func_6(var_1.a, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -828f, arg_0.b.x, arg_1.a)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1348f, 834f, -1140f, -898f), vec4<f32>(1517f, var_1.a.b.x, var_1.a.a, -147f), false))), Struct_2(arg_0, select(var_1.b, vec4<bool>(false, true, false, var_1.b.x), var_1.b), 1i), ~(~vec3<u32>(1709u, 4294967295u, 4294967295u)), func_6(arg_0, Struct_3(vec4<f32>(var_1.a.b.x, arg_1.a, var_1.a.a, 619f), Struct_2(arg_0, var_1.b, -1i), vec3<u32>(4294967295u, 74188u, 0u), Struct_2(arg_0, var_1.b, arg_2), Struct_2(arg_1, vec4<bool>(true, var_0.x, var_1.b.x, var_0.x), 1i))), Struct_2(arg_1, func_6(Struct_1(1000f, vec3<f32>(arg_1.a, -2392f, -279f)), Struct_3(vec4<f32>(986f, -450f, -485f, -171f), Struct_2(var_1.a, var_1.b, -20412i), vec3<u32>(4294967295u, 4294967295u, 9402u), Struct_2(arg_1, var_1.b, 2147483647i), Struct_2(Struct_1(arg_1.a, arg_0.b), var_1.b, -1i))).b, _wgslsmith_div_i32(u_input.a, 2147483647i)))), Struct_2(arg_0, select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, true, var_1.b.x, true)), var_1.b.x), u_input.a));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.d.a.a, -476f)) - _wgslsmith_f_op_f32(min(arg_0.a, 455f))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1913f)), _wgslsmith_f_op_f32(-1291f - arg_0.a))), vec4<bool>(any(vec4<bool>(var_2.b.b.x, true, var_2.d.a.b.x == -2217f, true)), var_2.d.a.b.x >= var_2.a.x, true, false), i32(-1i) * -1i);
    var var_3 = -select(vec2<i32>(reverseBits(~5810i), ~(-2147483647i)), -(~(~vec2<i32>(arg_2, -2147483647i))), all(func_6(Struct_1(arg_0.a, vec3<f32>(2068f, var_2.e.a.a, arg_1.b.x)), Struct_3(var_2.a, var_2.b, vec3<u32>(var_2.c.x, 55851u, 4294967295u), Struct_2(var_1.a, vec4<bool>(false, var_0.x, var_1.b.x, var_2.b.b.x), 0i), var_2.d)).b.zxx));
    return func_3(func_6(func_3(func_6(arg_1, var_2).b.wy), Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.a))), func_6(arg_1, var_2), _wgslsmith_add_vec3_u32(reverseBits(var_2.c), var_2.c), Struct_2(func_5(var_1.a.b.x, vec4<i32>(var_2.d.c, u_input.a, u_input.a, 0i), var_2.c.x, var_1.b.x), vec4<bool>(var_2.b.b.x, var_0.x, var_1.b.x, false), reverseBits(var_2.b.c)), var_2.e)).b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(), Struct_1(_wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(915f, -834f, -2430f), vec3<f32>(1064f, -534f, -1000f))))))), 2147483647i);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(func_1().b.x, _wgslsmith_f_op_f32(min(var_0.b.x, 1404f))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-778f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_1.x)), func_7(var_0, Struct_1(963f, vec3<f32>(var_1.x, var_0.b.x, -1000f)), ~u_input.a).b.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1998f + var_1.x))))));
    let var_3 = _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(0u, 1u, 16181u) | select(vec3<u32>(1u, 7950u, 48411u), vec3<u32>(701u, 57565u, 0u), vec3<bool>(false, true, false))) ^ max(~abs(vec3<u32>(84242u, 0u, 23436u)), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u));
    var_2 = -846f;
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + 566f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a)))))) + var_0.b.xy);
    var_2 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(30611i, 59693i, -1i, 0i), vec4<i32>(u_input.a, u_input.a, -38124i, 7501i)), u_input.a), select(select(~0i, 1i, all(vec2<bool>(true, false))), u_input.a, true), !all(vec4<bool>(false, false, true, true)) && func_2(func_6(var_0, Struct_3(vec4<f32>(var_1.x, var_0.b.x, 2551f, 255f), Struct_2(Struct_1(var_0.a, var_0.b), vec4<bool>(true, false, false, true), -1i), var_3, Struct_2(var_0, vec4<bool>(false, false, false, false), 52399i), Struct_2(var_0, vec4<bool>(true, true, false, true), -17943i))), vec3<i32>(0i, u_input.a, u_input.a), select(var_3.x, var_3.x, false), -u_input.a).x), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_3.x, var_3.x, 1u), vec4<u32>(var_3.x, 1190u, var_3.x, var_3.x)), vec4<u32>(var_3.x, 53770u, var_3.x, var_3.x)) & ~(~(~vec4<u32>(var_3.x, 50090u, var_3.x, 0u))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a, 46739i) & vec2<i32>(0i, u_input.a), ~vec2<i32>(u_input.a, -68537i), true), vec2<i32>(~2147483647i, u_input.a)) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(66320i, u_input.a)), vec2<i32>(u_input.a, -63028i) ^ vec2<i32>(u_input.a, 18662i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, u_input.a)))));
}


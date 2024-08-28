struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_4(Struct_1(countOneBits(-2147483647i), all(vec4<bool>(!arg_0, false, any(arg_2), true)), firstTrailingBit(vec4<u32>(~4294967295u, ~1u, _wgslsmith_clamp_u32(u_input.a, arg_1.b.c.x, 1u), _wgslsmith_dot_vec3_u32(arg_1.e.c.zzw, vec3<u32>(22974u, 0u, u_input.a)))), arg_1.d.x, ~arg_1.e.c.yz), select(select(select(vec3<u32>(u_input.a, 0u, 25868u), arg_1.b.c.wzz, false), _wgslsmith_sub_vec3_u32(arg_1.e.c.yzw, vec3<u32>(u_input.a, 44660u, u_input.a)), !vec3<bool>(arg_2.x, false, false)), vec3<u32>(u_input.a, 21850u, 0u), !select(vec3<bool>(arg_2.x, arg_0, arg_1.e.b), vec3<bool>(true, true, arg_0), vec3<bool>(arg_1.b.b, true, arg_2.x))) >> (arg_1.e.c.yzx % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(859f))));
    let var_1 = (vec4<i32>(abs(var_0.a.a), 21837i, 15839i, 1i) ^ _wgslsmith_div_vec4_i32(~arg_1.a, arg_1.a)) ^ vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.a.x ^ var_0.a.d, var_0.a.a), -_wgslsmith_clamp_i32(-13506i, arg_1.a.x, -8951i)), _wgslsmith_clamp_i32(~1i, ~_wgslsmith_dot_vec3_i32(arg_1.a.yzz, arg_1.d), arg_1.e.a), var_0.a.a, -_wgslsmith_mod_i32(var_0.a.a, 1i));
    var var_2 = _wgslsmith_dot_vec2_i32(var_1.wz, _wgslsmith_mult_vec2_i32(var_1.yw, max(countOneBits(countOneBits(arg_1.a.wx)), var_1.xx)));
    var var_3 = vec3<bool>(any(select(!vec3<bool>(var_0.a.b, arg_1.e.b, arg_1.c), vec3<bool>(var_0.a.b, var_0.c < 590f, true), !select(vec3<bool>(arg_1.b.b, false, false), vec3<bool>(arg_0, arg_2.x, false), true))), true, select(!any(!vec4<bool>(var_0.a.b, var_0.a.b, arg_2.x, true)), var_0.a.b, 1u >= u_input.a));
    let var_4 = select(true, true, all(select(arg_2, var_3.zz, any(!vec3<bool>(true, false, var_0.a.b)))));
    return var_0.c;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> vec3<u32> {
    return vec3<u32>(min(~_wgslsmith_mult_u32(u_input.a, 63788u) & ~arg_2.c.e.x, ~(~min(14132u, u_input.a))), _wgslsmith_div_u32(firstLeadingBit(reverseBits(u_input.a)), 1u), ~_wgslsmith_dot_vec4_u32(arg_2.c.c, arg_2.c.c));
}

fn func_2() -> bool {
    let var_0 = ~reverseBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, -2147483647i, -26446i, 38568i)));
    let var_1 = Struct_4(Struct_1(var_0.x, true, vec4<u32>(min(_wgslsmith_clamp_u32(u_input.a, 14980u, 55333u), u_input.a), ~50788u, u_input.a, u_input.a), 0i, vec2<u32>(~u_input.a, _wgslsmith_div_u32(1u, 1u)) ^ vec2<u32>(~u_input.a, 44901u)), firstTrailingBit(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1092f, -1132f, -669f, 1773f))), vec4<f32>(262f, -355f, 207f, 142f)), _wgslsmith_f_op_f32(-771f - -859f), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -202f), vec3<bool>(true, true, true), Struct_1(var_0.x, false, vec4<u32>(87122u, 37160u, u_input.a, 73029u), -35047i, vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(func_3(false, Struct_2(vec4<i32>(-3862i, var_0.x, var_0.x, var_0.x), Struct_1(2147483647i, true, vec4<u32>(u_input.a, 0u, 82549u, u_input.a), var_0.x, vec2<u32>(u_input.a, 44826u)), true, vec3<i32>(0i, 3458i, var_0.x), Struct_1(1i, false, vec4<u32>(24451u, 1u, u_input.a, 50718u), 2147483647i, vec2<u32>(9167u, 0u))), vec2<bool>(true, true))), vec3<i32>(var_0.x, 55854i, 1i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f - -1000f) * _wgslsmith_f_op_f32(step(299f, -657f))) + 1171f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))), false)));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~((var_1.a.c.yw << (var_1.a.c.wz % vec2<u32>(32u))) << (var_1.a.c.xw % vec2<u32>(32u))), var_1.a.c.wz), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -675f, 1420f, -404f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-128f, 882f, 308f, -1855f), vec4<f32>(var_1.c, 469f, var_1.c, var_1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.c, var_1.c))))), Struct_3(-1907f, !vec3<bool>(true, var_1.a.b, var_1.a.b), var_1.a, 1315f, _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, var_1.a.a, var_1.a.a)), ~vec3<i32>(1i, var_1.a.a, var_0.x)))).x);
    var_2 = _wgslsmith_add_vec2_u32(var_1.a.c.xz, vec2<u32>(_wgslsmith_add_u32(13302u | var_1.a.c.x, ~(~var_1.a.e.x)), u_input.a));
    let var_3 = select(var_1.a.c, ~(~(~var_1.a.c)) >> (vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, var_1.b.x)), ~4294967295u, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_mod_u32(2061u >> (var_2.x % 32u), _wgslsmith_mod_u32(var_1.b.x, var_1.a.e.x))) % vec4<u32>(32u)), false);
    return true;
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = arg_0.a;
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(-16314i, -25124i, arg_0.a.d, arg_0.a.d)), _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(var_0.a, -21781i, var_0.d, arg_0.a.a)), abs(abs(vec4<i32>(var_0.d, 7277i, -8912i, arg_0.a.d))))), false, ~var_0.c, ~firstTrailingBit(arg_0.a.d), arg_0.a.e);
    let var_1 = select(func_2(), false, !var_0.b) || all(vec2<bool>(all(vec2<bool>(false, false)) != any(vec3<bool>(arg_0.a.b, true, arg_0.a.b)), !(var_0.e.x > arg_0.a.c.x)));
    var_0 = Struct_1(1i << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 35741u, arg_0.b.x)), min(countOneBits(var_0.c), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 29290u, 1u, u_input.a), vec4<u32>(51044u, 25090u, 0u, arg_0.a.c.x)))) % 32u), var_1, arg_0.a.c, -14548i, vec2<u32>(25164u, u_input.a));
    var var_2 = !select(select(!select(vec4<bool>(var_1, false, false, false), vec4<bool>(false, var_0.b, var_1, true), var_0.b), vec4<bool>(true, var_0.b, true, any(vec4<bool>(true, var_1, var_1, arg_0.a.b))), !(!vec4<bool>(false, false, var_0.b, var_1))), !vec4<bool>(!arg_0.a.b, all(vec4<bool>(false, false, var_0.b, var_1)), true, !var_1), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(334f, -747f));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = ~firstLeadingBit(31162i);
    let var_1 = vec2<u32>(_wgslsmith_div_u32(~arg_2.a.c.x, reverseBits(func_4(vec4<f32>(-455f, arg_2.c, arg_1, -1000f), arg_2.c, Struct_3(arg_2.c, vec3<bool>(true, true, arg_2.a.b), Struct_1(48328i, arg_2.a.b, arg_2.a.c, var_0, vec2<u32>(u_input.a, 4294967295u)), -1058f, vec3<i32>(2147483647i, 41i, -1i))).x | 1u)), 0u);
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_f32(max(-1049f, 181f)), select(select(select(vec3<bool>(false, arg_2.a.b, arg_2.a.b), vec3<bool>(arg_2.a.b, true, true), true), select(vec3<bool>(arg_2.a.b, arg_2.a.b, false), vec3<bool>(false, true, arg_2.a.b), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, arg_2.a.b), vec3<bool>(701f == arg_2.c, true, true)), Struct_1(~_wgslsmith_div_i32(33206i, 12810i), func_2(), ~_wgslsmith_div_vec4_u32(arg_2.a.c, arg_2.a.c), _wgslsmith_mult_i32(-var_0, abs(var_0)), arg_2.b.xx), -520f, vec3<i32>(1i, firstLeadingBit(var_0), arg_2.a.a)), vec3<u32>(~var_1.x, abs(var_1.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 45121u), arg_2.b.yy), ~arg_2.a.e) ^ 0u), Struct_2(select(vec4<i32>(arg_2.a.d & arg_2.a.d, _wgslsmith_add_i32(var_0, var_0), 1i >> (var_1.x % 32u), var_0), vec4<i32>(var_0, arg_2.a.a, -67330i, -23289i) | -vec4<i32>(-30413i, -19600i, var_0, arg_2.a.d), select(!vec4<bool>(arg_2.a.b, arg_2.a.b, true, arg_2.a.b), !vec4<bool>(true, false, true, arg_2.a.b), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, arg_2.a.b, true), vec4<bool>(arg_2.a.b, false, arg_2.a.b, false)))), Struct_1(-2147483647i, false, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u) ^ (arg_2.a.c ^ vec4<u32>(u_input.a, u_input.a, 2820u, arg_2.b.x)), 1i, vec2<u32>(u_input.a, 8406u) << (arg_2.a.c.xx % vec2<u32>(32u))), !any(select(vec4<bool>(arg_2.a.b, true, false, false), vec4<bool>(arg_2.a.b, false, arg_2.a.b, false), vec4<bool>(arg_2.a.b, arg_2.a.b, arg_2.a.b, true))), vec3<i32>(firstTrailingBit(countOneBits(arg_2.a.d)), -4427i, 1i), arg_2.a));
    return Struct_4(Struct_1(-_wgslsmith_dot_vec3_i32(var_2.c.a.wyw, var_2.c.a.zyw | var_2.a.e), func_2() & true, vec4<u32>(~4294967295u >> (~u_input.a % 32u), ~(~arg_2.a.e.x), arg_2.a.c.x, ~0u >> (_wgslsmith_mult_u32(u_input.a, var_1.x) % 32u)), -arg_2.a.d, ~vec2<u32>(~4294967295u, arg_2.a.e.x)), firstLeadingBit(vec3<u32>(1u, 1u << (u_input.a % 32u), 20577u ^ (19172u << (var_2.b.x % 32u)))), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1798f, -679f, 757f, 452f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, 559f, 236f, -146f) + vec4<f32>(-209f, 905f, 1589f, 1345f)), vec4<f32>(-1530f, -1772f, -1000f, 1169f))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f * -648f) - _wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_f32(-774f * _wgslsmith_div_f32(-282f, 767f)), -987f), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 170f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(3234i, true, vec4<u32>(17936u, u_input.a, u_input.a, u_input.a), -1i, vec2<u32>(39061u, 1u)), vec3<u32>(u_input.a, u_input.a, 4294967295u), -746f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -387f, var_0.x))))), 841f, Struct_4(Struct_1(33873i, func_2(), ~vec4<u32>(1u, u_input.a, 5514u, u_input.a) | vec4<u32>(42811u, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_i32(~(-48369i), 7529i), vec2<u32>(u_input.a, 1u) & ~vec2<u32>(u_input.a, 0u)), ~vec3<u32>(u_input.a, u_input.a | 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(15944u, u_input.a, 51514u), vec3<u32>(1u, u_input.a, 17556u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -695f) * 1240f)));
    let var_2 = select(select(select(!vec3<bool>(false, var_1.a.b, false), select(select(vec3<bool>(true, true, false), vec3<bool>(var_1.a.b, var_1.a.b, false), vec3<bool>(var_1.a.b, false, false)), vec3<bool>(true, var_1.a.b, false), false), !(!vec3<bool>(false, var_1.a.b, false))), !vec3<bool>(!var_1.a.b, var_1.a.b, var_1.a.d == 2147483647i), !(!select(vec3<bool>(var_1.a.b, false, true), vec3<bool>(true, var_1.a.b, true), false))), vec3<bool>(true, !any(vec3<bool>(false, false, false)) != !var_1.a.b, false), _wgslsmith_div_u32(13530u, firstLeadingBit(58664u)) <= countOneBits(var_1.b.x));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1870f, _wgslsmith_f_op_f32(-224f + var_0.x), -311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))))));
    let var_3 = var_2;
    let var_4 = u_input.a;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c, var_1.c, 405f, -2119f)))))), vec4<f32>(var_1.c, _wgslsmith_div_f32(796f, -1183f), var_1.c, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), var_1.a.c.zx), ~var_1.a.e)), ~0i, ~(vec3<i32>(var_1.a.a, _wgslsmith_add_i32(var_1.a.a, 0i), var_1.a.a) << (min(vec3<u32>(45147u, 57850u, 30663u), vec3<u32>(var_1.a.e.x, u_input.a, u_input.a)) % vec3<u32>(32u))));
}


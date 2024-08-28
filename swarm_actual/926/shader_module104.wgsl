struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = true;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) * _wgslsmith_f_op_f32(409f - 1224f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1934f)))), 675f, _wgslsmith_f_op_f32(round(-245f))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yw) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.zw)), vec2<f32>(var_1.x, var_1.x))))));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(vec4<u32>(~_wgslsmith_div_u32(u_input.c, 4294967295u), _wgslsmith_sub_u32(1u, 1u), 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(19414u, 1u), vec2<u32>(1u, 1u))), 1i, 2842f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.c, var_0.a.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, 321f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.c, -3442f))))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-579f - _wgslsmith_div_f32(-862f, 714f)), 1000f), _wgslsmith_f_op_vec2_f32(func_3(~(~vec3<u32>(var_0.a.a.x, u_input.c, 0u)), var_0.a.a))));
    var var_2 = Struct_2(var_0.a, select(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), any(vec2<bool>(true, false))), vec3<bool>(select(true, true, any(vec2<bool>(false, false))), true, false && any(vec4<bool>(false, true, true, true))), 1i < (~u_input.a.x | _wgslsmith_clamp_i32(-41605i, 1i, var_0.a.b))), 11822u, vec2<u32>(var_0.a.a.x, 1401u), Struct_1(vec4<u32>(u_input.d, max(~var_0.a.a.x, ~var_0.a.a.x), var_0.a.a.x, ~58917u >> (firstTrailingBit(var_0.a.a.x) % 32u)), -((u_input.a.x | 12652i) >> (~0u % 32u)), -972f));
    var_2 = Struct_2(var_2.a, !vec3<bool>(var_2.b.x, false, select(true, true, var_2.b.x == var_2.b.x)), 17386u | var_2.a.a.x, min(var_2.d, abs(min(var_2.d, vec2<u32>(111304u, var_2.e.a.x)))), var_2.a);
    var_2 = Struct_2(var_2.a, select(vec3<bool>(all(var_2.b), var_2.b.x | false, true), var_2.b, var_2.b), var_0.a.a.x << (~var_2.d.x % 32u), _wgslsmith_add_vec2_u32(~(~firstTrailingBit(vec2<u32>(var_0.a.a.x, 1u))), var_2.a.a.xy), var_0.a);
    return !select(select(var_2.b, vec3<bool>(true, false, var_2.b.x), var_2.b), select(var_2.b, var_2.b, u_input.c > 4294967295u), var_2.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f + 1000f));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = false;
    var var_2 = Struct_2(Struct_1(vec4<u32>(22738u, ~8690u, ~u_input.e, 1u), u_input.b, _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<u32>(0u, 47591u, 0u, arg_0.x), u_input.a.x, -954f), func_2(), _wgslsmith_div_u32(var_0.x, u_input.d), ~vec2<u32>(4294967295u, arg_0.x), Struct_1(vec4<u32>(110237u, u_input.d, arg_0.x, var_0.x), 6137i, 1000f)), !vec4<bool>(false, false, true, var_1), vec4<bool>(true, var_1, false && var_1, -22889i > u_input.b)))), vec3<bool>(var_1, !var_1, all(select(func_2().xz, func_2().yz, !vec2<bool>(false, var_1)))), ~min(u_input.e, firstLeadingBit(~4294967295u)), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(4294967295u, 1u, u_input.c, 78432u))), vec4<u32>(1u, 1u, 1u, 1u)), 0u), Struct_1((vec4<u32>(u_input.c, u_input.e, var_0.x, var_0.x) ^ ~vec4<u32>(u_input.d, 67180u, 4294967295u, u_input.e)) & (select(vec4<u32>(0u, 47947u, 46195u, 6376u), vec4<u32>(0u, var_0.x, arg_0.x, var_0.x), true) | (vec4<u32>(1u, var_0.x, u_input.e, 35083u) & vec4<u32>(u_input.c, 1u, 1u, 1u))), -6211i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1344f - -1265f) + _wgslsmith_f_op_f32(ceil(-341f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(step(1489f, -1661f))))));
    let var_3 = Struct_3(Struct_1(~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, u_input.c), var_2.e.a) >> (vec4<u32>(var_0.x, 0u, 54059u, 4294967295u) % vec4<u32>(32u))), -63406i, var_2.a.c));
    var_2 = Struct_2(Struct_1(~(var_2.a.a ^ (var_3.a.a & var_3.a.a)), 0i, var_3.a.c), select(var_2.b, !(!select(vec3<bool>(true, true, var_2.b.x), var_2.b, true)), _wgslsmith_f_op_vec2_f32(func_3(var_2.a.a.zzz, _wgslsmith_div_vec4_u32(vec4<u32>(var_2.c, u_input.e, 4294967295u, arg_0.x), var_2.a.a))).x < var_3.a.c), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(arg_0.x), abs(78551u)) << (reverseBits(_wgslsmith_mult_u32(u_input.c, 54306u)) % 32u), 30211u, ~45795u), arg_0, var_3.a);
    return Struct_2(Struct_1(min(select(vec4<u32>(var_2.a.a.x, 28854u, u_input.d, 51685u), ~var_3.a.a, true), vec4<u32>(var_2.e.a.x, _wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(22980u, 1u), var_0), 57210u)), -firstLeadingBit(38549i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c)))), vec3<bool>(all(!(!vec2<bool>(var_1, true))), var_2.b.x, any(select(var_2.b.yz, var_2.b.yz, func_2().zx))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~98426u), arg_0.x), 1u), ~(~(~(var_2.e.a.xz >> (var_2.e.a.wx % vec2<u32>(32u))))), var_3.a);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = -523f;
    var_0 = 2571f;
    var var_1 = arg_2.a;
    var var_2 = any(!select(select(vec4<bool>(true, arg_2.b.x, arg_2.b.x, false), vec4<bool>(arg_2.b.x, arg_0.b.x, false, arg_0.b.x), arg_0.b.x), select(vec4<bool>(true, true, false, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_2.b.x, true, arg_2.b.x), vec4<bool>(false, arg_2.b.x, false, arg_2.b.x)), true)) && (any(arg_0.b.xx) & arg_0.b.x);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.a.c))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.c - arg_0.a.c))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.e.c)))))))));
    return Struct_2(arg_2.a, select(func_2(), arg_2.b, arg_0.b.x), _wgslsmith_div_u32(func_1(var_1.a.xx).d.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(~35533u, arg_0.a.a.x) << (~(~vec2<u32>(1u, 1u)) % vec2<u32>(32u)), arg_0.d, vec2<u32>(func_1(arg_0.e.a.ww).e.a.x & 1u, ~arg_1)), func_1(select(_wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_0.a.a.yy), func_1(vec2<u32>(4294967295u, 32260u)).e.a.xx, vec2<u32>(0u, 48426u) >> (arg_0.d % vec2<u32>(32u))), abs(var_1.a.zx), true)).a);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_5(Struct_2(func_1(func_1(vec2<u32>(arg_0, arg_0)).a.a.xx).a, !vec3<bool>(true, select(arg_1.b.x, arg_1.b.x, arg_1.b.x), true), ~0u, ~arg_3.a.yw, Struct_1(vec4<u32>(arg_3.a.x, arg_3.a.x, arg_1.e.a.x, 44352u) | vec4<u32>(38571u, arg_3.a.x, arg_0, arg_3.a.x), firstLeadingBit(i32(-1i) * -1423i), func_5(arg_1, arg_0, arg_1).e.c)), 40205u, Struct_2(Struct_1(vec4<u32>(_wgslsmith_mod_u32(arg_1.a.a.x, u_input.e), arg_1.d.x, arg_3.a.x, arg_1.c), -2147483647i | countOneBits(arg_1.e.b), _wgslsmith_f_op_f32(f32(-1f) * -991f)), vec3<bool>(!arg_1.b.x, true, arg_1.b.x), 4294967295u, func_1(arg_1.d).d, arg_1.e)).e;
    var_0 = Struct_1(arg_3.a, _wgslsmith_sub_i32(0i, ~u_input.a.x), 169f);
    let var_1 = Struct_1(vec4<u32>(arg_1.c >> (~16435u % 32u), ~_wgslsmith_add_u32(var_0.a.x, arg_1.d.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.a.x, 0u), ~4294967295u), 4294967295u) ^ vec4<u32>(~(~var_0.a.x), var_0.a.x, ~reverseBits(1u), firstTrailingBit(~31240u)), 44705i, var_0.c);
    var_0 = Struct_1(vec4<u32>(var_0.a.x, func_1(func_5(arg_1, ~0u, arg_1).d).a.a.x, ~_wgslsmith_add_u32(arg_3.a.x, arg_0 | 8574u), arg_0), u_input.a.x << (~(~(var_0.a.x >> (arg_3.a.x % 32u))) % 32u), -2175f);
    var_0 = func_1(vec2<u32>(0u, 39661u)).e;
    return Struct_1(max(vec4<u32>(_wgslsmith_mult_u32(arg_3.a.x ^ 66898u, var_0.a.x), select(arg_1.c, 0u, false) & ~arg_0, arg_1.e.a.x, ~(~var_0.a.x)), vec4<u32>(_wgslsmith_sub_u32(arg_0, _wgslsmith_mod_u32(var_0.a.x, 3672u)), 20202u, 0u, 4294967295u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -18126i, 0i, -1i), u_input.a), -var_1.b), -533f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, -693f, -288f, 1339f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1495f, 1000f)), _wgslsmith_f_op_f32(trunc(241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1310f + -489f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(790f, -522f)), _wgslsmith_f_op_f32(sign(2768f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1923f, 245f, -1539f, 822f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-389f, 188f, 435f, 683f))))));
    var var_1 = -541f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -447f);
    var var_2 = Struct_3(func_6(~(~u_input.e), func_5(func_1(reverseBits(vec2<u32>(7149u, 58260u))), 35270u, func_1(~vec2<u32>(u_input.d, u_input.e))), var_0, Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(26697u, u_input.c, u_input.c, 4448u), min(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.e), vec4<u32>(u_input.e, u_input.d, u_input.e, 19761u))), u_input.b, _wgslsmith_f_op_f32(trunc(-1388f)))));
    var var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), -325f, _wgslsmith_f_op_f32(-2681f - 1043f), _wgslsmith_f_op_f32(-1540f * -2120f)))))));
    var_4 = _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, var_2.a.c, var_0.x, 280f), vec4<f32>(-344f, 650f, var_3.x, var_4.x)))))));
    var var_5 = abs(u_input.a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(firstTrailingBit(i32(-1i) * -66764i), -11516i), ~u_input.e);
}


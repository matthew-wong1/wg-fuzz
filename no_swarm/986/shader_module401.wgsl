struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_1(true, -260f, ~u_input.b, 1u);
    var var_1 = vec4<bool>(select(false, var_0.a, true), _wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(-233f - _wgslsmith_f_op_f32(step(-408f, -1576f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1000f)), true, countOneBits(u_input.b) > u_input.b);
    var var_2 = Struct_2(!(!select(var_1.yx, vec2<bool>(var_0.a, true), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_0.a), var_0.a))), var_0, u_input.c, var_0);
    var_1 = !select(!(!(!vec4<bool>(var_0.a, true, false, var_0.a))), select(select(vec4<bool>(var_2.b.a, var_1.x, true, false), !vec4<bool>(var_2.a.x, var_0.a, var_0.a, var_0.a), vec4<bool>(false, var_1.x, false, var_2.d.a)), vec4<bool>(false, true, false, true), !(!vec4<bool>(true, var_0.a, var_1.x, var_0.a))), false);
    var_2 = Struct_2(select(var_1.yx, vec2<bool>(all(var_1.yzx), !var_2.b.a), reverseBits(-14337i) > _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, var_2.c), var_2.c)), Struct_1(_wgslsmith_mod_i32(-8948i, u_input.c << (0u % 32u)) >= select(~u_input.c, u_input.c << (1u % 32u), true), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(915f - -502f))), 4294967295u, select((var_2.d.c ^ var_2.b.c) | abs(4294967295u), 4294967295u, all(var_1.wx))), 27561i, Struct_1(all(select(select(vec3<bool>(false, var_0.a, true), vec3<bool>(false, var_2.d.a, var_2.b.a), var_1.yyz), var_1.yxz, !vec3<bool>(true, var_0.a, var_2.b.a))), arg_0.x, 62983u, 0u));
    return vec4<bool>(true, ((u_input.c ^ u_input.c) << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.b, 0u), vec2<u32>(var_0.c, 4294967295u)), vec2<u32>(1u, var_0.c)) % 32u)) >= ~_wgslsmith_div_i32(u_input.c, select(4997i, u_input.c, var_0.a)), all(!vec3<bool>(any(vec4<bool>(var_2.a.x, var_0.a, false, false)), true, all(vec4<bool>(false, var_0.a, var_0.a, var_0.a)))), select(select(any(select(vec4<bool>(var_0.a, true, var_0.a, var_2.a.x), vec4<bool>(var_2.a.x, var_1.x, var_2.d.a, var_2.d.a), vec4<bool>(var_1.x, false, var_2.b.a, false))), var_1.x, !all(var_1.xz)), !(!any(vec3<bool>(var_0.a, true, var_1.x))), var_2.a.x));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-960f, _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_div_f32(arg_1.x, 226f))));
    var_0 = arg_1.x;
    var var_1 = Struct_1(arg_3, _wgslsmith_f_op_f32(exp2(arg_1.x)), ~(u_input.b & ~(arg_2 << (arg_2 % 32u))), 9043u);
    var var_2 = func_3(arg_1.yww);
    let var_3 = 1000f;
    return _wgslsmith_f_op_f32(1000f - var_1.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1673f, -230f))).zx, Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-252f)) - _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(func_2(true, arg_0, 0u, true))), ~reverseBits(_wgslsmith_sub_u32(14177u, u_input.b)), min(~(~u_input.b), u_input.a)), 1i, Struct_1(true, arg_0.x, 0u, ~select(u_input.a | u_input.a, ~1u, true)));
    let var_1 = ~_wgslsmith_dot_vec2_u32(((vec2<u32>(u_input.a, 0u) << (vec2<u32>(1u, 68743u) % vec2<u32>(32u))) | abs(vec2<u32>(7879u, 91292u))) ^ ~(vec2<u32>(var_0.d.c, 44540u) ^ vec2<u32>(var_0.d.c, 50794u)), vec2<u32>(_wgslsmith_mod_u32(~var_0.d.c, u_input.a ^ 1u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(14833u, var_0.d.d, 4294967295u), u_input.a | 67975u)));
    var var_2 = ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b, 0u)), abs(vec2<u32>(4294967295u, var_1))), vec2<u32>(20797u, ~var_0.d.c | firstTrailingBit(4294967295u)));
    let var_3 = var_0.d.a;
    var_2 = abs(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(34655u, u_input.b)), firstTrailingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(85164u, var_1))))));
    return var_0.d;
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(min(629f, _wgslsmith_f_op_f32(func_2(false, vec4<f32>(-653f, -1338f, 2390f, 626f), u_input.b, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(-424f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) + -1152f))), u_input.c);
    var var_1 = u_input.c;
    var_1 = u_input.c;
    var_1 = 0i;
    var_1 = _wgslsmith_mod_i32(16433i | _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(984i, u_input.c, u_input.c, 757i))), -(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c) & vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c))), _wgslsmith_add_i32(u_input.c, -select(-2147483647i, -51556i, true)));
    return vec2<i32>(-abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 40897i, u_input.c), vec4<i32>(12922i, u_input.c, 51169i, 33947i)), u_input.c)), u_input.c);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-2575f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1663f + 776f) * _wgslsmith_f_op_f32(select(-1000f, 544f, false))), 1000f, 216f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-404f)), _wgslsmith_f_op_f32(min(-765f, 648f)), -762f, _wgslsmith_f_op_f32(max(718f, -441f))))), ~countOneBits(countOneBits(arg_2.x) & firstLeadingBit(-12865i)));
    let var_1 = abs(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c, 1u, u_input.b, var_0.d), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.c, u_input.b), vec4<u32>(13107u, 19886u, var_0.c, 1u)), ~vec4<u32>(25838u, 4294967295u, u_input.a, 32028u)))) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(7536u, 4294967295u, 28000u, 1u) << (abs(vec4<u32>(u_input.b, 32955u, var_0.c, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d, 47343u, u_input.b, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(36490u, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.a, 4294967295u, var_0.c, 51001u))));
    let var_2 = _wgslsmith_mod_u32(min(firstLeadingBit(u_input.b ^ u_input.a) << (~min(var_1.x, 49567u) % 32u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 15402u, var_0.c, var_0.c), var_1), ~var_1)), var_0.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b)))));
    let var_4 = max(-min(vec3<i32>(41207i, ~(-27608i), -1i), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-6200i, -15244i, -23602i)), vec3<i32>(1i, 43497i, -37174i), ~vec3<i32>(u_input.c, u_input.c, arg_0))), vec3<i32>(2147483647i, 58502i, 2147483647i));
    return Struct_2(vec2<bool>(false, true), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-327f, var_3, 653f, var_3), vec4<f32>(-466f, var_0.b, var_3, 848f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 176f, 947f, var_3), vec4<f32>(var_3, 1770f, -349f, -1000f), true)))), firstLeadingBit(-2147483647i)), abs(arg_2.x << (var_2 % 32u)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 400f, var_3, 415f))), -(-arg_2.x >> (~var_1.x % 32u))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-458f - 134f))), func_5(1i, 1i, vec2<i32>(1i, 1i)).d.b, arg_2))).xxy;
    return func_5(-44943i, ~(-2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(12054i, 11407i)), abs(reverseBits(~vec2<i32>(u_input.c, -28700i))))).b;
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1500f - 1379f))), -1942f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(559f, -903f)))), func_5(u_input.c, -u_input.c, func_1())), _wgslsmith_clamp_u32(~(~u_input.a), 0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))))), Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, all(vec2<bool>(false, false))), select(func_3(vec3<f32>(785f, -996f, 305f)).wx, vec2<bool>(true, true), true)), Struct_1(func_4(vec4<f32>(-1862f, -1138f, 577f, 246f), 2147483647i).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f + 2399f)), u_input.a, _wgslsmith_clamp_u32(2601u, u_input.b, min(4294967295u, u_input.b))), ~0i, Struct_1((-1i <= u_input.c) | true, _wgslsmith_f_op_f32(abs(-218f)), 49022u, 47868u)), -(~(~(vec3<i32>(9551i, 823i, u_input.c) ^ vec3<i32>(u_input.c, u_input.c, 1i)))));
    var var_1 = func_5(2147483647i, -20868i, ~(~min(min(vec2<i32>(u_input.c, -15085i), vec2<i32>(u_input.c, -2147483647i)), vec2<i32>(-2147483647i, 0i))));
    let var_2 = _wgslsmith_f_op_f32(step(var_1.b.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_6(vec2<bool>(true, var_0.a), vec2<f32>(var_0.b, var_0.b), var_1.b.b, Struct_2(var_1.a, Struct_1(var_0.a, var_1.b.b, 21548u, 1u), u_input.c, Struct_1(var_0.a, -590f, 66851u, 45541u))).b), -403f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.b.b)), _wgslsmith_f_op_f32(-2155f + 487f)))))));
    let var_3 = -103f;
    let var_4 = _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f * var_1.d.b)) * 620f)));
    let var_5 = ~max(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 62130u) & select(vec2<u32>(0u, 29462u), vec2<u32>(var_0.d, 4294967295u), true), firstTrailingBit(~vec2<u32>(u_input.b, 4294967295u))), _wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.b, 11599u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(u_input.a, u_input.a))));
    var_1 = func_5(i32(-1i) * -19788i, firstTrailingBit(_wgslsmith_mod_i32(abs(min(0i, 1i)), -u_input.c)), vec2<i32>(-_wgslsmith_mult_i32(10814i, abs(-47446i)), 1i));
    var var_6 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec4<f32>(var_3, var_0.b, -1142f, var_4), 1i).b))), ~(~4294967295u), firstLeadingBit(~(func_7(var_1.d, var_1.b.c, Struct_2(var_1.a, Struct_1(true, 911f, 35768u, 74158u), -48810i, var_1.b), vec3<i32>(u_input.c, 1i, -5817i)).c ^ 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 19378i, firstTrailingBit(abs(~firstTrailingBit(vec4<u32>(4294967295u, 5988u, 0u, var_5.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1310f));
}


struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1454f * 754f) + _wgslsmith_f_op_f32(-1693f + _wgslsmith_div_f32(-272f, _wgslsmith_div_f32(-802f, _wgslsmith_f_op_f32(round(126f))))));
    let var_1 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(23275i, u_input.a, u_input.a), vec3<i32>(2147483647i, u_input.a, -9079i))), vec3<i32>(~(-1i), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.a), _wgslsmith_add_i32(u_input.a, 38436i)), firstLeadingBit(21567i)), ~firstTrailingBit(58954u)));
    let var_2 = _wgslsmith_add_u32(var_1.a.c, var_1.a.c << (var_1.a.c % 32u));
    var var_3 = -456f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var_3 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec3<bool>(true, false, false))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 4294967295u, 1u), ~abs(~vec3<u32>(var_1.a.c, 1u, var_1.a.c))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(~vec4<u32>(4294967295u, 4294967295u, 66757u, var_2), reverseBits(vec4<u32>(var_2, var_2, 49354u, var_2)), true), vec4<u32>(~0u, _wgslsmith_mod_u32(var_2, 4294967295u), var_2 ^ 42459u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(min(var_1.a.c, var_1.a.c), 40789u, ~var_2, ~7601u), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, 61771u, 0u, var_2), vec4<u32>(var_2, 83131u, var_1.a.c, 3604u), true), abs(vec4<u32>(11539u, var_2, 1u, 1u)), vec4<u32>(0u, var_1.a.c, var_1.a.c, 4294967295u)))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(min(-vec3<i32>(20555i, u_input.a, 1i), vec3<i32>(0i, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, -8445i))), _wgslsmith_div_vec3_i32(-(~vec3<i32>(u_input.a, u_input.a, u_input.a)), ~(-vec3<i32>(u_input.a, u_input.a, u_input.a))), 1u));
    let var_1 = arg_0.x;
    let var_2 = var_0.a.b.zx;
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(~func_3(), _wgslsmith_mod_u32(var_0.a.c, var_0.a.c | 0u) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c, 1u, 4294967295u, 0u), min(vec4<u32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), vec4<u32>(var_0.a.c, 8986u, 0u, var_0.a.c))), firstTrailingBit(firstTrailingBit(firstLeadingBit(var_0.a.c))), 100679u << (var_0.a.c % 32u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a.c, 0u, var_0.a.c, 1u), min(vec4<u32>(4294967295u, var_0.a.c, 1u, 121710u), min(vec4<u32>(var_0.a.c, 4294967295u, 25289u, 1u), vec4<u32>(24618u, 1u, 2911u, 51761u)))));
    let var_4 = _wgslsmith_f_op_f32(round(828f));
    return Struct_2(Struct_1(-abs(var_0.a.a), var_0.a.b, firstLeadingBit(6032u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1((arg_1.a & vec3<i32>(_wgslsmith_sub_i32(u_input.a, arg_0.a.a.x), -32160i, _wgslsmith_mod_i32(arg_1.b.x, 1848i))) >> (_wgslsmith_mult_vec3_u32(select(min(vec3<u32>(1u, 4294967295u, arg_0.a.c), vec3<u32>(39697u, 1u, arg_1.c)), select(vec3<u32>(arg_1.c, 0u, arg_0.a.c), vec3<u32>(arg_1.c, 8492u, 4294967295u), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), ~min(vec3<u32>(7792u, 1u, arg_1.c), vec3<u32>(arg_1.c, arg_0.a.c, arg_1.c))) % vec3<u32>(32u)), max(vec3<i32>(1i, 30048i, arg_1.b.x), ~vec3<i32>(-26867i, -1i, 0i)), arg_0.a.c);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(499f - -547f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2658f)))))));
    var_2 = 1398f;
    let var_3 = 0u;
    return var_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_u32(1u, firstLeadingBit(_wgslsmith_mult_u32(arg_1.c, arg_1.c)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, -1228f, 1482f) * vec3<f32>(-209f, -1998f, -1265f)), _wgslsmith_div_vec3_f32(vec3<f32>(-246f, -405f, 392f), vec3<f32>(-2301f, -491f, -427f)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 619f, 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1954f, 254f, 1788f) * vec3<f32>(415f, 1155f, 137f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 425f, -103f), vec3<f32>(var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, -1684f), _wgslsmith_f_op_f32(abs(var_1.x)), 1f))));
    let var_2 = Struct_2(arg_2.a);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))))))));
    return vec2<i32>(-2147483647i, max(abs(-2147483647i), 0i));
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_2.wwx, -vec3<i32>(min(arg_2.x, arg_2.x), ~8460i, u_input.a), arg_3));
    return Struct_1(_wgslsmith_div_vec3_i32(func_4(Struct_2(Struct_1(var_0.a.b, vec3<i32>(-2147483647i, 1i, -1i), var_0.a.c)), func_4(Struct_2(var_0.a), var_0.a)).a & -vec3<i32>(u_input.a, 2147483647i, -15190i), func_4(Struct_2(var_0.a), func_4(Struct_2(var_0.a), Struct_1(arg_2.zzx, arg_2.xyx, 0u))).a >> (vec3<u32>(~18615u, ~arg_1, _wgslsmith_mod_u32(65865u, var_0.a.c)) % vec3<u32>(32u))), vec3<i32>(var_0.a.b.x ^ (-13714i << (~arg_1 % 32u)), arg_2.x, _wgslsmith_mult_i32(~7484i, u_input.a)), reverseBits(arg_3));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = -((69738i & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i) ^ vec2<i32>(2147483647i, arg_0), -vec2<i32>(46941i, -28151i))) | -22617i);
    var_0 = u_input.a;
    let var_1 = min(1u, ~70506u);
    var var_2 = func_6(-func_5(~vec3<u32>(var_1, var_1, var_1), func_4(func_2(vec2<bool>(false, false)), func_2(vec2<bool>(true, false)).a), func_2(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), min(firstLeadingBit(vec3<i32>(-5931i, 0i, u_input.a)), ~vec3<i32>(2147483647i, -2147483647i, u_input.a))), var_1, countOneBits(min(vec4<i32>(_wgslsmith_mult_i32(7166i, 33628i), 12272i, func_4(Struct_2(Struct_1(vec3<i32>(u_input.a, arg_0, -4797i), vec3<i32>(11600i, arg_0, arg_0), var_1)), Struct_1(vec3<i32>(u_input.a, arg_0, 0i), vec3<i32>(u_input.a, -19244i, u_input.a), var_1)).b.x, -2147483647i), vec4<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(arg_0, u_input.a, -2147483647i), arg_0 >> (26625u % 32u)))), var_1);
    var_0 = 24062i;
    return func_4(Struct_2(Struct_1(var_2.a, min(vec3<i32>(var_2.b.x, var_2.a.x, var_2.a.x), ~var_2.b), 4294967295u)), Struct_1(select(var_2.b, reverseBits(var_2.a) << (vec3<u32>(1u, 14058u, var_1) % vec3<u32>(32u)), vec3<bool>(true, var_2.a.x == u_input.a, true)), abs(_wgslsmith_mod_vec3_i32(var_2.b, var_2.b)) << (vec3<u32>(var_2.c, 85100u, abs(var_2.c)) % vec3<u32>(32u)), ~abs(var_1)));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = -max(48050i & -(17936i | u_input.a), u_input.a << (0u % 32u));
    let var_1 = func_6(select(arg_0.a.xz, func_5(_wgslsmith_sub_vec3_u32(max(vec3<u32>(arg_0.c, arg_0.c, arg_2.x), vec3<u32>(arg_2.x, 0u, arg_2.x)), vec3<u32>(arg_0.c, 98931u, 22375u)), arg_0, Struct_2(Struct_1(arg_0.a, vec3<i32>(3586i, 2147483647i, -2134i), 0u)), vec3<i32>(countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-50868i, 2147483647i), vec2<i32>(u_input.a, var_0)), 2147483647i)), true), func_3(), abs(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(2147483647i, arg_0.b.x, 24707i, u_input.a)), ~select(vec4<i32>(u_input.a, var_0, u_input.a, 27810i), vec4<i32>(arg_0.a.x, 2147483647i, 2147483647i, -2147483647i), vec4<bool>(arg_1.x, true, arg_1.x, false)))), firstTrailingBit(~1u));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1295f, 1245f, 286f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, -374f, -1080f, -599f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-307f, 969f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(429f)))), -388f, 1f)))));
    let var_4 = func_1(u_input.a, vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(996f, 693f))), -429f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-831f * -278f), var_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(735f - 1000f))), select(false, true, true) || true))));
    return func_2(arg_1);
}

fn func_8(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-1128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) * 597f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1747f)) * -2269f)))));
    var var_1 = func_2(!vec2<bool>(all(vec3<bool>(false, false, true)) | any(vec4<bool>(true, true, false, true)), true));
    var_1 = Struct_2(arg_0.a);
    var_1 = func_2(!vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), true));
    var var_2 = vec4<i32>(-arg_2.a.a.x & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a.a, vec3<i32>(-63591i, -46935i, -2147483647i)) ^ (vec3<i32>(2147483647i, 31786i, arg_2.a.b.x) >> (vec3<u32>(41471u, 72163u, arg_1.x) % vec3<u32>(32u))), vec3<i32>(arg_2.a.b.x, _wgslsmith_mult_i32(var_1.a.a.x, 32134i), _wgslsmith_div_i32(43049i, var_1.a.b.x))), -var_1.a.a.x, min(var_1.a.a.x, 36405i), _wgslsmith_sub_i32(~_wgslsmith_add_i32(i32(-1i) * -539i, arg_0.a.b.x), ~2147483647i));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_8(func_7(func_1(max(u_input.a, -22096i), vec4<f32>(1f, 1f, 1f, 1f)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<u32>(1u, 1u)), vec2<u32>(1u, firstLeadingBit(func_7(Struct_1(vec3<i32>(u_input.a, 1i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a), 4294967295u), vec2<bool>(false, true), vec2<u32>(4294967295u, 36920u)).a.c)), Struct_2(func_4(Struct_2(Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i), 79451u)), func_6(vec2<i32>(u_input.a, u_input.a), 45616u, vec4<i32>(u_input.a, -30637i, 1i, -2147483647i), 0u)))));
    var var_1 = func_2(select(vec2<bool>(true || any(vec4<bool>(false, false, false, true)), false), select(vec2<bool>(select(true, false, true), true), vec2<bool>(false, false), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(false, (var_0.a.c ^ 4294967295u) == ~var_0.a.c))).a;
    var var_2 = var_0.a;
    var_2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(-13593i, -1i) << (func_2(vec2<bool>(true, false)).a.c % 32u), _wgslsmith_sub_i32(~u_input.a, var_1.b.x), var_0.a.a.x) ^ ~var_0.a.b, (vec3<i32>(-1i) * -vec3<i32>(1i, var_0.a.a.x, u_input.a)) ^ var_1.a, ~firstLeadingBit(_wgslsmith_clamp_u32(func_2(vec2<bool>(false, false)).a.c, var_0.a.c, var_1.c)));
    var_1 = var_0.a;
    let var_3 = !all(vec2<bool>(true, true));
    var_1 = Struct_1(vec3<i32>(abs(~firstTrailingBit(-24238i)), _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(2147483647i | var_0.a.b.x, var_1.b.x)), reverseBits(-firstLeadingBit(27918i))), firstLeadingBit(~(-(var_2.b | var_1.a))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2340f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1068f * _wgslsmith_div_f32(-1236f, -1305f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(367f, -222f) - -1008f))));
}


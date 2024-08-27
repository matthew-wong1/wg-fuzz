struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = Struct_1(reverseBits(vec4<i32>(arg_1.a.x, global0.a.x, ~(-2147483647i), _wgslsmith_mod_i32(arg_1.a.x, 1i) >> ((29244u << (arg_1.d % 32u)) % 32u))), vec2<i32>(2147483647i, u_input.c), 4294967295u, max(u_input.a, _wgslsmith_add_u32(~(~arg_1.d), 1u)), arg_2.xz);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(327f, 177f))), _wgslsmith_f_op_f32(-659f + -561f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 347f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1419f - 802f))) * -506f));
    global0 = Struct_1(max(var_0.a, vec4<i32>(abs(arg_2.x), u_input.c ^ 2147483647i, _wgslsmith_sub_i32(-55774i, global0.a.x), _wgslsmith_sub_i32(-1i, var_0.e.x))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(10853u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d, 25744u, 8127u, arg_0.d), vec4<u32>(arg_0.d, 2049u, arg_1.c, arg_0.c)), reverseBits(global0.d), 4294967295u), vec4<u32>(~arg_0.c, arg_0.c | arg_1.c, min(0u, 39769u), u_input.b.x)) % vec4<u32>(32u)), arg_1.b ^ ~(~vec2<i32>(-6193i, arg_0.e.x)), select(27496u, _wgslsmith_div_u32(23439u, 1u), !select(true, true, global0.d >= 57848u)), ~abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 10561u, var_0.c, arg_1.d), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, var_0.c, 81214u, arg_0.c), vec4<u32>(1u, 70545u, u_input.a, global0.c)))), _wgslsmith_mod_vec2_i32(countOneBits(arg_0.b ^ vec2<i32>(var_0.e.x, u_input.c)), ~(~arg_0.b)) ^ -vec2<i32>(-75488i, global0.b.x));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1355f))), _wgslsmith_f_op_f32(635f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -532f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)) - -202f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.x)))), true)));
    var var_2 = arg_0;
    return -1i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(global0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, 807f, -129f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-116f, -1000f, 887f)))))), !(~global0.d >= _wgslsmith_clamp_u32(13862u, ~1u, 4294967295u)), vec4<i32>(max(_wgslsmith_sub_i32(u_input.c, 14502i) >> (~u_input.b.x % 32u), 23750i), global0.b.x, ~func_3(Struct_1(vec4<i32>(-21039i, arg_0, global0.b.x, 2147483647i), global0.e, u_input.b.x, u_input.b.x, vec2<i32>(-23793i, arg_0)), Struct_1(global0.a, vec2<i32>(global0.b.x, 0i), 7955u, 37893u, global0.b), firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, -1i))), _wgslsmith_sub_i32(select(_wgslsmith_div_i32(arg_0, global0.b.x), firstTrailingBit(-125i), true), -u_input.c)));
    var var_1 = vec2<i32>(2147483647i, -max(1i, abs(_wgslsmith_div_i32(u_input.c, var_0.d.x))));
    global0 = Struct_1(vec4<i32>(-1i, func_3(Struct_1(vec4<i32>(-10954i, var_0.d.x, var_1.x, global0.b.x), var_0.d.wz, global0.d, 1u, vec2<i32>(0i, 0i)), Struct_1(global0.a, global0.a.xy, 0u, 4294967295u, vec2<i32>(global0.a.x, arg_0)), firstTrailingBit(global0.a.wyy)) >> (global0.d % 32u), ~global0.a.x, countOneBits(u_input.c)), vec2<i32>(countOneBits(~var_0.d.x), 0i), _wgslsmith_mult_u32(firstTrailingBit(~var_0.a) << (firstTrailingBit(_wgslsmith_add_u32(9200u, u_input.a)) % 32u), min(_wgslsmith_add_u32(var_0.a & 46533u, ~u_input.b.x), ~max(57369u, global0.d))), reverseBits(39926u) << ((~(~u_input.b.x) ^ 35489u) % 32u), var_0.d.yw);
    var var_2 = var_0.a ^ (min(11673u, global0.d) >> (~(~(~global0.c)) % 32u));
    var_0 = Struct_2(4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(889f + _wgslsmith_f_op_f32(var_0.b.x - 696f)), _wgslsmith_f_op_f32(sign(var_0.b.x)), -271f) * var_0.b), !var_0.c, vec4<i32>(firstLeadingBit(0i) ^ ~var_1.x, 49815i ^ _wgslsmith_div_i32(func_3(Struct_1(global0.a, global0.e, u_input.b.x, 9531u, vec2<i32>(1i, arg_0)), Struct_1(vec4<i32>(11948i, var_0.d.x, u_input.c, global0.e.x), var_0.d.ww, var_0.a, 0u, vec2<i32>(-58014i, 1i)), global0.a.yxz), 57616i), ~u_input.c, 0i));
    return Struct_1(reverseBits(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(2320i, var_1.x), -global0.b.x, countOneBits(0i), firstLeadingBit(var_0.d.x)))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, var_0.d.x) << (min(vec2<u32>(global0.c, 4294967295u), vec2<u32>(global0.c, 88234u)) % vec2<u32>(32u)), var_0.d.wz) >> (~u_input.b % vec2<u32>(32u)), _wgslsmith_clamp_u32(~(1u & u_input.b.x) & 4294967295u, global0.c, 11151u), abs(~75590u), _wgslsmith_div_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(30808i, var_0.d.x), ~vec2<i32>(u_input.c, 136i)), firstTrailingBit(var_0.d.xz << (vec2<u32>(7624u, 29321u) % vec2<u32>(32u))), vec2<bool>(var_0.c, true)), var_0.d.yw));
}

fn func_1() -> u32 {
    var var_0 = func_2(u_input.c);
    var_0 = Struct_1(vec4<i32>(~34469i, u_input.c, var_0.e.x & firstTrailingBit(1i), ~_wgslsmith_clamp_i32(-var_0.b.x, _wgslsmith_mult_i32(global0.a.x, u_input.c), reverseBits(var_0.b.x))), _wgslsmith_add_vec2_i32(var_0.b, _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-3871i, var_0.a.x)), vec2<i32>(_wgslsmith_sub_i32(-1i, 1i), -51714i))), 1u, 64326u, firstLeadingBit(~global0.a.xx));
    global0 = Struct_1(~(~(-(global0.a | vec4<i32>(u_input.c, -6452i, 0i, u_input.c)))), firstTrailingBit(vec2<i32>(71144i, var_0.e.x)), 44703u >> (~max(abs(4294967295u), ~global0.c) % 32u), 14702u, var_0.b);
    let var_1 = 387f;
    global0 = Struct_1(var_0.a, vec2<i32>(-2147483647i, global0.a.x), ~(~44349u), u_input.b.x, var_0.a.yz);
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~select(vec2<u32>(4294967295u, var_0.d), u_input.b, true)), min(u_input.b, vec2<u32>(~0u, ~var_0.c))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~global0.a, firstTrailingBit(vec2<i32>(firstTrailingBit(global0.b.x) << (global0.d % 32u), global0.b.x)), countOneBits(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(20566u, u_input.b.x, 87453u, u_input.a), vec4<u32>(u_input.b.x, global0.d, global0.c, global0.c)), ~func_1())), global0.c, global0.b);
    var var_0 = -global0.b.x;
    var var_1 = Struct_2(~global0.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))), 203f), any(select(vec3<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(global0.a.x, -global0.a.x), abs(i32(-1i) * -2089i)), ~abs(select(global0.e.x, 32811i, true)), ~(-24309i), _wgslsmith_mult_i32(-u_input.c | 68433i, -1i)));
    var_1 = Struct_2(0u, var_1.b, all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, var_1.c), var_1.c), vec2<bool>(var_1.c, false), any(vec4<bool>(var_1.c, true, var_1.c, var_1.c))), select(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_1.c, var_1.c)), vec2<bool>(true, var_1.c)), _wgslsmith_mult_i32(35800i, var_1.d.x) > -9874i)), -vec4<i32>(_wgslsmith_mult_i32(reverseBits(1i), firstLeadingBit(var_1.d.x)), ~(u_input.c << (u_input.b.x % 32u)), abs(~(-1i)), ~var_1.d.x));
    let var_2 = Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), true, vec4<i32>(abs(reverseBits(-53378i)) & _wgslsmith_sub_i32(abs(1i), countOneBits(global0.b.x)), -(~global0.e.x) << (4294967295u % 32u), _wgslsmith_mult_i32(-1i, ~(u_input.c << (64597u % 32u))), -7841i));
    var var_3 = !(!vec4<bool>(true, var_2.c, all(select(vec3<bool>(var_2.c, false, false), vec3<bool>(false, var_2.c, true), var_2.c)), !all(vec3<bool>(var_2.c, var_1.c, var_2.c))));
    var var_4 = u_input.b;
    var var_5 = abs(~(~vec2<i32>(abs(var_2.d.x), 2851i)));
    let x = u_input.a;
    s_output = StorageBuffer(~25698i, ~1u, ~global0.e.x, -1i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(346f, 1245f, 1081f, -285f) * _wgslsmith_div_vec4_f32(vec4<f32>(-567f, 707f, var_1.b.x, -648f), vec4<f32>(1033f, var_1.b.x, -215f, -1414f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(1154f - var_2.b.x)), 1707f, _wgslsmith_f_op_f32(var_1.b.x - -1118f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x))))));
}


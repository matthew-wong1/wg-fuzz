struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = arg_0;
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2043f);
    var_0 = vec3<u32>(arg_0.x, 13440u, ~(1u >> (~4294967295u % 32u)));
    var_0 = _wgslsmith_add_vec3_u32(~arg_0, vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_div_u32(var_0.x, arg_0.x), ~4294967295u), var_0.x, abs(~(arg_0.x << (44346u % 32u)))));
    return u_input.b ^ -firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, var_1), vec3<i32>(var_1, 7870i, 1i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = !all(vec3<bool>(all(vec2<bool>(false, false)), false, any(vec3<bool>(true, true, true))));
    let var_1 = Struct_2(Struct_1(max(select(vec3<i32>(5262i, -20482i, arg_2), vec3<i32>(0i, 15398i, 53792i), vec3<bool>(var_0, var_0, var_0)), abs(vec3<i32>(2147483647i, u_input.b, 0i))) & vec3<i32>(_wgslsmith_clamp_i32(arg_3, 36234i, -34543i), _wgslsmith_div_i32(-46177i, -17204i), -arg_3), ~countOneBits(min(-2965i, arg_2)), _wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_add_u32(~(1u ^ arg_0.x), 1u)));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-var_1.a.c);
    let var_4 = arg_0;
    return var_2.a;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_5(_wgslsmith_clamp_i32(arg_0.b.b, -36524i, ~(-44477i ^ arg_0.b.b)), abs(0u), Struct_1((select(arg_0.b.a, arg_0.a.a.a, true) & ~vec3<i32>(-58607i, arg_0.a.a.a.x, -1i)) | vec3<i32>(~arg_0.a.a.b, -arg_0.b.a.x, max(2147483647i, arg_0.b.a.x)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, firstLeadingBit(53861i), select(5090i, -20714i, false)), u_input.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_3(vec2<u32>(arg_0.a.a.d, 4869u), vec4<u32>(49151u, u_input.c, 4294967295u, arg_0.b.d), u_input.b, u_input.b).c), -914f)), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-417f))))) * _wgslsmith_f_op_f32(-1585f + -1822f)));
    var_0 = Struct_5(_wgslsmith_clamp_i32(arg_0.a.a.b, 0i, -2147483647i), ~select(func_3(vec2<u32>(0u, arg_1) << (vec2<u32>(39013u, 4294967295u) % vec2<u32>(32u)), vec4<u32>(u_input.c, 15234u, u_input.a, arg_1) >> (vec4<u32>(var_0.b, 13398u, arg_0.b.d, arg_0.b.d) % vec4<u32>(32u)), 14898i, abs(arg_0.b.b)).d, ~(~var_0.c.d), _wgslsmith_f_op_f32(f32(-1f) * -1019f) >= arg_0.a.a.c), var_0.c, _wgslsmith_f_op_f32(-arg_0.a.a.c));
    var_0 = Struct_5(abs(1i), var_0.c.d, func_3(vec2<u32>(47989u, arg_0.b.d), ~select(firstLeadingBit(vec4<u32>(4294967295u, 28384u, var_0.c.d, arg_1)), ~vec4<u32>(4294967295u, var_0.b, 26642u, arg_1), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), -18897i, -29740i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) + arg_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-524f)) - var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -246f)));
    var var_1 = func_3(~min(~vec2<u32>(4294967295u, var_0.b), vec2<u32>(select(55386u, u_input.c, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.a.a.d, arg_1), vec3<u32>(4294967295u, 4294967295u, arg_1)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, u_input.a, var_0.b, arg_1), vec4<u32>(arg_1, 92393u, 41376u, arg_0.b.d)) << (_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(21850u, 2798u, u_input.c, 42944u)), reverseBits(vec4<u32>(25292u, 0u, u_input.c, 94893u)), ~vec4<u32>(135642u, var_0.b, 0u, 8062u)) % vec4<u32>(32u))), _wgslsmith_mult_i32(_wgslsmith_div_i32(func_3(reverseBits(vec2<u32>(1u, 10421u)), vec4<u32>(121424u, 4294967295u, u_input.a, 1u) << (vec4<u32>(1u, arg_1, 49500u, var_0.b) % vec4<u32>(32u)), func_2(vec3<u32>(var_0.c.d, 29832u, var_0.c.d), vec3<bool>(false, true, false)), 0i).a.x, _wgslsmith_mod_i32(max(var_0.a, u_input.b), min(18226i, 7260i))), u_input.b), firstLeadingBit(35537i));
    var_0 = Struct_5(_wgslsmith_sub_i32(i32(-1i) * -var_1.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.a.b, -15184i, 63280i, var_1.b), vec4<i32>(25003i, -2147483647i, -4698i, -1i)) | -vec4<i32>(var_0.a, arg_0.b.b, -2147483647i, arg_0.a.a.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, 0i, arg_0.b.b, var_0.a), vec4<i32>(-19206i, 0i, -4058i, 2147483647i)))), ~countOneBits(u_input.c), Struct_1(arg_0.a.a.a, arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f * var_0.d))), ~(~59813u)), _wgslsmith_f_op_f32(f32(-1f) * -174f));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1035f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d, var_1.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(var_0.d - var_1.c)), _wgslsmith_f_op_f32(max(var_0.c.c, arg_0.a.a.c)))), arg_0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.c)), -286f, _wgslsmith_f_op_f32(-arg_0.b.c))));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(arg_0.a, func_3(~vec2<u32>(9801u, u_input.c) & vec2<u32>(u_input.c, arg_0.b.d), vec4<u32>(countOneBits(4294967295u), ~arg_0.a.a.d, 33561u, arg_0.b.d), ~u_input.b, -func_2(vec3<u32>(4294967295u, u_input.c, u_input.a), vec3<bool>(true, false, true))), arg_0.c), u_input.a, _wgslsmith_f_op_vec2_f32(-arg_0.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.a.c, var_0.x))))), vec2<f32>(arg_0.c.x, -1486f)))));
    var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(525f + arg_0.c.x))), 551f))));
    return select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(arg_0.a.a.c > var_0.x, select(true, true, true), true), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1260f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1682f))) - -586f), _wgslsmith_f_op_f32(sign(1f)), 1727f), !select(vec3<bool>(true, all(vec3<bool>(false, false, false)), true), func_1(Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.b, u_input.b, -1952i), u_input.b, -1212f, 4294967295u)), Struct_1(vec3<i32>(u_input.b, 2147483647i, u_input.b), u_input.b, -1000f, 17488u), vec2<f32>(-1000f, 1219f)), -1i), func_1(Struct_3(Struct_2(Struct_1(vec3<i32>(1i, -5339i, u_input.b), u_input.b, 1809f, 37223u)), Struct_1(vec3<i32>(u_input.b, 7095i, u_input.b), u_input.b, -1476f, u_input.c), vec2<f32>(-1436f, -227f)), ~u_input.b))));
    var var_1 = true;
    let var_2 = -2147483647i;
    let var_3 = Struct_4(all(vec3<bool>(true, false, false)), reverseBits(4294967295u));
    var_1 = (var_3.a | true) & var_3.a;
    var_1 = all(vec2<bool>(!(func_3(vec2<u32>(1u, var_3.b), vec4<u32>(u_input.c, var_3.b, u_input.c, 23187u), u_input.b, var_2).d >= var_3.b), var_3.a));
    let var_4 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c)), vec2<u32>(0u, 44454u)) >> (reverseBits(max(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(var_3.b, u_input.c), vec2<u32>(var_3.b, var_3.b) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), !var_3.a), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_3.b), vec2<u32>(var_3.b, 57336u)))), ~_wgslsmith_div_u32(reverseBits(14333u), abs(118440u)), var_3.b >> (var_3.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(var_3.b & u_input.c, ~4294967295u, firstLeadingBit(var_3.b))) >> (countOneBits(abs(vec3<u32>(3918u, u_input.a, 42782u))) % vec3<u32>(32u)), ~var_2);
}


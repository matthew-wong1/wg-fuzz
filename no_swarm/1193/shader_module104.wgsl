struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c, 709f))) + arg_1.c))));
    var var_1 = vec3<i32>(arg_1.b.a, arg_0, ~_wgslsmith_mod_i32(~firstTrailingBit(arg_1.b.a), firstTrailingBit(i32(-1i) * -2147483647i)));
    let var_2 = vec2<bool>(!select(~1i <= firstLeadingBit(var_1.x), !any(vec2<bool>(true, true)), any(vec2<bool>(false, true))), true);
    let var_3 = _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(~(-2147483647i), arg_1.b.a, -566i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-8767i, arg_1.b.a, 28865i), vec3<i32>(1i, 48355i, -2147483647i)), reverseBits(vec3<i32>(var_1.x, -11202i, arg_1.b.a))))), abs(select(vec4<i32>(24409i, var_1.x, 14251i, arg_0), min(vec4<i32>(arg_0, arg_0, 2533i, -2803i), vec4<i32>(15214i, 28836i, arg_0, 4976i)), vec4<bool>(false, var_2.x, var_2.x, false)) ^ vec4<i32>(arg_1.b.a, ~1i, var_1.x, 19719i)));
    let var_4 = 2147483647i < max(22167i, _wgslsmith_dot_vec4_i32(abs(-var_3), firstLeadingBit(-var_3)));
    return !((arg_1.a.x != max(1u, ~u_input.d)) & (arg_2 >= 4294967295u));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> vec3<f32> {
    var var_0 = true;
    var var_1 = vec4<i32>(arg_0.x, ~arg_0.x, countOneBits(abs(select(arg_0.x, 11542i, false))), abs(-arg_0.x)) >> (countOneBits(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c) << (reverseBits(vec4<u32>(u_input.c, 83163u, 0u, u_input.d)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = select(vec4<bool>(firstTrailingBit(_wgslsmith_add_u32(6976u, u_input.c)) == u_input.d, !(1i <= reverseBits(var_1.x)), true, (any(vec2<bool>(true, true)) | true) | true), vec4<bool>(func_3(firstTrailingBit(45528i) ^ arg_0.x, Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 0u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 48867u)), Struct_1(70095i), -131f), _wgslsmith_mod_u32(~u_input.c, u_input.a.x | u_input.d)), true, true, true), vec4<bool>(any(vec3<bool>(true, true, any(vec4<bool>(false, false, true, true)))), true, true, true));
    let var_3 = Struct_2(reverseBits(firstLeadingBit(vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(u_input.d, u_input.b.x), ~0u, ~u_input.c))), Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(13762i, arg_0.x, 11433i, 9378i), vec4<i32>(-27713i, 3715i, 2147483647i, -44115i), var_2)), -(vec4<i32>(var_1.x, 177i, 5464i, arg_0.x) >> (vec4<u32>(u_input.b.x, u_input.d, u_input.c, u_input.d) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(exp2(arg_1)));
    var var_4 = vec3<bool>(var_2.x, any(!var_2), !all(vec2<bool>(all(vec3<bool>(var_2.x, var_2.x, false)), true)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1507f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), var_3.c, false)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = select(abs(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -firstLeadingBit(vec2<i32>(2147483647i, 2147483647i)))), select(~max(~vec2<i32>(-14781i, -2147483647i), vec2<i32>(0i, -2147483647i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-28137i, -3467i, 2147483647i, 32855i), vec4<i32>(22959i, -17425i, -42232i, 7477i)), ~(-28133i)) & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(22992i, -2477i, -2315i, -10566i), vec4<i32>(2147483647i, 0i, 1424i, -13833i)), 2147483647i >> (u_input.b.x % 32u)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), arg_1)), arg_1.x)), true);
    let var_1 = ~(~(~(~u_input.c)));
    global0 = false;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, arg_0.x), -501f), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2((var_0 | vec2<i32>(-38700i, var_0.x)) >> ((u_input.a >> (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(171f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(192f))))).x, 214f), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), 491f)))));
    var var_3 = Struct_1(-var_0.x);
    return Struct_1(select(_wgslsmith_mult_i32(reverseBits(-2147483647i), var_0.x), -_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, var_3.a), var_3.a >> (0u % 32u)), all(vec3<bool>(arg_1.x, arg_1.x, 34183u > var_1))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, _wgslsmith_f_op_f32(f32(-1f) * -1594f), _wgslsmith_f_op_f32(f32(-1f) * -1226f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-arg_2.wz, -1962f, -583f)))), !vec2<bool>(false, !(!arg_1)), 4294967295u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) - _wgslsmith_f_op_f32(min(-1084f, 241f))), 2118f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-884f, 779f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1485f + -208f))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, -1000f, 416f, 434f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-735f, 194f, 174f, 3028f) + vec4<f32>(1551f, -237f, -784f, 1084f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-245f)), 1510f, _wgslsmith_f_op_f32(-288f - 732f), _wgslsmith_f_op_f32(f32(-1f) * -294f)))), arg_1, arg_0.x);
    var var_2 = var_1.b;
    let var_3 = arg_3.yz;
    var var_4 = min(firstLeadingBit(vec2<u32>(~var_1.c << (firstLeadingBit(u_input.c) % 32u), 57722u)), select(vec2<u32>(var_1.c, ~30840u), ~(~u_input.b.zz), var_1.b));
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2082f, 659f, 1000f)))), var_1.a.ywz)) * var_1.a.wyx), vec2<bool>(true, true), select(~3630u, _wgslsmith_mult_u32(arg_0.x, ~_wgslsmith_sub_u32(4294967295u, 4294967295u)), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b, !all(vec3<bool>(true, true, true)), vec4<i32>(1i, 1i, 1i, 1i), abs(-(vec3<i32>(2147483647i, -36474i, 10607i) << (u_input.b % vec3<u32>(32u)))) ^ (~vec3<i32>(-6564i, -37733i, 49621i) >> (u_input.b % vec3<u32>(32u))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-313f * -1657f), -482f, _wgslsmith_f_op_f32(-626f * -657f)))), vec2<bool>(true, all(vec3<bool>(true, true, true))), 0u);
    let var_2 = countOneBits(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(2147483647i, var_1.a) ^ vec2<i32>(var_1.a, var_0.a), true) | (-vec2<i32>(2147483647i, -30673i) | (vec2<i32>(-13041i, -2147483647i) >> (u_input.b.xz % vec2<u32>(32u)))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_0.a, var_1.a)), -vec2<i32>(-1124i, -7578i)), ~(~vec2<i32>(var_1.a, -65311i)))));
    let var_3 = max((reverseBits(vec3<u32>(29623u, 53331u, u_input.b.x) | vec3<u32>(u_input.d, 33535u, u_input.c)) << (vec3<u32>(~u_input.d, ~49227u, min(u_input.b.x, u_input.d)) % vec3<u32>(32u))) & vec3<u32>(max(countOneBits(1u), 0u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 9286u, 8823u, u_input.b.x), vec4<u32>(u_input.a.x, 86761u, u_input.c, u_input.a.x))), ~31556u), u_input.b);
    var var_4 = Struct_2(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_3.x, u_input.d, 0u, u_input.a.x)), countOneBits(vec4<u32>(var_3.x, var_3.x, var_3.x, 29409u)), select(vec4<u32>(4294967295u, 7464u, 0u, var_3.x), vec4<u32>(var_3.x, u_input.b.x, var_3.x, var_3.x), false)), ~vec4<u32>(4294967295u, 1u, 4294967295u, 1u))), var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1151f + 978f)))), _wgslsmith_f_op_f32(f32(-1f) * -1049f)));
    let var_5 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(var_2, var_4.c, 893f)))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c, var_4.c, -370f) - vec3<f32>(var_4.c, -644f, 2121f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(460f, var_4.c, var_4.c)))))), !select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), var_4.a.x);
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-min(vec4<i32>(-2147483647i, 1i, -48011i, var_0.a), vec4<i32>(11461i, var_5.a, var_1.a, var_5.a) & vec4<i32>(var_0.a, -28850i, 0i, var_4.b.a))), firstLeadingBit(var_4.a.zxx) >> (select(u_input.b, ~(var_3 | vec3<u32>(0u, var_3.x, 0u)), !(var_4.c == -1000f)) % vec3<u32>(32u)), 584f, u_input.b.xy);
}


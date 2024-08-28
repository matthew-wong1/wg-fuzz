struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<i32> {
    var var_0 = ~abs(~(-vec4<i32>(2147483647i, 8409i, -34012i, u_input.b))) << (~abs(vec4<u32>(21132u, u_input.a.x, ~2579u, 31236u)) % vec4<u32>(32u));
    let var_1 = -678f;
    var var_2 = Struct_1(false, vec4<i32>(27947i, -firstLeadingBit(reverseBits(-11603i)), abs(~(~(-12133i))), abs(var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(164f, var_1, 1042f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1264f, 564f, var_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, 1181f, var_1) * vec3<f32>(-554f, var_1, -909f)))))), ~_wgslsmith_clamp_u32(u_input.a.x, 20792u, u_input.c.x), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), vec4<bool>(false, true, true, false), !any(vec4<bool>(false, false, false, true))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.c.x);
    let var_4 = _wgslsmith_mod_vec2_u32(min(u_input.c, abs(~min(vec2<u32>(77002u, 32908u), u_input.a.xx))), u_input.a.xy);
    return vec4<i32>(countOneBits(var_0.x), u_input.b, var_2.b.x, -13965i);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1((u_input.b & u_input.b) <= -(~arg_0.x), ~func_3() | (_wgslsmith_sub_vec4_i32(vec4<i32>(-97441i, 2147483647i, u_input.b, u_input.b), ~vec4<i32>(-9965i, arg_0.x, u_input.b, 92076i)) | (func_3() | max(vec4<i32>(u_input.b, 2147483647i, u_input.b, -37605i), vec4<i32>(-2017i, u_input.b, -956i, arg_0.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1099f, 885f, true)), 334f), -1438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f - -204f) * 106f)), vec3<f32>(164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1385f * -325f)), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(-1159f, -1026f)))), _wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(select(vec4<u32>(89002u, 75261u, u_input.a.x, 23577u), vec4<u32>(58400u, u_input.a.x, 72563u, u_input.c.x), vec4<bool>(true, false, true, true)), vec4<u32>(53111u, u_input.c.x, 1u, u_input.a.x) ^ vec4<u32>(57702u, u_input.c.x, 0u, 107223u)), ~(~vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 54438u))), max(vec4<u32>(u_input.c.x << (44434u % 32u), 1u, u_input.c.x, abs(102388u)), _wgslsmith_div_vec4_u32(vec4<u32>(57495u, u_input.a.x, 1u, 12245u), vec4<u32>(0u, 0u, 0u, u_input.a.x) | vec4<u32>(51634u, u_input.a.x, u_input.a.x, u_input.c.x)))), select(vec4<bool>(any(vec3<bool>(false, false, true)), true & all(vec2<bool>(true, false)), true, (i32(-1i) * -8107i) == arg_0.x), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, true)) & false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(808f)) + _wgslsmith_f_op_f32(-1501f * -1277f)) <= 1f));
    let var_1 = Struct_1(true, select(~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, u_input.b, 2147483647i), var_0.b)), var_0.b, all(select(select(vec4<bool>(var_0.e.x, true, var_0.e.x, var_0.e.x), var_0.e, vec4<bool>(false, true, var_0.e.x, var_0.a)), !vec4<bool>(false, var_0.e.x, false, false), vec4<bool>(true, var_0.e.x, true, true)))), var_0.c, 0u, !var_0.e);
    var var_2 = Struct_1(true, vec4<i32>(0i, 59745i, var_1.b.x, ~2147483647i) ^ _wgslsmith_mult_vec4_i32(abs(var_0.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(42116u, 4148u, u_input.c.x, var_0.d), vec4<u32>(35807u, var_1.d, u_input.a.x, var_1.d)) % vec4<u32>(32u)), -vec4<i32>(arg_0.x, var_0.b.x, 1i, -33429i) & firstLeadingBit(vec4<i32>(0i, 5897i, 20041i, var_0.b.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.c - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c.x, var_0.c.x, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.c))))))), var_0.d, select(!select(!var_0.e, var_1.e, var_0.e), var_1.e, _wgslsmith_mod_u32(73464u, 1u) <= _wgslsmith_mult_u32(1u, select(5178u, var_0.d, false))));
    var_0 = Struct_1(all(select(!select(vec3<bool>(false, false, true), var_1.e.zyz, true), var_2.e.wxx, _wgslsmith_f_op_f32(step(-1570f, var_0.c.x)) != var_1.c.x)), var_2.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) + var_2.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(565f + -1931f))))), -235f), 1u, vec4<bool>(var_1.a, !(!any(vec3<bool>(true, false, false))), false, any(var_2.e) || false));
    var var_3 = var_1;
    return var_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> vec4<f32> {
    let var_0 = func_2(vec3<i32>(~(i32(-1i) * -30667i), -57164i, _wgslsmith_div_i32(select(u_input.b, ~arg_0.x, true), -min(-2335i, u_input.b))));
    var var_1 = 551f;
    var_1 = var_0.c.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(abs(819f))))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -160f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1153f), 176f, _wgslsmith_f_op_f32(sign(var_0.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x) + vec4<f32>(var_0.c.x, 806f, var_0.c.x, -1942f)) + vec4<f32>(var_0.c.x, 587f, 445f, var_0.c.x)))))) - vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-436f, var_0.c.x)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = (11293u & u_input.a.x) != _wgslsmith_div_u32(~arg_3.d, 4294967295u);
    var var_1 = Struct_1(!(arg_1.a & false), _wgslsmith_sub_vec4_i32(firstLeadingBit(arg_1.b), firstTrailingBit(arg_1.b)) | vec4<i32>(_wgslsmith_mult_i32(40316i & arg_1.b.x, reverseBits(-68161i)), arg_3.b.x, 11518i, -(u_input.b ^ arg_3.b.x)), vec3<f32>(arg_3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2062f + 180f))), u_input.c.x, arg_3.e);
    let var_2 = arg_3.d;
    let var_3 = var_1.b.x;
    var var_4 = func_2(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.b.yxy, vec3<i32>(0i, 81530i, 2147483647i)), 1i, -2147483647i), _wgslsmith_mod_vec3_i32(select(arg_1.b.xxw, arg_3.b.zzz, vec3<bool>(arg_1.a, false, false)), firstLeadingBit(arg_3.b.wyz)), abs(-vec3<i32>(63516i, var_1.b.x, 1i))));
    return func_2((countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.x, -17081i, var_1.b.x), vec3<i32>(arg_1.b.x, 0i, -28180i))) & vec3<i32>(_wgslsmith_mod_i32(0i, 1i), arg_1.b.x, arg_3.b.x)) & vec3<i32>(arg_3.b.x, u_input.b, ~var_1.b.x << (65281u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, 113791u, u_input.c.x)) >> (abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 1u, u_input.a.x), vec4<u32>(u_input.c.x, 67668u, u_input.a.x, u_input.c.x))) % vec4<u32>(32u)));
    var var_1 = ~firstTrailingBit(-31343i);
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(abs(vec2<i32>(-1i, -12758i)), 9959u)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, 700f, 987f, -197f) + vec4<f32>(-728f, -1207f, 2791f, -808f))))))), func_2((-vec3<i32>(1i, 8671i, u_input.b) & min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -5219i, u_input.b))) | _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -48068i, u_input.b), vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(2147483647i, u_input.b, u_input.b)), -vec3<i32>(26156i, 608i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f)), Struct_1(_wgslsmith_mult_i32(u_input.b, reverseBits(1i)) > abs(1i), vec4<i32>(-u_input.b ^ -1i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.b) << (u_input.c % vec2<u32>(32u))), -2147483647i, min(~u_input.b, u_input.b)), vec3<f32>(976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(711f, 164f, false))), _wgslsmith_f_op_f32(-1f)), abs(u_input.c.x), select(vec4<bool>(true, func_2(vec3<i32>(-2147483647i, 2147483647i, u_input.b)).a, false, all(vec3<bool>(true, false, true))), func_2(func_2(vec3<i32>(u_input.b, u_input.b, u_input.b)).b.wyx).e, !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false))));
    let var_3 = var_2.b;
    var var_4 = -_wgslsmith_mult_vec4_i32(var_2.b, var_2.b);
    var_1 = 15315i;
    var_1 = 1i;
    var var_5 = _wgslsmith_f_op_f32(select(873f, -1984f, !var_2.a));
    let var_6 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, 1753f, 171f, var_2.c.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-604f, -964f, 1003f, -1827f), vec4<f32>(var_2.c.x, -1128f, 861f, var_2.c.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x))))))), func_2(var_2.b.yzz & var_3.xyx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c.x - var_2.c.x))))) + var_2.c.x), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}


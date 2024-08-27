struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = vec2<bool>(-27414i > ((~(-22305i) | firstTrailingBit(-12693i)) >> (_wgslsmith_mod_u32(13800u | u_input.a.x, ~1u) % 32u)), false);
    let var_1 = Struct_1(u_input.a.x, ~(~abs(max(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(29003u, 61930u, u_input.a.x)))), vec3<f32>(arg_1.x, -1000f, _wgslsmith_div_f32(-555f, -442f)));
    var var_2 = vec3<bool>(all(vec3<bool>(true, true, var_0.x)), true, var_0.x);
    let var_3 = vec4<i32>(select(1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(30312i, -3221i, -2147483647i) << (vec3<u32>(var_1.b.x, 21526u, 1u) % vec3<u32>(32u))), min(vec3<i32>(30047i, 0i, -40059i), ~vec3<i32>(7792i, 1i, 0i))), var_2.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32((vec2<i32>(5509i, 3138i) << (u_input.b % vec2<u32>(32u))) | -vec2<i32>(-1i, -2147483647i), vec2<i32>(-1i, -2147483647i)), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 23396i, 1i, 1i), vec4<i32>(-13317i, -2147483647i, -1i, 21798i)), _wgslsmith_mod_i32(0i, -2147483647i))), min(1i, -2147483647i), ~abs(2147483647i));
    var var_4 = var_1;
    return _wgslsmith_dot_vec3_u32(~max(~var_4.b >> (abs(vec3<u32>(4294967295u, var_1.b.x, 0u)) % vec3<u32>(32u)), var_4.b), var_4.b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = ~func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-918f)) - _wgslsmith_f_op_f32(sign(154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-674f, -1037f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1477f - 502f), _wgslsmith_f_op_f32(1100f + 2353f), _wgslsmith_f_op_f32(step(-328f, 2175f))))));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.x, var_0) ^ vec3<u32>(0u, u_input.c, arg_0.x), ~vec3<u32>(arg_0.x, 1u, 4294967295u)), ~max(vec3<u32>(u_input.c, arg_0.x, 57527u), vec3<u32>(u_input.c, 12019u, var_0))) & (countOneBits(var_0) ^ var_0), ~countOneBits(firstLeadingBit(vec3<u32>(arg_0.x, var_0, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, -745f, -566f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(490f, 173f, 704f))))));
    let var_3 = -firstLeadingBit(arg_1.x);
    return _wgslsmith_add_u32(4294967295u, ~(~(~1u) | func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.x, 129f), var_2.c.zx), vec3<f32>(203f, -119f, -504f))));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = arg_0.b.zz;
    let var_1 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_0.a), u_input.a ^ vec2<u32>(9988u, var_0.x)), ~var_0.x | 4294967295u) & ~(~_wgslsmith_clamp_u32(u_input.c, var_0.x, ~arg_0.b.x));
    let var_2 = select(vec4<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), !any(vec3<bool>(true, true, true)), any(vec3<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(true, true)), true)), true), select(!vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true), true), vec4<bool>(true, !all(vec4<bool>(false, true, true, true)), false, false)), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), true), !any(vec2<bool>(false, true))), select(vec4<bool>(false, all(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, false, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), select(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false)), true | (arg_0.c.x < -375f))));
    let var_3 = arg_0.b.x;
    var_0 = ~(~_wgslsmith_sub_vec2_u32(u_input.a, arg_0.b.yy ^ u_input.b));
    return max(vec4<u32>(13901u, ~0u, _wgslsmith_mod_u32(max(var_3, u_input.b.x), _wgslsmith_add_u32(~19369u, 1u)), ~func_3(_wgslsmith_f_op_vec2_f32(-arg_0.c.xz), vec3<f32>(-1463f, -728f, 987f))), ~(~(vec4<u32>(u_input.b.x, 82615u, 44134u, var_0.x) << (vec4<u32>(u_input.c, 25147u, 4294967295u, 0u) % vec4<u32>(32u)))) ^ ~(abs(vec4<u32>(0u, 4294967295u, 2220u, var_0.x)) ^ abs(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 61530u))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> u32 {
    var var_0 = max(func_4(Struct_1(abs(~u_input.c), vec3<u32>(func_2(u_input.a, vec3<i32>(2147483647i, 1i, -30146i)), func_3(arg_1.yy, arg_1), abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(846f, -1000f, arg_1.x)))))), reverseBits(vec4<u32>(1u, ~reverseBits(u_input.c), ~u_input.b.x, reverseBits(u_input.a.x >> (49932u % 32u)))));
    var_0 = ~_wgslsmith_clamp_vec4_u32(func_4(Struct_1(1u, var_0.wyx, vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), abs(~vec4<u32>(var_0.x, var_0.x, 19010u, 16817u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(61411u, 87333u, 1u, 4294967295u), vec4<u32>(var_0.x, 1u, u_input.b.x, u_input.c), vec4<u32>(1u, var_0.x, 0u, var_0.x))) & ~(~func_4(Struct_1(var_0.x, var_0.xwz, arg_1)) << (~vec4<u32>(0u, var_0.x, u_input.c, u_input.c) % vec4<u32>(32u)));
    var_0 = _wgslsmith_sub_vec4_u32(~(~abs(abs(vec4<u32>(11757u, var_0.x, 59888u, 4294967295u)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(0u, 1u, 35158u, u_input.a.x) ^ vec4<u32>(26854u, u_input.a.x, var_0.x, 13944u)), _wgslsmith_div_vec4_u32(vec4<u32>(22728u, 57247u, 49792u, 15913u), vec4<u32>(158u, u_input.a.x, 66054u, 0u))), countOneBits(vec4<u32>(1146u, u_input.c, abs(0u), u_input.b.x & 22442u))));
    var var_1 = countOneBits(_wgslsmith_mult_i32(~countOneBits(1i), firstTrailingBit(0i))) >> (~_wgslsmith_div_u32(30961u, 50642u) % 32u);
    var_0 = reverseBits(~firstTrailingBit(abs(~vec4<u32>(var_0.x, 0u, var_0.x, 28609u))));
    return var_0.x;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(~0i, -94443i, i32(-1i) * -1i, countOneBits(-62236i))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(2147483647i, 2147483647i, 1i, 18890i)), vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(-3834i, -2147483647i, 1i, -1i), select(vec4<i32>(1i, -1i, -1i, 0i), vec4<i32>(1i, 8985i, 7349i, 6347i), true), vec4<bool>(true, true, false, false))));
    var_0 = ~(-(~_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.x, 25444i, -4974i, var_0.x), vec4<i32>(var_0.x, -35596i, 0i, 3840i)), vec4<i32>(2147483647i, var_0.x, 0i, var_0.x), -vec4<i32>(var_0.x, 2147483647i, 2147483647i, -39398i))));
    var var_1 = abs(vec2<i32>(reverseBits(var_0.x >> (0u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(max(-22371i, var_0.x), 28574i, -2147483647i), min(~var_0.yxy, reverseBits(vec3<i32>(var_0.x, var_0.x, 1i))))));
    var var_2 = arg_2;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec2<i32>(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(313f)) * -606f)), _wgslsmith_div_u32(firstLeadingBit(1u), func_1(true, vec3<f32>(1f, 1f, 1f))), Struct_1(func_1(var_0, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(912f, -1230f, -238f)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(34311u, u_input.c, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(621f, 686f, -242f)))))), ~firstLeadingBit(i32(-1i) * -48969i));
    let var_2 = Struct_1(u_input.a.x, ~(vec3<u32>(1u, 1u << (u_input.b.x % 32u), _wgslsmith_mult_u32(8488u, 32972u)) ^ vec3<u32>(u_input.a.x, min(u_input.c, 7435u), u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1209f, 313f)))), 1f, 1512f));
    let var_3 = !(!vec4<bool>(var_0, true, any(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, false, var_0, var_0), false)), var_0));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1421f - 928f))) * _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(var_2.c.x * var_2.c.x)))), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.x))))));
    let var_5 = Struct_1(u_input.a.x << (1u % 32u), func_4(var_2).xzy, _wgslsmith_div_vec3_f32(vec3<f32>(-1495f, -518f, var_2.c.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(885f, var_4.x, 1000f) - vec3<f32>(var_4.x, -1425f, 1257f)), _wgslsmith_f_op_vec3_f32(sign(var_2.c)))))));
    var var_6 = var_5;
    var var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, var_4.x, var_6.c.x, _wgslsmith_f_op_f32(abs(-1567f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c.x, -466f, -613f, -303f) - vec4<f32>(2188f, var_2.c.x, -641f, var_6.c.x)), _wgslsmith_f_op_vec4_f32(round(var_4))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 412f, var_4.x, var_6.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}


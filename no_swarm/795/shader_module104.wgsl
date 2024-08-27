struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    let var_0 = true;
    let var_1 = !(~_wgslsmith_dot_vec2_u32(~vec2<u32>(13619u, 4294967295u), vec2<u32>(49407u, 10642u)) == 0u);
    return false & !(!var_0);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = ~17208u;
    var var_1 = -vec2<i32>(~(~(-25124i)), _wgslsmith_add_i32(~(-6149i >> (arg_0.b % 32u)), countOneBits(-3923i)));
    var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(var_1.x), abs(var_1.x)), -2147483647i), vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(arg_0.a.ywy, arg_0.a.zyz)), countOneBits(u_input.a.x))), -max(arg_0.a.ww, select(u_input.a, vec2<i32>(arg_0.a.x, u_input.a.x) >> (vec2<u32>(arg_0.c.x, var_0) % vec2<u32>(32u)), all(vec4<bool>(arg_1, true, arg_1, true)))));
    var_1 = -(~(-reverseBits(~arg_0.a.zz)));
    var_1 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -339f), 371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.x)) + _wgslsmith_f_op_f32(arg_2 * arg_2))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1000f, -1019f, arg_3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_3.x, arg_2, arg_2) + vec4<f32>(224f, arg_3.x, 729f, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(559f, 1790f, 546f, -328f), vec4<f32>(-312f, -429f, arg_3.x, arg_2)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1320f, 622f, arg_2, arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, arg_2, 437f, 1470f))))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.a.x, arg_2.a.x), arg_1.a.zzw), -24129i), -2147483647i), u_input.a.x, ~(-(-18317i | arg_2.a.x)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_4(arg_2, func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_3)) + 2195f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(arg_0.zw)))))).x, -1097f));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(158f))));
    var var_1 = arg_3.x;
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(5441i, (-45510i << (1u % 32u)) << (_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(1u, arg_2.x)) % 32u), 31608i, _wgslsmith_sub_i32(firstTrailingBit(arg_0.x), ~abs(-1i))), vec4<i32>(-3351i, u_input.a.x, 59819i, countOneBits(arg_0.x)), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(0i, arg_1, u_input.a.x, arg_1)), -(reverseBits(vec4<i32>(arg_0.x, 4033i, 2147483647i, arg_1)) | (vec4<i32>(arg_1, -523i, arg_1, arg_1) >> (vec4<u32>(4294967295u, arg_2.x, 32231u, arg_2.x) % vec4<u32>(32u))))));
    var_0 = -270f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(var_2, 54475u, vec2<u32>(20739u, 1u)), func_3(), _wgslsmith_div_f32(-2058f, -1052f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1334f, 1834f), vec2<f32>(-1000f, 1022f), arg_3.x)))) - vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(max(var_2, -var_2), 1u << (arg_2.x % 32u), arg_2), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, arg_1, -2147483647i), vec4<i32>(451i, var_2.x, -36462i, -1838i)) ^ -var_2, ~32776u, _wgslsmith_mult_vec2_u32(arg_2, arg_2) << (vec2<u32>(arg_2.x, 1705u) % vec2<u32>(32u))), -549f)));
    return var_2.xxy;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> vec3<i32> {
    var var_0 = ~(~_wgslsmith_div_vec4_u32(select(vec4<u32>(21080u, 5562u, 17661u, 1u), vec4<u32>(40338u, 1u, 4294967295u, 25846u), vec4<bool>(false, false, true, true)) ^ countOneBits(vec4<u32>(4294967295u, 15008u, 0u, 16316u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true)), vec2<bool>(!(4294967295u < var_0.x), !(35414u >= var_0.x)), vec2<bool>(true, true)));
    var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, ~var_0.x, 1u, (var_0.x | 16177u) >> (_wgslsmith_clamp_u32(18683u, 0u, 56157u) % 32u)), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 11317u, var_0.x), vec4<u32>(var_0.x, 70538u, 15107u, var_0.x)), vec4<u32>(14802u, 4294967295u, var_0.x, 0u) | vec4<u32>(var_0.x, 34088u, 0u, 0u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, _wgslsmith_f_op_f32(-1462f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-574f * arg_1)))));
    let var_3 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -(~vec4<i32>(-19234i, u_input.a.x, -1i, 0i)));
    return func_2(vec3<i32>(~((16132i >> (var_0.x % 32u)) ^ (i32(-1i) * -23384i)), -2147483647i, max(_wgslsmith_clamp_i32(42689i, 3109i, u_input.a.x), 0i) | u_input.a.x), var_3.x, firstLeadingBit(var_0.yz) ^ (var_0.yz >> (~var_0.wz % vec2<u32>(32u))), select(vec2<bool>(~82618u < var_0.x, var_1), !select(!vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), var_1), vec2<bool>(true, all(select(vec4<bool>(true, var_1, true, var_1), vec4<bool>(true, var_1, false, var_1), vec4<bool>(true, false, false, var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(-310f, -1541f, 728f);
    var var_1 = !all(!vec4<bool>(true, all(vec4<bool>(true, false, true, true)), false, true));
    var var_2 = vec2<u32>(56360u, ~(~firstTrailingBit(1u)));
    let var_3 = vec3<u32>(var_2.x, var_2.x, var_2.x);
    var var_4 = vec3<bool>(true, false, true);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1788f))) + _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, -2784f, 1642f, 556f)), Struct_1(vec4<i32>(u_input.a.x, -29970i, var_0.x, 11803i), 4294967295u, var_3.zx), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -14071i, 2147483647i), 3535u, vec2<u32>(4294967295u, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1617f)))), 1f));
    var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, ~_wgslsmith_mult_u32(0u, reverseBits(var_2.x))), ~var_3.xz, vec2<u32>(var_3.x, 1u));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 1931i, -11249i), vec3<i32>(2147483647i, var_0.x, -18078i), vec3<i32>(1i, 0i, var_0.x)), vec3<i32>(reverseBits(var_0.x), firstLeadingBit(-16221i), var_0.x ^ 1i)), func_2((vec3<i32>(3375i, 39743i, u_input.a.x) >> (vec3<u32>(var_2.x, 48374u, 37351u) % vec3<u32>(32u))) >> (var_3 % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -67021i), vec2<i32>(1i, 27272i)) << (4294967295u % 32u), _wgslsmith_clamp_vec2_u32(~var_3.yz, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_2.x, 8701u) ^ var_3.yy), select(var_4.yx, !var_4.xx, var_4.yx)).x));
}


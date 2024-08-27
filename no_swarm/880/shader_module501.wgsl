struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool) -> bool {
    let var_0 = Struct_3(vec2<bool>(!(!arg_2) && select(arg_2, arg_2, all(vec4<bool>(arg_2, arg_2, true, arg_2))), any(vec2<bool>(true, arg_2 & arg_2))), !(u_input.a.x >= ~u_input.a.x), 2147483647i, u_input.c.zzx, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, _wgslsmith_f_op_f32(-arg_1))))));
    return select(_wgslsmith_dot_vec2_u32(~vec2<u32>(12499u, u_input.b), ~vec2<u32>(u_input.c.x, 0u)) < ~(var_0.d.x << (7412u % 32u)), any(!(!vec4<bool>(var_0.a.x, arg_2, arg_2, arg_2))), _wgslsmith_f_op_f32(var_0.e.x - 884f) >= 255f) && (true & arg_2);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = 1353f;
    var var_1 = Struct_1(!(func_3(4294967295u, var_0, true) || true) & any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), 683f, 104f, _wgslsmith_f_op_f32(-var_0))), vec4<i32>(_wgslsmith_clamp_i32(3077i, 1i, _wgslsmith_clamp_i32(arg_1, 1i, 16246i)), ~(-arg_3.x), 1i, -u_input.a.x), vec2<bool>(true, true), -728f);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -641f);
    let var_3 = !(!vec3<bool>(var_1.a, false, true));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))), var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(2772f, -320f, false))))))));
    return Struct_5(-vec2<i32>(arg_3.x, arg_3.x), !select(vec3<bool>(var_1.a, true || var_1.d.x, true), vec3<bool>(false, var_3.x, !var_3.x), !(arg_0 >= -1673f)));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(-2147483647i), ~arg_0.a.x >> (reverseBits(41469u) % 32u), _wgslsmith_mult_i32(arg_0.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.a.x, arg_2.a.x, -1i), vec4<i32>(-2147483647i, arg_0.a.x, arg_0.a.x, arg_1)), _wgslsmith_clamp_i32(21010i, ~(-2764i), arg_1)), _wgslsmith_div_i32(max(~(-23413i), _wgslsmith_div_i32(u_input.a.x, 48577i)), _wgslsmith_div_i32(max(20471i, u_input.a.x), 0i))), _wgslsmith_add_vec4_i32(vec4<i32>(select(~arg_1, arg_2.a.x, true), _wgslsmith_mult_i32(u_input.a.x | arg_2.a.x, -2147483647i), reverseBits(_wgslsmith_sub_i32(8501i, 1i)), u_input.a.x), vec4<i32>(arg_0.a.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(4012i, arg_0.a.x, 13506i), vec3<i32>(arg_0.a.x, arg_2.a.x, u_input.a.x)), _wgslsmith_add_i32(arg_0.a.x, 1i)), max(-13092i, 1i), -_wgslsmith_mult_i32(8210i, arg_1))));
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), (1i >> ((u_input.b >> (0u % 32u)) % 32u)) ^ _wgslsmith_dot_vec4_i32(~var_0, abs(vec4<i32>(arg_0.a.x, arg_1, var_0.x, 1i))), 2147483647i, -1i), firstLeadingBit(u_input.b), Struct_1(!(!func_2(-527f, arg_1, vec2<u32>(12267u, u_input.c.x), vec4<i32>(arg_2.a.x, u_input.a.x, arg_2.a.x, -74584i)).b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, 2170f, 567f, 2038f))), var_0, arg_0.b.yy, _wgslsmith_f_op_f32(247f * 136f)), var_0.yxy);
    let var_2 = 1u;
    var var_3 = ~((_wgslsmith_div_u32(~0u, _wgslsmith_mult_u32(u_input.b, 38190u)) & 1u) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~u_input.c.xxx, u_input.c.xwx << (u_input.c.xxw % vec3<u32>(32u))), u_input.b) % 32u));
    var var_4 = select(func_2(var_1.c.b.x, ~arg_2.a.x, vec2<u32>(4294967295u, u_input.b), _wgslsmith_mod_vec4_i32(~var_1.a, vec4<i32>(-12361i, var_0.x, _wgslsmith_dot_vec4_i32(var_0, var_0), firstLeadingBit(1i)))).b, func_2(var_1.c.e, u_input.a.x, vec2<u32>(u_input.b, ~(var_1.b ^ u_input.b)), ~var_0 ^ vec4<i32>(firstLeadingBit(1i), -7588i, arg_0.a.x, 1i)).b, true);
    return any(vec3<bool>(arg_2.b.x, true, true));
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = Struct_1(all(vec4<bool>(arg_0.a.b == arg_0.a.b, arg_0.a.b <= _wgslsmith_clamp_u32(13342u, 20500u, 1u), arg_0.a.c.a, func_4(func_2(1000f, arg_0.c.d.x, u_input.c.xz, arg_0.c.a), u_input.a.x, func_2(arg_0.a.c.b.x, -2147483647i, vec2<u32>(u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, -1i, 0i, arg_0.a.a.x))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2027f, 515f, _wgslsmith_f_op_f32(ceil(-786f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(-arg_0.d)))))), _wgslsmith_div_vec4_i32(vec4<i32>(-26068i, firstLeadingBit(u_input.a.x) << (~u_input.c.x % 32u), max(arg_0.c.d.x, 0i) | ~arg_0.a.a.x, -u_input.a.x & 25038i), vec4<i32>(min(-16830i, min(u_input.a.x, -30487i)), 96794i, ~countOneBits(arg_0.a.a.x), arg_0.a.d.x)), !arg_0.a.c.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.d)) + arg_0.a.c.e)))));
    var var_1 = !any(!(!(!vec3<bool>(arg_0.c.c.d.x, arg_0.a.c.d.x, var_0.d.x))));
    var_1 = var_0.a;
    let var_2 = func_2(_wgslsmith_f_op_f32(abs(arg_0.d)), 0i >> (u_input.c.x % 32u), ~min(~u_input.c.wx, vec2<u32>(~40281u, 36138u)), vec4<i32>(-1i, 0i, arg_0.a.a.x, ~_wgslsmith_dot_vec4_i32(var_0.c & vec4<i32>(var_0.c.x, 0i, -3400i, var_0.c.x), var_0.c)));
    var_1 = arg_0.c.c.d.x;
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(vec2<bool>(true, true)), true, !(all(vec4<bool>(true, true, false, false)) && func_1(Struct_4(Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.c.x, Struct_1(false, vec4<f32>(1968f, -932f, -616f, 929f), vec4<i32>(0i, u_input.a.x, u_input.a.x, -1i), vec2<bool>(false, false), -1050f), vec3<i32>(2147483647i, -2147483647i, 58187i)), 2546f, Struct_2(vec4<i32>(u_input.a.x, 1i, -6360i, 11795i), 58810u, Struct_1(false, vec4<f32>(300f, -1000f, 682f, 166f), vec4<i32>(62853i, 25429i, -9171i, -29947i), vec2<bool>(false, false), 585f), vec3<i32>(-2147483647i, -2147483647i, u_input.a.x)), -1135f))));
    let var_1 = Struct_2(~reverseBits(reverseBits(~vec4<i32>(u_input.a.x, -35604i, 21081i, 63772i))), ~abs(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)), Struct_1(!any(!var_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1919f, 288f, -1127f, 984f)))))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, -1i, 2147483647i, -1i) & (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -34678i)), min(vec4<i32>(u_input.a.x, u_input.a.x, 16715i, 25412i) | vec4<i32>(-14543i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, 14341i, -9907i, u_input.a.x))), !var_0.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f - 162f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) - _wgslsmith_f_op_f32(f32(-1f) * -272f)))), -abs(_wgslsmith_add_vec3_i32(-vec3<i32>(-18783i, 1848i, -55725i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -313i, -13710i), vec3<i32>(u_input.a.x, 83316i, u_input.a.x)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(var_1.c.e)), u_input.a.x, ~reverseBits(u_input.c.zz), var_1.c.c).b.x;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -261f);
    var var_4 = u_input.c;
    let var_5 = Struct_5(-vec2<i32>(-var_1.d.x, _wgslsmith_dot_vec4_i32(var_1.c.c, _wgslsmith_mod_vec4_i32(var_1.c.c, vec4<i32>(38765i, -42355i, -1i, var_1.a.x)))), vec3<bool>(true, true, false));
    let var_6 = true;
    var_4 = vec4<u32>(_wgslsmith_sub_u32(31442u >> (~var_1.b % 32u), ~var_1.b >> (max(u_input.c.x, 0u) % 32u)) ^ (var_4.x | var_1.b), u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 24884u, 77116u), vec3<u32>(var_1.b, var_4.x, var_4.x)) << (u_input.b % 32u), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_1.c.b.wx, var_1.c.b.zz), _wgslsmith_f_op_f32(sign(444f)), i32(-1i) * -u_input.a.x, var_1.c.b.zzw);
}


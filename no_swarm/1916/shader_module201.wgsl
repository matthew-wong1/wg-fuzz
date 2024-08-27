struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) + 254f));
    let var_1 = abs(abs(min(vec3<i32>(35448i, 0i, -32246i) >> (u_input.b.zzw % vec3<u32>(32u)), ~vec3<i32>(4419i, -24356i, -2147483647i))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(~0u, _wgslsmith_mult_u32(29250u, u_input.b.x), 0u), ~(~u_input.a.yyy)) % vec3<u32>(32u)));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(~var_1.x | var_1.x, _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.x, var_1.x), -var_1.x)), -51587i << (u_input.c % 32u)), abs(var_1.x), 2147483647i, 10460i);
    var var_3 = Struct_2(select(abs(vec3<u32>(u_input.c, ~u_input.a.x, 4294967295u)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c) << (vec3<u32>(u_input.a.x, 13699u, 0u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, 75999u, u_input.c) & u_input.b.zzy), (var_2.x << (4294967295u % 32u)) >= 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)));
    var var_4 = ~vec2<u32>(max(~firstTrailingBit(18764u), 430u), countOneBits(~u_input.b.x));
    return ~(~4294967295u);
}

fn func_2() -> bool {
    let var_0 = abs(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yw, vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.c, u_input.a.x))) >> (~vec2<u32>(abs(52905u ^ u_input.c), ~(~2221u)) % vec2<u32>(32u));
    let var_1 = var_0;
    let var_2 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, true), true), vec3<u32>(func_3(), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, 59868u, 91701u, 17337u)), 11824u), ~var_1.x), _wgslsmith_dot_vec3_u32(u_input.a.xyz, vec3<u32>(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.c)), vec4<u32>(4294967295u, u_input.c, 42752u, 16103u) & vec4<u32>(30617u, u_input.b.x, u_input.a.x, 19776u)), (var_1.x << (var_1.x % 32u)) << (~1u % 32u))), vec2<i32>(countOneBits(~_wgslsmith_div_i32(-2147483647i, 1i)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, 2147483647i, 0i, -17216i), vec4<i32>(1i, 1i, 1i, 1i)), firstLeadingBit(countOneBits(vec4<i32>(21926i, 1591i, 8407i, -1i))))));
    var var_3 = _wgslsmith_f_op_f32(min(-1282f, -897f));
    let var_4 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, abs(~var_1.x), var_1.x), vec3<u32>(firstTrailingBit(0u), ~5992u & _wgslsmith_add_u32(1u, var_2.c), 1u), vec3<u32>(u_input.b.x, var_0.x, ~0u)));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!vec2<bool>(true, func_2()), u_input.b.wyz, ~_wgslsmith_clamp_u32(u_input.c, ~u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.b.zz, vec2<u32>(u_input.c, 10086u))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(13550i, -2147483647i))));
    let var_1 = max(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(16930u, var_0.c, var_0.c) | _wgslsmith_sub_u32(u_input.a.x ^ 4294967295u, 1u), ~(~abs(u_input.b.x))), 14895u);
    var var_2 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.a.x), vec2<u32>(var_0.c, 62882u)), ~0u), u_input.b.x, u_input.a.x)), _wgslsmith_add_vec3_u32(~abs(var_0.b), var_0.b) << (_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(75451u, var_0.c, 38802u), var_0.b), var_0.b) % vec3<u32>(32u)));
    return Struct_1(!var_0.a, vec3<u32>(~max(4294967295u, ~u_input.b.x), ~24746u & abs(var_2.x), _wgslsmith_dot_vec3_u32(var_0.b, max(~var_0.b, u_input.b.ywx))), 30878u, vec2<i32>(var_0.d.x, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(var_0.b | ~_wgslsmith_mod_vec3_u32(func_1().b, max(u_input.b.xyy, vec3<u32>(u_input.a.x, u_input.c, u_input.c))), -1066f);
    var_1 = Struct_2(reverseBits(~(vec3<u32>(var_0.c, var_0.b.x, var_0.b.x) << (_wgslsmith_add_vec3_u32(var_0.b, vec3<u32>(1u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))), var_1.b);
    let var_2 = !(!vec4<bool>(any(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), false)), _wgslsmith_sub_i32(var_0.d.x, 1i) != -17344i, select(!var_0.a.x, all(vec2<bool>(var_0.a.x, var_0.a.x)), !var_0.a.x), var_0.a.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-795f, -864f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1075f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b + var_1.b))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(714f, 1060f), _wgslsmith_f_op_f32(933f + var_1.b), _wgslsmith_f_op_f32(floor(-520f))))));
    var var_4 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(-var_0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1i, var_0.d.x))), abs(vec2<i32>(var_0.d.x, 29602i)) ^ var_0.d, var_2.x), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(2147483647i, select(var_0.d.x, var_0.d.x, true), -30595i, 2147483647i), var_0.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 881f, var_3.x, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), 1155f, _wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(-var_3.x))))), 237f, vec4<i32>(var_0.d.x, ~(var_0.d.x & var_0.d.x), func_1().d.x, var_0.d.x >> (55083u % 32u)) >> (u_input.b % vec4<u32>(32u)));
}


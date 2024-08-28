struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~_wgslsmith_add_vec3_u32(~max(vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u), vec3<u32>(49802u, 40695u, u_input.c.x)), firstLeadingBit(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(~(18608u & u_input.b.x), ~(~97673u))), true, 37240u);
    let var_1 = ~_wgslsmith_clamp_u32(1u >> (var_0.d % 32u), 7879u, 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-378f)), _wgslsmith_f_op_f32(1353f + -130f))))))));
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~u_input.b.x, ~u_input.b.x), var_1, 60119u), select(vec3<u32>(u_input.c.x, var_0.d, _wgslsmith_mod_u32(var_1, 1u)), var_0.a, vec3<bool>(var_0.c && var_0.c, !var_0.c, true))), _wgslsmith_add_vec2_u32(u_input.b, select(abs(abs(u_input.c)), abs(var_0.b) << (vec2<u32>(var_0.d, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true))), true, var_0.a.x);
    var var_4 = reverseBits(0i);
    return -883f;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(274f + 369f), _wgslsmith_f_op_f32(step(1438f, -707f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(1571f, 1232f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2247f, 286f, -216f, 384f) + vec4<f32>(-1000f, -1000f, -171f, 836f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(845f, 1022f, 304f, 200f) + vec4<f32>(436f, -310f, 615f, 256f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1541f, -1000f, 1819f, 190f) * vec4<f32>(-299f, 230f, -1802f, 878f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2077f, 1429f, 464f, -1353f))), vec4<f32>(_wgslsmith_f_op_f32(step(832f, -474f)), -682f, 1000f, _wgslsmith_f_op_f32(select(-779f, 497f, true)))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1703f - 2137f), _wgslsmith_f_op_f32(max(589f, -1417f))), _wgslsmith_f_op_f32(-2245f * 1333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1137f))))))));
    let var_1 = -abs(firstLeadingBit(-u_input.a) | -_wgslsmith_mod_i32(u_input.a, -40827i));
    return _wgslsmith_f_op_f32(f32(-1f) * -627f);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = !vec4<bool>(!(_wgslsmith_f_op_f32(max(1700f, arg_0.x)) > arg_0.x), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(u_input.c.x > 1u, any(vec2<bool>(false, true)), u_input.a > u_input.a, true)), true);
    let var_1 = !(arg_0.x <= 672f);
    var var_2 = var_1;
    let var_3 = u_input.a;
    var_0 = vec4<bool>(any(select(vec3<bool>(true, true, var_0.x), select(vec3<bool>(var_0.x, var_1, true), var_0.zzy, true), var_0.ywx)), all(!(!(!vec4<bool>(true, false, true, var_0.x)))), any(vec4<bool>(!(false | var_1), true, !all(vec3<bool>(var_0.x, var_1, false)), true)), var_0.x);
    return Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 26568u) >> (vec2<u32>(115907u, u_input.b.x) % vec2<u32>(32u)), countOneBits(u_input.c))), vec3<u32>((1u & u_input.b.x) & ~21052u, u_input.c.x, 1u)), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(77418u, 16684u), vec2<u32>(arg_1, 18631u)) << ((abs(36523u) << ((arg_1 ^ 4294967295u) % 32u)) % 32u)), !(!all(vec3<bool>(var_0.x, var_0.x, false))), ~firstTrailingBit(74087u) << (u_input.c.x % 32u));
}

fn func_1() -> i32 {
    let var_0 = (vec2<i32>(_wgslsmith_clamp_i32(-u_input.a, abs(8736i), u_input.a << (1u % 32u)), _wgslsmith_mult_i32(-54765i ^ u_input.a, abs(-2147483647i))) ^ ~_wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(47264i, -15603i), vec2<i32>(1i, u_input.a)))) >> (~_wgslsmith_div_vec2_u32(~max(vec2<u32>(u_input.b.x, 25877u), vec2<u32>(u_input.c.x, 43570u)), _wgslsmith_mult_vec2_u32(u_input.c | vec2<u32>(0u, 0u), u_input.c & vec2<u32>(u_input.c.x, 1u))) % vec2<u32>(32u));
    let var_1 = var_0.x;
    var var_2 = false;
    var_2 = true;
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1308f * 1407f))), -1785f, -1000f) + vec3<f32>(-614f, _wgslsmith_f_op_f32(-1152f * _wgslsmith_f_op_f32(func_2(true, vec4<bool>(false, false, true, true), 1u))), -125f)), _wgslsmith_mult_u32((u_input.b.x << (63470u % 32u)) >> (u_input.c.x % 32u), ~(~_wgslsmith_clamp_u32(73022u, 17588u, u_input.c.x))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(func_1());
    let var_1 = vec3<u32>(~(~(~20792u) >> ((func_4(vec3<f32>(-800f, -123f, 532f), 1u).d >> (u_input.c.x % 32u)) % 32u)), 21166u, ~reverseBits(max(_wgslsmith_mult_u32(1u, u_input.c.x), 48373u)));
    var var_2 = true;
    let var_3 = true;
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2227f, 210f, -1490f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, -452f, -131f)))))), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1505f, -769f, 418f, 802f) - vec4<f32>(1092f, 1068f, -1583f, 620f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1539f, -985f, -883f, -1904f), vec4<f32>(1129f, 1000f, 770f, 333f), false)) * vec4<f32>(-961f, -851f, -1141f, 1654f)))), ~vec4<u32>(_wgslsmith_sub_u32(~var_1.x, 4294967295u), u_input.b.x, 4294967295u, 17154u), vec4<f32>(-217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2025f, 226f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) - -430f), _wgslsmith_f_op_f32(step(-313f, -733f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(234f, 1230f))))), var_4.d, ~u_input.a);
}


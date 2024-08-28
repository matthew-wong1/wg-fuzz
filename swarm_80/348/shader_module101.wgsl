struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = select(vec4<i32>(_wgslsmith_sub_i32(~firstLeadingBit(2147483647i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), vec3<i32>(-46927i, -1i, u_input.b))), u_input.b, u_input.c.x, u_input.c.x), min(_wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(-19950i, -89407i, -1i, -1652i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, true, false, true))), vec4<i32>(firstTrailingBit(-1501i), _wgslsmith_mult_i32(-2147483647i, u_input.c.x), -u_input.c.x, u_input.b)), vec4<i32>(-1i) * -(~vec4<i32>(-29190i, -9620i, 26597i, u_input.c.x))), any(vec2<bool>(true, true)));
    var var_1 = (_wgslsmith_dot_vec3_u32(countOneBits(arg_0.zyx), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), _wgslsmith_sub_vec3_u32(arg_0.xzw, arg_0.zzz))) > ~arg_0.x) | (~1u >= ~arg_0.x);
    return _wgslsmith_mod_i32(countOneBits(reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, var_0.x), max(-53596i, var_0.x)))), max(u_input.b, 23985i));
}

fn func_2() -> vec3<u32> {
    let var_0 = ~min(_wgslsmith_sub_u32(u_input.a, ~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 26722u), ~vec4<u32>(u_input.a, 1u, 1u, 4294967295u))) <= ~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_mod_u32(u_input.a, u_input.a)));
    let var_1 = -((~(-8396i) >> (~u_input.a % 32u)) | func_3(vec4<u32>(u_input.a, 65842u, 1u, 0u) | vec4<u32>(24361u, 0u, 88603u, u_input.a))) >> (_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(48404u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 93935u) >> (vec4<u32>(13674u, u_input.a, u_input.a, 23996u) % vec4<u32>(32u))), abs(vec4<u32>(64755u, u_input.a, 22964u, u_input.a)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 56676u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)))) % 32u);
    var var_2 = -1i;
    var var_3 = 1i;
    return vec3<u32>(select(u_input.a >> (u_input.a % 32u), u_input.a, all(select(vec4<bool>(var_0, false, var_0, var_0), select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_0, true, var_0)), all(vec3<bool>(var_0, var_0, true))))), u_input.a | u_input.a, 0u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, 1458f, -541f, -276f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -817f, -1000f, 760f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(182f, -1061f, 1000f, 1763f) + vec4<f32>(2590f, 1002f, -342f, 574f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1006f, 444f, -1386f, 207f) - vec4<f32>(1124f, -742f, -1762f, 652f))))));
    var var_1 = ~(~min(func_2(), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a), arg_0), vec3<u32>(4294967295u, u_input.a, 0u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(17740u, 4294967295u, u_input.a)))));
    var var_2 = min(~u_input.a, 7295u);
    var var_3 = vec4<u32>(_wgslsmith_add_u32(abs(~(u_input.a ^ 94u)), ~(~(~870u))), _wgslsmith_mod_u32(~(~0u << (u_input.a % 32u)), ~(~9018u)), reverseBits(~1u), min(min(~var_1.x, ~u_input.a), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.x, var_1.x), abs(4294967295u))) | 100862u);
    let var_4 = any(vec2<bool>(!(_wgslsmith_f_op_f32(-var_0.x) < var_0.x), true));
    return Struct_2(var_1.x, ~(~u_input.a ^ (countOneBits(u_input.a) >> (0u % 32u))), Struct_1(var_0.x, vec3<i32>(u_input.b, -1i, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)))), var_4, Struct_1(_wgslsmith_f_op_f32(sign(var_0.x)), vec3<i32>(countOneBits(-2147483647i), u_input.b, ~(-u_input.b)), -1172f));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_4(arg_1, Struct_1(_wgslsmith_f_op_f32(step(397f, -865f)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.c.b >> (arg_2 % vec3<u32>(32u)), arg_1.c.b), reverseBits(vec3<i32>(u_input.b, arg_1.c.b.x, 0i)), vec3<i32>(~arg_1.c.b.x, -43261i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e.b.x, u_input.b, -1i), vec3<i32>(12552i, -71691i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -357f))))), false, ~(~6320u));
    let var_1 = var_0.d;
    return 21296i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(-59668i, -1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(~2147483647i, 1i), ~(~u_input.c.x))), min(func_4(true, func_1(vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 46095u, 4294967295u), vec3<u32>(25437u, u_input.a, u_input.a)) & ~vec3<u32>(1u, u_input.a, u_input.a)), ~abs(u_input.c.x << (u_input.a % 32u))), ~(-_wgslsmith_add_i32(max(-17095i, 20649i), countOneBits(26931i))), u_input.b);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), 0i);
    var_0 = (vec4<i32>(4960i << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), ~(-4141i), ~u_input.c.x, func_1(vec3<bool>(false, true, false)).e.b.x) | vec4<i32>(i32(-1i) * -u_input.b, (var_0.x | 39868i) | (u_input.c.x & 56575i), -2147483647i, 5142i)) << (select(vec4<u32>(_wgslsmith_mult_u32(11819u >> (0u % 32u), _wgslsmith_sub_u32(u_input.a, 1u)), abs(u_input.a), ~firstTrailingBit(33676u), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), vec2<u32>(u_input.a, 4294967295u))), ~(~vec4<u32>(38004u, u_input.a, u_input.a, 56471u)) & _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 4159u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 11162u), vec4<bool>(false, false, false, true)), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(17668u, 32951u, 30188u, u_input.a)), !(20351u != ~u_input.a)) % vec4<u32>(32u));
    var var_2 = Struct_5(Struct_2(reverseBits(_wgslsmith_mult_u32(func_2().x, max(1u, 19043u))), 47771u, Struct_1(1230f, abs(vec3<i32>(u_input.c.x, 0i, var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-798f + 256f)))), !(!func_1(vec3<bool>(false, false, false)).d), Struct_1(-573f, ~var_0.zzw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_4(func_1(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), Struct_1(1f, _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, -3542i, -54882i), vec3<i32>(var_0.x, -1i, -26486i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-184f + -480f)))), true, ~select(u_input.a, 4294967295u, true)), ~abs(firstLeadingBit(vec4<i32>(-33132i, 0i, 0i, var_0.x))));
    var var_3 = 2038f;
    let var_4 = vec2<i32>(-16224i, u_input.c.x);
    var var_5 = reverseBits(1473i) < func_3(~select(vec4<u32>(17808u, 14393u, 14868u, 38539u) & vec4<u32>(u_input.a, 72635u, var_2.a.a, 15112u), vec4<u32>(u_input.a, 10384u, u_input.a, 4294967295u), !var_2.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1576f, var_2.b.a.c.a, 336f), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.b.c, -509f, var_2.a.e.a), vec3<f32>(-441f, var_2.a.e.a, -699f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.c.c, var_2.b.b.c, var_2.b.a.c.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(732f, 668f, var_2.a.c.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.b.a, -376f, var_2.b.b.c), vec3<f32>(-1474f, -1874f, var_2.a.e.a)) - vec3<f32>(-263f, var_2.b.b.a, var_2.b.a.e.a))))), u_input.c.x);
}


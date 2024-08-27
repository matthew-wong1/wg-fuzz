struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(902f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -833f) + _wgslsmith_f_op_f32(arg_3.b.x - 151f))) * _wgslsmith_div_f32(-757f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -582f)), _wgslsmith_f_op_f32(-442f + 2284f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-850f))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-464f))) * arg_2.a)), ~arg_2.c);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(~firstLeadingBit(42935u) & u_input.b.x, u_input.b.x << ((1u << (max(u_input.b.x, ~0u) % 32u)) % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.a)) + arg_1.a), vec2<f32>(1261f, _wgslsmith_f_op_f32(select(-1808f, func_2(53341u, 4294967295u, arg_0, Struct_1(-987f, vec2<f32>(arg_0.b.x, 263f), arg_0.c)).b.x, true))), select(arg_2.c, ~u_input.a, vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, true))), Struct_1(_wgslsmith_f_op_f32(-2407f + _wgslsmith_f_op_f32(trunc(-1168f))), _wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(_wgslsmith_f_op_f32(-288f - 290f), _wgslsmith_f_op_f32(-1496f + -208f))), arg_0.c));
    return arg_2.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_mod_u32(~1u, ~arg_2.x)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(32668u, 32158u), _wgslsmith_add_u32(69766u, arg_2.x)) << (reverseBits(_wgslsmith_mod_u32(44265u, 15970u)) % 32u), countOneBits(0u)), ~_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(~arg_2.x, _wgslsmith_mult_u32(1u, arg_2.x))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(737f - 713f), _wgslsmith_div_f32(-1127f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-359f)), -562f))), _wgslsmith_f_op_f32(f32(-1f) * -306f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(-858f, vec2<f32>(-482f, -481f), vec4<i32>(arg_3.x, -27008i, arg_3.x, arg_0.x)), Struct_1(-1000f, vec2<f32>(-1399f, 2371f), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, arg_3.x)), func_2(23477u, var_0.x, Struct_1(817f, vec2<f32>(-270f, 833f), u_input.a), Struct_1(-535f, vec2<f32>(-1679f, 1352f), vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, 0i))))), -987f), vec2<f32>(-1131f, _wgslsmith_div_f32(-440f, 878f))), vec4<i32>(-firstTrailingBit(_wgslsmith_clamp_i32(arg_3.x, 10796i, -30550i)), abs(-2147483647i) & ~(arg_3.x >> (u_input.b.x % 32u)), ~_wgslsmith_dot_vec2_i32(arg_0.zz << (vec2<u32>(var_0.x, arg_2.x) % vec2<u32>(32u)), -vec2<i32>(arg_3.x, 2147483647i)), i32(-1i) * -firstTrailingBit(-75059i)));
    let var_2 = Struct_1(416f, vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.b.x)) - 929f)), vec4<i32>(abs(u_input.a.x), -1i, _wgslsmith_mod_i32(arg_3.x, func_2(1u, ~4294967295u, Struct_1(var_1.b.x, var_1.b, u_input.a), Struct_1(var_1.a, vec2<f32>(599f, var_1.b.x), u_input.a)).c.x), ~(-_wgslsmith_mult_i32(arg_3.x, u_input.a.x))));
    let var_3 = 0u;
    let var_4 = _wgslsmith_mod_vec3_u32(arg_2, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~20992u, 8847u), ~_wgslsmith_mult_vec3_u32(~arg_2, vec3<u32>(1u, var_0.x, arg_2.x)), _wgslsmith_div_vec3_u32(u_input.b.yzy, ~arg_2)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_div_i32(u_input.a.x, u_input.a.x);
    var var_1 = Struct_1(-229f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(u_input.a.xzz, true, ~reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_0, -44081i), u_input.a), ~u_input.a.x))))), firstTrailingBit(-(~abs(vec4<i32>(var_0, 24494i, 0i, -13084i)))));
    var var_2 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(-2147483647i), u_input.a.x, var_1.c.x >> (u_input.b.x % 32u), u_input.a.x | var_0), ~func_2(1u, 58501u, Struct_1(934f, var_1.b, var_1.c), Struct_1(var_1.b.x, vec2<f32>(-1871f, -227f), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i))).c), vec4<i32>(_wgslsmith_mult_i32(reverseBits(-17523i), var_1.c.x), 2749i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 19012i, 13085i) | u_input.a, var_1.c)), any(vec4<bool>(true, true, true, true))), abs(~vec4<i32>(-27166i, -73139i, 1i, var_0) >> (vec4<u32>(firstTrailingBit(u_input.b.x), 30139u, 20039u, u_input.b.x) % vec4<u32>(32u))));
    var_1 = func_2(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~(1u | u_input.b.x), 72260u), vec2<u32>(~u_input.b.x, ~u_input.b.x) << (abs(reverseBits(vec2<u32>(u_input.b.x, u_input.b.x))) % vec2<u32>(32u))), func_2(~(~u_input.b.x), ~u_input.b.x, func_2(~_wgslsmith_add_u32(14329u, 0u), u_input.b.x, Struct_1(-469f, vec2<f32>(var_1.a, 1433f), u_input.a), func_2(~u_input.b.x, ~u_input.b.x, func_2(87150u, u_input.b.x, Struct_1(1922f, vec2<f32>(var_1.b.x, var_1.b.x), vec4<i32>(var_0, 0i, var_1.c.x, 21747i)), Struct_1(556f, vec2<f32>(-517f, 343f), u_input.a)), func_2(u_input.b.x, 9725u, Struct_1(var_1.a, vec2<f32>(var_1.a, 1173f), u_input.a), Struct_1(200f, var_1.b, var_1.c)))), func_2(abs(u_input.b.x), ~73317u << (~u_input.b.x % 32u), Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 809f)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, u_input.a.x, u_input.a.x), u_input.a)), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(-125f, vec2<f32>(1054f, 621f), vec4<i32>(87081i, -34562i, -30668i, -2147483647i)), Struct_1(-160f, var_1.b, var_1.c), Struct_1(744f, var_1.b, vec4<i32>(var_1.c.x, u_input.a.x, u_input.a.x, 5820i)))), _wgslsmith_f_op_vec2_f32(sign(var_1.b)), ~vec4<i32>(-266i, 33685i, -14317i, u_input.a.x)))), func_2(u_input.b.x ^ 2082u, 0u, func_2(~u_input.b.x, u_input.b.x, func_2(u_input.b.x, 34097u, func_2(4294967295u, u_input.b.x, Struct_1(var_1.a, vec2<f32>(var_1.a, var_1.b.x), var_1.c), Struct_1(var_1.a, var_1.b, u_input.a)), func_2(u_input.b.x, u_input.b.x, Struct_1(var_1.b.x, var_1.b, u_input.a), Struct_1(-485f, vec2<f32>(725f, 171f), vec4<i32>(var_1.c.x, 1i, var_0, var_0)))), Struct_1(_wgslsmith_div_f32(var_1.b.x, -794f), func_2(u_input.b.x, 22468u, Struct_1(var_1.a, vec2<f32>(1241f, var_1.a), u_input.a), Struct_1(var_1.b.x, var_1.b, u_input.a)).b, ~vec4<i32>(var_0, u_input.a.x, var_1.c.x, var_0))), Struct_1(780f, _wgslsmith_f_op_vec2_f32(-var_1.b), ~vec4<i32>(var_0, var_1.c.x, u_input.a.x, var_0))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(func_3(func_2(1032u, _wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x), func_2(u_input.b.x, 4294967295u, Struct_1(var_1.a, var_1.b, vec4<i32>(39697i, var_1.c.x, -14325i, var_1.c.x)), Struct_1(var_1.a, vec2<f32>(var_1.b.x, -272f), var_1.c)), Struct_1(776f, vec2<f32>(var_1.b.x, 1069f), vec4<i32>(1i, var_1.c.x, 2147483647i, var_0))), func_2(~u_input.b.x, ~52553u, func_2(u_input.b.x, 48430u, Struct_1(var_1.a, var_1.b, vec4<i32>(var_0, -2147483647i, 2147483647i, 95355i)), Struct_1(-394f, var_1.b, vec4<i32>(var_1.c.x, 2147483647i, -2147483647i, -1i))), Struct_1(1000f, var_1.b, vec4<i32>(var_1.c.x, var_0, var_0, var_0))), Struct_1(_wgslsmith_f_op_f32(899f * 321f), var_1.b, -var_1.c))))), 232f);
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-263f, var_3.x))) * _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(-864f, var_1.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, var_1.a), var_1.b) + func_2(u_input.b.x, u_input.b.x, Struct_1(-1241f, var_1.b, vec4<i32>(var_1.c.x, 43326i, u_input.a.x, var_1.c.x)), Struct_1(390f, var_1.b, u_input.a)).b)), var_1.b));
    var var_4 = var_1.b;
    let var_5 = select(var_0 != (var_0 | ~0i), all(vec3<bool>(true, true, true)), false);
    var_1 = func_2(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 28564u), u_input.b.yzz), 1u | _wgslsmith_add_u32(2800u, u_input.b.x)), 52739u, func_2(_wgslsmith_mod_u32(countOneBits(u_input.b.x), _wgslsmith_mod_u32(4294967295u >> (0u % 32u), 28092u | u_input.b.x)), firstTrailingBit(max(~0u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u))), Struct_1(var_4.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1152f, 1000f) - vec2<f32>(var_4.x, -156f)) - _wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(1141f, -409f), var_5))), vec4<i32>(var_0, -1i, var_1.c.x, u_input.a.x)), Struct_1(1286f, _wgslsmith_f_op_vec2_f32(exp2(var_1.b)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-112i, var_0, 23521i, u_input.a.x), u_input.a, min(u_input.a, vec4<i32>(u_input.a.x, var_1.c.x, 1i, u_input.a.x))))), func_2(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, ~(~970u), 10879u), func_2(~(~4294967295u), _wgslsmith_add_u32(~4294967295u, 4294967295u & u_input.b.x), Struct_1(_wgslsmith_f_op_f32(trunc(var_3.x)), vec2<f32>(-759f, var_3.x), max(u_input.a, var_1.c)), Struct_1(_wgslsmith_f_op_f32(var_1.a - -522f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2893f, -172f))), vec4<i32>(-2147483647i, 23767i, -2147483647i, var_1.c.x))), Struct_1(var_4.x, var_1.b, u_input.a | max(vec4<i32>(3064i, -3478i, -33548i, 0i), u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yxw);
}


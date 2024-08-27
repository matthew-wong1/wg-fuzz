struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -502f);
    var var_1 = !((~(~u_input.a.x) ^ ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) > ~(~(~39326u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(f32(-1f) * -1655f)))))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(279f, _wgslsmith_f_op_f32(floor(436f)))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(-122f, -777f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-124f + -1426f), _wgslsmith_f_op_f32(step(1528f, 566f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(372f, -1258f) * vec2<f32>(468f, 206f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1621f, -450f), vec2<f32>(1000f, 1109f), true))) + vec2<f32>(_wgslsmith_f_op_f32(-918f - -366f), _wgslsmith_f_op_f32(f32(-1f) * -885f))))));
    var_1 = _wgslsmith_mod_u32(u_input.b.x, 4294967295u) == ~_wgslsmith_mult_u32(select(1u, min(u_input.b.x, u_input.b.x), true), ~u_input.a.x);
    return ~vec2<i32>(-reverseBits(26429i), abs(1i)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23135u, u_input.a.x, u_input.a.x), vec4<u32>(18337u, u_input.a.x, 0u, u_input.b.x))), u_input.a), firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x >> (u_input.b.x % 32u)))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    var var_0 = ~(~select(~(vec4<u32>(49884u, u_input.b.x, u_input.b.x, 26350u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b.x) % vec4<u32>(32u))), abs(~vec4<u32>(21059u, 1u, 1u, u_input.b.x)), false));
    var_0 = ~(~vec4<u32>(~(~157u), min(u_input.b.x, u_input.a.x), u_input.a.x, 23212u));
    var var_1 = true;
    var_1 = false;
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(0u, var_0.x), 0u), vec3<u32>(1172u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, var_0.x), vec2<u32>(30031u, 22510u)), 0u >> (abs(var_0.x) % 32u))), var_0.x | var_0.x, 1u, 23517u);
    return 0u;
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_4(0u, Struct_1(~abs(u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1690f, 1380f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-124f, -141f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-687f, 531f) - vec2<f32>(806f, -774f)))), select(false, false, select(true, true, true))), Struct_3(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 14757u), func_4(func_3()))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) * _wgslsmith_f_op_f32(-var_0.b.b.x)) + var_0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.b.x)))), 1013f, _wgslsmith_f_op_f32(f32(-1f) * -288f))));
    var_0 = Struct_4(abs(u_input.b.x), Struct_1(u_input.a.x, var_1.yw, !all(select(vec4<bool>(false, var_0.b.c, var_0.b.c, var_0.b.c), vec4<bool>(var_0.b.c, false, false, var_0.b.c), vec4<bool>(false, var_0.b.c, false, false)))), Struct_3(vec2<u32>(u_input.b.x, u_input.b.x)));
    var var_2 = Struct_4(10890u, Struct_1(~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_0.b.b)), vec2<f32>(var_0.b.b.x, -1220f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), var_0.b.c), var_0.c);
    let var_3 = Struct_3(u_input.a);
    return vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_2.b.b.x), _wgslsmith_f_op_f32(926f + var_2.b.b.x), _wgslsmith_f_op_f32(var_0.b.b.x - var_2.b.b.x));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(896f, 2110f, 152f), vec3<f32>(1000f, 294f, -697f)))) * vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-894f, -556f, 706f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(862f, -973f, 1336f) - vec3<f32>(-1476f, 958f, 328f)))));
    var_0 = ~abs(vec2<u32>(4294967295u, u_input.a.x));
    let var_2 = 803f;
    var var_3 = 22788u;
    return Struct_2(Struct_1(u_input.a.x | var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 + 576f), _wgslsmith_f_op_f32(var_1.x + 821f))), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, false, false)), false), vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, true)));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-683f, _wgslsmith_div_f32(arg_2.a.b.x, 278f), select(false, arg_2.a.c, arg_2.b.x))) * arg_2.a.b.x), _wgslsmith_f_op_f32(arg_2.a.b.x * _wgslsmith_f_op_f32(f32(-1f) * -559f)), _wgslsmith_f_op_f32(f32(-1f) * -902f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, -798f, arg_2.a.b.x) * vec3<f32>(-763f, arg_2.a.b.x, arg_2.a.b.x))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-809f, -950f) + arg_2.a.b.x)))));
    let var_1 = u_input.a;
    let var_2 = firstLeadingBit(~vec3<u32>(var_1.x, _wgslsmith_div_u32(u_input.b.x, arg_1) | 1u, var_1.x));
    let var_3 = arg_0.x;
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~arg_0.x, ~arg_0.x), arg_0.wx & ~vec2<i32>(arg_0.x, -9038i)) >> (abs(~var_2.xy) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~(select(vec2<i32>(-1i, -1i), arg_0.zz, arg_2.a.c) >> (u_input.a % vec2<u32>(32u))), arg_0.wx));
    return 22597i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~_wgslsmith_add_i32(1i, 1i) & _wgslsmith_mod_i32(func_5(min(vec4<i32>(-2147483647i, -31502i, -2147483647i, 0i), vec4<i32>(-29282i, 936i, -1i, 2147483647i)), u_input.b.x, func_1()), ~18491i), -(~(~(~1i))), func_1().a.b.x > 602f);
    let var_1 = 1i >> (~u_input.a.x % 32u);
    var var_2 = _wgslsmith_add_vec2_i32(-select(_wgslsmith_mult_vec2_i32(max(vec2<i32>(-1i, 15782i), vec2<i32>(2147483647i, var_1)), -vec2<i32>(-2147483647i, -37347i)), ~(~vec2<i32>(var_1, 0i)), func_1().b.yw), _wgslsmith_mod_vec2_i32(-vec2<i32>(31301i, var_1), (vec2<i32>(var_1, var_1) | vec2<i32>(var_1, var_1)) >> ((u_input.b | vec2<u32>(4294967295u, 61857u)) % vec2<u32>(32u))) & vec2<i32>(-2147483647i, ~_wgslsmith_div_i32(var_1, var_1)));
    let var_3 = ~61318u;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-667f)), _wgslsmith_f_op_f32(trunc(-1000f))) - 671f)));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    var var_6 = Struct_1(var_3, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4), -226f), _wgslsmith_f_op_f32(min(var_5.x, _wgslsmith_f_op_f32(-var_4)))), _wgslsmith_f_op_f32(max(2320f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_4))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_5.x)) - -473f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f + var_4)))));
    let x = u_input.a;
    s_output = StorageBuffer(75331u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4, var_4, -369f))))) - vec3<f32>(206f, var_6.b.x, var_6.b.x)));
}


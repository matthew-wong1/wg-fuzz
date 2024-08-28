struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec4<f32> {
    let var_0 = 1u;
    let var_1 = var_0;
    let var_2 = arg_2.c;
    let var_3 = Struct_1(select(~arg_0.a, vec3<i32>(-u_input.b.x, -1i, u_input.c.x), true), vec4<f32>(583f, _wgslsmith_f_op_f32(floor(1f)), -1193f, 410f), 36140u);
    let var_4 = Struct_1(vec3<i32>(abs(var_3.a.x), 2147483647i, arg_0.a.x), _wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_mod_u32(abs(var_0), reverseBits(~4294967295u)));
    return _wgslsmith_f_op_vec4_f32(sign(var_3.b));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec3<u32> {
    let var_0 = Struct_1(vec3<i32>(select(50703i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.a.x, 6897i), vec3<i32>(u_input.b.x, -2147483647i, -12679i)) << (~55084u % 32u), select(all(vec2<bool>(true, true)), arg_1 != 0u, any(vec4<bool>(false, true, true, true)))), _wgslsmith_mod_i32(1i, -2147483647i), ~(~arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, 162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * -955f)), arg_0.b.x) + arg_0.b), arg_1);
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = select(countOneBits(var_1.a.xx) << (select(~(~vec2<u32>(21358u, var_0.c)), vec2<u32>(firstLeadingBit(arg_0.c), var_1.c | 97856u), any(vec2<bool>(true, true))) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(min(i32(-1i) * -5592i, 1i)), 2147483647i), vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    var_1 = Struct_1(-vec3<i32>(_wgslsmith_sub_i32(-15741i, -47637i) & var_1.a.x, -2503i, ~_wgslsmith_mult_i32(1i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, var_1.b.x, var_0.b.x, var_1.b.x))) * var_1.b) - vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)), var_1.b.x, 130f, _wgslsmith_f_op_f32(max(var_1.b.x, var_0.b.x)))), 1u);
    return vec3<u32>(~(~(~arg_0.c >> (min(arg_1, var_1.c) % 32u))), countOneBits(1u) >> (firstLeadingBit(~(~var_0.c)) % 32u), select(var_0.c, 42989u, any(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_sub_vec3_u32(~func_4(Struct_1(abs(vec3<i32>(-44478i, u_input.d, 1i)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<i32>(2147483647i, 61188i, 2147483647i), vec4<f32>(-904f, 340f, -277f, -172f), 0u), var_0.x, Struct_1(u_input.b.xzz, vec4<f32>(-492f, -104f, -1000f, -1000f), 1u), -1674f)), ~1u), 4116u, u_input.b.x), vec3<u32>(50293u, ~1u, 0u));
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.d, -12113i)), vec3<i32>(u_input.d, -7755i, u_input.b.x)), _wgslsmith_add_vec3_i32(reverseBits(u_input.a.wyx), vec3<i32>(2147483647i, -1i, -32612i))), (i32(-1i) * -u_input.d) & -_wgslsmith_add_i32(u_input.a.x, -2147483647i), u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 207f, -1147f, -472f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-248f, 275f, false))), _wgslsmith_f_op_f32(abs(870f)), 879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-651f))))), var_1.x);
    var var_3 = Struct_1(firstLeadingBit(-u_input.c.yzx | firstLeadingBit(vec3<i32>(2147483647i, -1i, u_input.c.x))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<i32>(2147483647i & u_input.c.x, 1i, u_input.c.x), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.c.xwz, var_2.b, var_1.x), arg_0.x, Struct_1(var_2.a, var_2.b, 0u), var_2.b.x)).x, _wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x)), _wgslsmith_f_op_f32(var_2.b.x * -628f), 1065f), var_1.x), !any(select(vec4<bool>(arg_1.x, arg_1.x, false, var_0.x), vec4<bool>(var_0.x, false, false, arg_1.x), vec4<bool>(false, false, false, false))), Struct_1(vec3<i32>(0i, var_2.a.x, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.b))), ~_wgslsmith_add_u32(4294967295u, var_2.c)), 592f)), ~84801u);
    let var_4 = Struct_1(countOneBits(select(var_2.a, abs(~var_3.a), select(arg_0, vec3<bool>(true, var_0.x, true), select(var_0, var_0, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<i32>(var_3.a.x, 80157i, var_3.a.x), var_3.b, var_2.c), true, Struct_1(vec3<i32>(-2147483647i, var_3.a.x, 28456i), vec4<f32>(907f, var_2.b.x, var_3.b.x, var_3.b.x), 28371u), 2048f)) + _wgslsmith_f_op_vec4_f32(var_3.b + vec4<f32>(var_3.b.x, 424f, -1169f, var_3.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, var_2.b.x), _wgslsmith_f_op_vec4_f32(var_2.b * vec4<f32>(-1620f, -1076f, var_2.b.x, var_2.b.x)))))), _wgslsmith_div_u32(102750u, _wgslsmith_div_u32(0u >> ((var_1.x & var_1.x) % 32u), firstLeadingBit(var_3.c))));
    return _wgslsmith_f_op_f32(sign(-1773f));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(845f, -1361f)))), _wgslsmith_f_op_f32(floor(2011f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), vec2<bool>(true, true))), -1652f), -1290f);
    var var_1 = vec2<u32>(~(~(~_wgslsmith_clamp_u32(1u, 0u, 17202u))), firstLeadingBit(~(~_wgslsmith_sub_u32(4294967295u, 4294967295u))));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_i32(select(u_input.c.xwx, ~(-vec3<i32>(-1i, -1i, u_input.c.x)), all(vec4<bool>(false, true, true, false)) && (u_input.b.x < u_input.d)), vec3<i32>(u_input.c.x, u_input.c.x, -u_input.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-520f, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -751f, 787f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 898f, var_0.x, 307f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1544f, 941f, -1357f, -310f), vec4<f32>(-1733f, -789f, 805f, 547f))))))), ~var_1.x);
    var_1 = vec2<u32>(1u, func_4(var_2, 12926u, reverseBits(u_input.c.x)).x);
    let var_3 = vec4<i32>(var_2.a.x, select(~(-2147483647i), reverseBits(~(u_input.b.x & -35213i)), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), abs(_wgslsmith_add_i32(~19391i, _wgslsmith_mult_i32(u_input.b.x, -43421i)) ^ ~(~0i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, -u_input.a.yy), 1i));
    return Struct_1(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1294f), var_0.x, var_2.b.x, -1188f), reverseBits(firstTrailingBit(_wgslsmith_mult_u32(var_1.x ^ 0u, _wgslsmith_div_u32(var_1.x, 0u)))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_2.wyz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b, arg_0.b)), var_0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.b.wzx, vec4<f32>(-625f, -1590f, 2855f, -340f), arg_0.c), true, arg_0, 1106f)).x, func_1().b.x, _wgslsmith_f_op_f32(1324f * 105f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 2990f, var_0.b.x, 1323f) + arg_0.b), var_0.b)))), arg_1);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(func_1(), true, Struct_1(vec3<i32>(firstTrailingBit(var_0.a.x), 2147483647i, var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1456f, 774f, var_1.b.x, -560f) + var_1.b) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, var_0.b.x, var_0.b.x), vec4<f32>(var_0.b.x, 1003f, -130f, var_0.b.x))), ~(~arg_0.c)), -693f)).x);
    var var_3 = 37847u;
    let var_4 = !(!any(vec4<bool>(true, true, true, true)));
    return -531f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1177f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -417f)))));
    var var_1 = ~firstTrailingBit(vec2<u32>(~41904u, 1u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f + -328f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(), ~var_1.x, firstTrailingBit(vec4<i32>(u_input.d, -16550i, 46257i, u_input.d))))), 1000f)));
    var var_2 = min(vec2<i32>(_wgslsmith_div_i32(select(-2147483647i, u_input.b.x, true), firstLeadingBit(u_input.b.x)), ~u_input.d), vec2<i32>(1i, u_input.a.x));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, _wgslsmith_div_i32(abs(var_2.x), -25716i), select(u_input.d, var_2.x, true), countOneBits(u_input.d) << (var_1.x % 32u)), u_input.b << (vec4<u32>(~50999u, 1u, ~1u, var_1.x) % vec4<u32>(32u)), vec4<i32>(0i, 1i, var_2.x, -(~var_2.x))), u_input.a);
    var_1 = ~reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 1u), vec3<u32>(4294967295u, var_1.x, var_1.x)), 9009u) << (_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_1.x, 58806u)), vec2<u32>(74429u, var_1.x) & vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u)));
    var var_4 = func_1();
    var_2 = u_input.b.zx;
    let var_5 = -vec3<i32>(u_input.c.x ^ abs(1i), 1i, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(1484f, var_4.b.x)), var_4.b.x, -508f, _wgslsmith_f_op_f32(trunc(var_4.b.x))))))), func_4(Struct_1(vec3<i32>(var_5.x, var_5.x | 8179i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_4.b, var_4.b))), var_4.c), var_1.x, 18522i));
}


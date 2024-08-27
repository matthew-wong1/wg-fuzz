struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    var var_0 = 3822i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-507f, -118f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(813f, arg_1.x, arg_0.a.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-893f, _wgslsmith_f_op_f32(abs(-787f)))) + -1135f), _wgslsmith_f_op_f32(f32(-1f) * -486f), 402f));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-807f, -2096f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2255f, arg_0.a.a.d)), arg_1.x, arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1099f, _wgslsmith_f_op_f32(arg_0.a.a.d + -478f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.a.a.a.x, arg_0.a.a.d))) - _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -741f, arg_1.x) + vec3<f32>(arg_0.a.a.d, var_1.x, arg_0.a.a.d))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.yxw))));
    var var_3 = ~firstLeadingBit(~max(vec3<i32>(u_input.c.x, arg_0.a.a.c.c, arg_0.a.a.e.c), vec3<i32>(arg_0.a.a.c.c, 77711i, u_input.c.x))) & vec3<i32>(-abs(-9256i), firstLeadingBit(-2147483647i), -18462i);
    return _wgslsmith_div_f32(var_2.x, var_1.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(var_0.a.d, _wgslsmith_f_op_f32(-arg_0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1555f))))), arg_2.a.a.a.x);
    let var_2 = -reverseBits(~(-arg_2.a.a.c.c ^ arg_3.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(var_0, arg_2.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 - var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.d, arg_0.a.d, arg_2.a.a.a.x)))))));
    let var_4 = -1313f;
    return vec2<bool>(false, !(!((var_4 <= arg_2.a.a.a.x) && all(vec4<bool>(arg_0.a.b, false, arg_0.a.b, arg_2.a.a.b)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: f32) -> Struct_2 {
    let var_0 = i32(-1i) * -u_input.c.x;
    var var_1 = select(select(vec4<bool>(false, false, true, abs(1i) > var_0), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))), true), vec4<bool>(!(906f >= arg_2), true, select(true, false, false), !(2147483647i > arg_1.a.x))), vec4<bool>(all(select(func_2(Struct_3(Struct_2(vec2<f32>(arg_2, -752f), false, Struct_1(u_input.d, vec2<u32>(82871u, u_input.d), 1i), arg_2, Struct_1(22866u, u_input.a, u_input.c.x))), Struct_5(arg_1.b.zzx, arg_1.b), Struct_4(Struct_3(Struct_2(vec2<f32>(158f, -1042f), false, Struct_1(11545u, u_input.a, 1i), arg_2, Struct_1(36904u, u_input.a, -2664i))), vec2<bool>(true, true)), arg_0.zw), vec2<bool>(true, true), vec2<bool>(true, true))), -121f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_div_f32(arg_2, 105f)), !(_wgslsmith_div_u32(4294967295u, u_input.a.x) >= 3089u), true), !vec4<bool>(false, true && any(vec3<bool>(false, false, true)), true, any(vec4<bool>(false, true, true, true)) & false));
    var_1 = !select(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<bool>(true, true, true, true), select(vec4<bool>(0u <= u_input.b, 0i > arg_1.a.x, true, all(vec4<bool>(var_1.x, true, false, false))), select(select(vec4<bool>(false, var_1.x, true, false), vec4<bool>(true, true, var_1.x, true), true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, var_1.x)), var_1.x));
    var var_2 = _wgslsmith_add_vec4_u32(~(~select(vec4<u32>(u_input.b, u_input.b, 83680u, u_input.e) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(1911u, 1u, u_input.b, 1u), true)), min(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 14520u, 1u), vec4<u32>(1u, u_input.d, u_input.a.x, 0u)), ~((vec4<u32>(u_input.a.x, u_input.a.x, 4778u, 1u) & vec4<u32>(4294967295u, 47496u, u_input.a.x, u_input.e)) << (~vec4<u32>(43623u, u_input.a.x, u_input.d, 67319u) % vec4<u32>(32u)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(f32(-1f) * -1172f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 863f))))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(386f, _wgslsmith_f_op_f32(737f + 614f)))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_3.xy)) * vec2<f32>(119f, -252f)))), var_1.x & var_1.x, Struct_1(~(~(~46435u)), reverseBits(~vec2<u32>(u_input.e, 27938u) & vec2<u32>(var_2.x, 3881u)), -arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_3.x))))), Struct_1(~66788u, var_2.xy, _wgslsmith_dot_vec3_i32(reverseBits(arg_0.xxy), arg_0.yzy)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = func_1(vec4<i32>(arg_2.c.c, abs(_wgslsmith_mult_i32(arg_1.x, arg_1.x)) & (1i >> (arg_0.c.b.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(countOneBits(-21248i), _wgslsmith_clamp_i32(52953i, arg_3.c, u_input.c.x)), -(arg_3.c & -1i)), _wgslsmith_add_i32(arg_3.c, 41228i)), Struct_5(firstTrailingBit(vec3<i32>(arg_3.c, 0i, u_input.c.x)), ~((vec4<i32>(arg_3.c, 2147483647i, arg_1.x, 60012i) ^ vec4<i32>(arg_0.e.c, 0i, u_input.c.x, arg_3.c)) & -vec4<i32>(u_input.c.x, -42159i, -12412i, u_input.c.x))), arg_2.d);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(abs(arg_0.c.b), abs(arg_2.c.b)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(33750u, 939u), vec2<u32>(10360u, var_0.c.b.x)), _wgslsmith_sub_vec2_u32(arg_3.b, var_0.c.b))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.e.b.x & 0u, select(4294967295u, u_input.e, arg_2.b)), var_1.c.b, firstLeadingBit(~arg_0.e.b)), !(true & var_1.b) & var_0.b), ~(~vec2<u32>(_wgslsmith_add_u32(arg_2.c.a, 1u), 51792u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), arg_2.a.x, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_1(vec4<i32>(countOneBits(u_input.c.x), u_input.c.x, 1i, _wgslsmith_mod_i32(u_input.c.x, 0i)), Struct_5(~(~vec3<i32>(u_input.c.x, 13984i, u_input.c.x)), ~(vec4<i32>(-2147483647i, 25788i, u_input.c.x, -2147483647i) | vec4<i32>(2147483647i, 1i, 15076i, u_input.c.x))), 215f), u_input.c, func_1(-(vec4<i32>(-1i) * -vec4<i32>(-1i, 5062i, u_input.c.x, 4076i)), Struct_5(vec3<i32>(~3549i, -40368i, -1i), select(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 46208i, 52266i), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 412i)), vec4<bool>(true, true, true, true))), 383f), func_1(firstLeadingBit(~vec4<i32>(41588i, -1i, -2147483647i, -31820i)), Struct_5(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<i32>(-17651i, -8416i, -20447i)), vec4<i32>(u_input.c.x, min(-6857i, 8669i), -u_input.c.x, ~u_input.c.x)), _wgslsmith_f_op_f32(ceil(1000f))).c));
    var var_1 = countOneBits(~_wgslsmith_add_i32(1i, u_input.c.x | u_input.c.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -902f, 1685f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(var_0.x - 461f), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_2(var_0.zy, false, Struct_1(u_input.a.x, vec2<u32>(17195u, u_input.d), -1i), -654f, Struct_1(4294967295u, u_input.a, -1i))), vec2<bool>(true, true)), vec3<f32>(var_0.x, var_0.x, var_0.x))))), !vec3<bool>(select(true, false, true), true, true))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -710f, 1026f)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -985f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -213f))))));
    var_1 = -(~u_input.c.x);
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 1u, u_input.e)), vec4<u32>(11958u, u_input.e, u_input.b, u_input.a.x), reverseBits(vec4<u32>(u_input.d, 0u, u_input.b, u_input.a.x))), vec4<u32>(_wgslsmith_mult_u32(130u, u_input.a.x), min(53932u, u_input.b), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 1u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(46071u, u_input.b, 4294967295u, 1u), vec4<u32>(u_input.b, 17723u, u_input.d, 0u)))), select(~u_input.e, 4294967295u, (firstLeadingBit(u_input.c.x) <= 0i) & true), _wgslsmith_add_u32(abs(1u), _wgslsmith_add_u32(u_input.b | 4294967295u, _wgslsmith_add_u32(u_input.d, u_input.e))) << (_wgslsmith_sub_u32(~u_input.d, u_input.b) % 32u), select(u_input.d, 1u, !func_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 11321i), Struct_5(vec3<i32>(2147483647i, u_input.c.x, -2147483647i), vec4<i32>(-2147483647i, 15559i, u_input.c.x, u_input.c.x)), var_0.x).b));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_2(var_0.xy, true, Struct_1(4622u, vec2<u32>(var_2.x, u_input.a.x), u_input.c.x), 1097f, Struct_1(46756u, u_input.a, u_input.c.x))), vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -108f, var_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -390f), -1743f)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-575f, var_0.x))), -246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-512f - -1000f) * var_0.x))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-605f - var_0.x), var_0.x)), _wgslsmith_f_op_f32(var_0.x * -277f)));
    let var_3 = Struct_5(vec3<i32>(u_input.c.x, u_input.c.x, abs(~u_input.c.x)) ^ _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<i32>(0i, u_input.c.x, u_input.c.x) & vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), max(vec3<i32>(1i, 20152i, -58843i), vec3<i32>(-2340i, 1i, 11227i)) & ~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), -vec4<i32>(-43148i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(30315i, -38750i, -44642i, 66744i)), vec4<i32>(-4837i, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(var_2.x, 66531u, 31963u, 4294967295u) % vec4<u32>(32u))), -2147483647i, _wgslsmith_div_i32(~50279i, -4349i ^ u_input.c.x)));
    let var_4 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), var_0.x), !(any(vec2<bool>(true, true)) & func_2(Struct_3(Struct_2(var_0.zz, true, Struct_1(u_input.a.x, vec2<u32>(1u, var_2.x), u_input.c.x), -906f, Struct_1(var_2.x, vec2<u32>(var_2.x, 1u), u_input.c.x))), Struct_5(var_3.a, vec4<i32>(-1i, var_3.b.x, u_input.c.x, 2147483647i)), Struct_4(Struct_3(Struct_2(vec2<f32>(-399f, var_0.x), true, Struct_1(11645u, vec2<u32>(4294967295u, 1u), var_3.a.x), 706f, Struct_1(var_2.x, vec2<u32>(var_2.x, 45334u), -1i))), vec2<bool>(true, true)), vec2<i32>(0i, -19491i)).x), func_1(var_3.b, Struct_5(~var_3.b.wyw, var_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(637f + 281f))).c, -632f, Struct_1(~(~var_2.x), u_input.a, ~41901i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(992f, var_0.x, true)), _wgslsmith_f_op_f32(exp2(var_0.x)), var_4.a.d))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.d), 1155f), _wgslsmith_f_op_f32(floor(1273f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-192f, 905f)))))))));
}


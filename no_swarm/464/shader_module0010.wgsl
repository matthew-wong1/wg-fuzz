struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(2327f + -1098f), 668f, _wgslsmith_f_op_f32(round(-1785f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(752f + -776f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1738f - 1124f)))) * -1947f));
    let var_1 = Struct_1(firstTrailingBit(reverseBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.c, arg_0.c), ~1u))), u_input.a, countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(9516u, 0u, arg_0.a)), vec3<u32>(arg_0.a, _wgslsmith_mult_u32(553u, arg_0.a), 70641u))), vec4<bool>(_wgslsmith_f_op_f32(sign(var_0.x)) != 909f, false, true, any(vec2<bool>(arg_0.d.x, arg_0.d.x))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), -676f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(491f))))) < _wgslsmith_f_op_f32(-1395f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x))))));
    var var_3 = var_1;
    var var_4 = Struct_1(0u, reverseBits(u_input.a), ~(_wgslsmith_mod_u32(_wgslsmith_div_u32(23261u, var_3.a), arg_0.c) >> (var_3.c % 32u)), var_3.d);
    return vec3<u32>(~1u, max(6006u, ~_wgslsmith_div_u32(22705u, arg_0.a) | 1u), firstTrailingBit((_wgslsmith_clamp_u32(1u, 0u, var_1.a) >> (~var_3.c % 32u)) ^ 7165u));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = Struct_1(32678u, ~2147483647i, ~arg_2.c, select(vec4<bool>(false, arg_3.d.x || false, !select(arg_3.d.x, true, false), arg_3.d.x), vec4<bool>(true, !(u_input.a != arg_3.b), arg_2.d.x, true), select(true, arg_3.a <= reverseBits(arg_2.a), !arg_2.d.x & true)));
    var var_2 = arg_0;
    var var_3 = func_3(var_1);
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -104f, 1381f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, 1245f, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0)))))));
    return ~vec4<u32>(arg_3.a, min(0u, max(var_3.x, 32882u)), max(1u, ~(~31797u)), arg_2.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = abs(arg_3 ^ arg_3);
    let var_1 = any(arg_1);
    var var_2 = ~(~(-19721i)) >> (var_0.x % 32u);
    var var_3 = vec2<bool>(true, arg_1.x);
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -248f, -1006f) + vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -330f, arg_2.x, -1566f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(691f, 312f, -941f, arg_2.x), vec4<f32>(-294f, arg_2.x, arg_2.x, arg_2.x)))))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c, arg_1.a, 34258u), vec3<u32>(arg_1.c, arg_1.a, 0u)), max(vec3<u32>(81338u, arg_1.a, arg_1.c), vec3<u32>(arg_1.c, 0u, 1u)), vec3<u32>(70191u, arg_1.c, 69973u))) | (abs(abs(vec3<u32>(arg_1.a, arg_1.a, 0u))) | vec3<u32>(arg_1.a, arg_1.c, countOneBits(arg_1.c))), arg_1.d, _wgslsmith_f_op_vec2_f32(-arg_0.xz), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.c, 11630u, 1u, 91487u), ~(vec4<u32>(6151u, arg_1.a, 15300u, arg_1.c) & vec4<u32>(arg_1.a, 1u, 4398u, arg_1.c)), select(vec4<u32>(10308u, arg_1.c, arg_1.a, arg_1.c), vec4<u32>(0u, arg_1.a, 14163u, arg_1.c), arg_1.d) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, arg_1.c, arg_1.a, arg_1.a), vec4<u32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)) % vec4<u32>(32u))) >> ((_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, arg_1.a, 9953u, arg_1.c), vec4<u32>(26507u, 9722u, arg_1.a, arg_1.a)), func_2(-810f, vec2<i32>(-13209i, arg_1.b), arg_1, arg_1)) & firstLeadingBit(~vec4<u32>(arg_1.c, 1u, 0u, 7636u))) % vec4<u32>(32u))));
    var_1 = _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(max(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0), arg_1.d.x))))));
    let var_2 = arg_1;
    var var_3 = var_2;
    return ~(~(~reverseBits(firstTrailingBit(vec4<u32>(0u, 26316u, var_2.a, 51369u)))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = -493f;
    let var_1 = 21460u;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1298f, -766f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, arg_1, arg_1), vec3<f32>(arg_1, var_0, arg_1)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1337f, var_0, -1195f))))))));
    var var_3 = vec4<bool>(true, arg_3.b != select(arg_3.b, -(~2147483647i), arg_3.d.x), arg_2.x, !(var_0 >= arg_1));
    var_3 = !arg_2;
    return ~(-1i);
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, arg_1.c), vec2<u32>(1u, arg_1.c) ^ ~vec2<u32>(1u, arg_1.a)), arg_0, ~(~(~min(80787u, arg_1.a))), vec4<bool>(!all(select(arg_1.d, arg_1.d, arg_1.d)), false, arg_1.d.x, arg_1.d.x));
    var var_1 = -_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, func_5(1u, 1000f, vec4<bool>(false, var_0.d.x, true, false), Struct_1(var_0.a, arg_0, var_0.a, vec4<bool>(arg_1.d.x, false, true, arg_1.d.x)))), -_wgslsmith_add_vec2_i32(~vec2<i32>(-43481i, -1i), -vec2<i32>(arg_0, 47588i)));
    var var_2 = any(!arg_1.d.xx);
    var_1 = vec2<i32>(var_1.x, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.b, 5954i), 56643i));
    let var_3 = arg_1;
    return -356f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = _wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_dot_vec4_u32(func_1(vec4<f32>(609f, 501f, -1783f, 1530f), Struct_1(1u, 32455i, 85791u, vec4<bool>(false, true, true, false))), vec4<u32>(1u, 23450u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-234f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(31874u, 4294967295u, 1u), vec4<bool>(false, true, false, true), vec2<f32>(1060f, 270f), vec4<u32>(7398u, 4294967295u, 1u, 0u))).x)), vec4<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), any(vec4<bool>(true, true, true, true)), false), Struct_1(~abs(41765u), u_input.a, ~4294967295u, vec4<bool>(true, true, any(vec4<bool>(true, true, false, false)), false))), Struct_1(35478u, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(79577i, -1i), vec2<i32>(1i, u_input.a)), vec2<i32>(57954i, 0i)), 4294967295u, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, true))))));
    let var_2 = Struct_1(~(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(68932u, 27352u)), _wgslsmith_mod_vec2_u32(vec2<u32>(11016u, 1814u), vec2<u32>(1u, 5333u)))), u_input.a ^ u_input.a, ~(~_wgslsmith_mod_u32(27517u, 4294967295u) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 995u, 48021u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 35927u)) << (1u % 32u)) % 32u)), select(!vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, false, true)), u_input.a > u_input.a, any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), true));
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 426f, -254f) * vec3<f32>(var_1, 816f, 1666f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1715f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, 1000f, var_1)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1233f, 643f, 514f) * vec3<f32>(var_1, -1544f, -493f))))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1145f, var_4.x, var_1, 901f))), Struct_1(var_3.a, -1i & var_3.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_3.a, 1u), _wgslsmith_add_u32(var_3.a, 85431u)), !(!vec4<bool>(true, true, true, var_2.d.x)))).x, -var_3.b, ~max(~var_3.c, var_3.c), var_2.c);
}


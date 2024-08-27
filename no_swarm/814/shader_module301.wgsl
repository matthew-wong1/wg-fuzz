struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = firstLeadingBit(arg_2.x | -13598i);
    var var_1 = ~vec2<u32>(~u_input.a.x, firstLeadingBit(u_input.a.x));
    let var_2 = Struct_1(firstTrailingBit(u_input.a.yx));
    var var_3 = u_input.a.yx;
    var_0 = abs(select(arg_2.x, -1i, false) & arg_0.x);
    return vec4<bool>(arg_1.x || all(!vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x, false, false);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_1(reverseBits(u_input.a.zw | select(u_input.a.yw, vec2<u32>(u_input.a.x, u_input.a.x), true)));
    var var_1 = vec2<u32>(var_0.a.x, firstLeadingBit(50430u));
    var_1 = abs(select(vec2<u32>(~u_input.a.x ^ ~1u, 4294967295u), u_input.a.wx, true));
    var var_2 = Struct_1(vec2<u32>(~_wgslsmith_mult_u32(var_0.a.x, var_1.x) << (var_1.x % 32u), _wgslsmith_div_u32(27453u, var_0.a.x)));
    var var_3 = Struct_1(vec2<u32>(u_input.a.x, countOneBits(_wgslsmith_clamp_u32(max(u_input.a.x, 4294967295u), 36066u ^ u_input.a.x, ~21860u))));
    return ~u_input.a.wyz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(firstTrailingBit(~max(arg_0.a.x, u_input.a.x)), ~(arg_0.a.x | arg_0.a.x), ((1u & arg_0.a.x) | 28683u) << (abs(~26407u) % 32u)) & _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a.yxx, reverseBits(~vec3<u32>(128110u, 1u, 8155u))), select(func_4(~(-3998i), func_3(vec2<i32>(8850i, -2147483647i), vec2<bool>(false, false), vec2<i32>(0i, 33853i), vec2<i32>(30293i, 1i))), ~(~vec3<u32>(arg_0.a.x, arg_1.a.x, arg_1.a.x)), true));
    var_0 = u_input.a.zyy;
    let var_1 = select(vec2<bool>(false, any(vec3<bool>(true, true, true))), vec2<bool>(false, true), vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))) || (~0u < _wgslsmith_sub_u32(0u, arg_1.a.x)), true));
    var_0 = ~reverseBits(~(~(u_input.a.wwx ^ vec3<u32>(var_0.x, 1u, u_input.a.x))));
    var_0 = select(u_input.a.zxw, u_input.a.xzy, vec3<bool>(true, true, !func_3(vec2<i32>(2147483647i, -2147483647i), var_1, vec2<i32>(0i, 6755i), vec2<i32>(-15445i, -8257i)).x)) ^ _wgslsmith_clamp_vec3_u32(u_input.a.xxx, _wgslsmith_sub_vec3_u32(u_input.a.zzy, vec3<u32>(51361u, arg_0.a.x, arg_0.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, arg_1.a.x)) | ~vec3<u32>(100689u, 67188u, arg_1.a.x), vec3<u32>(~(arg_1.a.x & var_0.x), _wgslsmith_clamp_u32(1u, firstLeadingBit(17202u), 1u), u_input.a.x));
    return Struct_1(~abs(select(select(arg_0.a, vec2<u32>(arg_1.a.x, arg_0.a.x), var_1), reverseBits(vec2<u32>(4294967295u, 1u)), select(var_1, var_1, var_1.x))));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = abs(u_input.a);
    let var_1 = 1313u;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-338f, -1707f, false)) - _wgslsmith_f_op_f32(trunc(230f))))), 237f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-521f)), 1f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -439f) - vec2<f32>(2473f, 1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1591f), vec2<f32>(-2300f, 1367f), true)) - vec2<f32>(-964f, 761f)))));
    let var_3 = firstTrailingBit(firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x) & u_input.a.xw, _wgslsmith_sub_vec2_u32(arg_2.a, vec2<u32>(4294967295u, arg_3.a.x)), select(vec2<u32>(1u, 4294967295u), arg_3.a, vec2<bool>(false, true))))));
    return 20297i <= arg_0.x;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(-(arg_2 & vec4<i32>(0i, arg_2.x, arg_2.x, arg_2.x)), firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.x, 0i, arg_2.x, arg_2.x), vec4<i32>(35391i, arg_2.x, 45889i, -2147483647i)))), select(!vec4<bool>(arg_0 & arg_0, !arg_3.x, true, arg_0), vec4<bool>(true, arg_3.x, arg_0, select(true, false, !arg_0)), !(!vec4<bool>(false, false, arg_0, arg_0)))).zy;
    var_0 = func_2(func_2(arg_1, Struct_1(~min(var_0.a, vec2<u32>(var_1.x, var_0.a.x)))), Struct_1(~var_1));
    let var_2 = Struct_1(var_1);
    var var_3 = ~(3905u >> (_wgslsmith_mult_u32(0u, var_2.a.x) % 32u)) | reverseBits(arg_1.a.x);
    return Struct_1(~select(var_1, _wgslsmith_mult_vec2_u32(arg_1.a, vec2<u32>(98797u, 4294967295u)), u_input.a.x == _wgslsmith_div_u32(u_input.a.x, 4294967295u)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(1722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) * -373f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-131f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(307f)) * -141f))))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(-324f))));
    return func_6(select(true, !func_5(vec3<i32>(1i, 1i, 1i), min(-13659i, -29976i), Struct_1(u_input.a.wx), func_2(Struct_1(u_input.a.yy), Struct_1(u_input.a.yz))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))), Struct_1(~u_input.a.xw), countOneBits(~vec4<i32>(-14878i, 31448i, 1i, -2147483647i)) >> (vec4<u32>(6583u, 107281u, u_input.a.x, firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 1u))) % vec4<u32>(32u)), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), func_3(vec2<i32>(1i, 1i), vec2<bool>(false, false), ~vec2<i32>(-16422i, 42547i), min(vec2<i32>(-1i, 8516i), vec2<i32>(23132i, 1i))).yyz)) || func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, 1i)) >> (u_input.a.wy % vec2<u32>(32u)), vec2<bool>(true, true == all(vec3<bool>(false, true, false))), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 23393i), vec2<i32>(22780i, -8699i)), ~_wgslsmith_add_vec2_i32(~vec2<i32>(2068i, -7736i), vec2<i32>(1i, 1i))).x;
    let var_2 = true;
    var var_3 = func_6(var_2, var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(45928i, select(-2147483647i, -46409i, true)), select(-1i >> (u_input.a.x % 32u), -1i, var_2), -6725i, -(~(-170i))), vec4<i32>(1i, 1i, 1i, 1i)), select(select(vec2<bool>(var_2, var_2), select(!vec2<bool>(var_2, false), !vec2<bool>(var_2, true), true), !vec2<bool>(var_2, var_2)), func_3(-vec2<i32>(1i, 1i), vec2<bool>(true, true), vec2<i32>(1i, 1i), reverseBits(vec2<i32>(-7491i, -51990i))).zx, true && !(var_2 && var_2)));
    var var_4 = ~firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(1i, -61688i), i32(-1i) * -16237i, -2147483647i, -21594i));
    var_3 = var_0;
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, -1534f, 700f)) - _wgslsmith_div_vec3_f32(vec3<f32>(409f, 484f, -1070f), vec3<f32>(310f, 471f, 625f)))))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(47370i, _wgslsmith_div_i32(var_4.x, var_4.x), var_4.x, var_4.x ^ 1i) & _wgslsmith_div_vec4_i32(~vec4<i32>(var_4.x, -2147483647i, var_4.x, var_4.x), vec4<i32>(var_4.x, 20888i, 1i, -2147483647i))) & _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_4.x, -2147483647i, 1i, var_4.x)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(-1250i, -2147483647i, var_4.x, -2147483647i), vec4<i32>(var_4.x, -1i, -2147483647i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, 3029i, 16779i, 47961i), vec4<i32>(var_4.x, var_4.x, -36703i, var_4.x))), vec4<i32>(-var_4.x, ~var_4.x, _wgslsmith_mod_i32(0i, var_4.x), _wgslsmith_div_i32(2147483647i, -10638i))), _wgslsmith_mod_vec3_i32(var_4.zwx, _wgslsmith_mult_vec3_i32(var_4.wzy, -var_4.zzx ^ vec3<i32>(0i, 27379i, 23575i))), vec4<u32>(~36597u, firstLeadingBit(var_3.a.x >> ((u_input.a.x ^ 83673u) % 32u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(51368u, var_3.a.x, 54480u), vec3<u32>(u_input.a.x, 17402u, u_input.a.x))), _wgslsmith_sub_u32(19702u, abs(var_0.a.x ^ var_3.a.x))), vec4<i32>(var_4.x, -2147483647i, ~select(-1i, var_4.x, var_0.a.x >= var_3.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_4.x, var_4.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_4.x, 24837i, -19501i), -var_4.yzz))));
}


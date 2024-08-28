struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    global0 = max(firstLeadingBit(vec3<i32>(global0.x, -global0.x, _wgslsmith_div_i32(global0.x, global0.x))), vec3<i32>(global0.x >> (1u % 32u), 0i, -global0.x) | (-vec3<i32>(global0.x, -2147483647i, -21731i) << (vec3<u32>(4294967295u, u_input.c, u_input.a.x) % vec3<u32>(32u)))) & vec3<i32>(15289i, ~(-26643i), global0.x);
    global0 = countOneBits(~vec3<i32>(i32(-1i) * -36139i, global0.x >> (4294967295u % 32u), global0.x) | vec3<i32>(countOneBits(global0.x ^ global0.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, global0.x, global0.x, 0i), max(vec4<i32>(40773i, -1i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, global0.x, 0i))), min(2147483647i, 1i)));
    global0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(abs(global0.x), global0.x, 0i ^ global0.x), vec3<i32>(_wgslsmith_dot_vec2_i32(select(global0.zx, global0.zy, true), vec2<i32>(global0.x, -50167i)), i32(-1i) * -1i, 0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 40652u), vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 66118u)) % 32u))), -vec3<i32>(~21959i, _wgslsmith_dot_vec2_i32(global0.zy, ~global0.zy), -31151i), -firstTrailingBit(countOneBits(vec3<i32>(0i, global0.x, -53949i))));
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global0.xx | global0.yx, global0.yx) & max(global0.x, -global0.x), 2147483647i, global0.x), _wgslsmith_div_vec3_i32(max(vec3<i32>(-41039i, 0i, 2147483647i), abs(vec3<i32>(-2147483647i, global0.x, 1i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -17798i, global0.x), vec3<i32>(-2147483647i, -2147483647i, 28345i))) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -56021i, -3421i, global0.x), vec4<i32>(-86234i, -4247i, global0.x, -1i)), ~global0.x, countOneBits(-11970i)));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(332f, -443f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f * 281f) - _wgslsmith_f_op_f32(step(-796f, 703f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(1117f - _wgslsmith_f_op_f32(select(-1164f, -256f, true)))), 107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f) - _wgslsmith_f_op_f32(max(-1615f, 1170f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, -502f, 525f, 1777f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2289f, -625f, 138f, 1064f))))))));
    return !(!select(vec3<bool>(true, true, any(vec4<bool>(false, false, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), global0.x > _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -4939i), vec4<i32>(global0.x, 2147483647i, global0.x, -46391i))));
}

fn func_2() -> i32 {
    var var_0 = ~(-14385i);
    var var_1 = u_input.b;
    let var_2 = Struct_3(_wgslsmith_add_vec4_i32(firstLeadingBit(max(vec4<i32>(global0.x, 2147483647i, -6537i, global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, 1i), vec4<i32>(-1i, 16926i, global0.x, global0.x)))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-48441i, -2683i, 2147483647i, global0.x), vec4<i32>(87320i, global0.x, 2147483647i, -1i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 16916i, 0i, global0.x), vec4<i32>(global0.x, -59613i, global0.x, global0.x)))), select(firstTrailingBit(global0.yy), global0.yx, false), _wgslsmith_f_op_f32(step(-168f, 1000f)), !func_3(), max(min(vec3<i32>(reverseBits(global0.x), _wgslsmith_div_i32(2147483647i, global0.x), -28515i << (0u % 32u)), -(~vec3<i32>(global0.x, -12921i, -17437i))), vec3<i32>(max(~(-47142i), global0.x), _wgslsmith_clamp_i32(~(-96027i), -23943i << (0u % 32u), ~2147483647i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0.x), vec2<i32>(global0.x, 2147483647i))))));
    var var_3 = Struct_4(var_2.c, Struct_1(func_3()), ~(~abs(vec2<i32>(1i, var_2.a.x))), _wgslsmith_mult_u32(var_1.x, var_1.x));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1863f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c), 465f)))), _wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(min(var_2.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.a)), _wgslsmith_f_op_f32(-158f - 654f)))))));
    return _wgslsmith_add_i32(-_wgslsmith_add_i32(countOneBits(var_3.c.x) & ~(-978i), -43i), 0i);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> f32 {
    global0 = vec3<i32>(33194i, 1i, reverseBits(-2147483647i));
    global0 = vec3<i32>(firstLeadingBit(~(-(~2147483647i))), -global0.x, ~57470i);
    let var_0 = !vec4<bool>(false, true, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), true);
    var var_1 = Struct_3(~(~firstTrailingBit(vec4<i32>(global0.x, global0.x, -1i, -2147483647i)) ^ max(~vec4<i32>(-2147483647i, 4848i, global0.x, global0.x), vec4<i32>(global0.x, 0i, -2147483647i, global0.x))), vec2<i32>(_wgslsmith_mult_i32(global0.x, global0.x), -9371i), -807f, select(var_0.wwy, var_0.yyz, !(!select(var_0.yyz, vec3<bool>(false, true, true), var_0.x))), vec3<i32>(func_2(), firstTrailingBit(_wgslsmith_mod_i32(global0.x & global0.x, abs(1i))), 0i));
    let var_2 = -13397i;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.c, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1151f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_2 {
    global0 = firstTrailingBit(abs(abs(~max(vec3<i32>(global0.x, 1i, -1i), vec3<i32>(arg_3, arg_1.x, arg_0.b.x)))));
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, 1039f, 610f, arg_0.a.x) - vec4<f32>(arg_0.a.x, 324f, arg_0.d, 1517f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(609f, arg_0.d, arg_0.a.x, arg_0.d), vec4<f32>(arg_0.a.x, 1193f, arg_0.a.x, 1836f)), vec4<f32>(-717f, 730f, 1093f, -779f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 2086f, -974f, 1304f))))));
    var_0 = arg_0.c;
    let var_2 = arg_0.c;
    return Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a, arg_0.a, arg_0.c.a.zz))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.d)))))), reverseBits(-global0.yx), Struct_1(arg_0.c.a), var_1.x, select(abs(-11573i), _wgslsmith_dot_vec2_i32(global0.xy, ~vec2<i32>(-1i, arg_3)) ^ -31747i, var_0.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_i32(firstTrailingBit(reverseBits(arg_0.e)), -17804i);
    var var_1 = arg_0.c.a.x;
    var_0 = arg_2.a.x;
    var_1 = any(vec4<bool>(all(vec4<bool>(any(vec2<bool>(false, true)), !arg_0.c.a.x, false, !arg_0.c.a.x)), true, true, true));
    let var_2 = !(!(-func_2() < -1i));
    return vec3<i32>(-4482i, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_2.a.x, -1i, 2147483647i), _wgslsmith_mod_i32(13657i, 1i)), arg_2.e.x), global0.x | ~(global0.x & 39452i)) | firstTrailingBit(-vec3<i32>(1i, ~global0.x, ~49635i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, false, true), false)), true, !(~u_input.d.x <= u_input.d.x), true);
    global0 = func_5(func_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.e, u_input.e, u_input.e, 20240u), 342f)), 1000f), _wgslsmith_add_vec2_i32(min(vec2<i32>(global0.x, -72421i), vec2<i32>(global0.x, global0.x)), global0.xy), Struct_1(vec3<bool>(var_0.x, var_0.x, false)), 1f, 1i), -select(global0.zx, -vec2<i32>(global0.x, -2147483647i), var_0.yy), var_0, 0i | (func_2() << (_wgslsmith_div_u32(83286u, u_input.c) % 32u))), Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f * 705f)))), func_4(func_4(Struct_2(vec2<f32>(359f, 753f), global0.yy, Struct_1(var_0.wwz), 228f, 1i), vec2<i32>(4104i, global0.x), !var_0, -global0.x), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(global0.yy, vec2<i32>(1958i, 33714i)), vec2<i32>(-2147483647i, -37734i)), var_0, _wgslsmith_mod_i32(1i, global0.x)).c), Struct_3(vec4<i32>(global0.x, -99602i, 25523i, -12958i), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 2147483647i), ~global0.xx) >> ((min(vec2<u32>(u_input.b.x, 1u), u_input.b) >> (select(vec2<u32>(u_input.d.x, u_input.b.x), u_input.b, var_0.wz) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -664f), vec3<bool>(select(var_0.x, true, var_0.x), any(!var_0.zzz), any(!vec4<bool>(var_0.x, var_0.x, false, true))), ~(~vec3<i32>(1i, global0.x, global0.x) & _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -49375i, -12648i), vec3<i32>(global0.x, global0.x, global0.x)))));
    var var_1 = Struct_1(!(!vec3<bool>(true, var_0.x & var_0.x, 1u >= u_input.c)));
    var_1 = Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, true));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1346f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1863f)))), all(select(vec3<bool>(false, var_0.x, true), var_0.xxz, vec3<bool>(var_0.x, true, true))))), vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.x, -2147483647i, global0.x), vec4<i32>(26790i, global0.x, global0.x, -11337i), vec4<i32>(global0.x, global0.x, -14756i, -2147483647i))), global0.x) << (min((u_input.d & vec2<u32>(61083u, u_input.e)) & u_input.a.xz, ~abs(vec2<u32>(0u, u_input.c))) % vec2<u32>(32u)), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(120f, 1401f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-123f, 322f))), min(-global0.xz, ~vec2<i32>(-22461i, 28401i)), func_4(Struct_2(vec2<f32>(-393f, -2089f), global0.yz, Struct_1(vec3<bool>(var_1.a.x, true, false)), 321f, 23590i), global0.yz, var_0, 1i).c, -1210f, max(global0.x, -82114i)), firstTrailingBit(global0.yx | (global0.yx & global0.zz)), var_0, global0.x).c, -1021f, 2147483647i);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2188f, _wgslsmith_f_op_f32(sign(762f)), var_2.a.x) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(618f, -166f, 1243f), vec3<f32>(-912f, var_2.d, 1000f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, var_2.d, var_2.d)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1120f, -130f, var_2.a.x))))));
    var var_4 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(max(~countOneBits(-43412i), -countOneBits(1i)), _wgslsmith_div_i32(global0.x, var_2.b.x), ~_wgslsmith_add_i32(func_5(Struct_2(var_3.zz, global0.xy, var_2.c, var_3.x, global0.x), Struct_5(var_3.x, var_2.c), Struct_3(vec4<i32>(global0.x, 2147483647i, -2147483647i, 19457i), var_2.b, var_3.x, var_2.c.a, vec3<i32>(1i, -1i, 1i))).x, 2147483647i)), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_mod_u32(u_input.c, 25703u), abs(u_input.d.x), 0u, max(abs(u_input.b.x), 1u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_2.a.x, -320f)) * vec4<f32>(var_3.x, var_3.x, 1000f, -850f)))))), global0.x, max(-1i, global0.x));
}


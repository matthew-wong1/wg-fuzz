struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = vec2<bool>(!(!all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 43771u, 59098u, 51880u)), firstTrailingBit(vec4<u32>(30880u, 36655u, 46928u, 27501u))) != 27244u);
    var_0 = select(vec2<bool>(var_0.x, true), vec2<bool>(all(vec3<bool>(var_0.x, !var_0.x, !var_0.x)), any(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, false, var_0.x, true), var_0.x)) | true), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, arg_2), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, arg_1), vec2<u32>(4294967295u, 1u))), abs(~vec2<u32>(arg_2, 59830u))), ~((vec2<u32>(arg_2, arg_1) >> (vec2<u32>(1u, 50902u) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(arg_1, 1u)) % vec2<u32>(32u))) | firstTrailingBit(vec2<u32>(arg_1, firstTrailingBit(arg_1))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 16219i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1i))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-271f + -427f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -825f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i))))) * 676f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1771f - _wgslsmith_f_op_f32(650f - -547f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-222f, -710f, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1082f)) - -872f))) - -1000f);
    let var_2 = -3952i;
    return Struct_2(Struct_1(min(vec3<i32>(~var_2, 63096i >> (arg_1 % 32u), max(0i, 0i)), (vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(18507i, var_2, u_input.a.x)) >> (~vec3<u32>(var_0.x, 9493u, 20926u) % vec3<u32>(32u))), firstTrailingBit(abs(-u_input.a))), Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_2, 11849i, 28331i), ~vec3<i32>(u_input.a.x, 53344i, -15318i)) >> (~(~vec3<u32>(arg_2, var_0.x, 12243u)) % vec3<u32>(32u)), u_input.a << (vec2<u32>(38182u, 47609u) % vec2<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, ~u_input.a.x & u_input.a.x, u_input.a.x, -47106i), -reverseBits(~vec4<i32>(-2147483647i, var_2, var_2, u_input.a.x)), -vec4<i32>(min(-1i, 2147483647i), var_2, u_input.a.x | -1i, abs(u_input.a.x))), Struct_1(-(select(vec3<i32>(var_2, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, var_2, 2147483647i), vec3<bool>(false, arg_0, arg_0)) & -vec3<i32>(u_input.a.x, u_input.a.x, 15906i)), u_input.a));
}

fn func_1() -> Struct_4 {
    var var_0 = ~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), reverseBits(1u));
    var_0 = ~firstTrailingBit(reverseBits(1u));
    var var_1 = func_2(!(!select(false, false, true)), ~reverseBits(_wgslsmith_mult_u32(4492u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 48479u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 72767u)))), ~(~1u));
    var var_2 = ~1u << (_wgslsmith_mod_u32(_wgslsmith_add_u32(select(~24713u, min(1616u, 6383u), select(true, false, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 28124u, 0u), vec3<u32>(1u, 1u, 1u))), min(_wgslsmith_add_u32(0u, ~18172u), min(_wgslsmith_div_u32(52219u, 4294967295u), ~1u))) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1053f, -382f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1659f, -1662f)))))));
    return Struct_4(~select(~select(0i, var_1.d.a.x, false), -2934i, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(858f, 776f, var_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -455f, var_3.x) - vec3<f32>(1101f, 1427f, 1000f)), any(vec2<bool>(true, false)))) + vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(637f + -426f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 998f, 146f)) + vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1560f, 1108f, var_3.x), vec3<f32>(var_3.x, 259f, 113f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_3.x, -1749f), vec3<f32>(var_3.x, -528f, 105f)))))), !select(vec3<bool>(true, true, select(true, false, true)), vec3<bool>(true, select(true, true, true), any(vec3<bool>(true, false, false))), true));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(arg_3.a, arg_3.a);
    let var_1 = ~abs(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(40685u, 30918u), 40189u, 1u));
    let var_2 = arg_0;
    let var_3 = Struct_2(arg_3, func_2(any(!(!vec2<bool>(true, arg_1.a.c.x))), 4294967295u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u << (var_1 % 32u), var_1))).a, ~_wgslsmith_mult_vec4_i32(max(firstLeadingBit(vec4<i32>(1i, 2147483647i, 1i, 84752i)), -vec4<i32>(-911i, arg_0, 1i, arg_3.b.x)), min(-vec4<i32>(-34i, -33727i, arg_3.b.x, arg_3.b.x), -vec4<i32>(-13105i, arg_3.a.x, arg_0, 4681i))), arg_3);
    var_0 = 1i;
    return Struct_1(vec3<i32>(reverseBits(0i), 0i, 28668i), vec2<i32>(arg_0, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(5373u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(508f + -816f), _wgslsmith_f_op_f32(1304f - 1008f), 1000f, _wgslsmith_f_op_f32(-599f - 659f))))), func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.a.x, -10428i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)) | (u_input.a.x ^ 0i), Struct_5(func_1()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1166f, -211f, 711f) * vec3<f32>(804f, -1086f, 1968f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, 906f, -1207f) - vec3<f32>(-220f, -1025f, -1947f))))), Struct_1(-vec3<i32>(-14156i, u_input.a.x, 27621i), _wgslsmith_add_vec2_i32(u_input.a, func_2(false, 1u, var_0).d.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(218f, -138f) - vec2<f32>(649f, -619f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(499f, -765f) + _wgslsmith_div_vec2_f32(vec2<f32>(1310f, -295f), vec2<f32>(-1585f, 433f)))), _wgslsmith_div_vec2_f32(func_1().b.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, 1000f) - vec2<f32>(-192f, 1141f)))))), ~reverseBits(vec3<u32>(reverseBits(var_0), var_0 >> (1u % 32u), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-444f, 719f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(871f, 278f), vec2<f32>(-1324f, -774f)) * vec2<f32>(-531f, -818f)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - -153f), 1f);
    let var_3 = func_2(true, _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 19464u), var_1.d.xx)), _wgslsmith_add_vec2_u32(vec2<u32>(1103u, var_0), select(vec2<u32>(var_0, var_1.d.x), vec2<u32>(12124u, var_1.d.x), false))) >> (0u % 32u), var_1.d.x);
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)))));
    let var_5 = var_3;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x);
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.x, -530f)))) + _wgslsmith_f_op_f32(-108f + 2096f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.e.x + -1914f), _wgslsmith_f_op_f32(min(557f, var_2.x)), _wgslsmith_f_op_f32(ceil(var_2.x)))))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_add_u32(var_0, 4294967295u)), (var_1.d >> (var_1.d % vec3<u32>(32u))) ^ vec3<u32>(4294967295u, 1u, 48462u)), min(_wgslsmith_add_vec3_u32(countOneBits(var_1.d), firstLeadingBit(vec3<u32>(4294967295u, var_1.d.x, var_0))), abs(~vec3<u32>(103377u, var_1.d.x, var_0)))), _wgslsmith_div_vec3_u32(min(~(~vec3<u32>(var_1.d.x, 33225u, 1u)), var_1.d), firstLeadingBit(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_0, 32007u, 0u)), var_1.d))));
}


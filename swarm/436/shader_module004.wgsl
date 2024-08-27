struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> vec2<u32> {
    let var_0 = Struct_1(vec3<i32>(-8577i, arg_0, _wgslsmith_div_i32(1i, select(-14670i, -2147483647i, false))) ^ select(vec3<i32>(i32(-1i) * -1i, ~16320i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_2), vec2<i32>(arg_2, -16778i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -1i), vec2<i32>(u_input.a.x, -37370i)), -arg_0, u_input.a.x), vec3<bool>(select(true, true, true), select(true, false, true), all(vec4<bool>(false, false, true, true)))), ((~vec4<u32>(29715u, u_input.b, 1u, u_input.b) << (~vec4<u32>(0u, u_input.b, 30782u, 0u) % vec4<u32>(32u))) ^ abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, 88865u, 4294967295u)))) ^ vec4<u32>(abs(~0u), ~u_input.b ^ ~u_input.b, min(38286u, 4091u), ~u_input.b), u_input.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1209f, arg_1.x, -585f, arg_1.x) * vec4<f32>(arg_1.x, 476f, arg_1.x, -496f)) - vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 584f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, -312f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, arg_1.x, -1049f, 116f) - vec4<f32>(1132f, -498f, 185f, arg_1.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-264f, arg_1.x, arg_1.x, -394f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1259f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 611f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, -158f, arg_1.x, -1648f)))))), true)));
    var var_1 = firstTrailingBit(~vec4<i32>(arg_2, var_0.a.x, -41203i, 22714i));
    return vec2<u32>(abs(2780u) >> (var_0.b.x % 32u), _wgslsmith_mult_u32(1u, u_input.b));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    var var_0 = Struct_1(arg_0.yyz, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, countOneBits(1u)), 50253u, arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), ~_wgslsmith_div_vec2_u32(vec2<u32>(15436u, arg_2), vec2<u32>(50374u, 3425u))), 0u, 1u), _wgslsmith_dot_vec2_u32(min(func_3(~2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(758f, -978f, -998f)), u_input.a.x), firstLeadingBit(firstTrailingBit(vec2<u32>(arg_2, 4294967295u)))), max(~vec2<u32>(u_input.b, arg_2) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, arg_2), vec2<u32>(68019u, arg_2)) % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(65823u), u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-416f, 129f, 383f, 2449f), vec4<f32>(918f, 587f, -1048f, 595f), vec4<bool>(true, arg_1.x, arg_1.x, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-360f, -408f, -2043f, -1202f), vec4<f32>(1024f, -376f, 394f, 1707f)))))))), vec4<f32>(_wgslsmith_f_op_f32(round(1500f)), 394f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f + -398f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) * _wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    var_0 = Struct_1(max(vec3<i32>(-6156i, -2147483647i, 1i) >> (vec3<u32>(var_0.c, _wgslsmith_dot_vec3_u32(var_0.b.yyy, vec3<u32>(var_0.c, var_0.b.x, 0u)), 4294967295u) % vec3<u32>(32u)), vec3<i32>(4694i, _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 1830i), u_input.a.x), arg_0.x)), select(abs(var_0.b), firstTrailingBit(min(var_0.b, var_0.b)) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 34858u, 4294967295u, var_0.b.x)), countOneBits(var_0.b)) % vec4<u32>(32u)), !arg_1.x || !any(arg_1)), arg_2, _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_div_f32(1119f, 1209f), _wgslsmith_f_op_f32(step(-121f, -307f)), 220f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 382f, var_0.d.x, var_0.d.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, 371f, -769f, var_0.d.x), var_0.e)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 663f, var_0.d.x, var_0.e.x))))) - var_0.d));
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x >> (1u % 32u), u_input.a.x), firstTrailingBit(u_input.a.x & _wgslsmith_dot_vec4_i32(arg_0, arg_0)), -33140i);
    var_0 = Struct_1(_wgslsmith_mod_vec3_i32(arg_0.ywz, -_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, 14240i, -2147483647i))), firstTrailingBit(_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(0u | arg_2, firstTrailingBit(arg_2), _wgslsmith_sub_u32(var_0.b.x, 28751u), arg_2 << (arg_2 % 32u)))), firstLeadingBit(1u), vec4<f32>(var_0.d.x, -776f, 527f, _wgslsmith_f_op_f32(597f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 217f))), var_0.e);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b | 5284u, _wgslsmith_div_u32(_wgslsmith_div_u32(41470u, max(74256u, 4294967295u)), u_input.b)), min(firstTrailingBit(min(vec2<u32>(u_input.b, 13489u), ~var_0.b.zy)), _wgslsmith_mod_vec2_u32(~countOneBits(var_0.b.xz), _wgslsmith_mult_vec2_u32(var_0.b.xx, vec2<u32>(u_input.b, 4294967295u)))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    var var_0 = func_2(-(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a.x), firstTrailingBit(u_input.a.x), u_input.a.x >> (58833u % 32u), i32(-1i) * -19129i) | ~(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), !(!vec4<bool>(any(vec2<bool>(false, false)), arg_0.x > -707f, true, true)), ~u_input.b);
    var_0 = countOneBits(~(~reverseBits(4294967295u) ^ func_2(~vec4<i32>(u_input.a.x, 21186i, u_input.a.x, 2147483647i), vec4<bool>(true, true, true, true), 91172u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1316f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    var var_2 = Struct_1(countOneBits(~(vec3<i32>(30404i, u_input.a.x, -2147483647i) & select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<bool>(true, false, false)))), reverseBits(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 40899u))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, ~1u, _wgslsmith_div_u32(u_input.b, 0u), countOneBits(u_input.b)), abs(vec4<u32>(u_input.b, 28927u, 0u, u_input.b)), min(select(vec4<u32>(9671u, 98607u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 66274u, 4294967295u), vec4<bool>(true, false, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, 85440u, 18032u), vec4<u32>(u_input.b, u_input.b, 41789u, u_input.b), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b)))), func_3(-u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 687f, -2209f) + vec3<f32>(arg_0.x, -642f, 994f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 818f), vec3<f32>(191f, -311f, arg_0.x))))), abs(-63665i)).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -2023f, arg_0.x, -1068f) - vec4<f32>(arg_0.x, 704f, arg_0.x, -1109f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(170f, arg_0.x, 1000f, arg_0.x) * vec4<f32>(arg_0.x, 801f, -1116f, arg_0.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(220f + arg_0.x), _wgslsmith_f_op_f32(round(1017f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-1000f + 760f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1127f, arg_0.x, -715f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 2211f, 2068f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, 559f, arg_0.x)))))));
    let var_3 = Struct_2(Struct_1(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(9781i, var_2.a.x, u_input.a.x), var_2.a, var_2.a)), reverseBits(vec4<u32>(1u, var_2.b.x, 117728u, var_2.b.x)) ^ ~abs(var_2.b), ~u_input.b, _wgslsmith_f_op_vec4_f32(select(var_2.d, vec4<f32>(-1000f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_2.e.x)), any(vec4<bool>(false, true, true, true)) != all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 757f, arg_0.x)))) * vec4<f32>(-1290f, _wgslsmith_f_op_f32(trunc(var_2.e.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_2.d.x)))), true, _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 2452i, -5251i, 33481i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, u_input.a.x, 2147483647i, var_2.a.x), vec4<i32>(var_2.a.x, u_input.a.x, var_2.a.x, var_2.a.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~0i, -1i, var_2.a.x, _wgslsmith_sub_i32(var_2.a.x, -2147483647i)), select(-vec4<i32>(-2147483647i, -2147483647i, 2147483647i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -14319i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), false), _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a.x, 1i, 18785i, -1i), vec4<i32>(23421i, 2147483647i, -14947i, -1i), vec4<bool>(true, true, false, false)), countOneBits(vec4<i32>(var_2.a.x, 17804i, var_2.a.x, var_2.a.x))))), Struct_1(((var_2.a << (vec3<u32>(var_2.c, 1u, 89406u) % vec3<u32>(32u))) << (select(var_2.b.wzz, var_2.b.zxy, true) % vec3<u32>(32u))) >> (var_2.b.yyw % vec3<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(var_2.b, var_2.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c, 0u, u_input.b, 1u), var_2.b)), firstLeadingBit(firstTrailingBit(0u) | 16458u), var_2.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.d - var_2.e), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -817f, 1405f, _wgslsmith_f_op_f32(round(arg_0.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(-1i, -u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, -1i) >> ((u_input.b << (u_input.b % 32u)) % 32u), ~(-2147483647i))), vec4<u32>(_wgslsmith_mod_u32(u_input.b, 6364u), u_input.b, 33229u, u_input.b), min(~select(1u, 0u, true), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 5133u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), firstTrailingBit(vec3<u32>(94735u, u_input.b, u_input.b))), ~(~vec3<u32>(u_input.b, 13979u, 104983u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-1948f)), _wgslsmith_div_f32(-1000f, -730f), -1000f, 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-1073f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec2<f32>(1008f, -1707f))), -932f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-767f, 274f) * -1073f), -193f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 889f) * _wgslsmith_f_op_f32(floor(-958f))), _wgslsmith_f_op_f32(step(-1287f, 760f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -777f))), -803f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2463f, _wgslsmith_f_op_f32(ceil(426f)), 1000f, _wgslsmith_f_op_f32(select(-1000f, 660f, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1451f, 1970f, -204f, 2246f)), vec4<f32>(2054f, -797f, 870f, 1579f))), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xwz, _wgslsmith_f_op_vec2_f32(var_0.d.xx + vec2<f32>(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.e.x)), var_0.e.x))));
}


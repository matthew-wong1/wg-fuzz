struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<u32> {
    global0 = array<vec4<bool>, 10>();
    let var_0 = !select(select(vec2<bool>(!arg_1.a.x, any(arg_1.a)), arg_1.a, !vec2<bool>(true, arg_1.a.x)), arg_1.a, all(vec4<bool>(all(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x)), !arg_1.a.x, arg_1.a.x, !arg_1.a.x)));
    var var_1 = select(0u << (firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, 4242u)) % 32u), arg_0, true) << (_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(103735u, arg_0, u_input.a.x, u_input.a.x)), ~vec4<u32>(1u, 0u, u_input.e.x, 1u) & _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, 1u, u_input.b.x) | vec4<u32>(4294967295u, u_input.b.x, arg_0, 9369u), vec4<u32>(arg_0, u_input.e.x, arg_0, u_input.a.x) & vec4<u32>(42618u, 0u, 4294967295u, arg_0))) % 32u);
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    return ~_wgslsmith_add_vec4_u32((~vec4<u32>(30010u, 4294967295u, 21203u, 13189u) | max(vec4<u32>(1u, arg_0, arg_0, 135581u), vec4<u32>(4294967295u, 28618u, u_input.e.x, arg_0))) | ~vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u), max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(arg_0, 1u, arg_0, u_input.b.x)), abs(abs(vec4<u32>(arg_0, arg_0, u_input.b.x, u_input.a.x)))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 10>();
    let var_0 = Struct_2(func_3(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(62996u, arg_2.x), vec2<u32>(4294967295u, arg_0)), vec2<u32>(u_input.e.x, arg_0)), Struct_3(vec2<bool>(true, true))), Struct_1(select(vec4<bool>(true, any(vec3<bool>(true, true, false)), select(false, false, false), any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), !(arg_0 != arg_1.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(46073u, arg_0, 81985u) >> (arg_1.xyz % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(u_input.e, u_input.e)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(1007f)), _wgslsmith_div_f32(998f, -300f), _wgslsmith_f_op_f32(ceil(343f)), _wgslsmith_f_op_f32(1057f + 1083f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(1924f - 327f)) - _wgslsmith_f_op_f32(f32(-1f) * -1414f)), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(arg_1.x)), arg_2.x, max(arg_2.x, arg_0))), _wgslsmith_clamp_vec3_i32(abs(u_input.c.xyw), -u_input.c.wwz, vec3<i32>(2147483647i, ~1i, 1i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(391f, 673f), 219f), vec2<f32>(-864f, _wgslsmith_f_op_f32(2470f * 607f)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1240f, -480f), vec2<f32>(_wgslsmith_f_op_f32(-1004f * 173f), _wgslsmith_f_op_f32(floor(1234f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1513f, 501f) + vec2<f32>(-280f, 792f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, -970f) + vec2<f32>(-761f, 690f)), true))) - vec2<f32>(-683f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(f32(-1f) * -295f)) * var_0.d.x));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x * var_0.b.c.x) + _wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -678f))));
    global0 = array<vec4<bool>, 10>();
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = 0u;
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    var var_1 = ~abs(~_wgslsmith_add_vec3_u32(select(vec3<u32>(arg_0.b, var_0, 89892u), vec3<u32>(arg_1.b, var_0, arg_2.x), arg_1.a.x), ~arg_2));
    var_1 = vec3<u32>(~((arg_1.e.x ^ 44030u) >> (~var_0 % 32u)), _wgslsmith_sub_u32(arg_1.e.x, reverseBits(~5767u)), func_3(16924u, Struct_3(select(vec2<bool>(arg_1.a.x, arg_1.a.x), vec2<bool>(true, true), arg_1.a.x))).x) & (reverseBits((arg_2 & vec3<u32>(1u, 20545u, arg_1.b)) & ~vec3<u32>(arg_2.x, var_0, 4294967295u)) & (arg_1.e >> (vec3<u32>(reverseBits(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e.x, 4294967295u, arg_1.e.x, 0u), vec4<u32>(7450u, 4294967295u, var_0, arg_0.b)), arg_0.e.x) % vec3<u32>(32u))));
    return Struct_2(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 96512u, var_0, 1u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 103601u, 3269u), vec4<u32>(22607u, var_1.x, 67690u, 1u)), vec4<u32>(1u, 17470u, var_1.x, _wgslsmith_dot_vec3_u32(arg_1.e, vec3<u32>(arg_2.x, var_0, var_1.x)))), Struct_1(select(!arg_1.a, select(vec4<bool>(false, true, arg_1.a.x, false), vec4<bool>(true, false, arg_1.a.x, true), func_2(arg_1.e.x, vec4<u32>(arg_2.x, 23040u, 8442u, 1u), arg_0.e.yy).a), ~arg_0.e.x > (arg_2.x & 69401u)), _wgslsmith_mult_u32(~min(u_input.a.x, 92958u), _wgslsmith_div_u32(func_2(1u, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), arg_0.e.yz).e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23135u, 4294967295u, arg_2.x), vec4<u32>(var_0, 78292u, var_1.x, 77150u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, arg_1.d, arg_1.d, 1101f) + vec4<f32>(arg_0.c.x, arg_0.c.x, -477f, arg_1.d))) + arg_1.c), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_div_f32(709f, arg_1.d)))), _wgslsmith_mod_vec3_u32((arg_1.e >> (vec3<u32>(37332u, arg_2.x, arg_0.b) % vec3<u32>(32u))) & arg_0.e, ~arg_1.e | ~vec3<u32>(1u, var_0, u_input.e.x))), vec3<i32>(firstTrailingBit(u_input.c.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(u_input.d.x), ~u_input.d.x), reverseBits(_wgslsmith_div_i32(u_input.c.x, u_input.d.x))), ~u_input.c.x | ~(~2147483647i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(303f, -1189f), arg_1.c.yw)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(arg_1.c.xw))))))), vec2<f32>(arg_0.d, 1349f));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = Struct_2(vec4<u32>(arg_0, firstLeadingBit(abs(arg_1.b.b)), ~abs(func_3(4294967295u, Struct_3(arg_1.b.a.xz)).x), arg_1.a.x), arg_1.b, _wgslsmith_clamp_vec3_i32(-select(vec3<i32>(u_input.c.x, arg_1.c.x, -28827i), vec3<i32>(27061i, -1i, -1i), vec3<bool>(false, false, arg_1.b.a.x)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.c.zwz, vec3<i32>(arg_1.c.x, u_input.d.x, 2147483647i), u_input.c.yyz)), firstTrailingBit(-vec3<i32>(u_input.c.x, u_input.d.x, u_input.d.x))) | u_input.c.xyw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.d, arg_1.b.c.x) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.d.x, arg_1.d.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.e - vec2<f32>(arg_1.b.c.x, arg_1.b.c.x)) - _wgslsmith_f_op_vec2_f32(arg_1.b.c.xx * vec2<f32>(680f, arg_1.e.x))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.c.zy))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), 1000f))));
    let var_1 = func_2(11012u, var_0.a, _wgslsmith_sub_vec2_u32(func_3(max(reverseBits(arg_1.a.x), firstLeadingBit(var_0.b.b)), Struct_3(vec2<bool>(false, true))).xw, ~(vec2<u32>(1u, u_input.b.x) & var_0.a.xw) | vec2<u32>(min(1605u, arg_0), arg_1.b.e.x))).a.x;
    global0 = array<vec4<bool>, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1245f)) + 837f)), _wgslsmith_f_op_f32(-615f * _wgslsmith_div_f32(var_0.b.d, -1041f)), -666f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-func_4(Struct_1(var_0.b.a, arg_0, vec4<f32>(-528f, -951f, -104f, 557f), 1000f, vec3<u32>(arg_0, 4294967295u, arg_0)), arg_1.b, vec3<u32>(arg_1.b.e.x, 38809u, 0u)).b.d), var_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2530f - -1784f) + _wgslsmith_f_op_f32(abs(1613f))), 1462f)))));
    let var_3 = !(all(select(vec3<bool>(false, arg_1.b.a.x, arg_1.b.a.x), arg_1.b.a.xzw, true)) == (_wgslsmith_f_op_f32(-var_0.e.x) <= var_0.e.x));
    return vec3<i32>(abs(-_wgslsmith_sub_i32(u_input.c.x, -2147483647i)) & ~32406i, ~0i, -33374i);
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global0 = array<vec4<bool>, 10>();
    var var_0 = false;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-453f, -208f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-224f, 1000f, arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-112f))))));
    let var_2 = select(arg_0, arg_0, true);
    let var_3 = Struct_2(countOneBits(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 31354u, u_input.e.x), vec4<u32>(u_input.a.x, 53306u, 0u, 8007u)), 0u << (u_input.e.x % 32u)), abs(~80470u), _wgslsmith_mod_u32(u_input.b.x, 1u), u_input.a.x)), Struct_1(select(select(select(vec4<bool>(false, arg_0.x, var_2.x, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, arg_0.x, var_2.x, var_2.x), false), global0[_wgslsmith_index_u32(1u, 10u)], vec4<bool>(true, !arg_0.x, true, true)), u_input.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(floor(-1157f)), _wgslsmith_f_op_f32(max(var_1, -1586f)), var_1) * vec4<f32>(var_1, var_1, -268f, 1373f)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 76024u, u_input.a.x), vec3<u32>(53454u, u_input.a.x, u_input.a.x)), u_input.b.x), vec3<u32>(u_input.b.x, u_input.a.x, 20236u) >> (u_input.a % vec3<u32>(32u)))), func_5(~1577u, func_4(func_2(~u_input.e.x, reverseBits(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.e.x)), _wgslsmith_sub_vec2_u32(u_input.e.zz, u_input.b)), func_2(abs(5222u), ~vec4<u32>(34285u, u_input.a.x, u_input.b.x, 50755u), firstLeadingBit(u_input.b)), func_2(63154u, vec4<u32>(u_input.b.x, 62284u, u_input.e.x, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.e.x), vec2<u32>(0u, 35541u))).e)), vec2<f32>(var_1, 136f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1271f))) - vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1256f, var_1) * vec2<f32>(var_1, var_1)))), select(var_2, func_4(Struct_1(vec4<bool>(false, true, var_2.x, arg_0.x), 1u, vec4<f32>(-1000f, var_1, -1178f, var_1), var_1, u_input.a), Struct_1(global0[_wgslsmith_index_u32(46858u, 10u)], u_input.b.x, vec4<f32>(-563f, 911f, -875f, 116f), 578f, u_input.a), u_input.e).b.a.wy, vec2<bool>(true, true))))));
    return Struct_3(func_4(var_3.b, func_4(func_2(4294967295u >> (var_3.b.b % 32u), _wgslsmith_div_vec4_u32(var_3.a, vec4<u32>(u_input.a.x, var_3.b.b, u_input.b.x, 69023u)), select(var_3.a.xw, var_3.b.e.xz, var_3.b.a.zw)), func_2(~1u, ~vec4<u32>(8395u, 0u, var_3.a.x, 26356u), ~vec2<u32>(42962u, u_input.a.x)), min(var_3.a.wxx, var_3.b.e)).b, select((var_3.a.xyw | vec3<u32>(u_input.a.x, 1u, u_input.b.x)) ^ ~vec3<u32>(34130u, var_3.b.e.x, u_input.b.x), min(vec3<u32>(var_3.b.e.x, u_input.b.x, 663u), ~var_3.b.e), !arg_0.x)).b.a.zw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global0[_wgslsmith_index_u32(1487u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false);
    var var_1 = Struct_3(select(!var_0.ww, !vec2<bool>(true, -1i == u_input.c.x), !var_0.xz));
    var var_2 = func_1(var_1.a);
    let var_3 = Struct_3(select(var_1.a, func_4(func_4(func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 111634u, vec4<f32>(554f, -1000f, -1644f, -398f), 1265f, vec3<u32>(14330u, u_input.a.x, 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(60426u, 10u)], 26433u, vec4<f32>(836f, -1175f, 1453f, 816f), -492f, vec3<u32>(1u, 1u, 2387u)), vec3<u32>(77574u, 4294967295u, u_input.b.x)).b, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.b.x, vec4<f32>(1578f, 379f, 1000f, 341f), -584f, u_input.a), u_input.e).b, func_4(func_2(u_input.e.x, vec4<u32>(1u, u_input.a.x, u_input.b.x, u_input.e.x), vec2<u32>(u_input.a.x, 54675u)), func_4(Struct_1(vec4<bool>(false, false, false, true), 19759u, vec4<f32>(771f, -221f, -461f, 1008f), -776f, vec3<u32>(u_input.b.x, u_input.a.x, 23678u)), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 12501u, vec4<f32>(485f, -449f, 668f, -1153f), 1423f, u_input.a), vec3<u32>(u_input.e.x, 27038u, 22005u)).b, vec3<u32>(u_input.b.x, u_input.a.x, u_input.e.x)).b, max(vec3<u32>(11560u, u_input.e.x, 30621u), u_input.a)).b.a.zw, func_2(0u, vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 38856u), vec3<u32>(1u, 1u, u_input.a.x)), u_input.e.x ^ 50736u), max(vec2<u32>(43727u, u_input.b.x), _wgslsmith_mod_vec2_u32(u_input.e.zy, vec2<u32>(u_input.b.x, 86074u)))).a.zy));
    let var_4 = func_3(84714u, Struct_3(select(vec2<bool>(true, false), var_3.a, select(var_0.zy, vec2<bool>(false, var_3.a.x), vec2<bool>(false, true))))).x;
    let var_5 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c.x, u_input.d.x, u_input.d.x, 52782i), vec4<i32>(u_input.d.x >> (var_4 % 32u), u_input.c.x, u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, 1i))), ~u_input.c) != -19525i;
    let var_6 = select(vec2<bool>(!func_4(func_2(u_input.e.x, vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 1u), vec2<u32>(var_4, u_input.b.x)), func_4(Struct_1(vec4<bool>(true, var_2.a.x, var_5, false), 4294967295u, vec4<f32>(-678f, -1331f, 2443f, 130f), -512f, u_input.e), Struct_1(vec4<bool>(false, var_0.x, false, true), var_4, vec4<f32>(-1000f, 1137f, 708f, -586f), -548f, u_input.e), vec3<u32>(1u, u_input.e.x, 61190u)).b, vec3<u32>(16561u, 4294967295u, 0u)).b.a.x, func_4(func_4(func_4(Struct_1(vec4<bool>(true, var_0.x, var_0.x, false), var_4, vec4<f32>(131f, -653f, 860f, -1000f), 1450f, vec3<u32>(u_input.a.x, 21942u, 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(var_4, 10u)], u_input.e.x, vec4<f32>(1000f, 1118f, 557f, -975f), 1000f, vec3<u32>(61756u, var_4, u_input.e.x)), vec3<u32>(u_input.e.x, var_4, var_4)).b, func_4(Struct_1(global0[_wgslsmith_index_u32(0u, 10u)], 4294967295u, vec4<f32>(-1121f, -1107f, -290f, -761f), -125f, u_input.a), Struct_1(global0[_wgslsmith_index_u32(22993u, 10u)], u_input.a.x, vec4<f32>(-1748f, -882f, -1897f, -929f), 1021f, u_input.a), u_input.e).b, ~u_input.e).b, func_4(func_4(Struct_1(vec4<bool>(var_3.a.x, var_1.a.x, true, var_3.a.x), 34271u, vec4<f32>(912f, -892f, -197f, -1104f), -883f, u_input.e), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 10u)], 37854u, vec4<f32>(-686f, 1832f, 1371f, 255f), 600f, vec3<u32>(124917u, 1u, 94645u)), u_input.e).b, func_4(Struct_1(vec4<bool>(true, false, true, var_2.a.x), var_4, vec4<f32>(1044f, -1482f, -720f, 1000f), -1000f, u_input.e), Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), 18630u, vec4<f32>(-1000f, 1467f, 430f, -1991f), -137f, u_input.e), vec3<u32>(var_4, u_input.a.x, var_4)).b, ~vec3<u32>(1u, u_input.b.x, 34141u)).b, _wgslsmith_div_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(u_input.e, u_input.e))).b.a.x), !func_1(func_4(Struct_1(vec4<bool>(false, true, false, true), var_4, vec4<f32>(1000f, 725f, 202f, 204f), -2031f, u_input.a), func_4(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 21650u, vec4<f32>(-175f, 1047f, 1499f, 1243f), -2253f, u_input.e), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 1u, vec4<f32>(-132f, 504f, 2280f, -1480f), -1647f, vec3<u32>(0u, 29132u, var_4)), vec3<u32>(0u, var_4, var_4)).b, ~u_input.a).b.a.wx).a, !var_0.xx);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(vec3<u32>(u_input.b.x, 1u, 4294967295u) << (_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(1u, 1u, 73082u)) % vec3<u32>(32u))), ~vec3<u32>(0u, 41318u, u_input.b.x), !select(!var_3.a.x, var_0.x, true)));
}


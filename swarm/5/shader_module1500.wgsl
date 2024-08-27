struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 714f), vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(step(1555f, -2298f)), _wgslsmith_f_op_f32(-794f + 1113f)), true)) * vec2<f32>(1f, 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-320f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(540f)), _wgslsmith_f_op_f32(764f + -1440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f + 908f)))), Struct_1(~(~10899u), ~_wgslsmith_clamp_vec2_u32(~global0.b, global0.b, vec2<u32>(u_input.a, u_input.a)), global0.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(743f - 797f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f * -1277f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(271f)))))));
    let var_1 = u_input.d.xw;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(var_0.a.x, var_0.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1000f) - var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423f * var_0.b) - _wgslsmith_f_op_f32(-var_0.b)), var_0.d.x))), Struct_1(u_input.a, ~(var_0.c.b | ~global0.b), all(!select(vec3<bool>(var_0.c.c, true, var_0.c.c), vec3<bool>(global0.c, true, global0.c), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-646f, _wgslsmith_f_op_f32(select(-1567f, var_0.b, true))))));
    let var_3 = Struct_1(4294967295u, var_0.c.b, !(var_2.c.b.x < ~0u));
    var var_4 = 1u;
    return reverseBits(min(min(vec3<i32>(var_1.x, var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-9183i, u_input.c.x, u_input.d.x, var_1.x), vec4<i32>(78877i, 1i, 2147483647i, u_input.c.x))), -u_input.c), firstLeadingBit(u_input.d.xyw)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = func_3();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-629f, arg_3.x), _wgslsmith_f_op_f32(-791f + _wgslsmith_f_op_f32(round(1010f)))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_3.x, arg_2.x)))), _wgslsmith_f_op_f32(-248f - _wgslsmith_f_op_f32(-arg_2.x)))), arg_3.x, Struct_1(arg_1.c.b.x, vec2<u32>(4294967295u, 111769u), arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-482f, -404f))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, var_1.d.x))), _wgslsmith_f_op_f32(trunc(var_1.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(-674f, -1583f))))), var_1.b, arg_1.c, vec2<f32>(_wgslsmith_f_op_f32(step(var_1.a.x, 197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_div_f32(-825f, var_1.b)))));
    var var_3 = !vec3<bool>(true, abs(52321i) == firstLeadingBit(u_input.c.x), arg_0.c);
    var var_4 = var_2;
    return arg_1.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(-311f, arg_0))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1087f, 330f) - vec2<f32>(arg_0, arg_0))), vec2<f32>(_wgslsmith_div_f32(arg_0, 162f), _wgslsmith_f_op_f32(-arg_0)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1222f, -253f))))), _wgslsmith_f_op_f32(ceil(-2227f)), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(165f, arg_0, global0.c)), _wgslsmith_f_op_f32(select(1940f, arg_0, arg_1.c)))), arg_0)));
    global0 = Struct_1(firstLeadingBit(4294967295u >> (~global0.b.x % 32u)), vec2<u32>(u_input.a, ~(~var_0.c.b.x)), var_0.c.c);
    var var_1 = arg_0;
    var var_2 = ~(~(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_1.a, 3206u, 4294967295u), vec3<u32>(global0.b.x, 4294967295u, 0u), vec3<bool>(arg_1.c, false, false)), ~vec3<u32>(1u, var_0.c.a, 84268u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4842u, arg_1.b.x), vec3<u32>(var_0.c.a, u_input.a, global0.a))) & _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 1u, global0.b.x), ~vec3<u32>(global0.a, var_0.c.a, 1u))));
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a ^ ~29358u, 19040u), 4294967295u), 0u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.d, _wgslsmith_f_op_vec2_f32(abs(var_0.a))))) - var_0.a), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.c)), func_2(Struct_1(~max(1u, 38032u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 10675u), vec2<u32>(0u, 45902u)), global0.c), Struct_3(global0.c, u_input.d, func_2(func_2(Struct_1(var_2.x, vec2<u32>(u_input.a, global0.a), var_0.c.c), Struct_3(false, vec4<i32>(u_input.c.x, u_input.d.x, 0i, -31444i), arg_1), vec4<f32>(-646f, 504f, -550f, arg_0), vec3<f32>(1042f, arg_0, -1316f)), Struct_3(false, u_input.d, Struct_1(var_3.x, vec2<u32>(var_3.x, 4294967295u), true)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, 2225f, -1110f, 1114f), vec4<f32>(arg_0, var_0.d.x, var_0.d.x, 1390f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(204f, -517f, -542f)))), vec4<f32>(var_0.a.x, 361f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0)))), 624f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1197f, var_0.a.x, arg_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, var_0.a.x, -1543f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, -281f, -805f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, vec2<bool>(false, arg_1.c)))) - var_0.a));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.d.x)) * _wgslsmith_div_f32(-473f, arg_2.a.x))))), arg_2.d.x, arg_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.d + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b, arg_2.d.x)))) - _wgslsmith_f_op_vec2_f32(max(arg_2.d, _wgslsmith_div_vec2_f32(arg_2.d, arg_2.a)))) + arg_2.d));
    global0 = Struct_1(select(4294967295u, _wgslsmith_add_u32(abs(var_0.c.b.x) >> (var_0.c.a % 32u), arg_0), func_4(-1369f, Struct_1(_wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(68195u, arg_2.c.b.x)), ~var_0.c.b, func_4(arg_2.b, Struct_1(0u, var_0.c.b, arg_2.c.c)).c.c)).c.c), vec2<u32>(select(global0.a & reverseBits(u_input.a), ~(~4294967295u), arg_2.c.c), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, global0.b.x), vec4<u32>(1u, 0u, 30370u, 0u)), _wgslsmith_div_u32(78144u, 44594u)) | countOneBits(global0.b.x)), all(arg_1.yzx));
    global0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, 1u), ~arg_2.c.b.x | ~1u), ~0u), arg_2.c.b, arg_3.x);
    global0 = Struct_1(abs(0u | global0.b.x), func_2(arg_2.c, Struct_3(~14373u <= (global0.b.x | global0.b.x), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, 0i), u_input.d), Struct_1(1u, vec2<u32>(50105u, 21691u), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, 590f, var_0.d.x, 1188f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, arg_2.d.x, arg_2.a.x, var_0.b))))), vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-368f + 973f)), func_4(_wgslsmith_f_op_f32(abs(arg_2.b)), Struct_1(arg_0, vec2<u32>(arg_0, arg_2.c.a), arg_1.x)).d.x)).b, select((u_input.b == (u_input.d.x | -2147483647i)) || !all(arg_1.yw), true, !(arg_1.x && var_0.c.c)));
    let var_1 = var_0.c.a;
    return ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * 1310f)), func_2(arg_2.c, Struct_3(var_0.c.c, vec4<i32>(-1i, u_input.c.x, 59336i, -16550i), var_0.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.d.x, -438f, arg_2.a.x), vec4<f32>(var_0.d.x, arg_2.b, -1304f, var_0.d.x), global0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, arg_2.d.x, 533f)))).c.a | 14947u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> bool {
    global0 = Struct_1(_wgslsmith_mod_u32(u_input.a, func_5(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), ~vec4<u32>(72425u, 6147u, global0.a, u_input.a)), select(vec4<bool>(false, false, global0.c, false), vec4<bool>(global0.c, false, global0.c, true), !vec4<bool>(global0.c, global0.c, true, true)), func_4(_wgslsmith_f_op_f32(-arg_2.x), func_2(Struct_1(45475u, global0.b, true), Struct_3(false, vec4<i32>(4244i, u_input.b, 13667i, u_input.b), Struct_1(u_input.a, vec2<u32>(0u, 1u), global0.c)), arg_0, vec3<f32>(467f, 915f, 537f))), vec2<bool>(true, true))), global0.b, true);
    global0 = Struct_1(_wgslsmith_add_u32(u_input.a | global0.a, ~(~(global0.a & 777u))), (((global0.b & vec2<u32>(11674u, u_input.a)) | _wgslsmith_mod_vec2_u32(global0.b, global0.b)) >> (vec2<u32>(~0u, _wgslsmith_mod_u32(77938u, 1u)) % vec2<u32>(32u))) ^ vec2<u32>(4294967295u ^ ~global0.a, 74193u), func_4(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(_wgslsmith_sub_u32(~0u, _wgslsmith_div_u32(4294967295u, global0.a)), ~func_4(arg_0.x, Struct_1(0u, vec2<u32>(global0.b.x, u_input.a), true)).c.b, global0.c)).c.c);
    let var_0 = firstLeadingBit(u_input.a);
    global0 = Struct_1(1u, reverseBits(~func_2(Struct_1(46258u, global0.b, false), Struct_3(global0.c, vec4<i32>(0i, -33829i, 37337i, -2147483647i), Struct_1(u_input.a, vec2<u32>(u_input.a, 4294967295u), global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, arg_2.x, -1826f, -538f)), arg_2.xyx).b), select(!func_4(arg_0.x, Struct_1(54540u, vec2<u32>(0u, 4294967295u), global0.c)).c.c, true, global0.c));
    global0 = Struct_1(_wgslsmith_mod_u32(1u, var_0) >> (countOneBits(global0.a) % 32u), vec2<u32>(1u, ~u_input.a), global0.c);
    return all(!select(select(select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(true, global0.c, false), vec3<bool>(global0.c, true, false)), vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(global0.c, true, global0.c), global0.c)), vec3<bool>(true, all(vec4<bool>(global0.c, false, global0.c, global0.c)), global0.c | global0.c), vec3<bool>(true, true, arg_0.x > arg_1.x)));
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_2 {
    global0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -616f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, 1473f, false)), arg_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(450f + arg_0))))))), Struct_1(~28301u | reverseBits(global0.a), ~select(global0.b, global0.b, global0.c) >> (vec2<u32>(~34294u, global0.b.x ^ 4294967295u) % vec2<u32>(32u)), func_2(Struct_1(u_input.a, global0.b, arg_1.x | true), Struct_3(5679u < global0.b.x, firstLeadingBit(u_input.d), Struct_1(4294967295u, vec2<u32>(u_input.a, 1u), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_2.x) * arg_2.yww)).c)).c;
    var var_0 = -2147483647i;
    var_0 = u_input.d.x;
    let var_1 = -u_input.c.zz;
    global0 = Struct_1(10618u, ~global0.b | vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(49115u, 1u, u_input.a), vec3<u32>(0u, global0.a, 1u)), vec3<u32>(7756u, u_input.a, u_input.a)), u_input.a), any(arg_1));
    return func_4(arg_0, func_4(_wgslsmith_f_op_f32(select(1000f, arg_2.x, arg_0 == _wgslsmith_f_op_f32(ceil(-386f)))), func_2(Struct_1(_wgslsmith_add_u32(u_input.a, 50592u), _wgslsmith_mult_vec2_u32(global0.b, global0.b), arg_1.x), Struct_3(!arg_1.x, reverseBits(vec4<i32>(u_input.d.x, var_1.x, var_1.x, -47131i)), func_4(arg_0, Struct_1(36654u, global0.b, false)).c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_0, -1039f, arg_0)), _wgslsmith_f_op_vec4_f32(round(arg_2)), true)), _wgslsmith_f_op_vec3_f32(arg_2.xzz + _wgslsmith_div_vec3_f32(arg_2.yww, vec3<f32>(arg_2.x, 367f, arg_0))))).c);
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_2 {
    global0 = arg_1.c;
    var var_0 = vec3<bool>(false, !global0.c, any(!select(!vec4<bool>(arg_1.c.c, global0.c, arg_1.c.c, global0.c), !vec4<bool>(global0.c, arg_1.c.c, arg_1.c.c, arg_1.c.c), all(vec4<bool>(arg_1.c.c, global0.c, arg_1.c.c, arg_1.c.c)))));
    let var_1 = arg_3.x;
    var var_2 = arg_3.wyx;
    var_2 = ~(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0.b.x, arg_1.c.b.x), var_1 | 1u), 4294967295u, ~arg_1.c.b.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(15343i, func_6(616f, vec2<bool>(!func_1(vec4<f32>(-1816f, -2318f, 1452f, 667f), vec3<f32>(1639f, 1000f, -1493f), vec4<f32>(-1173f, 548f, -1000f, 579f)), true), vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-1205f + -430f))), 824f, -282f, -182f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -195f)))))), reverseBits(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(u_input.a, 66412u, 0u, 14975u)), vec4<u32>(0u, 4294967295u, _wgslsmith_mult_u32(1u, 63368u), global0.a))));
    var var_1 = 485f;
    var_1 = _wgslsmith_f_op_f32(var_0.b * var_0.d.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-918f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-715f * -974f), true)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(min(var_0.d.x, 1505f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-685f + _wgslsmith_f_op_f32(f32(-1f) * -204f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-888f, var_0.a.x))))), var_0.b);
    let var_4 = true;
    let var_5 = func_4(-892f, Struct_1(global0.a, vec2<u32>(~52904u, abs(~global0.b.x)), var_0.c.c));
    var var_6 = -1414f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(116397u >> (~(37754u & var_5.c.b.x) % 32u), ~30795u, 0u), var_0.a.x, var_3.ywx, u_input.d.xyz);
}


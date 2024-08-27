struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4768u, u_input.d), vec3<u32>(arg_0, u_input.c, u_input.c)), countOneBits(vec3<u32>(u_input.c, 63718u, arg_0))), ~(~u_input.d)) & _wgslsmith_div_vec2_u32(abs(abs(firstLeadingBit(vec2<u32>(arg_0, 1u)))), _wgslsmith_mod_vec2_u32(abs(~vec2<u32>(arg_0, 1u)), vec2<u32>(1u, 6525u)));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0, var_0.x, 1098u), vec4<u32>(25160u, var_0.x, 0u, 4294967295u)), 1u), ~vec2<u32>(arg_0, var_0.x) >> (vec2<u32>(max(4294967295u, 0u), ~arg_0) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(5592u, var_0.x), vec2<u32>(u_input.d, var_0.x))) & vec2<u32>(4294967295u, ~u_input.c), ~(vec2<u32>(var_0.x, u_input.c) ^ ~vec2<u32>(17329u, var_0.x)));
    var var_1 = arg_1.x | arg_1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-407f, -343f, 818f, -908f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2435f, -152f, 620f, 632f), vec4<f32>(-192f, 1640f, -1672f, -1219f))))) - vec4<f32>(_wgslsmith_f_op_f32(min(-734f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)), _wgslsmith_f_op_f32(f32(-1f) * -2107f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f) * _wgslsmith_f_op_f32(992f - 136f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(473f - -1000f), _wgslsmith_f_op_f32(2081f + -506f), _wgslsmith_f_op_f32(floor(921f)), _wgslsmith_f_op_f32(-154f * -413f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-204f, 528f, 536f, 404f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-569f, 1958f, 828f, 636f) * vec4<f32>(653f, 1785f, 2266f, 1976f))))));
    var var_3 = ~_wgslsmith_sub_i32(~1i, -2147483647i);
    return vec4<bool>(true, true, any(arg_1), arg_1.x);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = ~(-(min(_wgslsmith_sub_vec3_i32(vec3<i32>(-2309i, -55011i, -1i), vec3<i32>(-11419i, -36926i, -1i)), ~vec3<i32>(1i, -2147483647i, 2147483647i)) << (select(arg_0.d.yxw & arg_0.d.zyw, arg_0.d.xwy, select(vec3<bool>(arg_0.c.a, arg_0.a.x, arg_0.a.x), arg_0.a.zwz, vec3<bool>(arg_0.a.x, arg_0.a.x, false))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.c.b.x, -1189f) + vec3<f32>(-1391f, -199f, 541f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-631f, arg_0.c.b.x, arg_0.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, arg_0.b, 790f)))));
    let var_2 = -66363i;
    var var_3 = -38874i;
    let var_4 = vec4<bool>(true, false, arg_0.a.x, !arg_0.a.x);
    return vec4<u32>(24792u, 1u, ~(~_wgslsmith_div_u32(88893u, u_input.c)), arg_0.d.x);
}

fn func_2() -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(711f, _wgslsmith_f_op_f32(-379f + -172f))) - 1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(999f, 1268f, false)))))))));
    let var_2 = Struct_2(!select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), false), -390f, Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, var_1), vec2<f32>(var_1, -1633f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(262f, var_1)))))), vec4<u32>(12365u, 63283u, 1u, _wgslsmith_mod_u32(abs(u_input.d), 46569u))), func_4(Struct_2(func_3(0u, vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(1588f, var_1)))), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1343f, 1208f)), ~vec4<u32>(u_input.b, 9191u, u_input.c, 0u)), abs(vec4<u32>(u_input.b, 23446u, u_input.d, 55492u)))));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.b.x, _wgslsmith_f_op_f32(ceil(var_2.b)), 1597f, _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1515f, var_1, 267f, -296f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 1227f, -781f, 497f), vec4<f32>(-164f, var_1, 2225f, var_2.c.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.b.x, 649f, var_2.b, 1057f) * vec4<f32>(1323f, 483f, var_2.b, var_1)))), var_2.a)));
    return true;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_2(!(!arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b)))), arg_0.c, vec4<u32>(~(~arg_0.d.x >> (64352u % 32u)), abs((arg_0.c.c.x >> (u_input.b % 32u)) >> (~u_input.d % 32u)), func_4(arg_0).x, 0u));
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f * 909f) + -524f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, -1346f)) * _wgslsmith_f_op_f32(max(var_0.b, -1000f))), true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(154f)))))));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -2147483647i, select(1i, _wgslsmith_mult_i32(0i, 28725i), !arg_0.c.a), _wgslsmith_mult_i32(max(6573i, -31152i), 8414i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(4345i, 73672i, -2147483647i, 0i), _wgslsmith_div_vec4_i32(~vec4<i32>(0i, -14689i, 2147483647i, 23487i), firstLeadingBit(vec4<i32>(-2147483647i, 4512i, 1383i, -23137i))))), ~(~max(0i, -28868i)), ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(~1i, 1i), _wgslsmith_clamp_i32(2147483647i << (arg_0.d.x % 32u), ~0i, -1i)));
    var var_4 = Struct_1(!((416f <= arg_0.b) && any(var_0.a.xz)) & true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(-267f)), _wgslsmith_f_op_f32(233f * var_0.c.b.x)))), ~vec4<u32>(~(var_0.c.c.x & u_input.d), ~func_4(arg_0).x, abs(firstTrailingBit(var_0.d.x)), ~(~36045u)));
    return 1f;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1857f - 1343f) * _wgslsmith_f_op_f32(f32(-1f) * -1327f)))))));
    var_0 = _wgslsmith_f_op_f32(func_5(Struct_2(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), func_2()), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), -821f, Struct_1(true, vec2<f32>(-254f, _wgslsmith_f_op_f32(f32(-1f) * -926f)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.d, 774u, u_input.c)), ~vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.d), select(vec4<u32>(4294967295u, u_input.c, 61806u, u_input.d), vec4<u32>(49414u, 4294967295u, 32638u, 0u), true))), min(vec4<u32>(u_input.a, 1u, u_input.c, 45581u) << (vec4<u32>(u_input.c, u_input.d, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 70802u, 38082u, 4294967295u), vec4<u32>(4139u, u_input.a, 1u, u_input.d))) | ~(vec4<u32>(u_input.b, 4294967295u, u_input.c, 0u) & vec4<u32>(20415u, u_input.d, u_input.a, 0u))), !vec3<bool>(!func_2(), all(vec3<bool>(true, true, true)), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, -1204f, -1363f)), vec3<f32>(698f, _wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(-433f - 487f)))), vec3<f32>(321f, -318f, _wgslsmith_f_op_f32(429f * _wgslsmith_f_op_f32(trunc(1588f)))))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(577f)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -2653f)))));
    let var_2 = Struct_2(vec4<bool>(select(true, all(vec4<bool>(false, false, false, false)), true), true, any(vec2<bool>(true, true)), true), var_1.x, Struct_1(-6531i < _wgslsmith_dot_vec2_i32(-arg_1, -vec2<i32>(-1878i, 2147483647i)), var_1.yy, reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(3978u, u_input.a, u_input.d, u_input.c), vec4<u32>(u_input.c, u_input.d, 0u, u_input.a)) >> ((vec4<u32>(4294967295u, u_input.b, u_input.d, u_input.a) & vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.b)) % vec4<u32>(32u)))), ~func_4(Struct_2(vec4<bool>(true, false, true, true), var_1.x, Struct_1(true, var_1.yx, vec4<u32>(1u, 16240u, u_input.c, 12619u)), vec4<u32>(32879u, u_input.d, u_input.c, 4294967295u))));
    return Struct_1(var_2.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.c.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.b.x, -1004f) * var_2.c.b)))), vec4<u32>(firstTrailingBit(u_input.c), abs(reverseBits(10059u | var_2.c.c.x)), ~u_input.d, _wgslsmith_div_u32(~1u, _wgslsmith_clamp_u32(var_2.d.x, 76270u, u_input.b))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false;
    var_0 = arg_0.a;
    let var_1 = abs(arg_0.c);
    var var_2 = func_1(2147483647i, abs(~_wgslsmith_add_vec2_i32(vec2<i32>(-14674i, 0i) >> (vec2<u32>(arg_0.c.x, u_input.b) % vec2<u32>(32u)), min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-34892i, -1i))))).c.x;
    let var_3 = Struct_2(!(!vec4<bool>(true, any(vec3<bool>(false, true, arg_0.a)), any(vec4<bool>(true, arg_0.a, false, arg_0.a)), true)), _wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), arg_0, vec4<u32>(~(~_wgslsmith_mult_u32(1u, 0u)), ~(~_wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, 4294967295u)), ~(~arg_0.c.x) >> (min(_wgslsmith_sub_u32(var_1.x, 1u), ~u_input.c) % 32u), arg_0.c.x));
    return func_1(0i, vec2<i32>(-5660i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-859f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-429f, -1000f, false)))))));
    var var_1 = func_6(func_1(i32(-1i) * -1i, max(~vec2<i32>(2147483647i, 60553i), ~vec2<i32>(1i, 1i))));
    var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) - var_1.b)) + var_0)), var_1.c);
    var var_2 = Struct_2(!select(!vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(true, var_1.c.x <= u_input.d, var_1.a, !var_1.a), vec4<bool>(func_1(-1i, vec2<i32>(-2147483647i, 45035i)).a, all(vec3<bool>(false, false, true)), true, var_1.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_div_f32(-777f, 1085f)), var_0.x)))), Struct_1(var_1.a == (u_input.b != ~u_input.c), var_1.b, min(vec4<u32>(_wgslsmith_add_u32(u_input.b, 3080u), var_1.c.x & u_input.d, var_1.c.x, u_input.c), select(~vec4<u32>(var_1.c.x, var_1.c.x, 4294967295u, 1u), ~vec4<u32>(32975u, u_input.d, var_1.c.x, 48198u), all(vec2<bool>(true, var_1.a))))), var_1.c);
    let var_3 = -9354i;
    var_2 = Struct_2(func_3(1u, select(vec3<bool>(var_2.c.a, false, false), vec3<bool>(true, true, true), var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-710f, var_2.c.b.x)))) + var_1.b.x), Struct_1(true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1030f, 135f), var_0)) + var_2.c.b))), ~(~_wgslsmith_mult_vec4_u32(var_2.c.c, vec4<u32>(var_2.d.x, 1u, var_2.d.x, 0u)))), min(abs(~firstLeadingBit(var_1.c)), select(var_1.c, var_2.d << (vec4<u32>(var_2.c.c.x, u_input.d, var_2.d.x, 4294967295u) % vec4<u32>(32u)), var_2.a) & _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, var_2.d.x, 4294967295u, 62132u), vec4<u32>(24988u, 0u, var_2.c.c.x, var_2.c.c.x), false), select(vec4<u32>(u_input.d, 4294967295u, 5707u, var_1.c.x), vec4<u32>(17271u, 4294967295u, var_2.d.x, 1u), var_2.a))));
    var var_4 = var_2.c.b;
    let var_5 = var_2.c;
    var var_6 = Struct_2(vec4<bool>(false, var_5.a, var_5.a, !var_1.a), func_6(var_2.c).b.x, Struct_1(select(false, true, func_1(var_3, _wgslsmith_mult_vec2_i32(vec2<i32>(var_3, var_3), vec2<i32>(-1206i, var_3))).a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))), vec4<u32>(var_2.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, var_2.c.c.x, 124041u), max(var_1.c.zwy, vec3<u32>(1u, u_input.b, var_1.c.x))), u_input.d, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.c.c.x, 36858u), ~var_5.c.x))), ~(~var_2.c.c >> (_wgslsmith_mod_vec4_u32(select(var_2.c.c, vec4<u32>(var_5.c.x, 1u, u_input.b, 30831u), false), abs(vec4<u32>(var_5.c.x, 26852u, var_2.d.x, var_1.c.x))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(~vec3<i32>(-2147483647i, var_3, var_3), abs(vec3<i32>(var_3, var_3, var_3)), select(var_6.a.wxz, var_2.a.zww, var_6.c.a)) >> (~var_2.c.c.xww % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c.b.x)))), func_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_3), vec2<i32>(1i, 2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 29866i), vec2<i32>(-2147483647i, var_3)), vec2<i32>(0i, -42797i))).b.x, 647f));
}


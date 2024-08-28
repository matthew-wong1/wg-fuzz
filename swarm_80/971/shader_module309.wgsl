struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = !(!arg_3.b.x) & any(vec2<bool>(all(select(vec4<bool>(false, true, false, arg_3.b.x), vec4<bool>(arg_3.b.x, arg_3.b.x, false, arg_3.b.x), false)), true));
    let var_1 = vec4<f32>(-314f, arg_3.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), arg_3.a.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -928f)) + arg_2.b.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)));
    var_0 = arg_3.b.x;
    var_0 = arg_3.b.x;
    var_0 = all(vec3<bool>(arg_3.b.x, arg_3.b.x, false & !arg_3.b.x)) & (var_1.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * 198f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.d.b.b.x)) - 427f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xzx - var_1.zxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.zww, vec3<f32>(-2841f, 208f, arg_3.d.a.b.x), arg_3.b.x)) - var_1.wzx)))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_3.yz, arg_3.zz, Struct_3(arg_2.c.b.x, Struct_2(arg_2.c, arg_2.d.a), Struct_2(Struct_1(0i, vec2<f32>(1484f, arg_2.d.b.b.x)), Struct_1(arg_2.d.a.a, arg_2.a.b.b)), arg_2.a), Struct_4(Struct_2(arg_2.d.a, arg_2.a.b), arg_2.b, Struct_1(arg_2.a.b.a, arg_2.d.b.b), arg_2.d, u_input.a))), vec3<f32>(arg_2.c.b.x, arg_2.d.b.b.x, -1000f)) - vec3<f32>(arg_2.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_f_op_f32(-969f - arg_2.a.b.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1919f * 1099f) + _wgslsmith_f_op_f32(arg_2.a.b.b.x - arg_2.a.a.b.x)), -102f, _wgslsmith_f_op_f32(f32(-1f) * -832f))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-724f, arg_2.a.a.b.x, -1882f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -754f, arg_2.c.b.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1194f, 722f, arg_2.a.a.b.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.d.a.b.x, arg_2.d.a.b.x, 392f))))))));
    let var_1 = (_wgslsmith_mult_i32(u_input.c, arg_3.x) >> (1u % 32u)) == 1i;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(arg_2.d.b.a, -38075i), arg_3.xy, Struct_3(var_0.x, Struct_2(Struct_1(-22156i, vec2<f32>(arg_2.a.a.b.x, -907f)), Struct_1(786i, vec2<f32>(var_0.x, var_0.x))), arg_2.a, Struct_2(arg_2.c, arg_2.a.b)), Struct_4(arg_2.a, arg_2.b, arg_2.c, Struct_2(arg_2.a.a, Struct_1(arg_3.x, vec2<f32>(var_0.x, -1513f))), 0u))).x))), any(vec3<bool>(arg_2.b.x, false, var_1)) & all(arg_2.b))), Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_3.x, 1i, u_input.e), vec4<i32>(u_input.c, u_input.c, 18221i, u_input.e)), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(arg_3.x, 15664i), arg_3.xy, Struct_3(arg_2.d.a.b.x, arg_2.a, Struct_2(Struct_1(-1i, vec2<f32>(var_0.x, arg_2.d.a.b.x)), arg_2.a.b), arg_2.a), Struct_4(arg_2.a, vec3<bool>(arg_2.b.x, false, true), Struct_1(1i, var_0.xx), arg_2.a, arg_1))).x, _wgslsmith_f_op_f32(-arg_2.d.a.b.x))), arg_2.c), arg_2.a, arg_2.d);
    let var_3 = ((705i >> (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(84565u, 104239u, u_input.b, arg_1)) % 32u)) >> ((arg_1 & 72055u) % 32u)) != -3052i;
    return Struct_3(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-887f + -530f), _wgslsmith_f_op_f32(var_0.x * 1333f), false))), Struct_2(arg_2.d.a, Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-395f, arg_2.a.b.b.x), vec2<f32>(var_2.a, -615f))))), var_2.d, Struct_2(Struct_1(~firstLeadingBit(-41281i), vec2<f32>(_wgslsmith_f_op_f32(step(-180f, var_0.x)), -964f)), arg_2.a.b));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = all(select(!vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(arg_1.d.b.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.c.b.b.x, arg_1.d.b.b.x)))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.d.a.b * arg_1.c.b.b);
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.c.b.b.x, var_1.x), _wgslsmith_div_f32(137f, var_1.x)));
    let var_2 = 1f;
    return Struct_1(_wgslsmith_div_i32(-25582i, ~arg_1.b.b.a), arg_1.d.a.b);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(func_2(true, _wgslsmith_clamp_u32(countOneBits(firstLeadingBit(u_input.b)), ~96136u, 106296u), Struct_4(Struct_2(Struct_1(arg_0.b.a, vec2<f32>(arg_0.b.b.x, 354f)), func_4(u_input.d.zy, Struct_3(1000f, Struct_2(Struct_1(u_input.e, arg_0.b.b), arg_0.a), Struct_2(Struct_1(35519i, vec2<f32>(-637f, arg_0.a.b.x)), arg_0.b), arg_0))), vec3<bool>(true, true, true), func_2(arg_0.b.a == arg_0.b.a, ~0u, Struct_4(arg_0, vec3<bool>(false, false, false), arg_0.b, arg_0, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.a, u_input.e, arg_0.a.a), vec3<i32>(-11425i, arg_0.b.a, 2147483647i))).c.a, func_2(true, ~u_input.b, Struct_4(arg_0, vec3<bool>(false, false, false), Struct_1(arg_0.a.a, vec2<f32>(-1649f, arg_0.b.b.x)), Struct_2(arg_0.a, arg_0.b), 4384u), vec3<i32>(-9446i, u_input.e, 39046i) | vec3<i32>(-2147483647i, -2147483647i, arg_0.a.a)).b, ~(~u_input.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a, arg_0.b.a, u_input.e, arg_0.a.a), ~vec4<i32>(33875i, arg_0.a.a, 30259i, arg_0.b.a)), u_input.c | _wgslsmith_mult_i32(u_input.e, arg_0.b.a), -(~u_input.e))).d, vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), true), arg_0.a, func_2(true, 52091u, Struct_4(Struct_2(func_4(vec2<u32>(u_input.b, u_input.a), Struct_3(143f, arg_0, Struct_2(Struct_1(arg_0.b.a, vec2<f32>(-358f, 1114f)), arg_0.b), Struct_2(Struct_1(u_input.c, arg_0.b.b), arg_0.a))), Struct_1(arg_0.a.a, arg_0.b.b)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), arg_0.a, Struct_2(func_2(true, u_input.a, Struct_4(arg_0, vec3<bool>(false, false, false), Struct_1(arg_0.b.a, vec2<f32>(arg_0.a.b.x, arg_0.a.b.x)), Struct_2(arg_0.a, Struct_1(arg_0.b.a, arg_0.b.b)), 43800u), vec3<i32>(0i, arg_0.a.a, 0i)).b.a, func_2(true, u_input.a, Struct_4(Struct_2(arg_0.a, Struct_1(-7750i, vec2<f32>(arg_0.b.b.x, -1000f))), vec3<bool>(false, false, true), Struct_1(u_input.e, vec2<f32>(-1383f, -532f)), Struct_2(arg_0.a, arg_0.a), u_input.a), vec3<i32>(2147483647i, -7822i, arg_0.a.a)).c.b), u_input.d.x), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.a, -5788i, u_input.c) >> (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.c, u_input.e, 18879i)), vec3<i32>(1i, u_input.e, arg_0.a.a))).b, ~44458u);
    let var_1 = -4659i;
    var_0 = Struct_4(var_0.d, select(vec3<bool>(true, all(select(vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(false, false, var_0.b.x, false))), false), var_0.b, var_0.b.x), var_0.d.b, var_0.d, ~var_0.e);
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(max(4294967295u ^ u_input.a, _wgslsmith_dot_vec2_u32(u_input.d.zz, select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.a), var_0.b.xy))), ~u_input.b, ~reverseBits(~33975u)), ~(select(u_input.d.xyx, vec3<u32>(var_0.e, var_0.e, var_0.e), true) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, var_0.e, var_0.e), u_input.d.xzz >> (vec3<u32>(1765u, 4294967295u, 1u) % vec3<u32>(32u)))));
    var_0 = Struct_4(func_2(false, ~_wgslsmith_clamp_u32(0u, 47200u, 26819u), Struct_4(var_0.d, !(!vec3<bool>(var_0.b.x, true, var_0.b.x)), arg_0.a, arg_0, var_2.x), ~(~vec3<i32>(arg_0.a.a, var_1, -2147483647i))).c, select(select(select(vec3<bool>(var_0.b.x, false, false), select(var_0.b, var_0.b, var_0.b), var_0.b), var_0.b, true), !select(select(vec3<bool>(true, true, var_0.b.x), var_0.b, false), var_0.b, vec3<bool>(true, false, var_0.b.x)), vec3<bool>(!(!var_0.b.x), true, !var_0.b.x)), func_4(abs(abs(var_2.zz >> (vec2<u32>(11866u, u_input.d.x) % vec2<u32>(32u)))), func_2(!var_0.b.x, 30552u, Struct_4(func_2(false, 30048u, Struct_4(Struct_2(var_0.d.a, Struct_1(-1i, var_0.a.a.b)), vec3<bool>(var_0.b.x, true, false), Struct_1(1i, vec2<f32>(257f, 606f)), arg_0, 4294967295u), vec3<i32>(var_1, -486i, 18101i)).d, var_0.b, Struct_1(var_0.a.b.a, vec2<f32>(539f, arg_0.b.b.x)), var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(47661u, 0u, var_2.x), vec3<u32>(u_input.a, 63901u, 0u))), -vec3<i32>(arg_0.a.a, -60196i, -47985i))), Struct_2(Struct_1(2147483647i, arg_0.b.b), Struct_1(-250i, _wgslsmith_f_op_vec2_f32(func_4(u_input.d.yz, Struct_3(656f, Struct_2(Struct_1(0i, vec2<f32>(-174f, var_0.a.b.b.x)), var_0.c), var_0.d, Struct_2(Struct_1(32325i, var_0.c.b), arg_0.b))).b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.d.a.b.x))))), ~var_2.x);
    return func_2(false, abs(_wgslsmith_add_u32(min(max(1u, var_2.x), firstLeadingBit(4294967295u)), 80575u)), Struct_4(var_0.a, var_0.b, func_4(~select(var_2.yx, var_2.zy, var_0.b.x), Struct_3(_wgslsmith_div_f32(var_0.c.b.x, 228f), func_2(true, var_2.x, Struct_4(Struct_2(Struct_1(var_1, arg_0.b.b), Struct_1(1i, vec2<f32>(966f, var_0.a.b.b.x))), var_0.b, arg_0.b, Struct_2(Struct_1(0i, arg_0.b.b), Struct_1(-27228i, arg_0.b.b)), 37531u), vec3<i32>(var_0.a.b.a, var_1, arg_0.a.a)).d, arg_0, var_0.d)), func_2(var_0.b.x & (u_input.d.x != u_input.a), var_2.x ^ 1u, Struct_4(var_0.d, !vec3<bool>(var_0.b.x, var_0.b.x, false), Struct_1(var_1, vec2<f32>(arg_0.a.b.x, var_0.a.b.b.x)), func_2(var_0.b.x, var_2.x, Struct_4(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, false), Struct_1(1i, vec2<f32>(arg_0.a.b.x, arg_0.b.b.x)), Struct_2(Struct_1(arg_0.b.a, arg_0.a.b), var_0.d.a), var_2.x), vec3<i32>(0i, arg_0.a.a, 1i)).d, min(u_input.a, 0u)), ~(~vec3<i32>(u_input.e, var_1, -36710i))).d, u_input.a), vec3<i32>(1i, select(firstTrailingBit(0i), u_input.e, true), 22619i) << (vec3<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.d.yzz, _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_2.x, 23103u), var_2)), _wgslsmith_div_u32(16859u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d))) % vec3<u32>(32u)));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_3.a));
    var var_1 = ~(~(select(vec2<u32>(u_input.d.x, 1u), u_input.d.xy, true) ^ vec2<u32>(1u, 99u))) >> ((firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u) << (u_input.d.wz % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(23132u, 18725u), vec2<u32>(u_input.d.x, 0u)), u_input.d.zw)) << ((vec2<u32>(~1u, _wgslsmith_add_u32(u_input.a, 3396u)) & reverseBits(u_input.d.wx)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-719f, arg_2.d.b.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1171f, arg_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(652f)), _wgslsmith_f_op_f32(-arg_2.b.b.b.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(arg_3.d.a.b))))))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, arg_0, arg_2.a.b.b.x, arg_2.d.a.b.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.c.b.x, 476f, arg_2.d.a.b.x, 808f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-748f, arg_2.c.b.x, 1353f, -387f) - vec4<f32>(arg_2.a.b.b.x, arg_0, arg_2.a.a.b.x, -269f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-920f, arg_0)), 726f, arg_2.c.b.x, _wgslsmith_f_op_f32(max(arg_0, -334f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -2595f, arg_2.a.a.b.x, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -146f, arg_0))), !(!vec4<bool>(false, arg_2.b.x, false, true))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_6(1502f, _wgslsmith_f_op_f32(1000f - 306f), func_5(Struct_2(Struct_1(1i, _wgslsmith_f_op_vec2_f32(arg_2.c.b + vec2<f32>(arg_0, var_0.x))), func_4(select(u_input.d.wx, u_input.d.zx, arg_2.b.x), func_2(arg_2.b.x, 1u, Struct_4(arg_2.d, vec3<bool>(true, arg_2.b.x, true), Struct_1(arg_3, vec2<f32>(arg_2.a.a.b.x, 1693f)), Struct_2(Struct_1(0i, arg_2.c.b), arg_2.c), u_input.b), arg_1)))), Struct_3(var_0.x, Struct_2(func_4(~vec2<u32>(u_input.a, arg_2.e), func_2(true, u_input.d.x, arg_2, arg_1)), Struct_1(~arg_2.c.a, _wgslsmith_f_op_vec2_f32(-var_0.wx))), arg_2.d, Struct_2(func_4(_wgslsmith_clamp_vec2_u32(u_input.d.zw, vec2<u32>(arg_2.e, 56039u), vec2<u32>(u_input.a, arg_2.e)), Struct_3(345f, Struct_2(Struct_1(-24316i, var_0.zx), Struct_1(-2147483647i, arg_2.a.a.b)), arg_2.d, arg_2.d)), arg_2.c))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -186f)), var_0.x, 385f, _wgslsmith_f_op_f32(ceil(762f))));
    let var_2 = arg_2.e;
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(func_2(all(arg_2.b.yx), 43759u, arg_2, vec3<i32>(arg_3, u_input.c, u_input.e)).b.b.b.x + -471f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f - 692f))), _wgslsmith_f_op_f32(floor(-1115f)))));
    return !(((_wgslsmith_dot_vec2_i32(arg_1.yx, arg_1.zx) & -1i) << (_wgslsmith_dot_vec4_u32(u_input.d, abs(u_input.d)) % 32u)) > arg_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, u_input.d.x), vec3<u32>(u_input.b, u_input.a, 51250u)) < firstLeadingBit(15914u)), select(vec3<bool>(any(vec2<bool>(true, false)), true, false), vec3<bool>(all(vec3<bool>(true, false, true)), true, true), ~u_input.e != firstLeadingBit(-30801i)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(-770f, vec3<i32>(u_input.c, u_input.c, u_input.e), Struct_4(Struct_2(Struct_1(10797i, vec2<f32>(-235f, 1000f)), Struct_1(-31869i, vec2<f32>(-504f, 1000f))), vec3<bool>(false, true, true), Struct_1(u_input.e, vec2<f32>(-605f, 345f)), Struct_2(Struct_1(u_input.c, vec2<f32>(1576f, -1541f)), Struct_1(u_input.c, vec2<f32>(-140f, 1000f))), 1u), u_input.e)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))));
    var var_1 = func_4(_wgslsmith_sub_vec2_u32(firstTrailingBit(abs(~u_input.d.zw)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a >> (u_input.d.x % 32u), 0u, u_input.d.x & 39736u), _wgslsmith_sub_u32(u_input.b | 4294967295u, ~u_input.d.x))), Struct_3(_wgslsmith_div_f32(588f, -394f), Struct_2(Struct_1(-1i | u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2258f, -1446f))), Struct_1(_wgslsmith_sub_i32(1i, u_input.c), vec2<f32>(305f, 1000f))), func_2(true, 4294967295u, Struct_4(func_2(true, 86687u, Struct_4(Struct_2(Struct_1(13597i, vec2<f32>(-355f, 934f)), Struct_1(51623i, vec2<f32>(1277f, 1029f))), vec3<bool>(true, false, false), Struct_1(u_input.e, vec2<f32>(232f, 1539f)), Struct_2(Struct_1(37162i, vec2<f32>(-2392f, -1032f)), Struct_1(u_input.c, vec2<f32>(950f, 135f))), 4294967295u), vec3<i32>(-2147483647i, -13212i, 1i)).b, vec3<bool>(true, true, true), func_4(u_input.d.yy, Struct_3(872f, Struct_2(Struct_1(u_input.e, vec2<f32>(268f, -1549f)), Struct_1(u_input.e, vec2<f32>(-1000f, -595f))), Struct_2(Struct_1(-5863i, vec2<f32>(226f, -399f)), Struct_1(1i, vec2<f32>(268f, -1272f))), Struct_2(Struct_1(u_input.c, vec2<f32>(158f, -134f)), Struct_1(-94088i, vec2<f32>(2195f, 269f))))), Struct_2(Struct_1(u_input.c, vec2<f32>(-234f, 482f)), Struct_1(-10118i, vec2<f32>(1423f, 1238f))), 39197u), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, -59190i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.c), vec3<i32>(u_input.c, u_input.c, -17957i)))).b, func_5(func_5(func_5(Struct_2(Struct_1(u_input.e, vec2<f32>(-640f, -1000f)), Struct_1(u_input.e, vec2<f32>(1821f, 956f)))).c).c).b));
    var var_2 = -vec2<i32>(2147483647i, 2147483647i);
    let var_3 = abs(firstTrailingBit(_wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(-1i, -13507i, 0i)), reverseBits(-vec3<i32>(var_2.x, 1i, -27003i)))));
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(-2147483647i, var_1.a), abs(u_input.e), var_1.a);
    var var_5 = var_4.xz;
    var var_6 = !(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<bool>(func_1(-1091f, vec3<i32>(41666i, var_3.x, 1i), Struct_4(Struct_2(Struct_1(var_3.x, var_1.b), Struct_1(31811i, var_1.b)), vec3<bool>(false, true, false), Struct_1(u_input.e, var_1.b), Struct_2(Struct_1(-1i, var_1.b), Struct_1(var_2.x, var_1.b)), 50195u), 8307i), false, any(vec4<bool>(true, true, false, true))), vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1124f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1295f, -1526f, var_1.b.x) - vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -695f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.x, -1428f, var_1.b.x, -1000f))))) + vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, var_6.x | var_6.x)), func_4(vec2<u32>(u_input.d.x, 4294967295u) & vec2<u32>(6279u, 28175u), Struct_3(var_1.b.x, Struct_2(Struct_1(80855i, vec2<f32>(-592f, var_1.b.x)), Struct_1(28605i, vec2<f32>(var_1.b.x, var_1.b.x))), Struct_2(Struct_1(0i, vec2<f32>(var_1.b.x, -536f)), Struct_1(var_2.x, var_1.b)), Struct_2(Struct_1(var_4.x, vec2<f32>(var_1.b.x, var_1.b.x)), Struct_1(var_3.x, var_1.b)))).b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(max(-1121f, var_1.b.x))), _wgslsmith_f_op_f32(func_4(u_input.d.xx, Struct_3(-812f, Struct_2(Struct_1(9211i, vec2<f32>(var_1.b.x, var_1.b.x)), Struct_1(-44533i, var_1.b)), Struct_2(Struct_1(31549i, var_1.b), Struct_1(2147483647i, var_1.b)), Struct_2(Struct_1(2147483647i, vec2<f32>(var_1.b.x, 1000f)), Struct_1(2147483647i, var_1.b)))).b.x * 617f))), var_2.x, u_input.d.xy, var_1.b);
}


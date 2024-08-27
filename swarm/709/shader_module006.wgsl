struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    let var_0 = u_input.b | _wgslsmith_mult_vec3_u32(countOneBits(u_input.b), ~u_input.c.wwy);
    var var_1 = Struct_1(var_0.x, -1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2011f)), _wgslsmith_f_op_f32(abs(1264f)))) + _wgslsmith_f_op_f32(-930f + _wgslsmith_f_op_f32(trunc(221f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(sign(579f))), _wgslsmith_f_op_f32(max(-263f, _wgslsmith_div_f32(1596f, -401f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-471f)), _wgslsmith_div_f32(-401f, 662f), 4294967295u > var_0.x))))), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 17134u, 37631u), vec3<u32>(var_0.x, var_0.x, 1u)) < var_0.x, all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true))));
    var var_2 = Struct_1(reverseBits(~(_wgslsmith_mult_u32(83507u, 12469u) >> (var_0.x % 32u))), select(var_1.b, 39114i, any(!vec4<bool>(false, true, var_1.d.x, true)) && !all(vec3<bool>(var_1.d.x, var_1.d.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(292f, -358f, 1110f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, 538f) * var_1.c), var_1.c)))), var_1.d);
    var var_3 = Struct_3(reverseBits(reverseBits(reverseBits(firstTrailingBit(u_input.c)))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.a, 1u, firstTrailingBit(var_0.x), _wgslsmith_mod_u32(24244u, 27433u)), vec4<u32>(13220u, var_1.a, 0u, var_1.a) & firstLeadingBit(vec4<u32>(var_2.a, var_1.a, 16228u, var_2.a))), firstTrailingBit(-1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(797f, var_1.c.x, 734f)) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(ceil(-1131f)), -1419f)), select(select(select(var_1.d, vec2<bool>(var_1.d.x, true), var_2.d.x), var_2.d, false), select(vec2<bool>(true, true), vec2<bool>(true, var_1.d.x), !vec2<bool>(false, var_1.d.x)), true)), Struct_2(var_2.d.x, Struct_1(var_2.a, var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(663f, -1463f, -1000f)))), vec2<bool>(var_1.c.x < var_2.c.x, any(vec2<bool>(true, var_1.d.x))))), var_2.b);
    let var_4 = _wgslsmith_f_op_f32(var_2.c.x - var_1.c.x);
    return !(!var_1.d.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_1(max(arg_1.a >> (34527u % 32u), ~_wgslsmith_sub_u32(u_input.c.x, 3383u) >> (countOneBits(_wgslsmith_div_u32(4957u, u_input.c.x)) % 32u)), arg_1.b, vec3<f32>(782f, _wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x), select(vec2<bool>(all(!arg_1.d), ~(-2147483647i) > arg_2.x), !arg_0, select(select(select(arg_1.d, vec2<bool>(false, arg_1.d.x), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(arg_0.x, false), arg_1.d, arg_0)), !arg_1.d, !arg_1.d)));
    var var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(340f, arg_1.c.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1156f - arg_1.c.x))));
    let var_3 = Struct_2(select(false, var_0.d.x, arg_1.d.x), Struct_1(_wgslsmith_mult_u32(~(~4294967295u), firstTrailingBit(arg_1.a)), -(~arg_2.x), vec3<f32>(var_0.c.x, -568f, arg_1.c.x), var_0.d));
    let var_4 = abs(4294967295u);
    return min(1u, ~29645u);
}

fn func_2() -> f32 {
    let var_0 = func_4(vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), func_3())), -652f < _wgslsmith_f_op_f32(round(959f))), Struct_1(u_input.c.x, i32(-1i) * -_wgslsmith_add_i32(-7665i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1063f, -462f, 1000f))), vec2<bool>(true, true)), firstTrailingBit(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-32131i, 25504i, -39744i)), max(vec3<i32>(6569i, 37943i, -25231i), vec3<i32>(1i, -2147483647i, -2147483647i)))) & countOneBits(~vec3<i32>(1i, 1i, 1i)));
    var var_1 = u_input.c.zx << (vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(16977u, var_0) ^ u_input.b.xy, u_input.b.yy & vec2<u32>(37651u, 38606u)), 0u) % vec2<u32>(32u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(-1509f)) < -635f, Struct_1(var_1.x, firstTrailingBit(-(~(-23271i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1132f, -713f, 262f) - vec3<f32>(-1147f, 360f, 455f))))), !vec2<bool>(true, select(true, true, false))));
    var var_3 = Struct_2(!select(!var_2.b.d.x, var_2.a, false), Struct_1(~select(var_2.b.a, 3710u, var_2.a), var_2.b.b, vec3<f32>(var_2.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x))), !var_2.b.d));
    return _wgslsmith_f_op_f32(round(-782f));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(499f + _wgslsmith_f_op_f32(1572f - arg_2)) + -782f), _wgslsmith_div_f32(-961f, _wgslsmith_f_op_f32(f32(-1f) * -1212f)), _wgslsmith_f_op_f32(-arg_2))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 - -164f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))), arg_1)) + -185f));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * arg_2), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(681f * 317f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(abs(-129f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, var_0.x) - _wgslsmith_f_op_f32(abs(-638f))))), false));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(var_1.wwx));
    let var_3 = Struct_2(any(vec4<bool>(any(!vec3<bool>(true, arg_0.x, arg_1)), any(select(vec2<bool>(true, true), arg_0.zx, arg_0.xy)), !arg_0.x, false)), Struct_1(~(~4294967295u), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_2.x, var_0.x) + vec3<f32>(var_0.x, var_1.x, 515f)) * vec3<f32>(var_0.x, -842f, -211f))), !(!select(vec2<bool>(arg_1, arg_1), arg_0.zy, false))));
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = arg_0.b.d;
    var var_1 = u_input.b;
    let var_2 = vec3<i32>(arg_1.c.b.b, arg_0.b.b, arg_0.b.b);
    var_0 = vec2<bool>(var_0.x, true);
    let var_3 = Struct_3(firstTrailingBit(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(arg_1.a, u_input.c), min(vec4<u32>(4294967295u, arg_0.b.a, u_input.b.x, 36627u), firstTrailingBit(u_input.c)))), Struct_1(_wgslsmith_div_u32(4294967295u, ~u_input.c.x), max(-15625i, arg_0.b.b) | _wgslsmith_mult_i32(~var_2.x, _wgslsmith_mod_i32(var_2.x, 31112i)), _wgslsmith_f_op_vec3_f32(select(arg_0.b.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.b.c)) - arg_1.b.c), arg_1.b.d.x)), !vec2<bool>(true, !arg_1.b.d.x)), arg_1.c, ~1i);
    return -min(-(~vec4<i32>(-76968i, 1i, 1i, arg_1.b.b)), ~vec4<i32>(-1i, var_2.x, -2147483647i, 1i) | vec4<i32>(-19070i, -2147483647i, var_3.c.b.b, var_3.d)) ^ _wgslsmith_mult_vec4_i32(~(-(vec4<i32>(arg_0.b.b, var_2.x, var_3.c.b.b, 41072i) ^ vec4<i32>(-1i, -2147483647i, 2147483647i, 18131i))), vec4<i32>(0i, arg_1.d, -(~var_2.x), var_3.c.b.b));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(all(!arg_0.b.d), func_1(vec3<bool>(func_1(vec3<bool>(false, arg_3, arg_1.d.x), true, arg_1.c.x).b.a <= func_4(arg_1.d, arg_1, arg_2.wwz), arg_1.d.x, true), !arg_3, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.c.x, arg_0.b.c.x)), arg_1.c.x), arg_1.c.x)).b);
    let var_1 = ~(~(-var_0.b.b) & arg_2.x);
    let var_2 = arg_0.b.b << (func_4(var_0.b.d, func_1(vec3<bool>(arg_0.a, !arg_1.d.x, func_3()), true, _wgslsmith_f_op_f32(-func_1(vec3<bool>(false, arg_3, arg_0.b.d.x), arg_0.b.d.x, var_0.b.c.x).b.c.x)).b, min(arg_2.zwy << (u_input.b % vec3<u32>(32u)), -arg_2.xzz)) % 32u);
    var var_3 = arg_1.c.x;
    var_3 = _wgslsmith_f_op_f32(sign(577f));
    return var_0.b;
}

fn func_7(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2.c.x;
    let var_1 = u_input.a;
    let var_2 = arg_2;
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.yx * vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -1721f))))));
    return Struct_2(_wgslsmith_f_op_f32(abs(-1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-790f, var_2.c.x) - _wgslsmith_f_op_f32(max(710f, arg_2.c.x)))), func_6(Struct_2(true, func_6(Struct_2(false, Struct_1(4294967295u, var_2.b, var_2.c, var_2.d)), Struct_1(u_input.c.x, var_2.b, arg_1.www, var_2.d), -vec4<i32>(5266i, -1i, -2147483647i, -1i), var_2.d.x)), Struct_1(arg_2.a, _wgslsmith_mod_i32(min(-2147483647i, 2147483647i), func_6(Struct_2(true, Struct_1(var_1, arg_2.b, arg_1.zyw, vec2<bool>(true, true))), Struct_1(100999u, arg_0, vec3<f32>(arg_1.x, arg_2.c.x, arg_2.c.x), vec2<bool>(true, var_2.d.x)), vec4<i32>(1i, arg_2.b, arg_0, 2147483647i), true).b), _wgslsmith_f_op_vec3_f32(var_2.c - vec3<f32>(arg_1.x, var_0, arg_1.x)), var_2.d), _wgslsmith_add_vec4_i32(-(~vec4<i32>(28023i, arg_2.b, arg_2.b, arg_2.b)), countOneBits(vec4<i32>(0i, arg_2.b, -2147483647i, 16396i))), all(!(!vec3<bool>(var_2.d.x, var_2.d.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1135f;
    let var_1 = ~(~u_input.a);
    var_0 = _wgslsmith_f_op_f32(floor(115f));
    var var_2 = func_7(~(~reverseBits(~(-1i))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1084f, -800f, 964f, -1460f))), _wgslsmith_div_vec4_f32(vec4<f32>(1345f, -307f, -427f, -181f), vec4<f32>(-736f, 184f, -488f, 241f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, -132f, -1173f, 280f) + vec4<f32>(-1069f, -485f, 1928f, -1546f)))), vec4<bool>(true, true, any(vec2<bool>(true, false)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 763f, -479f, 461f))))))), func_6(Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(2466u << (0u % 32u), 2147483647i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1177f, -2007f, 630f))), vec2<bool>(true, true))), Struct_1(firstTrailingBit(1u), ~2147483647i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1309f, 2345f, -1311f))), vec2<bool>(true, true)), func_5(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), false, _wgslsmith_f_op_f32(ceil(-510f))), Struct_3(~u_input.c, func_1(vec3<bool>(false, false, true), false, 1363f).b, func_1(vec3<bool>(false, true, false), true, -2262f), -2147483647i)), true));
    var_2 = Struct_2(true, func_7(-1i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(185f, 1f, _wgslsmith_f_op_f32(round(942f)), 1f))), Struct_1(var_1, -55860i, vec3<f32>(_wgslsmith_f_op_f32(round(1218f)), var_2.b.c.x, -1212f), vec2<bool>(var_2.b.d.x, !var_2.a))).b);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_6(func_1(vec3<bool>(false, var_2.b.d.x, var_2.b.d.x), var_2.b.d.x, 740f), func_7(var_2.b.b, vec4<f32>(-242f, -500f, var_2.b.c.x, var_2.b.c.x), var_2.b).b, _wgslsmith_mod_vec4_i32(vec4<i32>(-4962i, var_2.b.b, 1i, var_2.b.b), vec4<i32>(1i, -6388i, 0i, var_2.b.b)), var_2.b.d.x).c.x, var_2.b.c.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.b.c.x)), _wgslsmith_f_op_f32(-var_2.b.c.x))), 1371f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.c.x)) - var_2.b.c.x));
    var_2 = Struct_2(!(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.xx), u_input.c.yy) < _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(u_input.a, var_2.b.a))), func_7(var_2.b.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(875f, 1556f, 401f, var_2.b.c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.x, 275f, var_2.b.c.x, 1463f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.x, var_2.b.c.x, var_2.b.c.x, var_2.b.c.x)) * vec4<f32>(var_2.b.c.x, -1087f, 640f, -407f)))), Struct_1(~0u, -1i, vec3<f32>(var_2.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(var_2.b.c.x * -1519f)), var_2.b.d)).b);
    var var_3 = reverseBits(reverseBits(countOneBits((vec2<i32>(-2147483647i, var_2.b.b) >> (vec2<u32>(4294967295u, var_1) % vec2<u32>(32u))) ^ vec2<i32>(21726i, 1i))));
    var var_4 = var_2.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1490f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.c.x + var_2.b.c.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b.c.x, 1062f), 946f, all(vec2<bool>(false, var_4.x))))), _wgslsmith_f_op_f32(var_2.b.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(934f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(832f, var_2.b.c.x, 1852f, 1337f), vec4<f32>(140f, -940f, 286f, -691f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1167f, 420f, -371f, var_2.b.c.x) - vec4<f32>(-1051f, var_2.b.c.x, 818f, -1455f)))))))), ~(~reverseBits(var_1)));
}


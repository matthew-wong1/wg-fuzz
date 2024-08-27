struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~1u <= u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f))) + _wgslsmith_f_op_f32(-arg_1.e)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1003f + arg_3.b), _wgslsmith_f_op_f32(-1051f + arg_0.e)), _wgslsmith_f_op_f32(242f * _wgslsmith_f_op_f32(-2145f - arg_3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.b)) + _wgslsmith_f_op_f32(step(896f, -2497f))) * arg_3.c.x)), vec4<bool>(10761u == abs(u_input.a ^ u_input.b), arg_2.x, any(arg_2.ww), arg_0.a), arg_1.c.x);
    var var_1 = arg_2.x;
    var_1 = arg_3.d.x;
    let var_2 = !arg_0.d;
    let var_3 = arg_3;
    return select(vec2<bool>(var_0.a, all(!select(vec2<bool>(false, false), arg_1.d.yw, arg_0.a))), var_3.d.yy, select(vec2<bool>(select(arg_1.a, select(true, false, var_0.d.x), all(arg_1.d.xyx)), all(vec3<bool>(false, arg_2.x, true))), !arg_2.xy, all(!var_0.d)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), func_3(Struct_1(false, -406f, vec2<f32>(2020f, -728f), vec4<bool>(false, true, false, true), arg_0.x), Struct_1(false, arg_0.x, vec2<f32>(arg_0.x, arg_0.x), vec4<bool>(true, false, false, false), 262f), vec4<bool>(false, true, true, false), Struct_1(true, 1000f, vec2<f32>(arg_0.x, -616f), vec4<bool>(false, false, false, false), -539f))), vec2<bool>(u_input.b == u_input.a, false), true)), _wgslsmith_f_op_f32(-arg_0.x), vec2<f32>(249f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1153f, 1000f))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, func_3(Struct_1(false, 1000f, vec2<f32>(arg_0.x, -831f), vec4<bool>(false, false, true, true), 445f), Struct_1(true, -230f, arg_0.zz, vec4<bool>(false, false, false, true), 1374f), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), Struct_1(true, arg_0.x, vec2<f32>(arg_0.x, -719f), vec4<bool>(false, false, false, true), 441f)).x, true, (285f != arg_0.x) & true), vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !func_3(Struct_1(false, arg_0.x, arg_0.zw, vec4<bool>(true, true, true, true), 1208f), Struct_1(true, 263f, arg_0.xx, vec4<bool>(false, true, false, true), 1000f), vec4<bool>(true, true, false, false), Struct_1(false, arg_0.x, arg_0.xx, vec4<bool>(true, true, true, true), arg_0.x)).x, all(vec3<bool>(true, true, true)), true)), _wgslsmith_f_op_f32(max(-273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))))));
    var_0 = Struct_1(all(vec4<bool>(any(!vec2<bool>(var_0.d.x, true)), (arg_0.x != 358f) == any(vec2<bool>(true, false)), any(vec3<bool>(var_0.d.x, true, false)), firstLeadingBit(u_input.b) == 1u)), 1337f, var_0.c, select(vec4<bool>(var_0.d.x, var_0.a, true, false), var_0.d, !(var_0.a || true)), var_0.b);
    var_0 = Struct_1(!var_0.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(194f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1081f, arg_0.x, true)) + -868f) * 297f), var_0.c.x), var_0.d, var_0.e);
    let var_1 = max(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, 1i), ~(-vec2<i32>(-10101i, -2147483647i)), min(abs(vec2<i32>(-2147483647i, -35103i)), vec2<i32>(1i, -25678i))), vec2<i32>(-1i, -1i)), -1i);
    var_0 = Struct_1(any(vec4<bool>(var_0.d.x, _wgslsmith_sub_u32(u_input.a, 1u) == ~21396u, true, var_0.d.x)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2359f))), _wgslsmith_f_op_vec2_f32(-var_0.c), select(vec2<bool>(true, true), var_0.d.wz, var_0.d.x))), var_0.d, arg_0.x);
    return Struct_1((var_0.a || all(select(vec2<bool>(var_0.d.x, false), var_0.d.zz, var_0.d.x))) || (-var_1 < _wgslsmith_add_i32(-7663i >> (u_input.b % 32u), var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-637f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.e, 786f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.xy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c - arg_0.yz) - var_0.c)) + var_0.c), !select(select(var_0.d, var_0.d, vec4<bool>(true, var_0.a, var_0.a, true)), select(vec4<bool>(true, true, var_0.d.x, var_0.a), !var_0.d, select(vec4<bool>(true, var_0.a, var_0.d.x, var_0.d.x), vec4<bool>(true, true, true, var_0.a), var_0.d)), !vec4<bool>(true, var_0.d.x, false, var_0.a)), _wgslsmith_f_op_f32(step(-636f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -1638f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(arg_1.e, -439f), 851f, 345f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c.x, arg_1.e, 1000f), vec3<f32>(arg_1.c.x, -570f, arg_1.e), arg_1.d.zwx)) - vec3<f32>(1252f, -791f, arg_1.e)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + arg_1.c.x), _wgslsmith_f_op_f32(ceil(arg_1.c.x)), _wgslsmith_f_op_f32(step(664f, 1273f))))));
    let var_1 = firstTrailingBit(arg_3);
    var var_2 = -2147483647i;
    let var_3 = ~83783u;
    var_0 = vec3<f32>(arg_1.b, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f + var_0.x))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(arg_0.e - -614f)), _wgslsmith_f_op_vec2_f32(-arg_3.c), select(!(!(!vec4<bool>(false, false, arg_3.a, arg_3.d.x))), arg_1.d, vec4<bool>(!any(vec2<bool>(arg_1.a, true)), true, true, arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - -934f)), -1491f))));
    var var_1 = vec4<bool>(arg_0.d.x, true, func_4(min(~(~u_input.a), u_input.a), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-158f, arg_0.b, arg_3.c.x, arg_1.e))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 205f, -1000f, arg_1.e)))), firstTrailingBit(~1i), select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), !func_2(vec4<f32>(arg_1.e, arg_0.c.x, 300f, arg_2)).d)), arg_1.d.x);
    var var_2 = func_2(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-729f))), _wgslsmith_f_op_f32(select(-1063f, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e, 1000f, -140f, var_0.b))).e, all(!var_1.yx))), 494f));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1106f, arg_2, arg_3.e, 547f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(975f, 413f, 347f, var_2.c.x), vec4<f32>(-750f, 1402f, arg_2, var_0.b), true)))))));
    var_2 = func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f) - -1155f), -434f, var_2.b, -1000f))));
    return vec2<i32>(firstLeadingBit(max(-15002i, 2147483647i)), ~min(-2147483647i, 1i));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = all(vec3<bool>(func_2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))).a, true, func_2(vec4<f32>(_wgslsmith_f_op_f32(-703f * arg_2), _wgslsmith_f_op_f32(-arg_2), 1335f, _wgslsmith_f_op_f32(-arg_2))).d.x));
    let var_1 = func_2(vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * -1000f)), _wgslsmith_f_op_f32(1530f * 2105f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f + -137f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(max(521f, arg_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(153f - arg_0.x)))));
    var_0 = true;
    var var_2 = !var_1.d.x;
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -510f, arg_2, arg_2), vec4<f32>(var_1.e, arg_0.x, -192f, arg_2)))))));
    return func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_3.e, var_1.c.x, -530f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-276f))), arg_2, -568f), var_3.d.x && true)));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = -891f;
    var var_1 = arg_1;
    var var_2 = var_1.d.xwy;
    var_1 = Struct_1(true, func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2356f, var_0) - vec2<f32>(arg_3.e, 1000f))))), arg_0, 1000f).c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, arg_1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_1.e) * vec2<f32>(arg_1.e, -1000f)))) * _wgslsmith_f_op_vec2_f32(var_1.c * _wgslsmith_f_op_vec2_f32(floor(arg_3.c)))) - arg_1.c), var_1.d, _wgslsmith_div_f32(231f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-704f, _wgslsmith_div_f32(-1751f, arg_3.c.x), false))))));
    var_2 = !var_1.d.wyx;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-253f, arg_1.e, var_1.b, 224f))))))), vec3<u32>(_wgslsmith_mult_u32(select(u_input.b, arg_2.x, var_2.x), ~0u), _wgslsmith_add_u32(9704u, arg_2.x) >> (38748u % 32u), _wgslsmith_add_u32(~u_input.a, 26651u)) << (arg_2 % vec3<u32>(32u)), ~vec4<i32>(-firstLeadingBit(arg_0.x), _wgslsmith_mult_i32(arg_0.x, arg_0.x) << (firstTrailingBit(3938u) % 32u), countOneBits(arg_0.x ^ -27037i), 44872i), abs(-(~(-1i))), min(arg_0.x, _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(~1i, min(-1i, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(select(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-14206i, -1687i), vec2<i32>(1611i, -2174i)), vec2<i32>(1i, 1i))), ~vec2<i32>(countOneBits(36253i), 29994i), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))) && true), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-155f, -539f) * _wgslsmith_f_op_f32(-843f + 3025f))), vec2<f32>(-619f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -563f)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), true), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(730f, _wgslsmith_f_op_f32(-1000f + -590f))))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 10873u, u_input.b), ~vec3<u32>(27287u, 11783u, 43462u))), func_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(3458f, -728f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1850f, 104f))))), ~(func_1(Struct_1(true, 161f, vec2<f32>(1165f, 486f), vec4<bool>(false, false, false, true), -1047f), Struct_1(true, -2156f, vec2<f32>(-1325f, -1806f), vec4<bool>(true, true, true, false), -1613f), 350f, Struct_1(false, -599f, vec2<f32>(-987f, -469f), vec4<bool>(false, false, false, false), 397f)) >> ((vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1167f)) - 455f) + _wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(ceil(765f))))));
}


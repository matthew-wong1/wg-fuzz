struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(max(-1564f, 688f))) - 1306f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)), -539f, _wgslsmith_f_op_f32(trunc(-1924f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.ww)))));
    let var_2 = Struct_2(Struct_1(arg_1.b, !vec4<bool>(true || arg_1.e, true, !arg_1.a.x, arg_1.e != arg_1.a.x), _wgslsmith_mod_i32(reverseBits(u_input.c), arg_1.c & arg_1.c) << (0u % 32u), ~(-(~5398i)), !arg_1.e));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2437f) - _wgslsmith_f_op_f32(sign(var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(457f * var_0.x))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_0.x + var_1.x)), var_1.x, var_1.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -634f) * var_1.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-370f + arg_0), _wgslsmith_div_f32(arg_0, arg_0), 882f, _wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), u_input.a.x, u_input.a.x, false))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(var_0.x * arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(arg_0 - var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), 34359i, u_input.a.x, true))))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1310f))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2302f * arg_0)), -1000f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-2397f - -1000f), _wgslsmith_f_op_f32(var_0.x * arg_0), _wgslsmith_f_op_f32(1196f - 301f))))));
    let var_1 = Struct_2(Struct_1(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, false), -1i >= u_input.a.x), vec4<bool>(any(vec3<bool>(true, true, true)) & any(vec2<bool>(false, true)), (19943i & u_input.d) <= -2147483647i, !(4294967295u < arg_1), any(vec2<bool>(false, false))), u_input.c, max(u_input.c, _wgslsmith_clamp_i32(0i, -1i, 2147483647i)) >> (~(~0u) % 32u), true));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -581f, arg_0)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(993f + -1496f)), _wgslsmith_f_op_f32(-673f - arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-463f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) + arg_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(105f, -1172f, arg_0, -1431f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-241f, var_0.x, -139f, 274f))))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -569f)));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-753f))) + _wgslsmith_f_op_f32(select(-109f, _wgslsmith_f_op_f32(func_2(-1393f, u_input.b.x)), arg_0))) + _wgslsmith_div_f32(1000f, 127f)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1637f)))));
    var var_1 = u_input.b;
    var var_2 = Struct_2(Struct_1(select(!(!vec4<bool>(arg_0, arg_0, true, arg_0)), !(!vec4<bool>(false, true, arg_0, true)), false), vec4<bool>(false, any(vec2<bool>(arg_0, arg_0)) == any(vec3<bool>(true, false, true)), arg_0, true & all(vec2<bool>(arg_0, arg_0))), ~(-1972i), u_input.d ^ select(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.d, u_input.d)), countOneBits(1i), true), true));
    var var_3 = Struct_1(vec4<bool>(_wgslsmith_mod_u32(var_1.x, 16727u) != firstLeadingBit(~u_input.e), !var_2.a.e, (_wgslsmith_mod_u32(var_1.x, var_1.x) > _wgslsmith_div_u32(1u, 10987u)) | (~u_input.e >= ~u_input.e), var_2.a.a.x), var_2.a.a, -25521i, firstTrailingBit(~(u_input.d ^ firstTrailingBit(-2147483647i))), all(vec4<bool>(false, any(var_2.a.b.wyy), arg_0, all(var_2.a.a.xw))));
    var_0 = (countOneBits(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) <= 260u) || any(vec4<bool>(u_input.e != _wgslsmith_mult_u32(var_1.x, 4294967295u), arg_0, true, false));
    return var_1.x;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_mult_u32(~(~countOneBits(1u)), 17934u);
    var var_2 = Struct_2(Struct_1(vec4<bool>(_wgslsmith_mult_i32(u_input.c, -28616i) < countOneBits(5983i), all(vec4<bool>(true, true, true, true)), false, -u_input.d == _wgslsmith_mult_i32(0i, 11599i)), vec4<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), any(vec2<bool>(true, true))), ~0i, 2147483647i, false));
    var_2 = Struct_2(var_2.a);
    var_2 = Struct_2(var_2.a);
    return Struct_2(Struct_1(select(select(!vec4<bool>(false, var_2.a.b.x, false, true), var_2.a.b, var_2.a.a), vec4<bool>(false & var_2.a.b.x, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, var_2.a.e, var_2.a.e)), all(var_2.a.b.zwy), var_2.a.a.x)), !(!vec4<bool>(false, var_2.a.e, true, true)), u_input.a.x, ~(-11178i), true && !var_2.a.e));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = func_4(~1u, ~vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 120787u), u_input.b), u_input.e, u_input.b.x), 1u, ~(~12515u)), ~vec3<u32>(0u, abs(countOneBits(103887u)), u_input.b.x | u_input.e));
    var var_2 = countOneBits(-(i32(-1i) * -var_1.a.c));
    let var_3 = u_input.e;
    let var_4 = _wgslsmith_mult_vec2_i32(~vec2<i32>(-7275i, u_input.c), abs(_wgslsmith_div_vec2_i32(u_input.a | reverseBits(vec2<i32>(-15231i, var_1.a.c)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 2002i), vec2<i32>(-18788i, 1i)))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(true), ~max(~vec4<u32>(1u, u_input.e, 41468u, u_input.e), vec4<u32>(116178u, 1544u, 32307u, u_input.e)), min(max(_wgslsmith_add_vec3_u32(vec3<u32>(12533u, u_input.e, 0u), vec3<u32>(u_input.e, u_input.e, u_input.e)), vec3<u32>(u_input.e, 4294967295u, 28001u)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))), true, !select(vec3<bool>(false, true, select(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(vec2<bool>(false, true), vec2<bool>(all(vec2<bool>(false, false)), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1561f, 776f, -749f)))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1062f, 1097f, 561f) + vec3<f32>(-1000f, 352f, -1586f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1009f, -264f, -435f) * vec3<f32>(322f, 586f, -886f))))));
    let var_2 = var_0.b.ww;
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(588f, _wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, -107f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -961f)) + _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))));
    var_0 = func_4(u_input.b.x, vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(24670u, 4294967295u), _wgslsmith_div_u32(u_input.e, 14961u)), ~_wgslsmith_div_u32(u_input.e, u_input.b.x)), 25449u, abs(_wgslsmith_sub_u32(u_input.b.x, ~u_input.e))), vec3<u32>(1u, u_input.e, max(_wgslsmith_clamp_u32(1u, firstTrailingBit(9525u), u_input.b.x << (1u % 32u)), u_input.b.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2145f, var_1.x) + var_1.xy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 636f))), u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(29207i, select(-22086i, firstLeadingBit(2147483647i), false), u_input.d, -6900i >> (u_input.e % 32u)), vec4<i32>(firstLeadingBit(~var_0.c), u_input.c, ~u_input.d | 2147483647i, ~(var_0.c ^ var_0.c))), ~(-(-var_0.d >> (_wgslsmith_mod_u32(8641u, 63935u) % 32u))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))));
}


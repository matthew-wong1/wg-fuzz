struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-2629f + -651f), _wgslsmith_f_op_f32(abs(113f)), -821f))));
    var var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))) | select(all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), true, false);
    var_1 = false;
    return _wgslsmith_f_op_f32(var_0.x + -243f);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, var_0.e.x)), _wgslsmith_f_op_f32(trunc(var_0.e.x)), -1844f);
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.e))))));
    var var_3 = max(-2147483647i & _wgslsmith_div_i32(arg_0.a, -2147483647i & _wgslsmith_div_i32(arg_0.a, arg_0.a)), 7308i);
    var_3 = -1i;
    return Struct_1(var_0.a, var_1.x, -1000f, abs(select(~select(vec4<u32>(var_0.d.x, arg_0.d.x, 0u, 4213u), vec4<u32>(97121u, 78041u, 4294967295u, arg_0.d.x), vec4<bool>(true, true, true, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(69328u, var_2.d.x, 0u, arg_0.d.x), var_2.d, var_2.d), vec4<bool>(true, true, true, true))), var_1.zy);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_div_i32(arg_0.a, 61170i >> (arg_0.d.x % 32u))) ^ arg_0.a, arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -333f), -1291f)))), 115f)), abs(u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.e + arg_0.e)));
    var var_1 = Struct_1(_wgslsmith_add_i32(-60803i, firstTrailingBit(~1i)), _wgslsmith_f_op_f32(max(arg_0.b, 154f)), _wgslsmith_f_op_f32(floor(var_0.e.x)), _wgslsmith_mod_vec4_u32(~(~arg_2.d ^ arg_2.d), vec4<u32>(firstLeadingBit(0u ^ var_0.d.x), ~1u, ~(~4294967295u), ~4294967295u ^ arg_2.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_0.e.x, 373f)), _wgslsmith_f_op_f32(select(687f, 787f, true))))));
    var var_2 = (vec2<i32>(~var_0.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.a, 14520i), var_1.a)) | -vec2<i32>(~arg_0.a, abs(-1i))) ^ countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(25267i, var_1.a), vec2<i32>(var_0.a, -1i) << ((arg_2.d.yw >> (vec2<u32>(0u, var_1.d.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_3 = func_2(arg_2);
    var var_4 = abs(var_2.x);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = Struct_1(arg_1.x, arg_0.c, func_2(func_4(func_4(func_2(Struct_1(9605i, var_0.c, arg_0.b, vec4<u32>(28642u, var_0.d.x, arg_3.x, arg_3.x), var_0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, -1053f, -1434f, var_0.b) + vec4<f32>(-386f, 350f, var_0.b, 1058f)), func_2(Struct_1(arg_0.a, -472f, -448f, arg_0.d, arg_2.e))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-152f, 612f, -477f, -786f))))), arg_0)).b, arg_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.e - vec2<f32>(arg_2.e.x, arg_0.b)), vec2<f32>(var_0.e.x, var_0.e.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.e)) + _wgslsmith_f_op_vec2_f32(arg_0.e * var_0.e)))));
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e.x))), 1460f, min(var_1.d, vec4<u32>(firstLeadingBit(23322u), _wgslsmith_mult_u32(~var_1.d.x, _wgslsmith_add_u32(53979u, 72447u)), u_input.b.x, ~var_1.d.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-331f, 1540f) - var_0.e) + _wgslsmith_f_op_vec2_f32(-var_1.e)) - func_2(Struct_1(0i, arg_0.c, 1980f, vec4<u32>(var_0.d.x, 36893u, 22533u, arg_2.d.x), vec2<f32>(455f, 965f))).e))));
    let var_3 = 8945u < (min(countOneBits(arg_2.d.x), _wgslsmith_mod_u32(func_4(arg_0, vec4<f32>(var_2.e.x, arg_0.c, 1551f, 2146f), Struct_1(-4586i, var_2.b, -1001f, arg_2.d, vec2<f32>(-483f, 799f))).d.x, ~u_input.b.x)) >> (_wgslsmith_clamp_u32(17502u << (var_0.d.x % 32u), select(~67707u, u_input.a ^ 11120u, true), select(4294967295u, _wgslsmith_sub_u32(u_input.b.x, 1u), true)) % 32u));
    var var_4 = countOneBits(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0.a, var_2.a, -2147483647i) >> (~vec3<u32>(arg_0.d.x, 4294967295u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(arg_1.zyy, vec3<i32>(1i, arg_2.a, var_0.a)), arg_1.wwx));
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(arg_2.a << (84996u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_div_f32(arg_1.e.x, arg_2.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -934f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f * arg_2.e.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(152f * -1257f))), abs(~arg_1.d), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(arg_2.e, arg_2.e)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1709f, arg_2.e.x), vec2<f32>(arg_2.c, 2230f)))))))));
    return Struct_1(_wgslsmith_mod_i32(42933i, 5174i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.e.x, func_5(Struct_1(arg_2.a, var_0.b, arg_1.e.x, arg_1.d, vec2<f32>(var_0.e.x, -660f)), vec4<i32>(-10312i, arg_2.a, -2147483647i, arg_2.a), arg_1, vec2<u32>(0u, arg_1.d.x)).c, true))))), func_2(Struct_1(min(~arg_2.a, var_0.a), arg_1.c, func_4(Struct_1(var_0.a, -1471f, arg_2.b, vec4<u32>(arg_2.d.x, 4294967295u, 50024u, 4294967295u), vec2<f32>(arg_2.e.x, arg_2.e.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, -607f, var_0.e.x, arg_2.e.x), vec4<f32>(1000f, arg_2.e.x, 359f, 1976f), vec4<bool>(false, false, false, false))), func_2(arg_1)).b, ~select(u_input.b, u_input.b, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.x, var_0.c)), _wgslsmith_f_op_vec2_f32(-arg_2.e)))).e.x, ~(~vec4<u32>(1u << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, var_0.d.x, 4294967295u), vec4<u32>(arg_0, arg_1.d.x, arg_0, var_0.d.x)), 22964u, 28141u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(arg_1, vec4<f32>(1147f, -1669f, -903f, 816f), arg_2).c, -226f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1205f, arg_2.b)), _wgslsmith_f_op_vec2_f32(-arg_2.e))))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 1154f), 1692f))), 1f)), _wgslsmith_f_op_f32(trunc(-1280f)), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -859f), -1558f)))), 3092f));
    let var_1 = var_0;
    var var_2 = func_6(u_input.a, func_5(func_4(Struct_1(arg_0, _wgslsmith_f_op_f32(-var_1.c), -2387f, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.d.x, 5179u, u_input.b.x), u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_1.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, -1328f, var_1.b, -283f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e.x, -2006f, var_0.b, -1000f))))), func_2(var_0)), vec4<i32>(-2147483647i, 1i, _wgslsmith_div_i32(~(-14452i), -14789i), ~21954i), var_0, u_input.b.zz), Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1274f * _wgslsmith_f_op_f32(f32(-1f) * -727f))), 533f, ~u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.e, _wgslsmith_f_op_vec2_f32(floor(var_1.e)))), var_0.e)));
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(-63367i, 1660f, 227f, u_input.b, var_2.e)), vec4<f32>(-846f, var_2.e.x, _wgslsmith_div_f32(var_1.c, var_2.e.x), 1790f), func_2(Struct_1(var_0.a, -508f, 1107f, vec4<u32>(var_1.d.x, 1u, var_0.d.x, 0u), var_0.e))).b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - func_6(var_1.d.x, var_0, func_4(var_0, vec4<f32>(-1299f, 211f, var_2.e.x, 117f), var_1)).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f - 1844f)) * _wgslsmith_f_op_f32(var_2.b + var_0.c))), var_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(func_4(Struct_1(var_1.a, var_2.c, -1141f, vec4<u32>(var_2.d.x, 1u, 0u, var_0.d.x), vec2<f32>(var_2.c, var_1.e.x)), vec4<f32>(var_0.b, var_2.b, var_2.b, var_2.e.x), var_0).e)) * _wgslsmith_f_op_vec2_f32(sign(var_2.e))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, 218f)), _wgslsmith_f_op_vec2_f32(trunc(var_0.e)))))));
    var_2 = Struct_1(0i, 1034f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) + var_1.c), -1312f, (1000f < var_2.c) | any(vec3<bool>(false, true, true)))) + _wgslsmith_f_op_f32(1619f + var_1.e.x)), ~(~vec4<u32>(var_0.d.x >> (4294967295u % 32u), ~0u, 1u >> (var_2.d.x % 32u), _wgslsmith_div_u32(45899u, var_2.d.x))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f * _wgslsmith_f_op_f32(select(var_2.b, 1000f, false))) - 1940f)));
    return _wgslsmith_f_op_f32(-380f * _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.e.x)) + var_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(~1i, 1i), _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, 7778i)), vec3<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(-43891i, -44022i), 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(4567i)) - -550f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1384f - 1436f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f)))), vec4<u32>(0u, u_input.a, ~(4294967295u & u_input.a) << (u_input.a % 32u), _wgslsmith_mod_u32(64334u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1113f - -260f), _wgslsmith_f_op_f32(f32(-1f) * -1274f))))));
    let var_1 = func_2(func_6(~_wgslsmith_dot_vec2_u32(var_0.d.yx, vec2<u32>(var_0.d.x, u_input.a)) ^ 45383u, Struct_1(_wgslsmith_add_i32(abs(12465i), -var_0.a), 2322f, -1079f, var_0.d, vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b))), func_2(Struct_1(~var_0.a, func_2(Struct_1(-6199i, -1175f, var_0.e.x, vec4<u32>(u_input.b.x, 46425u, 1u, 4294967295u), vec2<f32>(-177f, var_0.c))).e.x, _wgslsmith_f_op_f32(var_0.c - var_0.e.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, u_input.a, u_input.a, 8026u), vec4<u32>(46702u, 60150u, 0u, 68640u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c, var_0.b), var_0.e))))));
    let var_2 = func_2(Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -36472i, var_0.a), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(18876i, 43136i, -27421i), vec3<i32>(var_0.a, 42916i, -35319i), vec3<i32>(6634i, -1i, var_1.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * var_1.b), ~firstTrailingBit(select(var_1.d, u_input.b, false)), _wgslsmith_f_op_vec2_f32(ceil(var_0.e))));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(70794u, 1u), ~u_input.b.yx) | _wgslsmith_div_u32(~reverseBits(1u), _wgslsmith_dot_vec3_u32(func_2(func_5(Struct_1(var_1.a, 813f, var_1.b, u_input.b, vec2<f32>(var_1.c, 1230f)), vec4<i32>(var_2.a, 2147483647i, -14448i, 21025i), var_1, var_1.d.wy)).d.zwz, var_1.d.xwz));
    var_3 = _wgslsmith_add_u32(~reverseBits(4294967295u) | var_1.d.x, ~(~var_1.d.x)) ^ var_0.d.x;
    let var_4 = func_5(func_4(Struct_1(~_wgslsmith_mult_i32(var_1.a, 24147i), _wgslsmith_f_op_f32(-var_2.e.x), var_1.e.x, _wgslsmith_div_vec4_u32(var_1.d, var_0.d) >> (reverseBits(var_1.d) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_1.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, 214f, var_1.c, -373f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 755f, 176f, -556f)))), func_6(max(firstTrailingBit(49541u), var_2.d.x), func_5(func_2(var_1), vec4<i32>(var_1.a, 1i, 37728i, 1i), Struct_1(var_2.a, var_1.b, var_2.b, var_0.d, vec2<f32>(457f, var_0.c)), ~vec2<u32>(u_input.b.x, 46055u)), func_6(1u, var_1, Struct_1(var_2.a, var_2.b, var_0.c, vec4<u32>(var_0.d.x, 4294967295u, var_0.d.x, u_input.b.x), var_2.e)))), ~(~(-select(vec4<i32>(-33932i, var_1.a, var_0.a, var_0.a), vec4<i32>(-23939i, var_2.a, 2147483647i, 1i), true))), func_4(Struct_1(~_wgslsmith_add_i32(var_0.a, 1i), var_0.b, _wgslsmith_f_op_f32(-1059f + -1126f), vec4<u32>(4294967295u, var_1.d.x, var_2.d.x ^ var_1.d.x, 14189u), var_1.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1058f, -478f, 1639f, var_0.c) * vec4<f32>(var_2.b, -803f, var_2.c, -841f))) + vec4<f32>(_wgslsmith_f_op_f32(188f * 566f), _wgslsmith_f_op_f32(var_1.e.x - -636f), var_1.e.x, _wgslsmith_f_op_f32(func_1(var_1.a)))), func_4(Struct_1(2147483647i ^ var_0.a, _wgslsmith_f_op_f32(abs(var_0.e.x)), _wgslsmith_f_op_f32(398f * 1000f), _wgslsmith_sub_vec4_u32(var_1.d, vec4<u32>(26553u, var_1.d.x, 4294967295u, 4294967295u)), var_1.e), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-693f, var_0.e.x, var_2.e.x, -552f))))), Struct_1(_wgslsmith_sub_i32(13032i, var_1.a), var_2.e.x, -2244f, vec4<u32>(var_0.d.x, 1u, var_0.d.x, var_1.d.x), _wgslsmith_f_op_vec2_f32(step(var_0.e, vec2<f32>(351f, var_0.c)))))), reverseBits(abs(vec2<u32>(u_input.b.x, var_2.d.x)) & func_4(func_6(var_1.d.x, var_1, var_2), vec4<f32>(var_2.c, var_0.e.x, var_1.e.x, var_0.e.x), Struct_1(2147483647i, -1000f, 1000f, vec4<u32>(85161u, 58573u, var_0.d.x, 0u), vec2<f32>(-1000f, var_0.e.x))).d.xy));
    var var_5 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-48249i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a, -1i, var_2.a), vec3<i32>(24765i, -1i, 2147483647i))), countOneBits(-_wgslsmith_div_i32(15423i, var_1.a)), _wgslsmith_mod_i32(var_0.a, reverseBits(min(var_0.a, var_1.a)))), _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(abs(51608i), 14017i)) << (u_input.a % 32u));
    var_0 = func_6(~var_1.d.x, func_6(~(~var_4.d.x), var_2, var_4), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-249f, var_0.e.x, 1u, -var_2.a);
}


struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, abs(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.b.xzy))), ~(u_input.d.x >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), vec4<u32>(31234u, 1u, 43113u, 6680u) & u_input.b) % 32u)), _wgslsmith_dot_vec3_u32(~(~u_input.b.xwy) | vec3<u32>(1u, abs(u_input.c), 64765u ^ u_input.d.x), u_input.b.yzy));
    var var_1 = !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true));
    var_1 = select(select(vec4<bool>(true, all(!var_1.xz), any(var_1.xz), !(!var_1.x)), select(vec4<bool>(select(true, var_1.x, var_1.x), true, true, !var_1.x), select(vec4<bool>(false, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, false, var_1.x, true), vec4<bool>(false, true, true, var_1.x)), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, true), false)), select(!vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, false, var_1.x, true), false)), !vec4<bool>(!var_1.x, var_1.x, all(var_1.yzy), var_1.x)), select(select(!select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, true, false, false), var_1.x), vec4<bool>(false, false, all(vec3<bool>(false, var_1.x, true)), true), !(!vec4<bool>(var_1.x, true, var_1.x, false))), select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, true), true), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(false, var_1.x, true, var_1.x), false), !vec4<bool>(var_1.x, var_1.x, true, false)), any(vec3<bool>(var_1.x, var_1.x, var_1.x))), !(!(u_input.a.x < arg_3.b))), true);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -689f, 1030f, arg_3.c)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2037f, arg_2, arg_3.c, arg_3.c), vec4<f32>(arg_1.c, -1078f, -1501f, -431f), var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, arg_3.a.x, -1000f, 201f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.c, -640f, arg_2))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.a.x, arg_3.a.x, arg_1.c, arg_1.a.x), vec4<f32>(-453f, 1133f, arg_1.a.x, arg_3.a.x)))))));
    var var_3 = arg_3;
    return u_input.b << (_wgslsmith_mult_vec4_u32(~(~u_input.b) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, var_0, var_0, 1u), u_input.b, true), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, 14187u, 111535u), vec4<u32>(1656u, 4294967295u, 4294967295u, 1u))) % vec4<u32>(32u)), countOneBits(u_input.b)) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(743f, 949f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(max(var_0, var_0))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_sub_i32(u_input.e, -firstLeadingBit(firstTrailingBit(u_input.e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(-405f, var_0)) + -1335f))));
    var var_2 = min(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.e), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b, 1i), u_input.a.zx)), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_1.b), u_input.a.xy)), _wgslsmith_div_i32(-44431i & var_1.b, 0i)) >> (_wgslsmith_mod_vec4_u32(func_3(-u_input.a, Struct_1(var_1.a, var_1.b, -1000f), -550f, Struct_1(vec3<f32>(1000f, 2054f, 584f), var_1.b, -641f)), vec4<u32>(u_input.b.x, ~u_input.c, 4294967295u, 4294967295u)) % vec4<u32>(32u)), -(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-58389i, -1i, -2147483647i, -2147483647i), vec4<i32>(-1i, var_1.b, u_input.a.x, 1i)), vec4<i32>(var_1.b, var_1.b, 21005i, -5707i)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(16938u, arg_1.x, arg_1.x, 4294967295u), ~arg_1) % vec4<u32>(32u))));
    var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, _wgslsmith_add_i32(-1i, 40070i), -2147483647i), vec4<i32>(var_1.b, 1i, -19381i, abs(19961i)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a))), i32(-1i) * -1i, -789f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(796f, var_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_0)))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) - var_0) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(663f + var_1.a.x)))), _wgslsmith_f_op_f32(step(-344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(335f))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> f32 {
    var var_0 = vec4<f32>(1144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1708f, _wgslsmith_f_op_f32(func_2(Struct_2(true, select(any(vec3<bool>(true, true, true)), true, true), vec2<bool>(true, true)), ~countOneBits(u_input.b))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(true, false, vec2<bool>(true, true)), u_input.b))), _wgslsmith_f_op_f32(func_2(Struct_2(any(vec2<bool>(false, true)), false, vec2<bool>(false, false)), ~countOneBits(u_input.b))), _wgslsmith_f_op_f32(1000f * -761f), -302f) + vec4<f32>(_wgslsmith_div_f32(arg_0.x, 366f), var_0.x, _wgslsmith_f_op_f32(select(-1500f, 497f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 527f, -830f, _wgslsmith_f_op_f32(var_0.x - -692f));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-660f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -1767f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -856f, var_0.x, -345f))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -2636f, var_0.x) - vec4<f32>(var_0.x, arg_0.x, var_0.x, 2260f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -317f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0.x, arg_0.x, -1651f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1429f, arg_0.x, arg_0.x))))))));
    let var_1 = !(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return var_0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -251f, _wgslsmith_f_op_f32(693f - _wgslsmith_f_op_f32(func_2(Struct_2(false, arg_0.x, vec2<bool>(true, arg_2.e.x)), u_input.b)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, 1185f, arg_2.d))))), _wgslsmith_add_i32(1i, -61276i)));
    let var_1 = -147i;
    let var_2 = Struct_2(any(arg_0), !all(!select(vec4<bool>(false, false, arg_1.e.x, true), vec4<bool>(arg_1.c.x, arg_2.e.x, arg_1.c.x, arg_0.x), vec4<bool>(arg_2.c.x, arg_0.x, true, true))), vec2<bool>(arg_0.x, any(vec2<bool>(true, 2147483647i > arg_2.b.b))));
    let var_3 = u_input.d.x;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(256f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d, -237f), 1576f, true)), 976f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3 + 608f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.a.x, 604f, -514f), arg_2.b.a, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1988f), arg_1.d, _wgslsmith_f_op_f32(min(-151f, arg_2.d)))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    var var_0 = arg_2;
    var_0 = Struct_1(arg_3.b.a, ~var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(abs(398f))) * _wgslsmith_f_op_f32(floor(arg_2.a.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(!arg_3.e, Struct_3(var_0.b, arg_2, arg_3.c, -824f, vec3<bool>(arg_3.e.x, false, arg_1)), arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1253f))).x + arg_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-958f, arg_3.b.c))))), 178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 1233f)) - arg_2.a.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -560f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - arg_0.a.x) + _wgslsmith_f_op_f32(-arg_3.d)), _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(abs(arg_2.a.x))))))));
    var_0 = Struct_1(vec3<f32>(230f, _wgslsmith_f_op_f32(-var_1.x), -1000f), var_0.b << (u_input.c % 32u), _wgslsmith_f_op_vec3_f32(func_1(arg_3.e, arg_3, arg_3, -508f)).x);
    var_0 = arg_3.b;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(448f, 1492f, -338f, var_0.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-846f, -567f, 1036f)), ~u_input.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-628f)))))), true, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(false, false, true), Struct_3(14304i, Struct_1(vec3<f32>(2349f, -1686f, 1000f), u_input.a.x, -674f), vec3<bool>(false, false, false), -875f, vec3<bool>(true, false, false)), Struct_3(-39341i, Struct_1(vec3<f32>(1786f, 611f, 553f), 44531i, -1134f), vec3<bool>(true, true, false), 835f, vec3<bool>(false, false, true)), -536f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, true, false), Struct_3(-2147483647i, Struct_1(vec3<f32>(970f, 1265f, -1000f), -32864i, 932f), vec3<bool>(false, true, false), -380f, vec3<bool>(true, true, false)), Struct_3(-1i, Struct_1(vec3<f32>(948f, -1551f, 1000f), 1i, -506f), vec3<bool>(false, true, true), -633f, vec3<bool>(false, false, false)), -1650f))))), u_input.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-133f)), _wgslsmith_div_f32(133f, 381f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1789f)))))), Struct_3(u_input.e, Struct_1(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(false, true, false), Struct_3(-15148i, Struct_1(vec3<f32>(-277f, -104f, -110f), -1i, -692f), vec3<bool>(true, true, true), 196f, vec3<bool>(true, false, false)), Struct_3(u_input.e, Struct_1(vec3<f32>(-463f, -2670f, 645f), 13905i, 1669f), vec3<bool>(false, true, false), -1976f, vec3<bool>(true, false, false)), -176f)), u_input.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 572f)))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, true), select(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), any(vec2<bool>(false, false))), select(any(vec4<bool>(false, true, true, false)), false, false)), -1523f, vec3<bool>(select(true, true, true), true, true)));
    let var_1 = !vec2<bool>(u_input.a.x != u_input.a.x, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_2 = ~min(-1i, _wgslsmith_dot_vec3_i32(u_input.a << (vec3<u32>(u_input.c, u_input.b.x, u_input.c) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(u_input.e, u_input.a.x, -20373i))));
    let var_3 = vec2<bool>(~u_input.e > ~(-1i), !(true != !any(vec2<bool>(var_1.x, true))));
    var var_4 = Struct_2(false, false, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.xyz, -14010i, 1u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-700f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), -1000f) + var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -1104f), _wgslsmith_f_op_f32(-286f + -169f), _wgslsmith_f_op_f32(step(var_0.a.x, -132f)), var_0.a.x) - vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -943f), _wgslsmith_f_op_f32(round(var_0.a.x)), -1506f)))));
}


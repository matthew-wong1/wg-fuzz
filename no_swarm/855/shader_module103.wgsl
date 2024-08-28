struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = select(~(~_wgslsmith_clamp_i32(1i, 0i, 1i) ^ -2147483647i), -_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.a.x, 13311i, u_input.a.x)), vec3<i32>(-u_input.a.x, ~u_input.a.x, _wgslsmith_mult_i32(2147483647i, arg_0))), ~(-_wgslsmith_mult_i32(-4969i, u_input.a.x)) < ~_wgslsmith_mult_i32(arg_0, u_input.a.x));
    var_0 = ~(-_wgslsmith_mod_i32(~(-arg_0), firstLeadingBit(abs(arg_0))));
    var_0 = reverseBits(-2147483647i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2583f, -164f, -1457f, -715f)), vec4<f32>(1f, 1f, 1f, 1f), true))), vec4<f32>(1330f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f), -1341f), -649f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1117f), _wgslsmith_f_op_f32(2014f + -1676f))))), Struct_3(vec3<bool>(any(vec2<bool>(true, true)), 0i < ~arg_0, true), Struct_1(firstLeadingBit(vec3<i32>(arg_0, 1i, -34181i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(16075i, 2147483647i, -20202i), vec3<i32>(u_input.a.x, 27718i, 28640i)), ~vec2<i32>(11667i, arg_0)), Struct_1(~vec3<i32>(0i, arg_0, arg_0), reverseBits(-u_input.a)), any(vec3<bool>(false, u_input.b.x >= u_input.c, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a.x), ~(-1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~arg_0))), !vec2<bool>(!select(true, false, true), all(vec4<bool>(true, true, true, true))), _wgslsmith_add_vec3_i32(~abs(-vec3<i32>(u_input.a.x, -13244i, -1i)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(arg_0, -2147483647i, arg_0)) & -vec3<i32>(2147483647i, u_input.a.x, arg_0), ~firstTrailingBit(vec3<i32>(arg_0, 1i, 37165i)))));
    var_1 = Struct_4(vec4<f32>(1817f, -1223f, var_1.a.x, _wgslsmith_f_op_f32(min(-1833f, 823f))), Struct_3(!var_1.b.a, Struct_1(vec3<i32>(57960i, _wgslsmith_mult_i32(arg_0, 2147483647i), -1i), u_input.a), var_1.b.b, true, var_1.d.yz), select(select(vec2<bool>(!var_1.c.x, true), var_1.c, true), vec2<bool>(select(u_input.a.x, var_1.b.c.b.x, false) == firstLeadingBit(arg_0), true), true), var_1.b.c.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -840f);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(-13394i))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-929f, 731f), _wgslsmith_f_op_f32(f32(-1f) * -133f)))) + -667f));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1277f + 293f), _wgslsmith_f_op_f32(func_3(u_input.a.x)), -885f, _wgslsmith_f_op_f32(2114f + -755f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1974f))), 157f, 569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1406f))))), Struct_3(select(vec3<bool>(arg_1 | true, !arg_1, true), vec3<bool>(true, true, true), all(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -1i) | vec3<i32>(-2147483647i, arg_0.a.x, -2147483647i), ~vec3<i32>(28717i, u_input.a.x, 44380i)), vec2<i32>(u_input.a.x, ~arg_0.b.x)), arg_0, true || !arg_1, u_input.a), vec2<bool>(all(!vec3<bool>(arg_1, arg_1, false)), any(select(!vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, false), !vec3<bool>(true, false, arg_1)))), _wgslsmith_clamp_vec3_i32(~(arg_0.a & arg_0.a) ^ reverseBits(arg_0.a), ~(-vec3<i32>(arg_0.a.x, arg_0.a.x, 16134i)), _wgslsmith_add_vec3_i32(~(-arg_0.a), arg_0.a)));
    var var_2 = !arg_1;
    let var_3 = var_1.b;
    var var_4 = countOneBits(vec4<u32>(4294967295u, 0u, min(countOneBits(38370u), u_input.c), _wgslsmith_clamp_u32(countOneBits(1u), abs(0u), ~u_input.c))) ^ (~abs(vec4<u32>(39266u, 4294967295u, u_input.b.x, 4294967295u)) | vec4<u32>(4294967295u, ~u_input.c ^ u_input.b.x, abs(~u_input.b.x), ~u_input.b.x));
    return var_1.a.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<bool>(all(!(!(!vec3<bool>(false, arg_2, false)))), all(!vec2<bool>(true, arg_2)) | any(vec4<bool>(!arg_2, true, arg_2, arg_2)), true, arg_2);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(302f, 685f) * -337f))));
    let var_2 = _wgslsmith_f_op_f32(func_2(Struct_1(min(vec3<i32>(-40903i, ~(-28066i), 0i), vec3<i32>(1i, ~arg_0, u_input.a.x ^ arg_0)), ~vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a.x), -2138i)), false));
    var_0 = !select(select(vec4<bool>(all(var_0.wx), all(vec2<bool>(false, arg_2)), arg_2 && var_0.x, true), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x), arg_2), (arg_2 & var_0.x) == arg_2), !vec4<bool>(true, all(vec2<bool>(true, var_0.x)), var_2 <= var_2, true), all(var_0.yz));
    var var_3 = u_input.c;
    return Struct_1(abs(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(arg_0, -13995i, -1i)), vec3<i32>(arg_0 << (arg_1 % 32u), ~arg_0, -arg_0))), vec2<i32>(-min(38733i, u_input.a.x), arg_0 & ~7862i) ^ (max(min(u_input.a, vec2<i32>(-1i, 44050i)), vec2<i32>(arg_0, u_input.a.x)) >> ((~u_input.b.xy | u_input.b.yz) % vec2<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_5) -> Struct_4 {
    let var_0 = -arg_3.a.c.b;
    let var_1 = Struct_3(arg_3.a.a, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -arg_3.a.b.a.x), firstLeadingBit(u_input.a)), 1u, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(u_input.a.x, -8147i, -40687i), arg_3.a.c.a.yy), false)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(trunc(503f)))), arg_3.a.c, true, func_4(var_0.x, _wgslsmith_sub_u32(max(u_input.c, _wgslsmith_sub_u32(0u, arg_1)), 603u), false).a.xy);
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-294f, arg_2.x, _wgslsmith_f_op_f32(max(486f, arg_2.x)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 1000f, 895f, arg_0), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_2.x, 800f, -1000f), vec4<f32>(-117f, arg_2.x, 518f, arg_2.x)))), !select(vec4<bool>(var_1.a.x, false, false, false), vec4<bool>(false, true, var_1.a.x, var_1.a.x), arg_3.a.d))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(step(arg_0, 1000f)), -1000f, _wgslsmith_f_op_f32(func_2(arg_3.a.b, arg_3.b))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_0, 573f, 1096f))), vec4<bool>(true, true, true, true)))), Struct_3(vec3<bool>(var_1.d, any(var_1.a.zy), false), arg_3.a.c, Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.a.c.b.x, 0i, 2147483647i), vec3<i32>(var_0.x, u_input.a.x, var_0.x)), arg_3.a.c.a), max(-vec2<i32>(u_input.a.x, -2147483647i), -u_input.a)), false, vec2<i32>(_wgslsmith_div_i32(arg_3.a.c.a.x, 1i), max(_wgslsmith_add_i32(-1i, var_1.c.a.x), select(arg_3.a.e.x, 0i, false)))), vec2<bool>(arg_3.a.a.x, any(!vec3<bool>(arg_3.a.a.x, false, false))), _wgslsmith_add_vec3_i32(vec3<i32>(-var_0.x, countOneBits(_wgslsmith_add_i32(var_1.e.x, var_0.x)), 57404i), func_4(var_1.b.b.x, select(_wgslsmith_mult_u32(44575u, arg_1), ~u_input.b.x, true | arg_3.a.a.x), true).a));
}

fn func_5(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(882f - _wgslsmith_f_op_f32(-1000f - arg_0.a.x)))), func_1(_wgslsmith_f_op_f32(max(227f, _wgslsmith_f_op_f32(-1803f * -398f))), ~1u | u_input.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-793f, -1693f, arg_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 808f, arg_0.a.x)))), Struct_5(arg_0.b, any(arg_0.b.a))).a.x)), arg_0.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.a.xxw))));
    var var_1 = _wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, select(vec3<u32>(~u_input.c, _wgslsmith_clamp_u32(0u, u_input.c, 0u), ~1u), ~(u_input.b << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) % vec3<u32>(32u))), vec3<bool>(any(select(vec3<bool>(arg_0.c.x, arg_0.b.d, arg_0.b.a.x), arg_0.b.a, arg_0.b.a)), arg_0.c.x, func_1(_wgslsmith_f_op_f32(var_0.x + arg_0.a.x), u_input.b.x ^ u_input.c, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(3822f, arg_0.a.x, -175f))), Struct_5(Struct_3(vec3<bool>(false, true, true), arg_0.b.b, arg_0.b.b, true, vec2<i32>(arg_0.d.x, arg_0.d.x)), true)).b.a.x)));
    let var_2 = _wgslsmith_f_op_f32(step(-1000f, -1768f));
    var var_3 = func_1(1183f, _wgslsmith_mod_u32(reverseBits(1u ^ (var_1.x >> (var_1.x % 32u))), 1u), arg_0.a.xxy, Struct_5(func_1(1624f, u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(round(646f)), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), 545f), Struct_5(arg_0.b, arg_0.c.x & arg_0.b.d)).b, true)).c;
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(!func_5(func_1(-1118f, 0u, vec3<f32>(-1253f, -859f, 778f), Struct_5(Struct_3(vec3<bool>(false, true, true), Struct_1(vec3<i32>(-31903i, u_input.a.x, 13095i), vec2<i32>(41925i, u_input.a.x)), Struct_1(vec3<i32>(15357i, u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, 0i)), true, u_input.a), false)))), Struct_1(firstLeadingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -22508i, u_input.a.x))), u_input.a), func_1(-1000f, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(u_input.b.xz, vec2<u32>(u_input.c, 4294967295u), vec2<bool>(true, true)), vec2<u32>(26799u, u_input.b.x) | vec2<u32>(u_input.b.x, u_input.c)), vec2<u32>(u_input.b.x, ~u_input.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-463f, -1000f, 779f), vec3<f32>(-953f, 117f, -1000f))))), vec3<f32>(-130f, _wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(max(-726f, 1152f)))), Struct_5(Struct_3(vec3<bool>(true, true, true), func_1(-1392f, u_input.c, vec3<f32>(772f, 712f, -1000f), Struct_5(Struct_3(vec3<bool>(true, true, false), Struct_1(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a), Struct_1(vec3<i32>(-2147483647i, -49558i, u_input.a.x), u_input.a), false, u_input.a), true)).b.b, Struct_1(vec3<i32>(u_input.a.x, 1i, 2147483647i), vec2<i32>(u_input.a.x, -22804i)), false, u_input.a >> (u_input.b.zz % vec2<u32>(32u))), 42977i != _wgslsmith_mod_i32(u_input.a.x, -17003i))).b.c, -514f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1367f, -460f)))), ~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(743f * 1f) - _wgslsmith_f_op_f32(f32(-1f) * -833f)), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(var_0.b.b.x, ~u_input.a.x), -50465i, _wgslsmith_div_i32(var_0.c.b.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.a.x), -1i))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(61070u, 4294967295u, u_input.b.x) | ~vec3<u32>(u_input.b.x, 22373u, 10392u)), min(~u_input.b, vec3<u32>(361u, u_input.c, ~17307u)), u_input.b), -_wgslsmith_mod_i32(-18980i, ~u_input.a.x));
}


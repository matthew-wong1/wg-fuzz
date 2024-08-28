struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -508f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = 761f;
    var var_0 = vec2<bool>(false, arg_0.x);
    var_0 = select(select(!arg_0.wz, vec2<bool>(select(var_0.x, any(vec2<bool>(true, false)), all(vec2<bool>(false, arg_0.x))), all(vec3<bool>(var_0.x, var_0.x, true))), all(vec4<bool>(arg_0.x, var_0.x, false, arg_0.x))), !select(!(!vec2<bool>(true, var_0.x)), select(arg_0.zz, arg_0.ww, any(arg_0)), vec2<bool>(arg_0.x | false, false)), select(var_0.x, false, (2147483647i > u_input.a.x) || any(!arg_0.zy)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(278f))) * 790f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(654f + -152f), -1234f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1759f)) * _wgslsmith_f_op_f32(-774f - _wgslsmith_div_f32(1052f, 728f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = firstLeadingBit(~(~(~24011i) | (arg_1.a.d.x >> (firstLeadingBit(u_input.d.x) % 32u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.a.x, _wgslsmith_div_f32(-372f, _wgslsmith_f_op_f32(-arg_1.b.x)))) + -459f);
    var var_2 = abs(vec3<i32>(2147483647i, _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(firstLeadingBit(63949i), 2147483647i ^ u_input.a.x)), _wgslsmith_mult_i32(-1i, u_input.a.x)));
    var_2 = firstTrailingBit(~reverseBits(~vec3<i32>(-2147483647i, u_input.a.x, -31762i))) >> (reverseBits(vec3<u32>(~u_input.b, ~1u, _wgslsmith_mult_u32(0u, 4294967295u)) << (u_input.c.ywz % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1278f)) * var_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.a.a.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, any(vec2<bool>(true, true)), arg_1.b.a.e.x, any(arg_0.a.b)))) <= 662f, Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x), vec2<f32>(727f, arg_1.d.a.x)))))));
    let var_0 = ~_wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(u_input.d.x, _wgslsmith_add_u32(1u, 39300u)) | ~u_input.c.yw);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1522f)) + arg_0.a.a.x))));
    var var_1 = vec4<i32>(firstTrailingBit(1i), arg_1.e.d.x, ~(~(-arg_0.a.d.x)), _wgslsmith_add_i32(arg_0.a.d.x, ~(-u_input.a.x)));
    var var_2 = arg_1.e.a;
    return arg_0.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(256f, 325f, arg_1.a.x), vec2<bool>(false, arg_1.c), true, vec2<i32>(-2529i, 0i), arg_1.e), vec2<f32>(arg_0, 1285f)), Struct_3(vec3<i32>(2147483647i, arg_1.d.x, 1i), Struct_2(arg_1, vec2<f32>(-1000f, 1439f)), 431f, arg_1, arg_1)).a.x - -148f))));
    let var_0 = Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, -42485i, 105441i), ~(-vec3<i32>(2147483647i, -1i, arg_1.d.x) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(15433i, -1i, -43181i), vec3<i32>(arg_1.d.x, 36445i, 0i)))), Struct_2(func_2(Struct_2(func_2(Struct_2(arg_1, arg_1.a.yy), Struct_3(vec3<i32>(arg_1.d.x, u_input.a.x, arg_1.d.x), Struct_2(arg_1, arg_1.a.xy), 282f, arg_1, Struct_1(vec3<f32>(192f, arg_0, 1394f), vec2<bool>(true, arg_1.b.x), arg_1.b.x, vec2<i32>(arg_1.d.x, arg_1.d.x), vec3<bool>(false, arg_1.e.x, false)))), arg_1.a.yx), Struct_3(-vec3<i32>(arg_1.d.x, arg_1.d.x, u_input.a.x), Struct_2(Struct_1(arg_1.a, vec2<bool>(false, false), arg_1.c, vec2<i32>(u_input.a.x, 1i), arg_1.e), vec2<f32>(arg_0, arg_1.a.x)), -1222f, func_2(Struct_2(arg_1, arg_1.a.xz), Struct_3(vec3<i32>(-3582i, arg_1.d.x, 1i), Struct_2(arg_1, vec2<f32>(arg_0, -576f)), arg_1.a.x, arg_1, Struct_1(arg_1.a, vec2<bool>(arg_1.e.x, false), arg_1.b.x, arg_1.d, arg_1.e))), func_2(Struct_2(Struct_1(arg_1.a, vec2<bool>(false, arg_1.e.x), arg_1.c, vec2<i32>(-2147483647i, 2930i), vec3<bool>(arg_1.b.x, false, arg_1.b.x)), vec2<f32>(arg_0, arg_0)), Struct_3(vec3<i32>(1i, 42039i, 2147483647i), Struct_2(arg_1, vec2<f32>(-1198f, -798f)), -261f, Struct_1(arg_1.a, vec2<bool>(false, arg_1.e.x), arg_1.e.x, vec2<i32>(arg_1.d.x, 2147483647i), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_0), arg_1.e.xx, true, vec2<i32>(arg_1.d.x, u_input.a.x), arg_1.e))))), vec2<f32>(567f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -648f), 114f, false)), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-1000f, arg_1.a.x), _wgslsmith_f_op_f32(150f + -1000f), _wgslsmith_f_op_f32(min(arg_1.a.x, arg_0))), _wgslsmith_f_op_vec3_f32(-arg_1.a))), arg_1.e.zz, arg_1.c, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.d.x, u_input.a.x ^ 54017i), countOneBits(~vec2<i32>(1i, arg_1.d.x))), !vec3<bool>(arg_1.c, arg_1.b.x, arg_1.e.x)), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(1113f, -294f, 785f), arg_1.e.zx, arg_1.c, u_input.a, arg_1.e), arg_1.a.xy), Struct_3(vec3<i32>(21219i, 14548i, u_input.a.x), Struct_2(arg_1, vec2<f32>(arg_1.a.x, 1207f)), arg_0, Struct_1(arg_1.a, vec2<bool>(false, arg_1.c), true, u_input.a, arg_1.e), Struct_1(arg_1.a, vec2<bool>(arg_1.e.x, false), arg_1.b.x, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(arg_1.c, true, true)))), arg_1.a.yy), Struct_3(firstTrailingBit(firstLeadingBit(vec3<i32>(22073i, u_input.a.x, 12165i))), Struct_2(Struct_1(arg_1.a, vec2<bool>(true, arg_1.c), arg_1.b.x, u_input.a, arg_1.e), _wgslsmith_f_op_vec2_f32(-arg_1.a.zx)), 1333f, func_2(Struct_2(Struct_1(vec3<f32>(-1106f, -1000f, arg_0), vec2<bool>(true, arg_1.b.x), false, arg_1.d, vec3<bool>(arg_1.e.x, true, false)), arg_1.a.zy), Struct_3(vec3<i32>(u_input.a.x, 6807i, u_input.a.x), Struct_2(Struct_1(vec3<f32>(arg_0, arg_1.a.x, -506f), arg_1.e.xy, true, vec2<i32>(-39835i, arg_1.d.x), arg_1.e), vec2<f32>(-1133f, arg_1.a.x)), -1000f, arg_1, Struct_1(arg_1.a, arg_1.e.zy, arg_1.c, arg_1.d, arg_1.e))), arg_1)));
    let var_1 = !select(vec4<bool>((u_input.a.x != var_0.a.x) != !arg_1.c, true, var_0.b.a.c, true), vec4<bool>(!arg_1.b.x, var_0.b.a.b.x, !func_2(var_0.b, Struct_3(vec3<i32>(arg_1.d.x, arg_1.d.x, u_input.a.x), var_0.b, 480f, Struct_1(vec3<f32>(2124f, 1472f, arg_1.a.x), arg_1.b, false, vec2<i32>(arg_1.d.x, u_input.a.x), arg_1.e), Struct_1(var_0.b.a.a, var_0.e.e.yx, var_0.e.b.x, u_input.a, var_0.e.e))).c, all(!vec4<bool>(true, arg_1.b.x, true, var_0.e.b.x))), vec4<bool>(var_0.b.a.b.x, true, !(var_0.d.e.x | arg_1.e.x), false));
    let var_2 = var_0.d;
    return select(select(select(select(vec3<bool>(true, arg_1.e.x, var_2.e.x), !vec3<bool>(var_2.e.x, false, var_0.e.b.x), all(vec4<bool>(false, true, var_2.e.x, true))), select(!var_1.wzz, select(var_1.xwz, vec3<bool>(var_0.e.c, var_0.e.e.x, var_2.c), vec3<bool>(true, var_1.x, false)), var_1.wwy), true), vec3<bool>(all(var_2.e.zz), var_0.b.a.e.x, any(arg_1.e)), var_0.b.a.e.x), !(!select(vec3<bool>(true, false, true), select(var_1.wwx, arg_1.e, true), true)), select(var_0.e.e, vec3<bool>(all(!var_0.b.a.b), 72018u > arg_2, (var_2.a.x == var_0.e.a.x) || var_0.e.e.x), vec3<bool>(var_2.e.x & var_0.b.a.e.x, var_0.b.a.c, all(var_1) && false)));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-454f, 955f, 982f), vec3<f32>(-2851f, -321f, -103f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-658f, -1351f, -1000f))), vec3<f32>(-1000f, -324f, -419f), arg_2.x)))), -1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(205f)) * _wgslsmith_f_op_f32(f32(-1f) * -1313f))));
    global0 = -205f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))) * -473f));
    let var_1 = Struct_1(var_0, arg_0.xz, _wgslsmith_sub_u32(~(u_input.d.x & u_input.d.x), ~reverseBits(u_input.c.x)) >= _wgslsmith_mult_u32(u_input.d.x, ~_wgslsmith_mult_u32(23819u, 31443u)), ~_wgslsmith_sub_vec2_i32(arg_1.zx, vec2<i32>(-33796i, firstTrailingBit(-2147483647i))), !vec3<bool>(arg_3, false, true));
    var var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-628f))), _wgslsmith_f_op_f32(704f - _wgslsmith_f_op_f32(-399f + -2725f)))) * -1103f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(101f * 488f))))) + _wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1292f, -1082f)), _wgslsmith_f_op_f32(f32(-1f) * -1153f))), func_2(Struct_2(Struct_1(vec3<f32>(839f, 2602f, -567f), vec2<bool>(true, false), true, vec2<i32>(-1i, u_input.a.x), vec3<bool>(true, false, false)), vec2<f32>(1000f, 458f)), Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<f32>(-2000f, -627f, -163f), vec2<bool>(true, false), true, u_input.a, vec3<bool>(false, true, false)), vec2<f32>(130f, -137f)), 786f, Struct_1(vec3<f32>(446f, 213f, -405f), vec2<bool>(true, false), false, vec2<i32>(-16582i, u_input.a.x), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-924f, 1000f, 1000f), vec2<bool>(false, true), false, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, true, false)))), u_input.c.x), vec3<i32>(reverseBits(15713i), -33478i, u_input.a.x), vec3<bool>(true, (52049i > u_input.a.x) == true, false), true)));
    let var_0 = 1029f;
    let var_1 = all(vec4<bool>(true, all(vec4<bool>(true, false, var_0 >= var_0, any(vec2<bool>(true, false)))), true, !(var_0 != -1111f)));
    var var_2 = Struct_3(select(vec3<i32>(abs(u_input.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -21265i), vec3<i32>(u_input.a.x, -24574i, -8180i)), 27071i), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.a.x), ~2147483647i, 2147483647i), abs(countOneBits(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)))), !any(!vec2<bool>(var_1, var_1))), Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(112f, 519f, -376f), vec2<bool>(var_1, false), true, u_input.a, vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, var_0)))), Struct_3(vec3<i32>(u_input.a.x, -1i, -1i), Struct_2(Struct_1(vec3<f32>(462f, 402f, var_0), vec2<bool>(var_1, var_1), var_1, u_input.a, vec3<bool>(var_1, var_1, false)), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -414f), func_2(Struct_2(Struct_1(vec3<f32>(-963f, 1000f, -102f), vec2<bool>(true, var_1), var_1, u_input.a, vec3<bool>(var_1, true, var_1)), vec2<f32>(-1047f, var_0)), Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, -15709i), Struct_2(Struct_1(vec3<f32>(-1555f, 1580f, var_0), vec2<bool>(var_1, true), var_1, vec2<i32>(17092i, u_input.a.x), vec3<bool>(var_1, var_1, false)), vec2<f32>(var_0, var_0)), var_0, Struct_1(vec3<f32>(var_0, var_0, -1000f), vec2<bool>(var_1, var_1), var_1, u_input.a, vec3<bool>(false, false, var_1)), Struct_1(vec3<f32>(723f, 836f, var_0), vec2<bool>(false, var_1), var_1, u_input.a, vec3<bool>(var_1, true, var_1)))), func_2(Struct_2(Struct_1(vec3<f32>(1000f, 575f, var_0), vec2<bool>(false, true), false, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, var_1, var_1)), vec2<f32>(var_0, var_0)), Struct_3(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<f32>(379f, var_0, var_0), vec2<bool>(true, true), var_1, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(var_1, var_1, var_1)), vec2<f32>(var_0, var_0)), var_0, Struct_1(vec3<f32>(var_0, var_0, -1097f), vec2<bool>(false, false), false, vec2<i32>(-2147483647i, u_input.a.x), vec3<bool>(var_1, false, var_1)), Struct_1(vec3<f32>(var_0, -535f, var_0), vec2<bool>(true, false), false, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(false, false, var_1)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0, -359f, var_1)), _wgslsmith_f_op_f32(floor(638f)), -1226f != var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1293f)) + _wgslsmith_f_op_f32(-var_0))), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(var_0, 1232f, var_0), vec2<bool>(false, true), var_1, vec2<i32>(u_input.a.x, 0i), vec3<bool>(true, true, false)), vec2<f32>(471f, var_0)), Struct_3(vec3<i32>(u_input.a.x, 18147i, u_input.a.x), Struct_2(Struct_1(vec3<f32>(505f, -873f, var_0), vec2<bool>(var_1, true), false, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(var_1, var_1, var_1)), vec2<f32>(var_0, 983f)), -161f, Struct_1(vec3<f32>(var_0, var_0, -395f), vec2<bool>(var_1, true), false, vec2<i32>(-2147483647i, -14418i), vec3<bool>(true, var_1, var_1)), Struct_1(vec3<f32>(var_0, 956f, var_0), vec2<bool>(var_1, var_1), false, vec2<i32>(2147483647i, u_input.a.x), vec3<bool>(var_1, false, var_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 1610f), vec2<f32>(204f, 168f), false)) + vec2<f32>(var_0, var_0))), Struct_3(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 48902i, -21667i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.a.x, 0i)), Struct_2(Struct_1(vec3<f32>(348f, var_0, var_0), vec2<bool>(var_1, var_1), var_1, vec2<i32>(u_input.a.x, 2147483647i), vec3<bool>(true, var_1, true)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1752f, var_0), vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_f32(-233f - -1275f), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-215f, 954f, var_0), vec3<f32>(505f, var_0, var_0)), select(vec2<bool>(false, true), vec2<bool>(true, var_1), vec2<bool>(var_1, var_1)), false, vec2<i32>(u_input.a.x, -1i) << (vec2<u32>(u_input.c.x, u_input.d.x) % vec2<u32>(32u)), select(vec3<bool>(var_1, true, true), vec3<bool>(true, false, false), var_1)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1208f, var_0, var_0)), func_5(var_0, Struct_1(vec3<f32>(-1334f, 194f, -909f), vec2<bool>(true, var_1), true, u_input.a, vec3<bool>(var_1, true, var_1)), 58897u).xz, all(vec3<bool>(var_1, true, var_1)), vec2<i32>(1i, 0i), func_5(var_0, Struct_1(vec3<f32>(477f, -1522f, 1729f), vec2<bool>(var_1, false), true, vec2<i32>(-28547i, -33303i), vec3<bool>(var_1, var_1, false)), 4294967295u)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_div_f32(-1860f, var_0))), select(func_2(Struct_2(Struct_1(vec3<f32>(-456f, var_0, var_0), vec2<bool>(true, false), var_1, u_input.a, vec3<bool>(var_1, var_1, var_1)), vec2<f32>(var_0, -1000f)), Struct_3(vec3<i32>(u_input.a.x, 2147483647i, 1i), Struct_2(Struct_1(vec3<f32>(var_0, -457f, var_0), vec2<bool>(false, var_1), false, vec2<i32>(u_input.a.x, 29991i), vec3<bool>(false, false, true)), vec2<f32>(-147f, -2104f)), 2379f, Struct_1(vec3<f32>(757f, 1497f, var_0), vec2<bool>(var_1, var_1), var_1, u_input.a, vec3<bool>(var_1, var_1, false)), Struct_1(vec3<f32>(-815f, var_0, var_0), vec2<bool>(var_1, true), false, u_input.a, vec3<bool>(true, false, var_1)))).e.xy, func_5(-748f, Struct_1(vec3<f32>(-770f, 1182f, 1449f), vec2<bool>(true, var_1), var_1, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, false, var_1)), u_input.d.x).yz, vec2<bool>(all(vec4<bool>(true, true, false, var_1)), true)), true, _wgslsmith_div_vec2_i32(max(vec2<i32>(52392i, 1i) ^ u_input.a, u_input.a), vec2<i32>(u_input.a.x, 0i)), func_2(Struct_2(Struct_1(vec3<f32>(-815f, 320f, var_0), vec2<bool>(true, var_1), var_1, vec2<i32>(-2147483647i, 15403i), vec3<bool>(var_1, var_1, var_1)), vec2<f32>(var_0, var_0)), Struct_3(vec3<i32>(2147483647i, 1i, u_input.a.x), Struct_2(Struct_1(vec3<f32>(var_0, var_0, var_0), vec2<bool>(true, var_1), var_1, vec2<i32>(-39379i, u_input.a.x), vec3<bool>(true, true, false)), vec2<f32>(-994f, 316f)), var_0, Struct_1(vec3<f32>(var_0, 216f, -1069f), vec2<bool>(var_1, var_1), true, u_input.a, vec3<bool>(var_1, true, false)), Struct_1(vec3<f32>(var_0, 197f, 727f), vec2<bool>(var_1, var_1), var_1, vec2<i32>(2147483647i, u_input.a.x), vec3<bool>(false, var_1, false)))).e));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(967f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-830f + _wgslsmith_f_op_f32(trunc(-160f))))) * _wgslsmith_f_op_f32(trunc(1000f))));
    global0 = _wgslsmith_f_op_f32(-848f + _wgslsmith_f_op_f32(func_1()));
    var var_0 = Struct_3(vec3<i32>(reverseBits(2147483647i), -1i, ~(~min(u_input.a.x, u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(298f, 1001f, 242f) * vec3<f32>(141f, 1135f, -204f)), vec3<f32>(182f, -184f, 609f))), vec2<bool>(true, true), false, ~u_input.a, vec3<bool>(true, true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(650f, -1729f), vec2<f32>(599f, 384f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1266f, 117f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2072f, 356f))))), 162f, func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(983f, 852f, -1144f), vec2<bool>(false, true), false, vec2<i32>(-2147483647i, -31264i), vec3<bool>(true, true, false)), vec2<f32>(1613f, -901f)), Struct_3(vec3<i32>(14337i, u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<f32>(-351f, -2170f, 460f), vec2<bool>(true, false), false, vec2<i32>(100462i, 16309i), vec3<bool>(false, false, false)), vec2<f32>(905f, -269f)), -539f, Struct_1(vec3<f32>(-180f, 1118f, 1000f), vec2<bool>(true, true), true, vec2<i32>(u_input.a.x, -8922i), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(839f, 602f, 154f), vec2<bool>(false, true), true, u_input.a, vec3<bool>(false, false, false)))), vec2<f32>(277f, -978f)), Struct_3(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 23222i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 36907i))), Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(-289f, 641f, 2277f), vec2<bool>(true, false), true, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(false, true, false)), vec2<f32>(989f, 310f)), Struct_3(vec3<i32>(1436i, -4387i, u_input.a.x), Struct_2(Struct_1(vec3<f32>(-2130f, 238f, -1729f), vec2<bool>(true, true), false, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), vec2<f32>(2371f, -1620f)), 475f, Struct_1(vec3<f32>(821f, 1165f, -815f), vec2<bool>(false, true), true, vec2<i32>(2147483647i, u_input.a.x), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-1000f, -574f, -3325f), vec2<bool>(true, false), true, vec2<i32>(u_input.a.x, -2147483647i), vec3<bool>(true, true, false)))), vec2<f32>(738f, -359f)), 304f, func_2(Struct_2(Struct_1(vec3<f32>(1132f, -1750f, 750f), vec2<bool>(true, false), true, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(false, false, true)), vec2<f32>(-606f, -1471f)), Struct_3(vec3<i32>(0i, -16669i, 18756i), Struct_2(Struct_1(vec3<f32>(1121f, 613f, 242f), vec2<bool>(true, true), true, u_input.a, vec3<bool>(false, true, false)), vec2<f32>(-377f, -648f)), 1610f, Struct_1(vec3<f32>(254f, -937f, 592f), vec2<bool>(false, false), false, u_input.a, vec3<bool>(false, false, true)), Struct_1(vec3<f32>(346f, -1681f, -247f), vec2<bool>(true, false), true, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)))), func_2(Struct_2(Struct_1(vec3<f32>(-1202f, -839f, -682f), vec2<bool>(false, false), false, u_input.a, vec3<bool>(false, true, false)), vec2<f32>(-228f, 567f)), Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, 5945i), Struct_2(Struct_1(vec3<f32>(821f, 186f, -166f), vec2<bool>(true, true), true, vec2<i32>(u_input.a.x, 2147483647i), vec3<bool>(true, true, true)), vec2<f32>(-236f, 1731f)), -1274f, Struct_1(vec3<f32>(644f, 2328f, -2080f), vec2<bool>(true, false), true, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(313f, 1000f, -1059f), vec2<bool>(true, true), true, u_input.a, vec3<bool>(false, true, false)))))), func_2(Struct_2(Struct_1(vec3<f32>(404f, -1000f, -852f), vec2<bool>(true, true), true, u_input.a, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, -1000f))))), Struct_3(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(23145i, 0i, 0i), vec3<bool>(true, false, false)), Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(1024f, 364f, -200f), vec2<bool>(false, false), true, u_input.a, vec3<bool>(true, false, false)), vec2<f32>(-182f, -795f)), Struct_3(vec3<i32>(-1i, u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<f32>(345f, -1124f, 1777f), vec2<bool>(false, false), true, vec2<i32>(21560i, u_input.a.x), vec3<bool>(false, false, false)), vec2<f32>(-921f, -679f)), -1302f, Struct_1(vec3<f32>(568f, 1000f, -693f), vec2<bool>(false, false), false, vec2<i32>(u_input.a.x, -17834i), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-487f, -1021f, 337f), vec2<bool>(true, true), false, vec2<i32>(-71446i, u_input.a.x), vec3<bool>(false, true, false)))), vec2<f32>(-263f, -523f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1705f * -102f))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-340f, -409f, -1000f))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), func_5(1447f, Struct_1(vec3<f32>(926f, 3285f, -856f), vec2<bool>(true, false), true, u_input.a, vec3<bool>(false, false, true)), u_input.c.x).x, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec3<bool>(true, false, false)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1551f, -905f, 813f))), func_2(Struct_2(Struct_1(vec3<f32>(1000f, -1939f, 1000f), vec2<bool>(true, true), true, u_input.a, vec3<bool>(true, false, true)), vec2<f32>(357f, -423f)), Struct_3(vec3<i32>(34412i, u_input.a.x, 5860i), Struct_2(Struct_1(vec3<f32>(-1269f, -1000f, -1000f), vec2<bool>(true, false), true, u_input.a, vec3<bool>(false, true, true)), vec2<f32>(502f, 866f)), 469f, Struct_1(vec3<f32>(-402f, -610f, 1000f), vec2<bool>(true, false), false, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(1441f, -1000f, -1451f), vec2<bool>(false, true), false, u_input.a, vec3<bool>(false, false, false)))).e.yz, func_2(Struct_2(Struct_1(vec3<f32>(1040f, -1608f, -404f), vec2<bool>(true, false), false, vec2<i32>(u_input.a.x, 2147483647i), vec3<bool>(true, false, false)), vec2<f32>(995f, -1167f)), Struct_3(vec3<i32>(26630i, u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<f32>(891f, 1304f, -1000f), vec2<bool>(true, false), true, vec2<i32>(-2147483647i, -1i), vec3<bool>(false, true, false)), vec2<f32>(557f, -311f)), 1000f, Struct_1(vec3<f32>(798f, 1000f, -376f), vec2<bool>(false, false), true, vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(false, false, false)), Struct_1(vec3<f32>(-1000f, 1040f, 622f), vec2<bool>(false, false), false, vec2<i32>(2418i, u_input.a.x), vec3<bool>(true, true, false)))).e.x, u_input.a, vec3<bool>(false, true, false)))));
    var_0 = Struct_3(_wgslsmith_sub_vec3_i32(-var_0.a, vec3<i32>(_wgslsmith_add_i32(var_0.d.d.x, countOneBits(57829i)), reverseBits(countOneBits(1i)), i32(-1i) * -u_input.a.x)), var_0.b, 1007f, func_2(Struct_2(Struct_1(vec3<f32>(var_0.c, -224f, -495f), vec2<bool>(true, true), false, var_0.d.d, var_0.d.e), vec2<f32>(272f, _wgslsmith_f_op_f32(-var_0.b.b.x))), Struct_3(var_0.a, var_0.b, _wgslsmith_f_op_f32(-1f), var_0.e, Struct_1(vec3<f32>(555f, 793f, var_0.c), vec2<bool>(var_0.b.a.c, var_0.e.b.x), 1i <= var_0.b.a.d.x, u_input.a, vec3<bool>(true, var_0.b.a.b.x, true)))), var_0.d);
    global0 = -459f;
    var var_1 = select(vec2<u32>(~select(2815u, ~34728u, u_input.c.x >= u_input.d.x), 0u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 1u)), min(min(u_input.c.zx, u_input.d.zx), _wgslsmith_mult_vec2_u32(u_input.d.zy, u_input.c.yw))), countOneBits(~(u_input.c.yy ^ u_input.d.yx))), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zzz, ~reverseBits(9775u));
}


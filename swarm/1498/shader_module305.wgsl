struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = select(select(vec2<bool>(true, select(all(arg_2.a), arg_1, arg_1)), !vec2<bool>(true, arg_1), arg_2.a.zx), select(!vec2<bool>(true, all(vec2<bool>(arg_1, arg_2.e))), !arg_2.a.zx, arg_1), true);
    let var_1 = false;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + arg_2.c))));
    var_0 = select(!vec2<bool>(_wgslsmith_f_op_f32(arg_3.x - -494f) <= arg_2.c, arg_1), vec2<bool>(true, any(!vec4<bool>(arg_2.e, false, var_1, false))), select(arg_2.a.xy, !select(vec2<bool>(var_1, arg_1), vec2<bool>(true, true), select(arg_1, var_0.x, var_1)), vec2<bool>(!(var_2.x >= 673f), any(arg_2.a.zy))));
    var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, -318f, _wgslsmith_f_op_f32(select(arg_2.c, _wgslsmith_f_op_f32(-arg_3.x), true)), arg_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, arg_3.x, var_2.x, arg_2.c), vec4<f32>(arg_3.x, -606f, var_2.x, var_2.x))), vec4<f32>(var_2.x, arg_3.x, arg_3.x, 891f))) * vec4<f32>(-327f, -1093f, _wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(arg_3.x + 367f))))));
    return vec2<u32>(~(~arg_2.d.x), 1u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_1(select(!arg_0.a, arg_0.a, true), true, 968f, ~u_input.a << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), func_3(vec3<i32>(arg_1.x, arg_1.x, 58189i), arg_2, arg_0, vec3<f32>(-755f, arg_0.c, -770f))) % vec2<u32>(32u)), !all(vec4<bool>(true, arg_0.e, arg_2, arg_2)) | true);
    let var_1 = var_0;
    var var_2 = arg_0.e;
    var_2 = any(vec4<bool>(~min(61218u, 17006u) != ~(~arg_0.d.x), false, arg_2, arg_2));
    let var_3 = arg_1.x;
    return Struct_2(Struct_1(var_0.a, true, _wgslsmith_f_op_f32(floor(arg_0.c)), _wgslsmith_add_vec2_u32(~u_input.a, var_1.d >> (var_1.d % vec2<u32>(32u))) & func_3(firstTrailingBit(vec3<i32>(arg_1.x, 1i, -52816i)), var_1.a.x, Struct_1(var_0.a, true, 208f, vec2<u32>(arg_0.d.x, var_0.d.x), var_1.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(551f, var_1.c, arg_0.c), vec3<f32>(212f, var_0.c, 707f))), false));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: bool) -> f32 {
    var var_0 = func_2(arg_2.b, _wgslsmith_sub_vec2_i32(((arg_1.wz >> (u_input.a % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(53065u, 1u), vec2<u32>(0u, 0u)) % vec2<u32>(32u))) << (vec2<u32>(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)) % vec2<u32>(32u)), select(arg_1.xy, vec2<i32>(arg_1.x, 2147483647i), select(arg_2.b.a.xx, arg_2.b.a.zz, vec2<bool>(false, arg_3))) ^ (arg_1.wy | (vec2<i32>(arg_1.x, -49141i) & vec2<i32>(2147483647i, arg_1.x)))), false);
    var_0 = Struct_2(Struct_1(vec3<bool>(arg_3, true, any(vec4<bool>(false, true, var_0.a.b, false))), arg_3, arg_2.c.x, min(arg_2.b.d, ~(~vec2<u32>(4294967295u, 0u))), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(844f * var_0.a.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x))), 879f));
    var_0 = Struct_2(Struct_1(!vec3<bool>(all(arg_2.b.a), !arg_3, !var_0.a.a.x), all(vec4<bool>(!arg_2.b.e, var_0.a.a.x, false, var_0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.c, -1621f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c.x), -1000f))), ~abs(var_0.a.d & var_0.a.d), all(!vec4<bool>(arg_2.b.a.x, arg_2.b.b, false, var_0.a.a.x))));
    var var_2 = Struct_3(vec3<bool>(true, !select(arg_3, var_0.a.a.x, arg_3) || any(select(vec3<bool>(false, true, arg_3), vec3<bool>(false, arg_2.b.a.x, false), true)), func_2(Struct_1(func_2(arg_2.b, arg_1.xz, false).a.a, !var_0.a.a.x, 1435f, ~arg_2.b.d, !arg_2.a.x), -firstTrailingBit(arg_1.wy), select(var_0.a.e, false, select(true, false, var_0.a.e))).a.a.x), func_2(var_0.a, vec2<i32>(firstLeadingBit(-1i), abs(arg_1.x) >> (var_0.a.d.x % 32u)), all(vec3<bool>(arg_3, arg_2.a.x, var_0.a.b)) || (true && any(vec4<bool>(true, true, arg_2.b.a.x, false)))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -442f, -177f))))));
    return var_1.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_3;
    var_0 = arg_3;
    var var_1 = func_2(Struct_1(!(!(!arg_3.b.a)), ~(u_input.a.x << (arg_3.b.d.x % 32u)) >= (1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.d.x, 4294967295u, 41785u), vec3<u32>(arg_3.b.d.x, 11649u, 37296u))), var_0.b.c, firstTrailingBit(vec2<u32>(arg_0.x, min(7558u, arg_0.x))), arg_3.b.e), vec2<i32>(1i, 1i), !all(!arg_3.a)).a.a;
    let var_2 = true;
    var var_3 = Struct_2(func_2(var_0.b, select(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(27239i, -1i)), _wgslsmith_div_vec2_i32(~vec2<i32>(22514i, 0i), vec2<i32>(2147483647i, 23607i)), vec2<bool>(any(var_1.zz), !var_0.a.x)), var_0.a.x).a);
    return func_2(Struct_1(select(vec3<bool>(1u > arg_3.b.d.x, all(vec4<bool>(var_3.a.a.x, var_0.a.x, false, arg_2)), true), arg_3.b.a, vec3<bool>(var_1.x, !var_0.a.x, false)), false, func_2(func_2(func_2(Struct_1(vec3<bool>(arg_3.b.b, var_2, var_3.a.a.x), false, arg_1.x, var_3.a.d, true), vec2<i32>(1i, 2147483647i), var_3.a.e).a, firstLeadingBit(vec2<i32>(-1i, 25444i)), true).a, vec2<i32>(-16101i, -2147483647i), var_2).a.c, vec2<u32>(select(125024u | var_3.a.d.x, 4294967295u, var_3.a.d.x >= 4294967295u), 0u), false), vec2<i32>(_wgslsmith_mult_i32(~(~0i), _wgslsmith_clamp_i32(1i, ~35321i, firstLeadingBit(0i))), _wgslsmith_div_i32(~1i, _wgslsmith_clamp_i32(select(52460i, -50374i, true), max(-18865i, -8045i), -1i))), all(!var_3.a.a.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = func_4(firstLeadingBit(~select(~vec2<u32>(u_input.a.x, 57892u), ~vec2<u32>(u_input.a.x, 7570u), select(true, false, true))), vec4<f32>(-1331f, _wgslsmith_f_op_f32(-1f), -758f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(678f, 258f), _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.a.x, 0u, 4600u, 4294967295u), vec4<i32>(var_0, 15302i, var_0, 0i), Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false), false, 125f, u_input.a, false), vec3<f32>(-1000f, -611f, 1365f)), false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f + -149f) + _wgslsmith_f_op_f32(-290f - 356f)))), all(vec3<bool>(true, func_2(func_2(Struct_1(vec3<bool>(true, false, false), true, 1077f, u_input.a, false), vec2<i32>(-39246i, var_0), false).a, -vec2<i32>(45679i, -2147483647i), any(vec4<bool>(true, true, true, false))).a.b, !all(vec4<bool>(false, false, false, true)))), Struct_3(func_2(Struct_1(func_2(Struct_1(vec3<bool>(true, false, false), false, 399f, u_input.a, false), vec2<i32>(var_0, 1i), true).a.a, true, _wgslsmith_f_op_f32(min(-824f, -1000f)), u_input.a, true), ~vec2<i32>(var_0, 0i), false).a.a, func_2(func_2(Struct_1(vec3<bool>(false, true, true), true, 361f, u_input.a, true), vec2<i32>(var_0, 24241i) & vec2<i32>(1i, 1i), true).a, countOneBits(vec2<i32>(2147483647i, var_0)), false).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1202f, 1560f, 270f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1849f, -627f, 872f))))));
    let var_2 = select(!(!vec4<bool>(all(vec4<bool>(false, false, true, var_1.a.e)), false, var_1.a.a.x, !var_1.a.e)), !(!(!(!vec4<bool>(false, var_1.a.a.x, var_1.a.a.x, var_1.a.b)))), true);
    var var_3 = Struct_1(!(!vec3<bool>(!var_1.a.e, var_1.a.a.x, func_2(Struct_1(vec3<bool>(var_1.a.e, var_2.x, var_1.a.e), true, var_1.a.c, vec2<u32>(var_1.a.d.x, 19063u), true), vec2<i32>(var_0, var_0), false).a.e)), !var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.a.c)))), firstTrailingBit(u_input.a) | var_1.a.d, select(select(var_2.x, true, !select(false, true, true)), var_2.x, true));
    var_3 = Struct_1(vec3<bool>((select(36368u, 14482u, false) | 17241u) == 1u, var_2.x, true), 0i == (max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0, 60052i), vec3<i32>(var_0, -30905i, 14207i))) << (_wgslsmith_div_u32(72210u, _wgslsmith_clamp_u32(4294967295u, 1u, var_3.d.x)) % 32u)), var_1.a.c, firstLeadingBit(_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a & (var_3.d | vec2<u32>(var_3.d.x, 1u)))), var_3.a.x);
    var_3 = Struct_1(select(func_2(func_2(func_2(Struct_1(vec3<bool>(true, var_1.a.a.x, false), var_2.x, 1178f, vec2<u32>(1u, 4294967295u), var_1.a.b), vec2<i32>(0i, 2147483647i), var_3.a.x).a, _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-58019i, 23455i)), !var_2.x).a, _wgslsmith_add_vec2_i32(vec2<i32>(-31506i, var_0), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -21263i), vec2<i32>(-2147483647i, var_0), vec2<i32>(2147483647i, -13897i))), (var_3.d.x ^ var_3.d.x) < _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.d.x, var_3.d.x, 0u, 52120u), vec4<u32>(u_input.a.x, var_1.a.d.x, 1990u, var_1.a.d.x))).a.a, vec3<bool>(false, var_1.a.e, all(!var_2)), func_4(firstTrailingBit(vec2<u32>(var_1.a.d.x, var_3.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(388f, var_3.c, var_1.a.c, var_3.c) - vec4<f32>(478f, var_3.c, var_1.a.c, 389f)), _wgslsmith_div_i32(0i, var_0) <= -47378i, Struct_3(vec3<bool>(false, var_1.a.a.x, var_3.e), var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(913f, -608f, -738f)))).a.a), false, var_3.c, vec2<u32>(_wgslsmith_div_u32(7089u, _wgslsmith_add_u32(~var_3.d.x, u_input.a.x)), func_2(func_2(Struct_1(vec3<bool>(var_2.x, false, true), var_1.a.a.x, var_1.a.c, u_input.a, var_1.a.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-52728i, var_0), vec2<i32>(var_0, -13909i)), !var_2.x).a, ~(~vec2<i32>(var_0, 3814i)), true).a.d.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}


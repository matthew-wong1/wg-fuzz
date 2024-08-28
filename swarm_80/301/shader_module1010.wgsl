struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = max(vec4<i32>(_wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(36071i, 55937i, 2147483647i)), vec3<i32>(u_input.a.x, u_input.a.x, ~51554i)), -34629i, 7427i << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.c.x, 72720u), arg_0.b, vec3<u32>(0u, arg_0.b.x, u_input.b)), ~arg_0.c.yxx) % 32u), 2147483647i), vec4<i32>(2147483647i, countOneBits(~min(u_input.a.x, u_input.a.x)), u_input.a.x, 8714i));
    var var_1 = Struct_3(abs(70959u), arg_0.c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - arg_0.a.x)), -598f, _wgslsmith_div_f32(arg_0.a.x, 2248f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(arg_0.a.x)))))));
    let var_4 = all(vec3<bool>(true, !all(vec2<bool>(false, true)), false));
    return vec4<u32>(min(~(~_wgslsmith_mult_u32(var_1.a, 1u)), _wgslsmith_div_u32(var_1.b, 12453u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~arg_0.c.zyx, ~arg_0.c.wwx), select(_wgslsmith_div_u32(46701u, arg_0.c.x), 6907u, var_4)), 1u, var_1.b);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~(i32(-1i) * -8714i) <= -arg_0.x;
    var var_1 = reverseBits(u_input.a.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(-160f - -1626f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1841f, -412f, 1310f)))), reverseBits(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(36763u, 35884u, 40306u))), ~vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, 3418u, 4294967295u)), _wgslsmith_clamp_u32(u_input.b, 25881u, 0u), ~u_input.b) << (~vec4<u32>(57770u, 0u, 0u, select(4294967295u, 0u, true)) % vec4<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(_wgslsmith_div_i32(-arg_0.x, firstLeadingBit(-53663i)), countOneBits(1i))), any(select(vec2<bool>(!var_0, var_0), select(vec2<bool>(true, var_0), vec2<bool>(true, false), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), var_0)), any(!vec4<bool>(var_0, var_0, false, var_0)))), vec3<i32>(-1i, _wgslsmith_mod_i32(arg_0.x, -(arg_0.x >> (29453u % 32u))), arg_0.x), abs(vec3<i32>(arg_0.x, 21348i, ~arg_0.x)), !(!(!vec3<bool>(true, var_0, var_0))));
    var_2 = Struct_2(vec3<f32>(-779f, var_2.a.x, _wgslsmith_f_op_f32(exp2(var_2.a.x))), var_2.b, _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_2.c.x, ~u_input.b, u_input.b) >> (var_2.c % vec4<u32>(32u)), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), var_2.a)), vec3<u32>(u_input.b, 47436u, 57856u) | var_2.c.wxy, vec4<u32>(36860u, var_2.c.x, var_2.c.x, var_2.b.x)))));
    return var_2.c.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    let var_0 = vec2<u32>(func_2(u_input.a), arg_1.x);
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(723f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2950f), _wgslsmith_f_op_f32(sign(-775f)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, -350f, -1539f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(240f, 1509f, -146f), vec3<f32>(2243f, -1171f, -368f), true)), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, -1333f, 2013f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2031f, 1000f, 1525f))))), select(~max(vec3<u32>(60659u, arg_0.a, var_0.x), vec3<u32>(u_input.b, 8657u, 4294967295u)) | _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.b, 12295u, arg_0.a), ~vec3<u32>(0u, 1u, 7013u)), vec3<u32>(4294967295u, ~51709u, 0u), vec3<bool>(true, true, all(vec3<bool>(true, true, true)))), ~vec4<u32>(arg_0.b, 10327u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 14853u), vec3<u32>(0u, u_input.b, 4294967295u))), arg_0.a));
    var var_2 = select(-vec3<i32>(u_input.a.x, abs(u_input.a.x), -1i), vec3<i32>(2147483647i, u_input.a.x >> (16022u % 32u), _wgslsmith_div_i32(~_wgslsmith_mult_i32(-2147483647i, -1i), firstTrailingBit(10355i))), false);
    var_2 = -(abs(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, -45406i)) | (_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(16446i, u_input.a.x, -2147483647i), vec3<i32>(var_2.x, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, var_2.x, u_input.a.x)) >> (vec3<u32>(_wgslsmith_mod_u32(arg_0.b, 2885u), ~26321u, ~0u) % vec3<u32>(32u))));
    var_2 = max(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.a.x, 29521i, 2147483647i)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 51187i, u_input.a.x), vec3<i32>(var_2.x, u_input.a.x, u_input.a.x))), -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, u_input.a.x, -3493i), vec3<i32>(2147483647i, u_input.a.x, -2147483647i)), abs(vec3<i32>(u_input.a.x, u_input.a.x, -1i)))), abs(vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(54739i, -34648i)), vec2<i32>(0i, var_2.x)), 1i, var_2.x)));
    return 69947u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, true, all(vec3<bool>(true, true, true)) && ((u_input.b > 54437u) && (57627i != u_input.a.x)), true);
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1930f, 418f, false)) + -845f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(746f, -399f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-960f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)) - 474f)), firstLeadingBit(~vec3<u32>(1u, 48213u, abs(u_input.b))), ~select(vec4<u32>(u_input.b, 4294967295u, func_1(Struct_3(0u, 9266u), vec2<u32>(u_input.b, u_input.b)), 0u), vec4<u32>(u_input.b & 14076u, u_input.b, 12562u, _wgslsmith_add_u32(0u, u_input.b)), vec4<bool>(false, !var_0.x, any(vec3<bool>(true, var_0.x, true)), all(vec4<bool>(false, var_0.x, false, true)))));
    let var_2 = var_1.b;
    var_0 = select(select(vec4<bool>(!(u_input.a.x < 30748i), var_0.x, select(var_0.x, var_0.x, any(vec4<bool>(true, true, false, false))), var_0.x), select(select(vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), vec4<bool>(!var_0.x, var_0.x, var_0.x | var_0.x, any(var_0.www)), true && var_0.x), select(vec4<bool>(var_0.x, true, all(var_0.wxw), true), !vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, true, true, var_0.x))), !(!select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.x, true, var_0.x)), !vec4<bool>(true, var_0.x, true, var_0.x))), var_0.x);
    var_0 = vec4<bool>(any(vec4<bool>(-603f > _wgslsmith_f_op_f32(2431f + var_1.a.x), false, all(vec2<bool>(var_0.x, var_0.x)), select(true, var_0.x, any(var_0.zx)))), true, any(vec4<bool>(false, (1042f < var_1.a.x) && false, var_0.x, true)), false);
    let var_3 = all(vec2<bool>(all(var_0.xz), false | !var_0.x)) & all(!vec3<bool>(true, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), any(vec2<bool>(var_0.x, false))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1206f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - var_1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(872f * 2032f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))));
    var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), _wgslsmith_f_op_f32(trunc(421f))) * _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(sign(1000f)))))));
    var var_5 = select(any(vec3<bool>(var_3, all(var_0.xxx), any(vec2<bool>(var_3, var_3)))), !var_0.x, all(select(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, false, var_0.x), var_3 & false), select(!vec4<bool>(var_3, var_0.x, var_3, false), vec4<bool>(var_0.x, var_0.x, false, true), var_0.x), select(vec4<bool>(false, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, var_3), var_0.x), !vec4<bool>(var_3, var_3, var_3, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(8883i >> (func_3(Struct_2(vec3<f32>(-207f, -1676f, -441f), var_1.c.yzw, vec4<u32>(var_2.x, 45980u, 1u, 26315u))).x % 32u))), 4294967295u, ~_wgslsmith_sub_vec3_i32(min(vec3<i32>(-1i, u_input.a.x, -26560i) << (var_1.b % vec3<u32>(32u)), -vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, -2147483647i, 0i)) >> (~vec3<u32>(74084u, var_1.b.x, u_input.b) % vec3<u32>(32u))), ~countOneBits(u_input.b));
}


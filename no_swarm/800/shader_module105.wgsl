struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(-263f, select(arg_3.b, vec3<i32>(var_0.b.x, var_0.b.x, ~var_0.b.x), !select(arg_0.d.x, arg_3.d.x, var_0.d.x) && !var_0.d.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(1000f, 1005f)) + _wgslsmith_f_op_f32(floor(arg_0.a))), arg_1, _wgslsmith_f_op_f32(min(1027f, _wgslsmith_f_op_f32(arg_3.c.x + _wgslsmith_div_f32(-815f, arg_3.a))))), !(!(!(!vec4<bool>(arg_0.d.x, arg_3.d.x, true, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, -1648f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), countOneBits((firstLeadingBit(vec3<i32>(u_input.c, var_1.b.x, 2147483647i)) & -var_0.b) & arg_0.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) * _wgslsmith_f_op_f32(arg_3.c.x + -232f)), arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * -432f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), vec4<bool>(true, all(var_1.d.zwx), true, true))), var_1.d);
    let var_3 = Struct_1(-1000f, firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.b, arg_0.b), firstTrailingBit(var_1.b)), ~abs(vec3<i32>(2147483647i, 0i, var_0.b.x)))), var_2.c, var_1.d);
    var var_4 = !select(arg_0.d.xyy, vec3<bool>(all(arg_3.d), !any(var_1.d.wwy), any(!vec2<bool>(true, var_1.d.x))), arg_3.d.xxx);
    return var_1.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(1000f, vec3<i32>(u_input.c, 1i, u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(424f, 393f, 706f, -447f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(max(-636f, -1545f)), _wgslsmith_f_op_f32(func_3(Struct_1(-789f, vec3<i32>(u_input.c, -18878i, u_input.c), vec4<f32>(-163f, -436f, -391f, -253f), vec4<bool>(true, true, false, false)), 765f, vec4<u32>(u_input.a.x, u_input.a.x, 21368u, u_input.b), Struct_1(-141f, vec3<i32>(-1i, 0i, -3190i), vec4<f32>(495f, 1060f, 380f, -1000f), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(389f - 468f), _wgslsmith_f_op_f32(805f - 617f)))), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), select(true, false, false)), vec4<bool>(true, true, true, true), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-1063f)), -var_0.b ^ min(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, -2147483647i), vec3<i32>(1i, 53673i, 9365i))), var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(step(842f, -1147f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, 1724f))), _wgslsmith_f_op_f32(1628f - -827f))), !select(vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), vec4<bool>(true, !var_0.d.x, select(var_0.d.x, var_0.d.x, false), !var_0.d.x), any(select(vec2<bool>(var_0.d.x, var_0.d.x), var_0.d.zx, var_0.d.xw))));
    global0 = ~vec3<u32>(24430u, global0.x, 76317u);
    var var_2 = u_input.b | u_input.a.x;
    global0 = vec3<u32>(_wgslsmith_mod_u32(46079u << (~u_input.a.x % 32u), min(u_input.b, u_input.d.x)) | 0u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, 4294967295u, 17863u, 6232u), ~max(vec4<u32>(u_input.a.x, 4294967295u, 80201u, u_input.a.x), vec4<u32>(0u, global0.x, global0.x, 6958u)), all(!var_1.d.yzx)), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 21036u, 4294967295u, 59172u), max(vec4<u32>(u_input.d.x, 1u, global0.x, 34900u), vec4<u32>(u_input.d.x, global0.x, 6137u, 6381u)), var_1.d), vec4<u32>(global0.x, ~global0.x, firstTrailingBit(47254u), 23190u))), _wgslsmith_add_u32(u_input.d.x | firstLeadingBit(6163u), ~select(select(u_input.d.x, u_input.b, var_0.d.x), select(global0.x, u_input.a.x, var_1.d.x), !var_1.d.x)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), ~(vec3<i32>(var_0.b.x, reverseBits(1i), i32(-1i) * -54335i) & vec3<i32>(~var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-428f, var_1.c.x), _wgslsmith_f_op_f32(var_0.c.x + 297f), var_1.c.x, var_1.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.c)))), !select(vec4<bool>(!var_1.d.x, var_0.d.x, all(var_1.d.wxw), true), !(!vec4<bool>(var_0.d.x, var_1.d.x, false, var_0.d.x)), select(var_1.d, vec4<bool>(false, var_1.d.x, false, var_1.d.x), select(vec4<bool>(false, false, var_0.d.x, var_0.d.x), var_0.d, false))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = -455f;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.a), _wgslsmith_div_f32(-1842f, arg_2.a)))), min(-var_0.b, func_2(func_2(var_0.b.xx).b.xz).b) ^ var_0.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(floor(arg_2.c.x)), arg_2.c.x, _wgslsmith_f_op_f32(-arg_2.c.x)), vec4<bool>(select(!(4294967295u != u_input.a.x), var_0.d.x, false), false, false, false));
    var var_2 = 756f;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(arg_2.c))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(-596f, -730f));
    global0 = ~max(_wgslsmith_div_vec3_u32(vec3<u32>(~global0.x, global0.x, 1u), ~(~vec3<u32>(100806u, global0.x, 12117u))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0.x, 4294967295u, 0u)), ~vec3<u32>(u_input.a.x, global0.x, 1855u)));
    let var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    var var_2 = firstLeadingBit(_wgslsmith_sub_i32(arg_0, _wgslsmith_add_i32((arg_0 >> (global0.x % 32u)) ^ (u_input.c | 2147483647i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-38801i, u_input.c, 2147483647i), vec3<i32>(2147483647i, arg_0, arg_0)))));
    var_2 = u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(-1406f * _wgslsmith_div_f32(1379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))), vec3<i32>(-1i, ~(_wgslsmith_sub_i32(u_input.c, 2147483647i) | countOneBits(u_input.c)), -firstLeadingBit(~2755i)), _wgslsmith_f_op_vec4_f32(func_4(var_1.x, reverseBits(arg_0), func_2(vec2<i32>(59640i, u_input.c) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.d.x, 36065u)) % vec2<u32>(32u))), !var_1.x)), vec4<bool>(var_1.x && any(vec2<bool>(true, false)), all(!vec2<bool>(true, var_1.x)), any(vec3<bool>(true, true, true)), any(!var_1.zx)));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = max(abs(vec3<u32>(reverseBits(arg_0), 54652u, _wgslsmith_div_u32(~4294967295u, arg_0))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_0, 1u, global0.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.x, 15630u), vec3<u32>(u_input.d.x, 0u, global0.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 24547u, arg_0), vec3<u32>(4294967295u, u_input.b, 4294967295u))), ~(select(vec3<u32>(arg_0, 0u, 81431u), vec3<u32>(arg_0, 0u, global0.x), vec3<bool>(false, arg_1, true)) >> (vec3<u32>(32371u, 0u, 12763u) % vec3<u32>(32u)))));
    let var_0 = u_input.a.x;
    var var_1 = 4294967295u;
    let var_2 = Struct_1(arg_2.a, _wgslsmith_clamp_vec3_i32(-arg_2.b, ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), arg_2.b.yy), 37619i, _wgslsmith_dot_vec2_i32(arg_2.b.zx, arg_2.b.yx)), arg_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(243f, arg_2.c.x, 903f, arg_2.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c * arg_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.a, -2263f, 141f) - arg_2.c)))), arg_2.d);
    return func_1(~var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.d.x, any(vec4<bool>(false && all(vec3<bool>(true, true, true)), select(true, true, any(vec3<bool>(true, false, false))), false, true)), func_1(2147483647i));
    var var_1 = -(~_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, var_0.b.x, var_0.b.x), vec4<i32>(-1i, u_input.c, -2147483647i, var_0.b.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(47122i, var_0.b.x, var_0.b.x, var_0.b.x)), -vec4<i32>(u_input.c, u_input.c, 2147483647i, 13031i))));
    var var_2 = vec3<bool>(~var_1.x < var_0.b.x, true, !(!(!var_0.d.x)));
    let var_3 = var_0;
    global0 = abs(~((vec3<u32>(1u, u_input.a.x, 7693u) >> (vec3<u32>(13412u, global0.x, u_input.d.x) % vec3<u32>(32u))) ^ vec3<u32>(0u, 22212u, 9767u))) & countOneBits(vec3<u32>(min(4294967295u, u_input.b) ^ u_input.a.x, countOneBits(u_input.d.x), 1u));
    var var_4 = _wgslsmith_dot_vec2_i32(var_1.yx, var_3.b.xz >> (vec2<u32>(11283u, _wgslsmith_div_u32(~u_input.d.x, 1u)) % vec2<u32>(32u)));
    global0 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(62152u, 10236u, 57660u), vec3<u32>(1u, global0.x, 1u), vec3<bool>(true, var_0.d.x, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(66137u, global0.x, u_input.d.x) | vec3<u32>(global0.x, 86386u, 33331u), ~vec3<u32>(4711u, u_input.d.x, global0.x)), ~(~vec3<u32>(u_input.b, 0u, u_input.b))), abs(~abs(vec3<u32>(28113u, 47961u, u_input.d.x))));
    let var_5 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~global0.x, u_input.d.x, u_input.d.x), reverseBits((~vec3<u32>(1u, global0.x, 4294967295u) << (~vec3<u32>(1u, u_input.a.x, 24898u) % vec3<u32>(32u))) | ~vec3<u32>(global0.x, 4294967295u, global0.x)), ~(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global0.x, u_input.a.x, global0.x)), ~vec3<u32>(0u, 4294967295u, 4294967295u)) | abs(~vec3<u32>(u_input.d.x, global0.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-271f)))), max(vec3<u32>(u_input.b, min(_wgslsmith_div_u32(u_input.d.x, var_5.x), ~40351u), 4294967295u), vec3<u32>(global0.x, ~(u_input.d.x << (4294967295u % 32u)), 15637u)));
}


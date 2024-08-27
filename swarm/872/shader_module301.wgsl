struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-690f, 685f, -222f, 1536f), vec4<f32>(310f, -744f, -547f, -170f), vec4<f32>(624f, 767f, 1094f, 1940f), vec4<f32>(902f, 1000f, 1000f, 781f), vec4<f32>(-1105f, -289f, -705f, 407f), vec4<f32>(1039f, -448f, -1000f, 602f), vec4<f32>(-1137f, 959f, 1027f, -409f), vec4<f32>(-835f, -813f, 515f, -1364f));

var<private> global1: f32 = 672f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = vec2<bool>(arg_1.b.e.x, (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1094f, 1018f)))) >= arg_1.b.a.x) & false);
    global1 = _wgslsmith_f_op_f32(min(300f, arg_1.b.a.x));
    let var_1 = !(any(select(!vec4<bool>(true, true, arg_2.x, true), select(arg_1.c, arg_1.c, arg_1.b.d), select(vec4<bool>(arg_1.b.e.x, arg_2.x, false, true), vec4<bool>(arg_0, var_0.x, true, var_0.x), true))) & (arg_1.b.e.x & (_wgslsmith_add_i32(arg_1.b.c, -2147483647i) > select(1i, u_input.a, var_0.x))));
    global1 = arg_1.b.a.x;
    var var_2 = global0[_wgslsmith_index_u32(1u, 8u)];
    return vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f * -736f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1252f)) * _wgslsmith_f_op_f32(step(arg_1.b.a.x, var_2.x)))) == -2987f, firstLeadingBit((4294967295u << (u_input.e.x % 32u)) & (arg_1.a | arg_1.a)) >= ~max(4294967295u, u_input.e.x), (-280f > arg_1.b.a.x) != !((arg_1.b.a.x != -194f) || all(arg_2)), true);
}

fn func_2(arg_0: vec4<u32>) -> Struct_5 {
    let var_0 = -1i & (_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(32189i, -12762i), -vec2<i32>(-1i, u_input.c), select(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, u_input.a), true)), vec2<i32>(0i, _wgslsmith_div_i32(0i, u_input.a))) & ~(_wgslsmith_sub_i32(-2147483647i, u_input.c) ^ (i32(-1i) * -6446i)));
    var var_1 = Struct_3(arg_0.x, vec2<i32>(var_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -1i) ^ max(vec2<i32>(var_0, u_input.a), vec2<i32>(var_0, var_0)), ~vec2<i32>(var_0, 11336i))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, 788f)))), true, ~(-8437i), vec4<bool>(true, true, true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -380f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1204f, 1000f))), all(vec3<bool>(true, true, true)), -var_0, func_3(false, Struct_4(arg_0.x, Struct_1(vec2<f32>(-353f, -123f), false, u_input.a, vec4<bool>(false, true, false, false), vec2<bool>(false, false)), vec4<bool>(true, true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-933f, 204f)))), true, u_input.c, vec4<bool>(false, false, false, false), vec2<bool>(true, true)), !vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true), ~vec4<i32>(-2147483647i, u_input.a, var_0, var_0) | (vec4<i32>(2147483647i, u_input.a, 16767i, 1i) | -vec4<i32>(u_input.c, var_0, var_0, 0i))), _wgslsmith_mult_u32(4294967295u, ~select(min(arg_0.x, arg_0.x), arg_0.x >> (arg_0.x % 32u), arg_0.x != 0u)));
    let var_2 = 724f;
    var var_3 = _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, max(1u, abs(11407u))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~(~u_input.b), u_input.e), vec2<u32>(~u_input.e.x << (_wgslsmith_sub_u32(1u, arg_0.x) % 32u), countOneBits(60834u))));
    var var_4 = vec4<u32>(14642u, 1u, arg_0.x, 1u);
    return Struct_5(_wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, var_3.x, 18431u, 13857u << (1u % 32u)), abs(vec4<u32>(max(var_4.x, 1u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~0u, max(var_1.a, u_input.e.x)))), var_2);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<bool>) -> bool {
    let var_0 = -firstLeadingBit(vec3<i32>(-12000i, _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(arg_1.b.c, arg_1.b.c)), arg_1.b.c));
    var var_1 = arg_0.b;
    let var_2 = ~select(~vec4<u32>(4294967295u, 17987u, 4294967295u, arg_1.a), firstLeadingBit(max(vec4<u32>(1u, u_input.d, 24920u, 1u), vec4<u32>(0u, 13503u, 62623u, u_input.b.x))), !arg_1.c.x) << (vec4<u32>(1u, 0u | (4294967295u << (u_input.e.x % 32u)), 0u, u_input.d ^ ~countOneBits(4294967295u)) % vec4<u32>(32u));
    let var_3 = all(arg_2.yxy);
    var var_4 = reverseBits(~(~vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_0.a), ~arg_1.a)));
    return true;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(13701u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 30115u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, 32869u), u_input.b)), 54090u, 4294967295u)), _wgslsmith_mult_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 51554u, 1u), vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 33919u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.b.x, u_input.e.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(u_input.e.x, 1u, u_input.b.x, 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.d, 4294967295u))));
    global1 = arg_1.a.a.x;
    var var_1 = Struct_3(u_input.d, arg_1.e.xy, arg_1, (_wgslsmith_dot_vec4_u32(vec4<u32>(37976u, u_input.e.x, var_0.x, 1u) >> (vec4<u32>(var_0.x, 36617u, 21688u, var_0.x) % vec4<u32>(32u)), max(vec4<u32>(55422u, 0u, u_input.d, var_0.x), vec4<u32>(var_0.x, var_0.x, u_input.e.x, u_input.e.x))) << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(52082u, var_0.x, 0u), 1u) % 32u)) | ~(~1u ^ var_0.x));
    var_1 = Struct_3(~1u, var_1.b ^ arg_1.e.xw, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.c.a.a + var_1.c.c.a), arg_0 > 1i, var_1.c.e.x, !vec4<bool>(arg_2.x, var_1.c.d.x, false, arg_1.c.b), arg_2.xx), var_1.c.a, var_1.c.b, select(!(!vec4<bool>(arg_1.d.x, arg_2.x, arg_2.x, true)), select(!vec4<bool>(true, arg_2.x, arg_1.b.d.x, var_1.c.c.d.x), var_1.c.a.d, !vec4<bool>(false, arg_1.a.e.x, true, arg_1.d.x)), !vec4<bool>(arg_2.x, true, false, arg_2.x)), reverseBits(vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(var_1.c.e.yz, arg_1.e.wz), 2147483647i, i32(-1i) * -21496i))), 25648u);
    var_1 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>((4294967295u << (0u % 32u)) & ~var_0.x, firstTrailingBit(~1u)), var_0.xx), vec2<i32>(-2147483647i, (countOneBits(var_1.c.e.x) | _wgslsmith_div_i32(arg_0, 2147483647i)) & 14184i), Struct_2(arg_1.a, var_1.c.c, var_1.c.a, vec4<bool>(false, true, !any(vec4<bool>(var_1.c.c.b, arg_1.b.d.x, arg_2.x, false)), true), vec4<i32>(-1i, var_1.c.b.c, ~(-12702i), min(-50560i << (var_0.x % 32u), _wgslsmith_add_i32(1412i, arg_1.b.c)))), abs(7895u));
    return Struct_3(_wgslsmith_add_u32(var_0.x, _wgslsmith_clamp_u32(49272u, var_1.a, 4294967295u) ^ ~1u), abs(-var_1.c.e.yx), Struct_2(Struct_1(arg_1.a.a, arg_2.x, max(_wgslsmith_add_i32(var_1.c.a.c, 1i), _wgslsmith_mult_i32(var_1.b.x, arg_1.e.x)), func_3(true, Struct_4(29127u, Struct_1(vec2<f32>(-1136f, 793f), false, u_input.c, var_1.c.c.d, arg_1.c.e), vec4<bool>(false, false, arg_1.c.b, false)), var_1.c.d.zwz), vec2<bool>(true, true)), arg_1.b, var_1.c.b, var_1.c.a.d, ~arg_1.e), select(abs(u_input.e.x), reverseBits(var_0.x), false));
}

fn func_1() -> f32 {
    var var_0 = func_5(select(abs(_wgslsmith_mod_i32(2258i, u_input.a)), _wgslsmith_div_i32(~max(u_input.c, u_input.c), -18750i), func_4(func_2(vec4<u32>(11417u, u_input.e.x, 85734u, u_input.e.x)), Struct_4(~u_input.b.x, Struct_1(vec2<f32>(-219f, 1444f), true, 64344i, vec4<bool>(true, true, false, true), vec2<bool>(false, true)), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, any(vec3<bool>(true, true, false))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, 731f) + vec2<f32>(1118f, -1033f)) + vec2<f32>(-212f, 922f)), true, -22671i & max(u_input.c, 2147483647i), vec4<bool>(true, all(vec2<bool>(true, false)), select(false, true, false), func_4(Struct_5(30278u, 1000f), Struct_4(u_input.b.x, Struct_1(vec2<f32>(-1931f, -361f), true, 8335i, vec4<bool>(true, false, true, false), vec2<bool>(false, true)), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(218f, -2516f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1780f, -1740f), vec2<f32>(160f, -1547f))), true && all(vec4<bool>(false, true, true, true)), -2147483647i, vec4<bool>(any(vec2<bool>(true, false)), false, select(true, true, false), true), select(func_3(false, Struct_4(u_input.d, Struct_1(vec2<f32>(706f, -147f), false, u_input.c, vec4<bool>(false, true, false, false), vec2<bool>(true, false)), vec4<bool>(false, false, false, true)), vec3<bool>(true, false, true)).yw, vec2<bool>(true, false), true)), Struct_1(vec2<f32>(535f, _wgslsmith_f_op_f32(1361f - -1796f)), 4294967295u <= min(u_input.e.x, u_input.e.x), -19456i, !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec2<bool>(true, true)), vec4<bool>(true, 19204u == u_input.d, true, any(func_3(true, Struct_4(u_input.d, Struct_1(vec2<f32>(1719f, -1178f), false, 19700i, vec4<bool>(true, true, false, true), vec2<bool>(false, false)), vec4<bool>(false, true, false, false)), vec3<bool>(false, true, true)).xzy)), min(select(vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.c), vec4<i32>(-5717i, u_input.c, u_input.c, u_input.a), vec4<bool>(false, false, true, false)) ^ firstLeadingBit(vec4<i32>(-44606i, -1i, -1i, 16910i)), firstTrailingBit(vec4<i32>(u_input.a, u_input.c, -804i, u_input.a)))), !(!vec4<bool>(false, select(false, false, true), true, true)));
    let var_1 = 99027i;
    var var_2 = var_0.c.d;
    let var_3 = select(true, false, !func_4(func_2(max(vec4<u32>(25504u, 22301u, var_0.d, 0u), vec4<u32>(var_0.d, 0u, 4294967295u, u_input.b.x))), Struct_4(_wgslsmith_mult_u32(41545u, 10833u), var_0.c.c, vec4<bool>(false, var_2.x, true, var_0.c.c.e.x)), !var_0.c.c.d));
    var var_4 = -vec3<i32>(var_1, -2147483647i, func_5(~abs(var_1), func_5(_wgslsmith_add_i32(u_input.a, var_1), Struct_2(Struct_1(var_0.c.b.a, var_0.c.c.d.x, -2147483647i, vec4<bool>(false, var_2.x, var_3, false), vec2<bool>(var_3, false)), var_0.c.c, var_0.c.c, vec4<bool>(false, false, true, true), vec4<i32>(var_0.b.x, var_1, var_0.b.x, -1i)), var_0.c.c.d).c, select(vec4<bool>(false, var_0.c.a.b, var_0.c.c.b, var_0.c.a.b), var_0.c.d, false & var_0.c.a.e.x)).b.x);
    return 311f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(237f, -415f) - _wgslsmith_f_op_f32(floor(-317f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f + 673f) * _wgslsmith_f_op_f32(-1469f - 666f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1113f, 228f))), _wgslsmith_f_op_f32(func_1())))), any(func_3(1406f > _wgslsmith_f_op_f32(trunc(447f)), Struct_4(0u, Struct_1(vec2<f32>(-435f, 131f), false, -33700i, vec4<bool>(false, true, true, true), vec2<bool>(true, false)), vec4<bool>(true, true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)).zxz)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1138f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(621f)), -763f), true))));
    var var_1 = !(!(!(u_input.b.x <= ~u_input.b.x)));
    var var_2 = func_2(~(~vec4<u32>(45560u, u_input.b.x, u_input.d, 7231u) << ((~vec4<u32>(39499u, u_input.d, u_input.b.x, u_input.d) ^ firstLeadingBit(vec4<u32>(u_input.e.x, 74634u, u_input.b.x, u_input.d))) % vec4<u32>(32u))));
    var var_3 = 4294967295u;
    var var_4 = Struct_2(func_5(~(-2147483647i), func_5(2147483647i, func_5(u_input.a, Struct_2(Struct_1(vec2<f32>(var_2.b, var_2.b), true, u_input.c, vec4<bool>(false, false, true, false), vec2<bool>(true, false)), Struct_1(vec2<f32>(var_2.b, var_2.b), true, 2147483647i, vec4<bool>(true, true, false, false), vec2<bool>(false, false)), Struct_1(vec2<f32>(var_2.b, -236f), false, u_input.c, vec4<bool>(true, false, true, false), vec2<bool>(true, true)), vec4<bool>(false, false, true, false), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<bool>(true, true, true, true)).c, vec4<bool>(-21184i <= u_input.c, select(true, true, false), all(vec3<bool>(true, true, true)), true)).c, vec4<bool>(false, true, true, false)).c.b, Struct_1(vec2<f32>(1047f, 856f), false, abs(u_input.c), func_5(u_input.a >> (56998u % 32u), func_5(u_input.c, func_5(56610i, Struct_2(Struct_1(vec2<f32>(-1307f, 800f), true, 1i, vec4<bool>(true, false, false, true), vec2<bool>(true, false)), Struct_1(vec2<f32>(670f, 636f), false, u_input.a, vec4<bool>(true, true, true, false), vec2<bool>(true, false)), Struct_1(vec2<f32>(var_2.b, var_2.b), true, u_input.a, vec4<bool>(false, false, true, true), vec2<bool>(false, true)), vec4<bool>(false, false, true, true), vec4<i32>(u_input.c, 0i, -32469i, u_input.a)), vec4<bool>(false, true, true, true)).c, select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true)).c, func_5(-31950i, func_5(u_input.a, Struct_2(Struct_1(vec2<f32>(2112f, var_2.b), false, u_input.a, vec4<bool>(false, false, true, true), vec2<bool>(false, false)), Struct_1(vec2<f32>(948f, -524f), true, u_input.c, vec4<bool>(false, false, true, true), vec2<bool>(true, false)), Struct_1(vec2<f32>(1000f, var_2.b), true, 38185i, vec4<bool>(true, true, true, true), vec2<bool>(true, true)), vec4<bool>(false, false, true, true), vec4<i32>(1i, 45666i, u_input.c, u_input.c)), vec4<bool>(false, false, true, false)).c, func_3(true, Struct_4(1u, Struct_1(vec2<f32>(var_2.b, 849f), false, 0i, vec4<bool>(false, true, false, false), vec2<bool>(true, true)), vec4<bool>(false, false, true, true)), vec3<bool>(false, false, true))).c.b.d).c.b.d, func_5(61850i, Struct_2(func_5(1589i, Struct_2(Struct_1(vec2<f32>(var_2.b, var_2.b), true, u_input.c, vec4<bool>(false, true, true, true), vec2<bool>(false, true)), Struct_1(vec2<f32>(-717f, var_2.b), false, 0i, vec4<bool>(false, false, false, true), vec2<bool>(true, true)), Struct_1(vec2<f32>(var_2.b, -528f), true, u_input.c, vec4<bool>(true, true, false, true), vec2<bool>(false, true)), vec4<bool>(false, false, true, true), vec4<i32>(1i, u_input.a, -31791i, 0i)), vec4<bool>(true, false, true, true)).c.c, func_5(u_input.a, Struct_2(Struct_1(vec2<f32>(724f, var_2.b), true, u_input.c, vec4<bool>(true, true, true, false), vec2<bool>(true, true)), Struct_1(vec2<f32>(402f, var_2.b), false, u_input.c, vec4<bool>(true, false, true, true), vec2<bool>(false, false)), Struct_1(vec2<f32>(1697f, var_2.b), true, -69707i, vec4<bool>(true, false, true, true), vec2<bool>(true, true)), vec4<bool>(false, true, true, true), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<bool>(false, false, true, true)).c.b, func_5(-2147483647i, Struct_2(Struct_1(vec2<f32>(234f, var_2.b), false, u_input.c, vec4<bool>(true, true, true, false), vec2<bool>(true, true)), Struct_1(vec2<f32>(var_2.b, -1872f), false, u_input.a, vec4<bool>(true, true, false, false), vec2<bool>(true, true)), Struct_1(vec2<f32>(var_2.b, 492f), false, -20027i, vec4<bool>(true, true, false, true), vec2<bool>(false, false)), vec4<bool>(true, false, true, true), vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, false, false, true)).c.a, select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), max(vec4<i32>(u_input.a, u_input.a, -1i, 1i), vec4<i32>(u_input.a, -49528i, -1i, -2147483647i))), vec4<bool>(true, true, true, true)).c.c.d.wx), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, var_2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -925f)), vec2<bool>(true, true)))), false, countOneBits(~(-43681i)) >> (select(~u_input.d, ~u_input.e.x, all(vec3<bool>(false, true, true))) % 32u), vec4<bool>(min(u_input.c, u_input.c) <= 1i, true, true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), func_3(false, Struct_4(u_input.e.x, Struct_1(vec2<f32>(371f, 256f), false, u_input.c, vec4<bool>(false, true, false, true), vec2<bool>(false, true)), vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false)).zx), func_3(true, Struct_4(var_2.a, Struct_1(vec2<f32>(-1396f, -1811f), false, u_input.a, vec4<bool>(false, true, false, false), vec2<bool>(false, true)), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, false)).wy, true)), func_5(u_input.a, func_5(u_input.c >> (0u % 32u), func_5(firstLeadingBit(0i), func_5(u_input.c, Struct_2(Struct_1(vec2<f32>(var_2.b, 733f), true, u_input.a, vec4<bool>(true, true, true, false), vec2<bool>(false, true)), Struct_1(vec2<f32>(1842f, 797f), false, 0i, vec4<bool>(true, false, false, false), vec2<bool>(false, true)), Struct_1(vec2<f32>(-2054f, -925f), true, u_input.a, vec4<bool>(false, false, false, false), vec2<bool>(false, false)), vec4<bool>(false, false, true, true), vec4<i32>(u_input.c, 61014i, 30508i, u_input.a)), vec4<bool>(false, true, true, true)).c, vec4<bool>(true, true, true, true)).c, vec4<bool>(var_2.a < 4294967295u, true, true, any(vec4<bool>(true, false, true, false)))).c, vec4<bool>(true, true, true, true)).c.c.d, countOneBits(~vec4<i32>(-841i, _wgslsmith_add_i32(u_input.c, u_input.c), abs(u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(572i, u_input.a), vec2<i32>(u_input.a, 15077i)))));
    var var_5 = Struct_4(var_2.a, func_5((var_4.e.x & -41177i) >> (1u % 32u), func_5(_wgslsmith_div_i32(~var_4.e.x, var_4.c.c), func_5(~var_4.c.c, func_5(u_input.a, Struct_2(Struct_1(var_4.c.a, false, var_4.b.c, var_4.a.d, vec2<bool>(false, var_4.b.d.x)), var_4.a, Struct_1(var_4.a.a, false, var_4.a.c, var_4.d, var_4.c.e), var_4.d, vec4<i32>(u_input.c, var_4.b.c, -2147483647i, 1i)), vec4<bool>(var_4.d.x, var_4.b.d.x, var_4.a.d.x, var_4.b.b)).c, var_4.a.d).c, !var_4.a.d).c, select(var_4.d, vec4<bool>(select(var_4.b.b, true, var_4.c.d.x), !var_4.b.b, true, func_4(Struct_5(u_input.b.x, -2585f), Struct_4(4294967295u, Struct_1(vec2<f32>(var_2.b, var_2.b), var_4.c.b, -21953i, vec4<bool>(var_4.c.e.x, true, true, true), vec2<bool>(var_4.d.x, var_4.b.b)), var_4.c.d), var_4.d)), !var_4.b.d)).c.b, !vec4<bool>(!(u_input.d < u_input.e.x), !all(var_4.b.e), true, true));
    var var_6 = var_4.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(72001u, 2147483647i, vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mult_i32(28824i, u_input.c), func_5(1i, Struct_2(Struct_1(var_4.c.a, false, var_4.e.x, var_4.b.d, var_5.c.yx), Struct_1(var_5.b.a, var_5.b.d.x, 13412i, var_5.b.d, vec2<bool>(false, false)), var_4.c, var_4.c.d, var_4.e), vec4<bool>(var_4.b.b, var_4.c.e.x, var_4.b.d.x, false)).b.x), func_5(~firstLeadingBit(~var_5.b.c), Struct_2(var_5.b, func_5(_wgslsmith_add_i32(u_input.a, -1i), func_5(0i, Struct_2(Struct_1(vec2<f32>(var_4.c.a.x, var_2.b), var_5.b.b, var_5.b.c, vec4<bool>(var_4.d.x, false, false, var_5.b.b), vec2<bool>(var_5.c.x, false)), var_5.b, Struct_1(vec2<f32>(var_4.b.a.x, -1840f), var_5.c.x, -22596i, var_4.d, var_5.c.xz), var_4.a.d, var_4.e), var_5.b.d).c, select(var_5.b.d, var_4.c.d, vec4<bool>(true, true, var_5.b.b, var_5.b.b))).c.c, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1000f), vec2<f32>(-1565f, var_5.b.a.x), vec2<bool>(var_4.c.e.x, true))), !var_5.c.x, _wgslsmith_mult_i32(var_5.b.c, var_5.b.c), !vec4<bool>(var_5.b.b, true, true, false), vec2<bool>(true, true)), var_5.c, max(_wgslsmith_div_vec4_i32(vec4<i32>(-3411i, 6636i, u_input.c, 26475i), vec4<i32>(-1i, 1i, var_4.b.c, 0i)), firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, 21313i, -1i)))), select(!vec4<bool>(var_5.b.d.x, var_5.c.x, var_4.a.d.x, true), !var_5.c, var_5.b.d)).b);
}


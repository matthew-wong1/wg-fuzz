struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~vec4<u32>(_wgslsmith_add_u32(arg_3.c, ~countOneBits(96812u)), 38268u, firstLeadingBit(4294967295u), arg_3.c);
    var var_1 = arg_3;
    let var_2 = vec4<bool>(!(!(all(arg_3.d) == false)), !var_1.d.x, any(var_1.b.wzy), true);
    var_1 = Struct_1(!vec2<bool>(all(select(vec4<bool>(arg_3.a.x, true, false, var_2.x), arg_3.b, true)), !select(true, arg_0, arg_3.a.x)), !select(var_1.b, vec4<bool>(!arg_3.a.x, true, any(var_2), all(vec4<bool>(var_1.a.x, false, false, false))), var_1.b.x), 39265u, var_2.xxy, vec3<i32>(0i, 1i, -1i));
    var var_3 = ~var_0.wwx;
    return !var_1.b.xwy;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = !select(!vec3<bool>(u_input.b.x <= u_input.b.x, true, arg_2.x), func_3(select(true, u_input.a.x != 2147483647i, false), _wgslsmith_mod_i32(~u_input.a.x, ~u_input.a.x), _wgslsmith_clamp_i32(-44089i, _wgslsmith_mod_i32(-25003i, -16767i), _wgslsmith_sub_i32(-43162i, u_input.a.x)), Struct_1(!vec2<bool>(false, arg_2.x), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1, true, false, true), arg_1), u_input.b.x << (u_input.b.x % 32u), !vec3<bool>(arg_2.x, false, true), ~u_input.a.wxy)), !(!arg_1) || false);
    let var_1 = vec2<i32>(arg_0, -3811i);
    let var_2 = arg_2.x;
    let var_3 = Struct_1(arg_2, !vec4<bool>(!(var_2 && false), arg_1, false, true), _wgslsmith_mult_u32(~min(min(69603u, 25326u), u_input.b.x), min(4294967295u, ~(0u << (u_input.b.x % 32u)))), vec3<bool>(true, true, true), vec3<i32>(var_1.x, 1i, -39306i));
    let var_4 = _wgslsmith_mod_u32(53666u, countOneBits(var_3.c ^ ~(11216u | u_input.b.x)));
    return !var_3.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(sign(-311f)) < _wgslsmith_f_op_f32(f32(-1f) * -613f), false), arg_0.b, _wgslsmith_dot_vec2_u32(u_input.b, min(u_input.b, abs(~arg_2.zy))), vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1026f, 1239f)))) != _wgslsmith_f_op_f32(max(-178f, 1087f)), true, !func_2(-2147483647i, 0u > u_input.b.x, func_3(true, -1i, -2147483647i, Struct_1(vec2<bool>(arg_1.b.x, false), arg_0.b, 46259u, arg_1.d, vec3<i32>(u_input.a.x, -10474i, -44527i))).xz)), vec3<i32>(-1i) * -arg_0.e);
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits((arg_2.wxw << (firstLeadingBit(arg_2.yyy) % vec3<u32>(32u))) >> (vec3<u32>(45609u, ~7046u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(abs(arg_2.www), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(67242u, 47075u, arg_1.c), arg_2.zzx)), arg_2.xzx));
    var var_2 = any(!vec4<bool>(all(var_0.b.zwz), arg_1.d.x, true, select(true, true, true | arg_1.d.x)));
    var_2 = true;
    var_2 = false | !any(select(!vec2<bool>(arg_0.d.x, arg_0.d.x), func_3(false, -24701i, arg_0.e.x, Struct_1(arg_1.a, var_0.b, 0u, var_0.d, vec3<i32>(var_0.e.x, 12455i, arg_0.e.x))).xz, select(arg_1.a, vec2<bool>(arg_0.a.x, arg_1.d.x), true)));
    return Struct_1(vec2<bool>(true, true), vec4<bool>(!var_0.d.x, true, all(!arg_1.b), true), ~62492u, vec3<bool>(var_0.a.x || var_0.b.x, !(~arg_0.c != arg_0.c), !(_wgslsmith_f_op_f32(step(703f, -1000f)) <= _wgslsmith_f_op_f32(round(-1811f)))), var_0.e);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_4(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), 37047u, vec3<bool>(true, true, func_2(u_input.a.x, any(vec3<bool>(true, true, false)), vec2<bool>(false, false))), reverseBits(vec3<i32>(1i, u_input.a.x, 68362i))), Struct_1(vec2<bool>(false, !any(vec2<bool>(false, true))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), ~countOneBits(u_input.b.x), vec3<bool>(false, all(vec4<bool>(false, false, true, false)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), vec3<i32>(abs(u_input.a.x ^ 51694i), -min(24967i, u_input.a.x), u_input.a.x)), max(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(~abs(u_input.b.x), ~select(u_input.b.x, 4294967295u, true), ~1u, 4294967295u)));
    var var_1 = ~var_0.c;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1175f)));
    var_0 = Struct_1(func_4(Struct_1(!select(var_0.a, vec2<bool>(var_0.d.x, true), vec2<bool>(var_0.d.x, var_0.d.x)), vec4<bool>(func_2(30356i, var_0.a.x, var_0.a), !var_0.a.x, var_0.a.x, any(var_0.b.yyz)), ~u_input.b.x, var_0.d, select(abs(var_0.e), var_0.e << (vec3<u32>(26414u, 34652u, var_0.c) % vec3<u32>(32u)), true)), Struct_1(func_4(func_4(Struct_1(vec2<bool>(var_0.a.x, var_0.b.x), var_0.b, u_input.b.x, vec3<bool>(true, var_0.a.x, false), vec3<i32>(-2147483647i, 31151i, var_0.e.x)), Struct_1(var_0.d.yy, var_0.b, u_input.b.x, vec3<bool>(false, var_0.d.x, var_0.b.x), u_input.a.xzx), vec4<u32>(1u, var_0.c, 1u, u_input.b.x)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, false), u_input.b.x, var_0.b.xyz, u_input.a.wyx), ~vec4<u32>(u_input.b.x, 1u, 0u, 38648u)).d.yx, !select(vec4<bool>(true, var_0.a.x, var_0.d.x, true), vec4<bool>(true, var_0.d.x, true, false), var_0.b.x), _wgslsmith_dot_vec4_u32(min(vec4<u32>(12999u, var_0.c, var_0.c, var_0.c), vec4<u32>(var_0.c, u_input.b.x, 114965u, 4294967295u)), vec4<u32>(26391u, var_0.c, u_input.b.x, var_0.c)), vec3<bool>(any(var_0.d), var_0.b.x, true), var_0.e << (min(vec3<u32>(var_0.c, var_0.c, 1u), vec3<u32>(0u, var_0.c, var_0.c)) % vec3<u32>(32u))), ~(vec4<u32>(53601u, var_0.c, u_input.b.x, u_input.b.x) & ~vec4<u32>(0u, var_0.c, var_0.c, 0u))).a, select(!(!vec4<bool>(true, true, var_0.b.x, true)), select(!select(var_0.b, var_0.b, vec4<bool>(false, var_0.d.x, false, var_0.b.x)), !select(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, true), true), var_0.b.x), var_0.d.x), 0u, vec3<bool>(true, false, false), ~(vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(var_0.e.x, var_0.e.x, 15629i), ~4633i) << (~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u), vec3<u32>(4294967295u, 41169u, var_0.c)) % vec3<u32>(32u))));
    var var_3 = var_0.b.wx;
    return func_4(Struct_1(var_0.a, !var_0.b, select(_wgslsmith_clamp_u32(58080u, 1u, ~u_input.b.x), firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)), true), vec3<bool>(true, var_0.b.x, true), abs(var_0.e & u_input.a.xxx)), func_4(func_4(Struct_1(func_3(false, 10373i, 1i, Struct_1(var_0.b.ww, var_0.b, var_0.c, vec3<bool>(var_3.x, true, false), vec3<i32>(u_input.a.x, 1i, 0i))).yy, var_0.b, ~var_0.c, func_4(Struct_1(vec2<bool>(var_0.a.x, false), vec4<bool>(true, var_0.d.x, false, var_3.x), var_0.c, var_0.b.zwz, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), Struct_1(var_0.b.yy, vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), u_input.b.x, var_0.d, vec3<i32>(2147483647i, -2147483647i, 1i)), vec4<u32>(var_0.c, var_0.c, 3994u, var_0.c)).b.xwz, -u_input.a.yxz), Struct_1(!vec2<bool>(true, var_3.x), !var_0.b, _wgslsmith_sub_u32(u_input.b.x, 18109u), var_0.b.wxy, ~vec3<i32>(var_0.e.x, 11874i, 1i)), vec4<u32>(~4294967295u, abs(var_0.c), 1u, var_0.c)), func_4(Struct_1(var_0.d.yx, vec4<bool>(true, true, true, var_3.x), u_input.b.x, vec3<bool>(false, true, var_0.d.x), u_input.a.yww), func_4(Struct_1(vec2<bool>(var_0.d.x, false), var_0.b, 1u, vec3<bool>(var_3.x, false, false), vec3<i32>(var_0.e.x, 1i, u_input.a.x)), Struct_1(var_0.a, vec4<bool>(var_3.x, false, false, true), 24071u, vec3<bool>(var_3.x, false, true), vec3<i32>(9012i, var_0.e.x, var_0.e.x)), firstLeadingBit(vec4<u32>(var_0.c, 4294967295u, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 14881u, 26260u, 8413u), vec4<u32>(4294967295u, 1u, var_0.c, 27303u))), firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(0u, var_0.c, 4294967295u), var_0.c, _wgslsmith_sub_u32(0u, var_0.c), 1u))), vec4<u32>(firstTrailingBit(~var_0.c), 4294967295u, abs(select(_wgslsmith_add_u32(1u, var_0.c), 3153u, false)), 0u)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -822f))) * 664f);
    let var_1 = !all(func_1());
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, (1459u ^ u_input.b.x) >> (25263u % 32u), ~(~1u)), vec4<u32>(4294967295u & u_input.b.x, u_input.b.x, ~u_input.b.x, max(min(10211u, 1u), ~u_input.b.x))), ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(11909u, u_input.b.x, 90282u, 14054u)), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 46246u)) >> (~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) - 1000f)), _wgslsmith_f_op_f32(ceil(var_0)), 624f));
    var_2 = vec4<u32>(~_wgslsmith_mod_u32(firstLeadingBit(~u_input.b.x), countOneBits(~4294967295u)), 86369u, ~_wgslsmith_dot_vec3_u32(var_2.zxx, _wgslsmith_div_vec3_u32(vec3<u32>(70742u, 4198u, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, var_2.x), var_2.zzz)), var_2.x);
    var_2 = countOneBits(~select(~vec4<u32>(1u, var_2.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, u_input.b.x, 37888u, var_2.x), vec4<u32>(u_input.b.x, var_2.x, var_2.x, 4294967295u)), !var_1)) ^ reverseBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, var_2.x, 4294967295u, 0u) & vec4<u32>(var_2.x, u_input.b.x, 1u, 4294967295u), reverseBits(vec4<u32>(u_input.b.x, var_2.x, u_input.b.x, 1u)), var_1), vec4<u32>(~1u, 0u << (u_input.b.x % 32u), 0u, u_input.b.x), abs(vec4<u32>(var_2.x, 1u, 76002u, u_input.b.x)) << ((vec4<u32>(var_2.x, u_input.b.x, 4294967295u, u_input.b.x) << (vec4<u32>(34930u, 37284u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0 + -1009f), -1000f, -563f, var_0), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), var_0, _wgslsmith_div_f32(-470f, -1031f), var_3.x), var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -115f, var_0, var_3.x) - vec4<f32>(602f, -3162f, var_0, 875f)), vec4<f32>(var_0, -2352f, 1000f, -151f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -1102f, var_0, -1141f), vec4<f32>(389f, -1298f, var_0, 634f))))), true));
    var_2 = abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, u_input.b.x) | min(vec4<u32>(12556u, 1u, 4294967295u, 72142u), vec4<u32>(71299u, u_input.b.x, u_input.b.x, u_input.b.x)), firstLeadingBit(vec4<u32>(u_input.b.x, 56540u, var_2.x, u_input.b.x))));
    let var_4 = func_4(Struct_1(func_3(false, u_input.a.x, u_input.a.x | u_input.a.x, Struct_1(vec2<bool>(true, true), vec4<bool>(true, var_1, var_1, var_1), var_2.x, vec3<bool>(true, false, var_1), ~vec3<i32>(-43023i, u_input.a.x, u_input.a.x))).yz, !(!(!vec4<bool>(true, var_1, false, true))), ~u_input.b.x, vec3<bool>(true, 1u >= u_input.b.x, var_1), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x >> (11843u % 32u), abs(-33407i), 40598i << (0u % 32u)), u_input.a.yyy, vec3<i32>(1i, -1i, ~u_input.a.x))), func_4(Struct_1(!vec2<bool>(true, var_1), !(!vec4<bool>(false, var_1, true, true)), ~1129u ^ ~var_2.x, select(func_3(false, u_input.a.x, 15681i, Struct_1(vec2<bool>(var_1, var_1), vec4<bool>(var_1, var_1, true, true), u_input.b.x, vec3<bool>(false, var_1, false), u_input.a.zxw)), vec3<bool>(var_1, var_1, var_1), true), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(func_4(func_4(Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, true), 7674u, vec3<bool>(true, true, var_1), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, var_1, false, false), u_input.b.x, vec3<bool>(var_1, false, var_1), u_input.a.yyz), vec4<u32>(101383u, u_input.b.x, u_input.b.x, 4294967295u)), func_4(Struct_1(vec2<bool>(true, false), vec4<bool>(false, var_1, false, var_1), var_2.x, vec3<bool>(var_1, false, var_1), u_input.a.wxy), Struct_1(vec2<bool>(false, var_1), vec4<bool>(false, var_1, var_1, var_1), 1u, vec3<bool>(false, var_1, var_1), u_input.a.xyz), vec4<u32>(u_input.b.x, 141172u, var_2.x, u_input.b.x)), vec4<u32>(1u, 0u, u_input.b.x, 61005u) >> (vec4<u32>(32467u, var_2.x, u_input.b.x, var_2.x) % vec4<u32>(32u))).a, !select(vec4<bool>(true, false, false, true), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(false, var_1, false, var_1)), var_2.x, !(!vec3<bool>(var_1, true, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, -40594i))), abs(~vec4<u32>(58767u, u_input.b.x, u_input.b.x, 17553u)) ^ ((vec4<u32>(52592u, 11874u, var_2.x, u_input.b.x) & vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_2.x)) ^ vec4<u32>(1u, 4294967295u, u_input.b.x, var_2.x))), ~vec4<u32>(_wgslsmith_mod_u32(0u, u_input.b.x), 0u, 0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x | var_4.e.x, -(-1i ^ max(var_4.e.x, var_4.e.x)), reverseBits(-u_input.a.x)), ~vec2<u32>(~var_4.c | 0u, ~var_4.c), _wgslsmith_div_u32(~(~4294967295u) ^ reverseBits(var_4.c), ~abs(var_4.c)));
}


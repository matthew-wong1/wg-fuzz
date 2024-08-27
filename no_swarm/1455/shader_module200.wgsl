struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<bool>(true, true, false), -17574i, vec2<u32>(102843u, 12003u), -9847i), Struct_2(vec3<bool>(true, true, false), -28742i, vec2<u32>(0u, 0u), -11217i), Struct_2(vec3<bool>(true, false, true), -1i, vec2<u32>(4294967295u, 38293u), 34930i), Struct_2(vec3<bool>(true, false, true), -1i, vec2<u32>(29846u, 4294967295u), 1i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~abs(47661u), ~(u_input.b ^ u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(24676u, 23901u), ~vec2<u32>(85301u, u_input.b))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(104834u, 1u), vec2<u32>(0u, u_input.b))), 0u, ~reverseBits(0u))));
    global1 = -_wgslsmith_clamp_i32(u_input.a.x & -_wgslsmith_sub_i32(u_input.c.x, -60657i), u_input.c.x & min(10744i, u_input.a.x), _wgslsmith_mod_i32(i32(-1i) * -40264i, u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(872f, -855f) - _wgslsmith_div_f32(-402f, 217f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f)))))));
    var var_2 = Struct_1(true, select(~reverseBits(min(u_input.a.yx, vec2<i32>(u_input.a.x, u_input.a.x))), abs(vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, -35197i), ~(-51888i))), any(vec3<bool>(all(vec2<bool>(false, arg_0)), true, any(vec3<bool>(false, true, true))))), var_1.zy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1266f * _wgslsmith_f_op_f32(sign(1509f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))) * 941f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(165f * var_1.x))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-730f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c.x * 486f))))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_1.yy, _wgslsmith_f_op_vec2_f32(-var_1.xy))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec2<i32> {
    global2 = array<Struct_2, 4>();
    global1 = 1i;
    let var_0 = Struct_1(arg_0.a.x, _wgslsmith_mult_vec2_i32(u_input.a.yy, ~(~vec2<i32>(arg_2, arg_2))) >> (min(~arg_0.c, vec2<u32>(1u << (arg_0.c.x % 32u), arg_0.c.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(func_3(true)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-261f, _wgslsmith_f_op_f32(f32(-1f) * -1598f), 338f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, 726f, 102f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(arg_1)).x, -2208f, -2119f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-427f, -869f, -1000f))))))));
    global2 = array<Struct_2, 4>();
    global0 = !arg_1;
    return vec2<i32>(max(var_0.b.x, select(abs(arg_0.b) & 5080i, firstTrailingBit(select(41375i, 1i, true)), var_0.a && (arg_0.c.x != 52961u))), ~arg_0.d);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = vec3<u32>(reverseBits(_wgslsmith_sub_u32(6156u, _wgslsmith_sub_u32(max(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 31639u, 4294967295u), vec4<u32>(20937u, u_input.b, 1u, 0u))))), u_input.b, 1u);
    let var_2 = Struct_2(vec3<bool>(true, true | (4294967295u >= u_input.b), !var_0), max(1i, countOneBits(select(firstLeadingBit(arg_0.x), arg_0.x, !var_0))), abs(vec2<u32>(_wgslsmith_clamp_u32(4294967295u ^ u_input.b, ~var_1.x, reverseBits(1u)), 24466u)), _wgslsmith_mult_i32(arg_0.x | -2147483647i, 1i));
    var var_3 = Struct_1(var_2.a.x, _wgslsmith_div_vec2_i32(arg_0, min(u_input.c, _wgslsmith_div_vec2_i32(u_input.a.xz | arg_0, vec2<i32>(-14325i, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -253f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1101f, -590f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1176f, 634f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -493f, 562f), vec3<f32>(708f, -1429f, -125f)) * vec3<f32>(-1983f, -1136f, -127f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, 554f, -1586f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, -1227f, 514f)))), vec3<bool>(!var_0, false, 0u <= var_2.c.x))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -420f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(921f)))), _wgslsmith_f_op_vec2_f32(func_3(true)).x)));
    var var_4 = Struct_1(var_0, countOneBits(vec2<i32>(arg_0.x, -980i) ^ abs(u_input.c)) | min(u_input.c, -arg_0 & abs(vec2<i32>(arg_0.x, -18i))), var_3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(190f, var_3.c.x, var_3.d.x)) * var_3.d) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_3.d))), var_3.d)));
    return Struct_1(332i < ~var_3.b.x, var_3.b, var_4.c, _wgslsmith_f_op_vec3_f32(-var_4.d));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_u32(0u << ((u_input.b | u_input.b) % 32u), 1u);
    let var_1 = vec2<bool>(true, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)));
    global1 = arg_1.x & ~(i32(-1i) * -arg_1.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1196f, _wgslsmith_f_op_f32(-1408f + arg_0), arg_0, _wgslsmith_f_op_f32(step(arg_0, -341f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 330f, -1242f, 628f), vec4<f32>(108f, arg_0, -954f, 1145f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(231f, arg_0, arg_0, arg_0)))) * vec4<f32>(-357f, _wgslsmith_f_op_f32(step(-943f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(sign(arg_0))))));
    let var_3 = vec4<u32>(u_input.b, _wgslsmith_mult_u32(~u_input.b, _wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 32423u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), u_input.b, ~(~select(u_input.b, 0u, true))) >> (select(vec4<u32>(u_input.b, reverseBits(4294967295u), 1u, ~0u) >> (select(~vec4<u32>(7354u, 429u, 0u, u_input.b), reverseBits(vec4<u32>(1u, u_input.b, u_input.b, 1u)), vec4<bool>(var_1.x, true, false, var_1.x)) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(39413u, u_input.b, 122160u, 141114u)), !(!select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x))) % vec4<u32>(32u));
    return func_4(select(_wgslsmith_sub_vec2_i32(u_input.c, arg_1.yz), abs(_wgslsmith_mult_vec2_i32(func_2(global2[_wgslsmith_index_u32(u_input.b, 4u)], false, u_input.a.x), vec2<i32>(1i, u_input.c.x) | vec2<i32>(arg_2, arg_2))), select(vec2<bool>(var_1.x, true), var_1, !var_1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_0.a;
    global1 = func_2(Struct_2(vec3<bool>(true, !arg_0.a, true), 1i, _wgslsmith_mod_vec2_u32(~vec2<u32>(41317u, 4294967295u), vec2<u32>(arg_2.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.c.x, 1u, 0u), vec4<u32>(45732u, arg_1, arg_2.c.x, 27088u)))), arg_2.d), arg_0.a, min(arg_2.b, arg_2.d)).x;
    let var_0 = !vec2<bool>(true, ~arg_2.d == firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, -2147483647i, 12643i), vec3<i32>(-16794i, arg_0.b.x, -2147483647i))));
    let var_1 = global2[_wgslsmith_index_u32(32231u, 4u)];
    var var_2 = arg_0.d.x;
    return Struct_1(!all(vec4<bool>(var_1.a.x | arg_0.a, arg_0.a, true, arg_1 != 64641u)), u_input.a.xx, arg_0.d.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, func_4(u_input.a.yy).c.x, 2152f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 22788u;
    var var_1 = func_5(func_1(_wgslsmith_f_op_f32(step(-483f, _wgslsmith_f_op_f32(select(511f, _wgslsmith_div_f32(-394f, 921f), true)))), vec3<i32>(1i, -24003i, u_input.c.x), abs(u_input.a.x)), _wgslsmith_div_u32(13367u, u_input.b), Struct_2(vec3<bool>(true, true, true), firstTrailingBit(~min(1i, 9514i)), max(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(3288u, 11893u), vec2<u32>(24675u, u_input.b)), vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(0u, u_input.b)), vec2<u32>(60283u, ~4294967295u)), i32(-1i) * -6500i));
    var_1 = func_5(func_1(var_1.d.x, vec3<i32>(var_1.b.x, min(var_1.b.x, var_1.b.x) | _wgslsmith_div_i32(var_1.b.x, var_1.b.x), _wgslsmith_mod_i32(u_input.c.x, -3149i) & -u_input.a.x), u_input.a.x), 41448u, global2[_wgslsmith_index_u32(u_input.b, 4u)]);
    let var_2 = func_5(func_5(Struct_1(any(vec4<bool>(true, var_1.a, var_1.a, var_1.a)), u_input.a.zy, vec2<f32>(-2086f, var_1.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.c.x, var_1.c.x))), u_input.b, global2[_wgslsmith_index_u32(0u, 4u)]), 0u, global2[_wgslsmith_index_u32(0u, 4u)]);
    let var_3 = func_4(-vec2<i32>(countOneBits(18584i), _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(var_2.b.x, -31532i)))).b.x | (select(34400i, var_1.b.x, !var_2.a) & _wgslsmith_mult_i32(var_1.b.x, -_wgslsmith_add_i32(var_1.b.x, 2147483647i)));
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(var_1.d));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 1u), countOneBits(u_input.b));
    var var_5 = select(~reverseBits(max(max(vec3<u32>(u_input.b, 36533u, u_input.b), vec3<u32>(u_input.b, 70010u, u_input.b)), reverseBits(vec3<u32>(3422u, 6404u, 0u)))), _wgslsmith_mod_vec3_u32(max(_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), min(vec3<u32>(u_input.b, 52602u, u_input.b), vec3<u32>(1u, 59765u, 51093u))), vec3<u32>(37501u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, 1u, 61445u)), !select(select(!vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, true, true), true), select(vec3<bool>(true, var_1.a, var_2.a), select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.a, false, var_1.a), var_1.a), all(vec3<bool>(true, var_2.a, var_2.a))), select(!vec3<bool>(var_2.a, var_1.a, var_2.a), !vec3<bool>(var_2.a, false, var_2.a), select(vec3<bool>(var_2.a, var_2.a, false), vec3<bool>(false, var_1.a, true), false))));
    var_5 = firstLeadingBit(firstLeadingBit(firstTrailingBit(select(vec3<u32>(36021u, u_input.b, var_5.x), vec3<u32>(1u, var_5.x, u_input.b) << (vec3<u32>(1u, 28726u, u_input.b) % vec3<u32>(32u)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(var_4)), vec4<f32>(-328f, _wgslsmith_div_f32(-1320f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, 498f) - _wgslsmith_f_op_f32(578f * 252f))), _wgslsmith_f_op_f32(abs(var_4.x)), var_4.x), _wgslsmith_f_op_vec3_f32(var_4 - _wgslsmith_f_op_vec3_f32(func_5(func_1(var_4.x, vec3<i32>(-36009i, -53270i, var_3), 18795i), max(16681u, 1u), Struct_2(vec3<bool>(true, true, true), -2147483647i, var_5.yz, u_input.a.x)).d + _wgslsmith_f_op_vec3_f32(-var_4))), abs(~27292u), var_2.d.yy);
}


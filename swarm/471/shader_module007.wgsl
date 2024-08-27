struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    global0 = 1153f;
    let var_0 = Struct_3(vec4<bool>(any(vec2<bool>(true, true)), !(!all(vec2<bool>(true, true))), !(arg_0.x != -2147483647i), false));
    var var_1 = all(!var_0.a.zxy);
    let var_2 = (-(_wgslsmith_sub_i32(arg_1, -1i) ^ (i32(-1i) * -1i)) & ~1i) << (~u_input.c % 32u);
    let var_3 = Struct_3(var_0.a);
    return arg_2;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(-51217i, -2147483647i), u_input.d.x, -439f, vec3<i32>(u_input.d.x, u_input.d.x, 0i)))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(830f, _wgslsmith_f_op_f32(trunc(2054f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1751f * 2092f) + _wgslsmith_f_op_f32(f32(-1f) * -822f))))));
    global0 = -1000f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-630f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 593f))), 4294967295u <= min(_wgslsmith_sub_u32(u_input.b, arg_0), 1u))));
    var var_0 = Struct_2(1i, Struct_1(12173u, true, _wgslsmith_dot_vec3_i32(u_input.d.ywy << (vec3<u32>(u_input.c, 63636u, 1u) % vec3<u32>(32u)), -vec3<i32>(u_input.d.x, 1i, u_input.d.x)) << (arg_0 % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e, u_input.e), u_input.e) | 0u, _wgslsmith_f_op_f32(abs(1711f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1373f - -1181f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-141f, -1228f), 507f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 297f), -2908f)))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 65570u, 25788u) << (abs(vec4<u32>(53890u, u_input.a, 0u, u_input.b)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(arg_0, u_input.b), reverseBits(u_input.e.x), 125315u, u_input.c) << (~(~vec4<u32>(u_input.a, arg_0, arg_0, arg_0)) % vec4<u32>(32u))));
    let var_1 = var_0.b.b;
    return !vec2<bool>(var_0.b.b, true);
}

fn func_1() -> vec4<f32> {
    var var_0 = select(!select(!func_2(u_input.a), vec2<bool>(func_2(4294967295u).x, false), func_2(~0u)), vec2<bool>(false, any(vec2<bool>(true, true))), func_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.e.x, u_input.a, u_input.c)), ~vec3<u32>(0u, u_input.a, u_input.e.x)))));
    var_0 = !vec2<bool>(true, var_0.x);
    var var_1 = -vec4<i32>(~(-u_input.d.x), u_input.d.x, u_input.d.x, ~2147483647i) << ((vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x) << (vec4<u32>(countOneBits(2324u >> (u_input.b % 32u)), _wgslsmith_div_u32(u_input.e.x & 84414u, 56174u), u_input.a, firstTrailingBit(1u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = Struct_3(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x, true, false, true), true), vec4<bool>(false, var_0.x, true, false), !var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(!vec3<bool>(var_0.x, false, false))));
    var var_3 = Struct_2(-1i, Struct_1(_wgslsmith_dot_vec2_u32(u_input.e, ~vec2<u32>(60838u, u_input.b)), true, 0i, _wgslsmith_mod_u32(~(1u & u_input.c), ~u_input.e.x), _wgslsmith_f_op_f32(step(-855f, _wgslsmith_f_op_f32(f32(-1f) * -1969f)))), -372f, vec4<u32>(u_input.b & 19066u, 0u, _wgslsmith_div_u32(~u_input.c, abs(u_input.b)) & ~1u, u_input.e.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.c)), var_3.c, var_3.c, _wgslsmith_f_op_f32(var_3.c * var_3.b.e)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, -1707f, -242f, 1647f)), vec4<f32>(-254f, -797f, -1234f, 726f))), vec4<f32>(-1702f, var_3.b.e, 769f, 1000f))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0.zy;
    let var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x << (var_1 % 32u)), 1i), u_input.d), Struct_1(126527u, true, 2147483647i, ~0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, 0i), vec2<i32>(u_input.d.x, 2147483647i)), ~27152i, _wgslsmith_f_op_f32(arg_0.x - 1000f), u_input.d.zzy << (vec3<u32>(35948u, u_input.c, u_input.b) % vec3<u32>(32u)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), true)), ~(firstTrailingBit(firstTrailingBit(vec4<u32>(var_1, 47144u, 38632u, var_1))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1, 1u, 4294967295u), vec4<u32>(u_input.b, 14741u, var_1, 9803u)) % vec4<u32>(32u))));
    let var_3 = select(~(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d.x, var_1, u_input.c), var_2.d.wwz, vec3<u32>(80237u, 53546u, 3817u))) & _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.d.xyz, var_2.d.zww), var_2.d.wwz, vec3<u32>(41970u, 29491u, var_2.d.x))), ~(~max(var_2.d.zxy << (vec3<u32>(4294967295u, u_input.c, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 71866u, var_2.b.d), var_2.d.xww, vec3<bool>(true, true, var_2.b.b)))), var_2.b.b);
    var var_4 = _wgslsmith_add_i32(u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_2.a >> (~4294967295u % 32u), abs(var_2.a)), _wgslsmith_dot_vec4_i32(-abs(u_input.d), u_input.d)));
    return var_2.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_3 {
    global0 = -1499f;
    let var_0 = -u_input.d;
    let var_1 = true;
    global0 = 1000f;
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-462f, -1442f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.c, -619f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 610f) - -127f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + -902f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_div_f32(arg_0.b.e, -2013f)), 1f, -504f))).b;
    return Struct_3(!(!select(!vec4<bool>(true, false, arg_2.x, arg_0.b.b), vec4<bool>(true, var_1, arg_0.b.b, var_1), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(u_input.d.x, func_4(_wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1410f), _wgslsmith_f_op_f32(step(1109f, 320f)))))), ~vec4<u32>(23387u, u_input.a, max(1u, u_input.c), 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 375f) - vec3<f32>(630f, 1856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)))), vec3<bool>(true, true, true));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1322f, -1399f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, -273f, 740f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2168f, 490f, 513f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-867f, 617f, 1317f), vec3<f32>(-841f, -1306f, -484f)) + vec3<f32>(180f, -518f, -421f))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f), -1259f), _wgslsmith_f_op_f32(func_3(u_input.d.ww & vec2<i32>(u_input.d.x, u_input.d.x), u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1008f), ~vec3<i32>(-1i, -14227i, u_input.d.x))), _wgslsmith_f_op_f32(614f + 962f))));
    var var_2 = -_wgslsmith_mod_i32(~min(select(u_input.d.x, u_input.d.x, var_0.a.x), ~u_input.d.x), 2147483647i);
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 424f))).e, var_1.x, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(865f)), _wgslsmith_f_op_f32(round(-407f)))))));
    let var_4 = var_0.a;
    let var_5 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_3.c), u_input.d.wz, -1i);
}


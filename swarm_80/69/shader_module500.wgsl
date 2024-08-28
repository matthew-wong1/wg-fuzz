struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, !(u_input.b.x == u_input.b.x), true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(1856f <= arg_0, true, true, all(vec2<bool>(false, false))), vec4<bool>(arg_0 == 1000f, all(vec4<bool>(true, true, false, false)), arg_0 > 132f, -1175f < arg_0))), ~4197u, 39795u, reverseBits(select(u_input.a, u_input.a, true)));
    var var_2 = ~1u;
    let var_3 = (~(~var_1.b) >> (var_1.b % 32u)) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 45336u) << (vec3<u32>(var_1.b | 47946u, ~var_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(45096u, 4294967295u), vec2<u32>(1u, 0u))) % vec3<u32>(32u)), vec3<u32>(28851u, _wgslsmith_div_u32(var_1.c, 1u), var_1.b) | firstTrailingBit(~vec3<u32>(var_1.b, 0u, 29731u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1166f, -657f)), vec3<f32>(arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-100f, -1448f, arg_0), vec3<f32>(-280f, arg_0, 1209f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, 1000f, arg_0))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1330f, -2511f, -616f))), vec3<f32>(-537f, -1904f, arg_0))), !var_1.a.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(247f, -377f, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -149f, arg_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1348f, arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 372f, arg_0))))));
    return ~50611u;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec2_u32(select(vec2<u32>(func_3(_wgslsmith_div_f32(-760f, -1640f)), ~1u), ~abs(~vec2<u32>(40873u, arg_2.c)), true), ~max(vec2<u32>(0u, arg_2.b), vec2<u32>(36092u, 1u)));
    let var_1 = max(~vec4<u32>(0u, var_0.x, countOneBits(1u), countOneBits(arg_2.b)), firstLeadingBit(min(~vec4<u32>(4294967295u, 22019u, var_0.x, 0u), abs(vec4<u32>(0u, 4294967295u, arg_2.b, arg_2.c))))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(79711u, ~0u, 0u, _wgslsmith_sub_u32(arg_2.c, 39072u)), reverseBits(vec4<u32>(var_0.x, 4294967295u, 4294967295u, 4294967295u) & vec4<u32>(4294967295u, 21838u, arg_2.b, arg_2.c))) % vec4<u32>(32u));
    let var_2 = select(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, var_1.x, 1u)), vec3<u32>(24212u, ~select(20796u, var_1.x, arg_0), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.x, var_1.x), var_1.yzz, var_1.wyx), select(vec3<u32>(var_0.x, arg_2.b, var_0.x), var_1.zww, vec3<bool>(false, false, true))))), 0u, true);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(1965f + 753f), true)), arg_1, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 340f, arg_1, -497f))), vec3<f32>(arg_1, 313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_1, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * arg_1), arg_1), u_input.b.ywz);
    let var_4 = var_3.e.x;
    return Struct_4(!all(vec3<bool>(true, select(false, arg_3.x, true), false)), var_1, arg_2.a, Struct_3(abs(~(~vec3<u32>(4294967295u, 42435u, 1u))), arg_2, any(select(vec4<bool>(arg_3.x, arg_3.x, true, arg_0), !vec4<bool>(arg_2.a.x, arg_3.x, arg_2.a.x, true), !vec4<bool>(arg_2.a.x, arg_3.x, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1895f * -1096f)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = vec2<bool>(!(arg_3.d.c && true), 200f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f * _wgslsmith_f_op_f32(max(arg_3.e, -289f)))));
    return arg_3.d.c & false;
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    var var_0 = Struct_4(false, vec4<u32>(~(~(~arg_0)), 20136u, max(~abs(arg_0), arg_0), arg_0), vec4<bool>(false, func_4(4294967295u & arg_0, 1831f, -(~2147483647i), func_2(arg_1, _wgslsmith_f_op_f32(-1514f + 1672f), Struct_1(vec4<bool>(arg_1, true, true, arg_1), arg_0, arg_0, u_input.b.x), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, true, false), arg_1))), false, false), func_2(func_4(_wgslsmith_mult_u32(_wgslsmith_sub_u32(7818u, arg_0), 27099u), func_2(arg_0 == 77104u, _wgslsmith_f_op_f32(-1000f * 677f), Struct_1(vec4<bool>(true, arg_1, arg_1, arg_1), 38981u, arg_0, -1i), vec3<bool>(true, true, false)).e, u_input.a, func_2(all(vec4<bool>(arg_1, arg_1, true, false)), _wgslsmith_f_op_f32(957f + -157f), Struct_1(vec4<bool>(false, arg_1, true, true), arg_0, arg_0, 0i), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), arg_1))), -744f, func_2(true, -454f, Struct_1(vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_0 & 36347u, 48371u, _wgslsmith_dot_vec3_i32(vec3<i32>(20791i, u_input.a, u_input.b.x), u_input.b.yyx)), select(vec3<bool>(arg_1, false, arg_1), func_2(arg_1, 1082f, Struct_1(vec4<bool>(arg_1, arg_1, false, false), 48532u, 1u, u_input.a), vec3<bool>(arg_1, false, arg_1)).c.wwx, vec3<bool>(false, arg_1, false))).d.b, vec3<bool>(any(vec2<bool>(true, true)), arg_1, true)).d, func_2(all(func_2(any(vec3<bool>(arg_1, false, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -2095f), func_2(arg_1, -478f, Struct_1(vec4<bool>(arg_1, arg_1, true, true), arg_0, 42103u, u_input.b.x), vec3<bool>(true, false, true)).d.b, !vec3<bool>(true, false, arg_1)).c.ww), 1f, func_2((arg_0 == 4294967295u) == !arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(496f)), _wgslsmith_f_op_f32(1537f - -1640f)), Struct_1(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_0 & arg_0, _wgslsmith_mult_u32(arg_0, 14169u), u_input.b.x), vec3<bool>(arg_1 == arg_1, arg_1 || false, arg_0 != arg_0)).d.b, !select(func_2(arg_1, 501f, Struct_1(vec4<bool>(false, false, arg_1, arg_1), arg_0, arg_0, u_input.b.x), vec3<bool>(true, true, arg_1)).d.b.a.wzx, !vec3<bool>(arg_1, true, true), !vec3<bool>(arg_1, arg_1, arg_1))).e);
    var_0 = func_2(arg_1 || var_0.c.x, 182f, func_2(func_4(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1872f, -1192f))), (u_input.a << (18596u % 32u)) << (~1423u % 32u), func_2(true, 397f, func_2(var_0.d.c, var_0.e, Struct_1(var_0.c, 83504u, var_0.b.x, -1i), var_0.d.b.a.xzz).d.b, func_2(var_0.c.x, -1137f, Struct_1(var_0.c, arg_0, var_0.d.a.x, var_0.d.b.d), var_0.c.yxz).c.xwz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f))), func_2(all(var_0.d.b.a.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(608f, -276f)) * _wgslsmith_f_op_f32(var_0.e * -798f)), Struct_1(!var_0.c, var_0.d.b.b & var_0.b.x, 4294967295u, var_0.d.b.d), var_0.c.xyz).d.b, var_0.d.b.a.wyz).d.b, var_0.c.wxz);
    var_0 = func_2(((~61673u << (~arg_0 % 32u)) & 11259u) > (~(~arg_0) | 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(210f, -1000f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1130f), 676f))), Struct_1(var_0.d.b.a, 0u, ~countOneBits(22313u) << ((_wgslsmith_mod_u32(28912u, var_0.b.x) & 0u) % 32u), firstTrailingBit(~u_input.b.x)), !var_0.d.b.a.wwz);
    var_0 = Struct_4(var_0.d.c, _wgslsmith_sub_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(var_0.d.a.x, arg_0, arg_0, 4294967295u))), var_0.b), !vec4<bool>(all(select(var_0.d.b.a.xww, var_0.c.zxy, var_0.d.b.a.zyx)), true, var_0.e != _wgslsmith_f_op_f32(min(var_0.e, 941f)), all(var_0.d.b.a.yyx)), var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f), var_0.e));
    var_0 = Struct_4(true, var_0.b, vec4<bool>(var_0.d.b.a.x, func_2(!var_0.a | (false && var_0.a), 340f, Struct_1(var_0.c, firstLeadingBit(arg_0), _wgslsmith_div_u32(arg_0, 1u), ~u_input.a), vec3<bool>(all(var_0.d.b.a.xx), var_0.d.b.a.x, !var_0.a)).d.b.a.x, true, !func_2(false, 2287f, var_0.d.b, vec3<bool>(arg_1, false, arg_1)).d.c || ((var_0.d.c | false) || (arg_1 | false))), Struct_3(select(~firstTrailingBit(vec3<u32>(23549u, var_0.d.b.b, var_0.d.a.x)), var_0.d.a << ((var_0.b.xyy >> (vec3<u32>(arg_0, 1u, var_0.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(false, !arg_1, any(var_0.c.yw))), var_0.d.b, false && !(!arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_f32(388f * var_0.e))) * func_2(firstLeadingBit(-7845i) < _wgslsmith_clamp_i32(var_0.d.b.d, var_0.d.b.d, u_input.a), _wgslsmith_f_op_f32(1226f - var_0.e), func_2(var_0.e != var_0.e, _wgslsmith_f_op_f32(var_0.e - -956f), var_0.d.b, vec3<bool>(false, var_0.a, true)).d.b, !var_0.d.b.a.wzx).e));
    return abs(-u_input.b.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    let var_0 = true;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(-vec3<i32>(u_input.a, u_input.a, u_input.b.x))) | (-u_input.b.xxx << (_wgslsmith_div_vec3_u32(abs(~vec3<u32>(0u, 21120u, 104974u)), ~vec3<u32>(61030u, 1u, 1u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(0i, -18350i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, firstTrailingBit(~(-290i))), ~vec2<i32>(_wgslsmith_clamp_i32(47636i, -32457i, -55398i), u_input.a)));
    let var_2 = -1065f;
    var_1 = firstTrailingBit(vec2<i32>(func_5(vec3<i32>(func_1(1507u, false), -70902i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_1.x, var_1.x, 2583i, var_1.x))), func_2(true, _wgslsmith_f_op_f32(var_2 - -1202f), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, 64984u, 0i), vec3<bool>(false, false, true)).d), min(~func_2(true, 1748f, Struct_1(vec4<bool>(false, false, false, true), 4294967295u, 84997u, var_1.x), vec3<bool>(false, true, true)).d.b.d, -18311i)));
    let var_3 = vec3<bool>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 16321u), ~vec3<u32>(4303u, 66405u, 30809u)) < ~reverseBits(~17685u), func_2(all(vec3<bool>(false, false, false)), -520f, func_2(_wgslsmith_f_op_f32(select(var_2, var_2, false)) != -1000f, var_2, func_2(true, _wgslsmith_f_op_f32(398f - 481f), Struct_1(vec4<bool>(false, false, false, true), 4294967295u, 78370u, var_1.x), vec3<bool>(true, true, true)).d.b, func_2(true, -311f, Struct_1(vec4<bool>(true, false, false, true), 53124u, 47095u, -15618i), vec3<bool>(true, true, true)).d.b.a.ywy).d.b, select(func_2(any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(select(724f, -137f, true)), func_2(false, var_2, Struct_1(vec4<bool>(true, false, false, true), 0u, 4294967295u, 27621i), vec3<bool>(true, true, false)).d.b, vec3<bool>(true, false, true)).c.xzz, !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true))).d.b.a.x, any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), 0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36448u, 78798u, 4294967295u), vec4<u32>(4294967295u, 431u, 0u, 116238u)))));
    var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b), 28663i, func_1(39231u, true)), vec3<i32>(var_0.x, u_input.a, _wgslsmith_div_i32(var_0.x, countOneBits(u_input.a))) ^ ~(~u_input.b.wzx));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, 1000f, var_2)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-576f, var_2, var_2) * vec3<f32>(var_2, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2, 814f)))))));
}


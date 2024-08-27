struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a.yy + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(abs(-694f))))), ~vec4<u32>(~abs(1u), ~11750u, 1u, min(~0u, countOneBits(61757u))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.a.x, 1104f, arg_0.a.a.x), vec3<f32>(arg_0.a.a.x, -935f, -374f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, -1517f, arg_0.a.a.x)))), all(vec3<bool>(true, arg_0.a.b, true))));
    let var_1 = vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, arg_0.a.a.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.a.x + 569f))), var_1.x) * var_0.a), ~(abs(max(vec4<u32>(var_0.b.x, 51724u, 93675u, var_0.b.x), vec4<u32>(45410u, var_0.b.x, 2156u, 0u))) | (~var_0.b ^ var_0.b)), Struct_1(_wgslsmith_div_vec3_f32(var_0.c.a, _wgslsmith_f_op_vec3_f32(max(var_1.wzz, _wgslsmith_f_op_vec3_f32(min(arg_0.a.a, var_1.zyz))))), !select(true, true | var_0.c.b, arg_0.a.b)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(150f, var_0.c.a.x, var_0.c.b)) - 2460f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-589f, var_1.x)))), firstTrailingBit(abs(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x >> (var_0.b.x % 32u), ~1u))), arg_0.a);
    let var_2 = -55041i;
    return 20242u;
}

fn func_2() -> f32 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -806f)), vec2<f32>(1063f, -680f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(452f - -548f)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(155f, -451f, 596f) - vec3<f32>(-2357f, -517f, 2122f))), false)), u_input.c << (func_3(Struct_3(Struct_1(vec3<f32>(-1032f, -179f, -1000f), true))) % 32u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(227f)), -572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-149f + -1081f) * _wgslsmith_f_op_f32(f32(-1f) * -1003f))), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), true, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1398f), vec2<f32>(-497f, -240f))), vec2<f32>(_wgslsmith_f_op_f32(-780f - -419f), 1998f)), countOneBits(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(81819u, 26192u, 4294967295u, 4294967295u))), Struct_1(vec3<f32>(_wgslsmith_div_f32(-166f, -326f), 245f, _wgslsmith_f_op_f32(select(1000f, -1000f, true))), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-602f * -835f), _wgslsmith_f_op_f32(round(2235f)), _wgslsmith_f_op_f32(-var_0.c.a.x))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-632f)), 423f, !(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.wx, vec2<i32>(u_input.a.x, 1i)), 2147483647i) <= (u_input.a.x & (var_0.b & 19151i)))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = vec3<i32>(17849i, ~countOneBits(_wgslsmith_dot_vec4_i32(-u_input.d, -u_input.d)), abs(~(_wgslsmith_mod_i32(arg_1.b, u_input.c) | u_input.d.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) + _wgslsmith_f_op_f32(arg_1.e.c.a.x * arg_1.c.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), arg_1.c.a.x) + 949f), arg_1.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e.a.x, _wgslsmith_f_op_f32(-arg_1.a.a.x)) - -145f));
    var_0 = ~(select(u_input.a, firstLeadingBit(u_input.a), !select(vec3<bool>(arg_3, true, arg_1.d), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_1.e.c.b, arg_0, true))) | _wgslsmith_mod_vec3_i32(u_input.a ^ min(u_input.d.zyx, vec3<i32>(-1241i, var_0.x, -2147483647i)), reverseBits(vec3<i32>(arg_1.b, arg_1.b, u_input.d.x))));
    var var_2 = arg_1.e.b.x;
    var var_3 = vec2<f32>(arg_1.c.a.x, var_1.x);
    return Struct_3(arg_1.a.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: f32) -> Struct_2 {
    var var_0 = arg_0.a.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-715f - arg_1.a.a.x))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f + -466f) * _wgslsmith_f_op_f32(func_2())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, -378f, arg_2.x)))), _wgslsmith_f_op_f32(arg_3 * arg_1.a.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.a) + arg_1.a.a);
    let var_3 = ~((arg_0.b.xx << (~arg_0.b.xx % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(select(~arg_0.b.yz, ~vec2<u32>(arg_0.b.x, 4294967295u), !arg_1.a.b), ~reverseBits(vec2<u32>(arg_0.b.x, arg_0.b.x))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -1000f))), _wgslsmith_f_op_vec2_f32(arg_1.a.a.yx * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, 807f), vec2<f32>(arg_1.a.a.x, -1088f)))))), !(true | arg_2.x))), arg_0.b, arg_1.a);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = -_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, arg_2.b, arg_2.b, 0i), vec4<i32>(arg_2.b, 0i, 1i, -1i) >> (arg_2.e.b % vec4<u32>(32u)), vec4<i32>(-17989i, arg_2.b, u_input.c, ~1i)) ^ u_input.d;
    var var_1 = 1i;
    var var_2 = ~reverseBits(~arg_2.e.b.x);
    var var_3 = arg_2.e.b.x;
    var var_4 = _wgslsmith_clamp_vec3_i32(var_0.yzz, ~vec3<i32>(firstLeadingBit(u_input.a.x), reverseBits(23962i) | u_input.d.x, -u_input.a.x), var_0.wyy);
    return func_4(arg_2.e, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e.a.x, -1000f, 1333f), arg_1.a.a)), !(!arg_1.a.b))), vec2<bool>(arg_2.e.c.b, !arg_1.a.b), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec2<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var_0 = true & !(u_input.a.x > -1i);
    let var_1 = func_5(-1004f, Struct_3(Struct_1(vec3<f32>(-1156f, 2237f, 447f), true)), Struct_4(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(385f, 2010f) + vec2<f32>(-740f, 409f)), ~vec4<u32>(4294967295u, 4294967295u, 1u, 1u), Struct_1(vec3<f32>(795f, -176f, 333f), true)), func_1(u_input.b != 22209i, Struct_4(Struct_2(vec2<f32>(661f, 933f), vec4<u32>(43397u, 7525u, 1615u, 38851u), Struct_1(vec3<f32>(-2106f, -528f, -594f), false)), u_input.b, Struct_1(vec3<f32>(-1000f, -1000f, -748f), true), false, Struct_2(vec2<f32>(-1132f, 497f), vec4<u32>(1u, 1u, 1998u, 4403u), Struct_1(vec3<f32>(-149f, -329f, -980f), true))), _wgslsmith_clamp_u32(31289u, 14875u, 68376u), any(vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(f32(-1f) * -1388f)), ~(-1i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(940f, 318f, -473f) - vec3<f32>(-1247f, 429f, 1400f))), true), true, func_4(func_4(Struct_2(vec2<f32>(-1610f, -1080f), vec4<u32>(1u, 2498u, 4294967295u, 0u), Struct_1(vec3<f32>(-1298f, -239f, -1000f), false)), func_1(true, Struct_4(Struct_2(vec2<f32>(-347f, -799f), vec4<u32>(39812u, 65275u, 34095u, 0u), Struct_1(vec3<f32>(-1799f, 844f, 245f), false)), u_input.c, Struct_1(vec3<f32>(-1006f, 797f, 379f), false), true, Struct_2(vec2<f32>(539f, 404f), vec4<u32>(4294967295u, 1u, 1u, 82654u), Struct_1(vec3<f32>(1456f, 554f, 134f), false))), 0u, true), vec2<bool>(false, false), func_1(false, Struct_4(Struct_2(vec2<f32>(-526f, -1000f), vec4<u32>(4294967295u, 9559u, 0u, 6685u), Struct_1(vec3<f32>(646f, 610f, -332f), true)), u_input.a.x, Struct_1(vec3<f32>(-542f, 2019f, 1000f), false), false, Struct_2(vec2<f32>(800f, 1774f), vec4<u32>(0u, 28001u, 0u, 57960u), Struct_1(vec3<f32>(-1041f, -2319f, 392f), false))), 60022u, true).a.a.x), func_1(true, Struct_4(Struct_2(vec2<f32>(1866f, -827f), vec4<u32>(55757u, 4294967295u, 14864u, 1u), Struct_1(vec3<f32>(-1000f, -1740f, -978f), false)), u_input.b, Struct_1(vec3<f32>(1755f, 166f, 410f), true), false, Struct_2(vec2<f32>(-156f, -1000f), vec4<u32>(68053u, 1u, 1u, 0u), Struct_1(vec3<f32>(-773f, 473f, -861f), true))), 1u, false), vec2<bool>(-1i <= u_input.d.x, true), 143f)), vec3<u32>(4294967295u, select(1u, ~1u, true), 1u));
    var var_2 = -113f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.a.x), _wgslsmith_f_op_f32(sign(func_5(1503f, func_1(true, Struct_4(Struct_2(vec2<f32>(-406f, var_1.c.a.x), var_1.b, Struct_1(var_1.c.a, var_1.c.b)), -29875i, var_1.c, var_1.c.b, var_1), var_1.b.x, false), Struct_4(var_1, 2147483647i, var_1.c, var_1.c.b, Struct_2(var_1.a, var_1.b, var_1.c)), ~var_1.b.xzz).a.x)))));
    var var_3 = true;
    var var_4 = i32(-1i) * -37890i;
    let var_5 = _wgslsmith_f_op_vec3_f32(exp2(func_1(func_4(func_5(var_1.a.x, func_1(var_1.c.b, Struct_4(Struct_2(var_1.c.a.yz, var_1.b, var_1.c), u_input.c, Struct_1(vec3<f32>(1661f, var_1.a.x, var_1.a.x), var_1.c.b), false, var_1), 8423u, var_1.c.b), Struct_4(Struct_2(var_1.c.a.xy, vec4<u32>(57899u, 1u, 56130u, 127239u), var_1.c), u_input.a.x, var_1.c, true, var_1), reverseBits(var_1.b.zyz)), Struct_3(Struct_1(var_1.c.a, var_1.c.b)), vec2<bool>(var_1.c.b, var_1.c.b), 441f).c.b, Struct_4(func_4(var_1, func_1(true, Struct_4(var_1, u_input.a.x, var_1.c, var_1.c.b, Struct_2(vec2<f32>(-514f, var_1.a.x), vec4<u32>(54606u, 48336u, 23464u, 45724u), Struct_1(var_1.c.a, var_1.c.b))), var_1.b.x, true), vec2<bool>(true, true), var_1.c.a.x), ~1i, func_5(_wgslsmith_f_op_f32(380f - -1732f), func_1(var_1.c.b, Struct_4(var_1, u_input.b, var_1.c, false, var_1), 0u, var_1.c.b), Struct_4(var_1, -3457i, var_1.c, false, Struct_2(vec2<f32>(362f, var_1.a.x), vec4<u32>(var_1.b.x, 24826u, var_1.b.x, 1u), Struct_1(vec3<f32>(var_1.c.a.x, var_1.a.x, var_1.c.a.x), true))), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, 22065u, 8800u), var_1.b.zww)).c, !(!var_1.c.b), Struct_2(_wgslsmith_f_op_vec2_f32(max(var_1.c.a.yz, vec2<f32>(-868f, var_1.c.a.x))), max(var_1.b, vec4<u32>(var_1.b.x, 63476u, 1u, var_1.b.x)), Struct_1(var_1.c.a, var_1.c.b))), ~69135u << (func_4(Struct_2(vec2<f32>(var_1.c.a.x, var_1.a.x), vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_1.c), func_1(var_1.c.b, Struct_4(Struct_2(var_1.c.a.xx, var_1.b, var_1.c), 0i, var_1.c, var_1.c.b, var_1), 17010u, var_1.c.b), vec2<bool>(var_1.c.b, true), _wgslsmith_f_op_f32(-var_1.a.x)).b.x % 32u), var_1.c.b).a.a));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d, _wgslsmith_f_op_f32(-947f + var_5.x), ~u_input.a.x);
}


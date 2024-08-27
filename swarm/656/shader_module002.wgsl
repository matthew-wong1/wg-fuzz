struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global0 = min(_wgslsmith_add_i32(-6802i, arg_0.a.a.x | arg_0.a.b.x), -1i | abs(_wgslsmith_mod_i32(arg_0.a.a.x, -arg_0.a.b.x)));
    global0 = arg_0.a.b.x;
    var var_0 = arg_0.a;
    global0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 2632i, arg_0.a.b.x, arg_0.a.b.x), vec4<i32>(11380i, 37586i, 0i, var_0.a.x))), ~1i), max(arg_0.a.b.wy, var_0.b.wz));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(max(1085f, -816f))) < -665f;
    return var_0.a.x;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global0 = func_3(Struct_4(Struct_2(firstLeadingBit(vec3<i32>(-2147483647i, 1i, -58445i)), -vec4<i32>(2147483647i, 0i, -1i, -49897i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_0.x, 1753f, arg_0.x), vec4<f32>(arg_0.x, 1000f, arg_0.x, arg_0.x), false))), abs(_wgslsmith_clamp_u32(15187u, u_input.a.x, u_input.b)), Struct_3(~14428u, ~vec4<u32>(u_input.b, u_input.b, 2419u, 0u)))) & (40897i << (~_wgslsmith_mult_u32(u_input.b, ~4294967295u) % 32u));
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0, arg_0)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 568f))), -857f, arg_0.x);
    var_1 = arg_0;
    return 1000f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_4 {
    global0 = -16451i;
    var var_0 = (max(~vec2<i32>(1i, -2147483647i), vec2<i32>(-56035i, min(-22224i, 2147483647i))) ^ (vec2<i32>(_wgslsmith_sub_i32(55387i, 18715i), -53431i) >> (vec2<u32>(firstLeadingBit(1u), _wgslsmith_clamp_u32(51271u, 11216u, arg_1.a)) % vec2<u32>(32u)))) << (reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.xz), ~u_input.a.zz), 1u)) % vec2<u32>(32u));
    let var_1 = u_input.a;
    var var_2 = var_0.x;
    var var_3 = Struct_2(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_0.x, max(var_0.x, var_0.x)), vec3<i32>(22699i, _wgslsmith_mod_i32(53036i, var_0.x), var_0.x)), vec4<i32>(_wgslsmith_div_i32(var_0.x, abs(-2147483647i)), -(~var_0.x), reverseBits(1i), var_0.x | var_0.x), select(!select(vec3<bool>(arg_1.d.x, false, true), vec3<bool>(true, arg_1.d.x, false), vec3<bool>(arg_1.c, true, true)), vec3<bool>(any(arg_1.b), any(vec3<bool>(arg_1.b.x, arg_1.c, true)), all(arg_1.b.ww)), arg_1.d.zzx));
    return Struct_4(Struct_2(vec3<i32>(select(29329i, var_0.x, true) >> ((var_1.x >> (u_input.b % 32u)) % 32u), reverseBits(var_3.b.x & 1i), var_0.x), vec4<i32>(-(var_3.b.x & var_0.x), ~var_3.a.x, ~0i, -1i), !(!(!vec3<bool>(false, arg_1.d.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x, -987f, -522f), 8000u, Struct_3(u_input.a.x, vec4<u32>(arg_1.a, var_1.x, select(select(u_input.b, 30164u, var_3.c.x), 1u, arg_1.a != 1u), var_1.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f + 1655f) * -603f), _wgslsmith_f_op_f32(floor(-1740f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(310f, 1331f, -1359f))) - 227f))), Struct_1(~firstTrailingBit(31077u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1198f, -570f)))) <= _wgslsmith_div_f32(-2050f, 1f), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true)));
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(4294967295u, 0u)), ~var_0.c << (firstTrailingBit(95176u) % 32u)), var_0.c);
    var var_2 = ~var_0.a.a;
    var_1 = var_0.c;
    let var_3 = var_0;
    return func_4(_wgslsmith_f_op_vec3_f32(var_3.b.xxy * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1417f, -1000f, _wgslsmith_f_op_f32(-103f + 867f))))), Struct_1(31092u, select(vec4<bool>(all(vec2<bool>(true, var_3.a.c.x)), true, any(vec2<bool>(var_0.a.c.x, var_3.a.c.x)), var_3.a.c.x), !(!vec4<bool>(var_3.a.c.x, var_0.a.c.x, var_3.a.c.x, var_3.a.c.x)), !vec4<bool>(var_3.a.c.x, false, false, true)), true, vec4<bool>(false, any(select(var_0.a.c.xx, vec2<bool>(false, false), var_0.a.c.x)), var_0.a.c.x, (var_3.d.a ^ 54097u) <= u_input.b))).a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(~(~(arg_2.a << (countOneBits(arg_2.a) % 32u))), ~_wgslsmith_mult_u32(u_input.b, 1u));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(837f, 539f, 1200f), vec3<f32>(701f, 1000f, -557f)) - vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 1763f, 1040f)), vec3<f32>(_wgslsmith_f_op_f32(1079f + 624f), _wgslsmith_div_f32(-135f, 493f), _wgslsmith_f_op_f32(f32(-1f) * -1421f))))), arg_2);
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(~0u), _wgslsmith_sub_u32(arg_2.a, 1u) ^ arg_2.a, abs(abs(u_input.a.x)), ~arg_2.a), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_2.a, arg_2.a, 4294967295u), var_1.d.b), ~var_1.d.b)), _wgslsmith_div_u32(0u, 11418u));
    global0 = -select(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x) * vec3<f32>(var_1.b.x, -1157f, -1000f)))), Struct_1(firstLeadingBit(var_2), !arg_2.d, arg_0.c.x, !vec4<bool>(false, false, arg_2.d.x, arg_0.c.x))).a.b.x, arg_1.b.x, ~var_1.d.a <= _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 1u), func_4(vec3<f32>(2615f, 1773f, 244f), arg_2).d.a));
    global0 = 1i;
    return Struct_3(4294967295u, var_1.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(29449u, 27035u, u_input.b, 21661u)), vec4<u32>(0u, _wgslsmith_mult_u32(u_input.a.x, u_input.b), 15280u >> (u_input.b % 32u), ~39471u)));
    let var_1 = func_5(Struct_2(countOneBits(select(vec3<i32>(-50879i, -1i, -2147483647i), vec3<i32>(1i, 0i, 1i), vec3<bool>(true, false, true)) >> (var_0.www % vec3<u32>(32u))), ~reverseBits(vec4<i32>(-4579i, 4542i, 1i, -9222i)), vec3<bool>(true, true, true)), func_1(), Struct_1(min(~max(4294967295u, 4294967295u), ~var_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, false, true)), false, true), true), !func_1().c.x, !select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), true)), _wgslsmith_dot_vec3_i32(vec3<i32>(min(func_1().a.x, -1i), ~(-17853i), -1i), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -15582i, 0i), vec4<i32>(-15491i, 2147483647i, 2466i, -14044i)), 1308i >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(96613i, 20516i, -51311i), vec3<i32>(15812i, -51096i, 12573i)))));
    var_0 = var_1.b;
    var var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1817f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(520f * 1000f))) * -718f)), Struct_1(var_1.b.x, vec4<bool>(select(true, true, true), func_1().c.x, any(vec4<bool>(true, true, true, true)), select(false, true, any(vec2<bool>(false, true)))), false, select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(false, false, false, true), true), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, func_4(vec3<f32>(-1211f, 763f, -802f), Struct_1(var_0.x, vec4<bool>(false, false, true, false), false, vec4<bool>(false, false, false, true))).a.c.x, true), all(vec2<bool>(true, true))))).a.a.x;
    let var_3 = func_5(func_1(), func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-588f, 471f, 1444f), vec3<f32>(-400f, 1347f, 126f)))))), Struct_1(var_0.x, select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true, select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), false))).a, Struct_1(24110u, vec4<bool>(true, true, true, true), true, select(vec4<bool>(4294967295u != u_input.b, all(vec4<bool>(true, false, true, true)), true, false), vec4<bool>(select(false, true, true), func_4(vec3<f32>(1260f, -1028f, 1000f), Struct_1(var_0.x, vec4<bool>(false, true, false, false), true, vec4<bool>(false, false, false, true))).a.c.x, true, true), true)), 1i);
    var_0 = vec4<u32>(~36553u, _wgslsmith_mod_u32(50073u, min(~(~1u), 28757u >> (var_1.a % 32u))), _wgslsmith_mod_u32(func_4(vec3<f32>(-249f, _wgslsmith_f_op_f32(583f + 927f), _wgslsmith_f_op_f32(-695f * 747f)), Struct_1(~1u, select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), false, vec4<bool>(true, false, true, false))).c, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.a, var_1.a, 30390u), vec4<u32>(var_1.a, var_3.b.x, 3196u, var_0.x)), abs(var_0.x | var_1.a))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, -734f, 211f)) - vec3<f32>(1f, 1f, 1f)), Struct_1(firstTrailingBit(38786u), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), true, vec4<bool>(true, true, false, true))).d.b.x << (_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(func_4(vec3<f32>(421f, -113f, 1423f), Struct_1(19407u, vec4<bool>(false, false, true, true), true, vec4<bool>(false, true, false, false))).d.b.yxx, _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, var_0.xzw))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec2_u32(~u_input.a.xz, vec2<u32>(1u, u_input.b)) << ((~var_3.b.wz >> (func_5(Struct_2(vec3<i32>(2147483647i, 27490i, 0i), vec4<i32>(0i, -1i, 34986i, 0i), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-2147483647i, -1i, -52147i), vec4<i32>(-2147483647i, 41741i, 1i, 1i), vec3<bool>(false, true, false)), Struct_1(var_0.x, vec4<bool>(false, true, true, true), true, vec4<bool>(false, true, true, true)), 0i).b.xz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(var_1.a, _wgslsmith_add_u32(var_3.a, 0u)), _wgslsmith_dot_vec4_u32(var_1.b, max(var_1.b, var_3.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1182f, func_4(vec3<f32>(1000f, -526f, 552f), Struct_1(1u, vec4<bool>(false, true, false, true), true, vec4<bool>(false, true, true, true))).b.x))), ~var_3.b.wz);
}


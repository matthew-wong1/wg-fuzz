struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    global1 = array<Struct_3, 9>();
    var var_0 = arg_0.x;
    var_0 = !((~_wgslsmith_div_i32(arg_3.a, -1i) <= _wgslsmith_mult_i32(abs(0i), arg_3.a)) & all(select(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, true), select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, arg_0.x, false, false)))));
    global0 = array<Struct_3, 1>();
    var var_1 = 0u;
    return vec2<bool>(all(!vec4<bool>(arg_0.x, -30631i <= u_input.b, arg_0.x, -1000f < arg_2)), arg_0.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = array<Struct_3, 1>();
    var var_0 = Struct_4(Struct_1(reverseBits(select(arg_1 | arg_1, vec4<u32>(26993u, 30981u, 0u, u_input.a.x), vec4<bool>(false, arg_0.x, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1214f), ~vec4<u32>(1u, ~0u, _wgslsmith_mult_u32(arg_1.x, u_input.c.x), 81580u), abs(vec2<u32>(u_input.c.x << (arg_1.x % 32u), arg_1.x & 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1000f, -732f, false)), -1218f, 1f))), ~select(vec4<u32>(_wgslsmith_mod_u32(9252u, 28098u), _wgslsmith_add_u32(arg_1.x, u_input.a.x), arg_1.x, 26593u), u_input.a, vec4<bool>(any(vec3<bool>(false, true, false)), false, false, true)));
    var var_1 = Struct_3(!(!all(vec4<bool>(true, false, arg_0.x, true))) && true);
    var var_2 = Struct_2(~u_input.b, var_0.a.e, _wgslsmith_f_op_f32(1139f + var_0.a.b), Struct_1(vec4<u32>(~var_0.b.x, _wgslsmith_mod_u32(arg_1.x, 4294967295u), 0u & var_0.b.x, firstTrailingBit(1u)) << (_wgslsmith_clamp_vec4_u32(~arg_1, _wgslsmith_sub_vec4_u32(vec4<u32>(16580u, arg_1.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 7618u)), arg_1 << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(1531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.e.x * 1000f)))), arg_1, var_0.b.yx, _wgslsmith_f_op_vec3_f32(var_0.a.e + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1023f, 1695f, var_0.a.e.x)))), ~0u);
    var_1 = Struct_3(all(!select(vec4<bool>(var_1.a, false, var_1.a, arg_0.x), vec4<bool>(true, false, arg_0.x, true), !vec4<bool>(arg_0.x, var_1.a, arg_0.x, arg_0.x))));
    return arg_1;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(func_3(func_2(vec3<bool>(true, true, true), 1f, -446f, Struct_2(u_input.b, vec3<f32>(1000f, -1000f, -1070f), -1017f, Struct_1(u_input.a, 1330f, vec4<u32>(u_input.a.x, 1u, 57759u, 497u), u_input.a.wx, vec3<f32>(-773f, 1226f, -786f)), 1u)), ~vec4<u32>(12653u, 41793u, 4294967295u, 26803u)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1652f))), vec4<u32>(4294967295u, ~(~abs(u_input.a.x)), abs(29u), 1u), ~firstLeadingBit(u_input.a.yx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(804f, -537f, 3265f))))))));
    var var_1 = !func_2(vec3<bool>(true, false, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(var_0.b, var_0.e.x)), var_0.e.x, Struct_2(-2147483647i >> (var_0.c.x % 32u), _wgslsmith_f_op_vec3_f32(-var_0.e), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), Struct_1(vec4<u32>(4049u, 0u, 4294967295u, 57838u), _wgslsmith_f_op_f32(select(1375f, -2016f, false)), u_input.a, ~u_input.a.yw, _wgslsmith_f_op_vec3_f32(select(var_0.e, var_0.e, vec3<bool>(true, true, true)))), countOneBits(1u))).x;
    global1 = array<Struct_3, 9>();
    return Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~17064u, ~41110u >> (u_input.a.x % 32u), ~firstLeadingBit(var_0.c.x), ~(~var_0.d.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, u_input.c.x, u_input.c.x, u_input.a.x), u_input.a), vec4<u32>(36132u, u_input.c.x, u_input.a.x, var_0.d.x)), countOneBits(u_input.a))), -1298f, vec4<u32>(abs(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(u_input.c.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, 46979u))), u_input.a.x, firstLeadingBit(u_input.a.x), ~76782u), u_input.a.xw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-262f, var_0.b, var_0.b))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = Struct_1(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.x, 0u, arg_1.d.x, 1u), vec4<u32>(arg_1.d.x, u_input.c.x, arg_1.c.x, u_input.c.x)), ~arg_1.a), vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(34381u, 1u), u_input.c), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~arg_1.c.x))), arg_1.b, u_input.a, arg_1.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2132f, arg_1.e.x, arg_1.e.x), arg_1.e))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.e, arg_1.e, false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1836f, arg_1.b, 1081f) * arg_1.e))), arg_1.e)));
    return Struct_4(Struct_1(countOneBits(vec4<u32>(arg_1.c.x, var_0.d.x, u_input.a.x, arg_1.a.x)) ^ var_0.c, -223f, var_0.a, select(arg_1.d, vec2<u32>(~31402u, 22470u), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.b, arg_1.e.x))))), ~arg_1.a >> (~vec4<u32>(~27395u, ~21174u, arg_1.a.x | var_0.a.x, u_input.c.x) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: f32) -> vec4<u32> {
    global0 = array<Struct_3, 1>();
    let var_0 = Struct_5(arg_3);
    return ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x | u_input.c.x), arg_2.a.c.x, 26670u, arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(11842i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2146f + -1956f), _wgslsmith_div_f32(-344f, -1304f), 250f))), 217f, Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-485f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f))), func_5(vec3<bool>(true, true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), func_4(~vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i), func_1()), 1000f), func_5(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), Struct_4(Struct_1(vec4<u32>(u_input.a.x, 28308u, 27168u, 38873u), -1729f, u_input.a, u_input.a.zy, vec3<f32>(-2698f, 1000f, -422f)), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-434f - 674f) + -179f)).wy, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))), 0u | _wgslsmith_mult_u32(~_wgslsmith_mod_u32(58365u, u_input.c.x), min(_wgslsmith_dot_vec3_u32(u_input.a.xzy, u_input.a.wyy), ~u_input.a.x)));
    let var_1 = Struct_3(all(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), -1583f > func_4(vec4<i32>(var_0.a, -14482i, -3830i, -2280i), var_0.d).a.b)));
    global0 = array<Struct_3, 1>();
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    var var_2 = all(select(vec3<bool>(true, var_0.c != _wgslsmith_f_op_f32(f32(-1f) * -710f), all(!vec3<bool>(true, true, var_1.a))), vec3<bool>(false, var_1.a, false), any(!(!vec3<bool>(var_1.a, false, false)))));
    global0 = array<Struct_3, 1>();
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-var_0.d.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -844f)), var_0.d.a.x, -1i, min(firstTrailingBit(u_input.a.zww | vec3<u32>(var_0.d.d.x, 12986u, 14294u)), select(select(~vec3<u32>(var_0.e, 16361u, 1u), u_input.a.wxz, select(var_1.a, var_1.a, true)), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~var_0.d.a.x, ~u_input.c.x), 0u == (var_0.e | 1u))));
}


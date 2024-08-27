struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    global0 = arg_0.x;
    global0 = -1000f;
    global0 = arg_0.x;
    var var_0 = _wgslsmith_mult_i32(2571i, ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, 22657i, 25980i)), abs(vec3<i32>(45355i, -1i, 1i))) << (_wgslsmith_sub_u32(~firstLeadingBit(46899u), 1u) % 32u));
    let var_1 = 1u;
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = (~reverseBits(min(vec2<u32>(4294967295u, arg_3.x), u_input.b.yz)) ^ ~u_input.a) << (func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(1447f, -155f, -945f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, 585f, 1116f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(arg_2, arg_2, arg_2))))) % vec2<u32>(32u));
    let var_1 = true;
    let var_2 = _wgslsmith_add_i32(-9741i, arg_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, -990f, -653f));
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_f32(-435f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), var_3.x)), var_3.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(444f, var_3.x, arg_2))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, var_3.x, -1420f)))))));
    return Struct_3(Struct_1(~1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x - arg_2), _wgslsmith_f_op_f32(select(-1930f, var_3.x, var_1)), _wgslsmith_f_op_f32(-272f + 261f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)))), min(select(vec4<i32>(var_2, arg_0, -1i, -72763i), ~vec4<i32>(-2147483647i, -1i, -1i, var_2), var_1), vec4<i32>(arg_1.c, arg_0, arg_0, -1i) | _wgslsmith_mult_vec4_i32(vec4<i32>(-45351i, 0i, arg_1.c, 9017i), vec4<i32>(-24575i, arg_0, 2147483647i, arg_1.c))), arg_2), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 2271f, arg_2)))), _wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, arg_0, 2147483647i, arg_1.c), vec4<i32>(-2147483647i, arg_0, arg_0, -6802i)), abs(vec4<i32>(var_2, -62997i, arg_0, -1i))) << (max(~vec4<u32>(38991u, arg_3.x, arg_3.x, 4294967295u), vec4<u32>(18127u, 4294967295u, 12351u, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(exp2(var_3.x)))) + _wgslsmith_f_op_f32(190f - var_3.x))), Struct_2(u_input.b, ~(~vec3<u32>(1u, var_0.x, var_0.x)), 3163i), var_1, (~max(arg_1.a.x, 4294967295u) >> (1u % 32u)) < _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(~arg_3.x, arg_3.x, ~0u, 62078u)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = 35477u;
    var_0 = 49123u | min(arg_3.c.b.x, ~_wgslsmith_div_u32(u_input.b.x, 4294967295u));
    var var_1 = arg_3.b;
    let var_2 = arg_3;
    var_1 = arg_3.a;
    return Struct_4(!(!(arg_3.d || !arg_3.e)), vec3<u32>(var_1.a, abs(u_input.b.x), firstLeadingBit(var_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1876f, var_1.d)), var_2.b.d, var_1.d)), !(!(!select(vec4<bool>(false, false, arg_3.d, false), vec4<bool>(false, arg_3.e, var_2.e, true), vec4<bool>(false, false, false, arg_3.e)))), abs(1u));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.a.x | 24417u, min(6715u, arg_2.e), u_input.b.x)), (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_1.x, 4294967295u), arg_2.b) & ~u_input.b) >> ((vec3<u32>(4294967295u, arg_1.x, arg_2.e) ^ ~vec3<u32>(arg_2.b.x, 0u, 30100u)) % vec3<u32>(32u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.e, u_input.b.x, 77132u), vec3<u32>(arg_2.b.x, 1u, 10333u)))) | arg_1.wwy;
    return arg_2.d;
}

fn func_6(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    let var_0 = func_4(_wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_mod_i32(-47577i, 8818i), i32(-1i) * -5637i), vec2<i32>(~(-50464i), i32(-1i) * -1i)), vec2<i32>(1i, abs(~3080i))), _wgslsmith_clamp_i32(-2147483647i, ~(-firstTrailingBit(1i)), -37855i), ~vec4<u32>(~(~u_input.b.x), u_input.b.x, 11668u | (3941u | u_input.a.x), ~u_input.b.x | func_4(1i, -2147483647i, vec4<u32>(u_input.b.x, 21464u, 1u, 4294967295u), Struct_3(Struct_1(u_input.b.x, vec4<f32>(729f, 1000f, -924f, 1140f), vec4<i32>(-1i, -16217i, -1i, 0i), 575f), Struct_1(u_input.b.x, vec4<f32>(-166f, -216f, 1066f, -918f), vec4<i32>(-10372i, 27987i, 2147483647i, -21944i), 1478f), Struct_2(u_input.b, u_input.b, -5276i), true, false)).b.x), Struct_3(Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, -402f, 915f, -826f)), vec4<i32>(~(-2199i), ~88430i, countOneBits(-42096i), ~0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(847f, 2194f, arg_1))))), func_2(firstLeadingBit(i32(-1i) * -1262i), Struct_2(~u_input.b, u_input.b & u_input.b, 1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-129f, 655f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(vec4<u32>(3810u, 1u, u_input.a.x, 1u) | vec4<u32>(7025u, u_input.a.x, u_input.b.x, 1u))).b, Struct_2(vec3<u32>(_wgslsmith_mod_u32(1u, 49137u), u_input.a.x, ~4294967295u), countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 41776u)) | ~u_input.b, countOneBits(1i)), false, func_5(false, vec4<u32>(u_input.b.x, u_input.b.x, 35532u, u_input.a.x), Struct_4(arg_1, vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<f32>(-1180f, 1952f, -1494f), arg_0, 47369u), !arg_0.x).x && false));
    global0 = _wgslsmith_f_op_f32(-var_0.c.x);
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(firstLeadingBit(i32(-1i) * -1i)), 1i), _wgslsmith_div_vec2_i32(func_2(1i, func_2(~2147483647i, func_2(-856i, Struct_2(var_0.b, vec3<u32>(u_input.b.x, 9139u, u_input.a.x), 45620i), -142f, vec4<u32>(33448u, u_input.b.x, 4294967295u, 0u)).c, var_0.c.x, ~vec4<u32>(u_input.a.x, 0u, 12092u, 0u)).c, -326f, vec4<u32>(var_0.b.x, var_0.e ^ 37494u, func_2(0i, Struct_2(var_0.b, vec3<u32>(67598u, 0u, var_0.b.x), 1i), -930f, vec4<u32>(u_input.a.x, var_0.e, u_input.b.x, 17290u)).c.a.x, var_0.e)).a.c.xz, _wgslsmith_mod_vec2_i32(select(~vec2<i32>(23301i, 0i), -vec2<i32>(-11532i, 15233i), !vec2<bool>(true, arg_1)), firstLeadingBit(vec2<i32>(1i, 1i)))));
    global0 = var_0.c.x;
    global0 = 1676f;
    return -389f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_6(func_5(false, ~vec4<u32>(u_input.b.x, 91371u, 4294967295u, 92915u) | vec4<u32>(u_input.b.x, u_input.a.x, 21462u, arg_0), func_4(~30604i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6432i, -81083i, 0i), vec4<i32>(4541i, -10583i, 36549i, -27270i)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 62734u), func_2(-46053i, Struct_2(vec3<u32>(66393u, u_input.a.x, u_input.a.x), vec3<u32>(1u, 25321u, arg_0), -1i), -1600f, vec4<u32>(41144u, u_input.b.x, arg_0, u_input.a.x))), _wgslsmith_f_op_f32(1573f * 183f) > _wgslsmith_f_op_f32(trunc(-188f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1597f * -432f))))), -1131f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-744f, 834f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f * 1000f))))));
    return Struct_2(~(u_input.b ^ _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(arg_0, 1611u, u_input.a.x))) | vec3<u32>(1u, _wgslsmith_add_u32(u_input.a.x, ~52087u), arg_0), ~(~vec3<u32>(arg_0 | 1u, ~u_input.a.x, 1u >> (0u % 32u))), 46146i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x);
    var var_1 = func_2(reverseBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, 2147483647i, 62218i, 70849i), vec4<i32>(1i, var_0.c, -21676i, 0i))), var_0.c)), Struct_2(~(~_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, 1u, u_input.a.x))), countOneBits(u_input.b), 18684i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(545f, 908f)))), abs(~(~(vec4<u32>(u_input.b.x, 43081u, 0u, var_0.b.x) & vec4<u32>(1u, 52989u, 9126u, 7923u))))).c;
    var_0 = Struct_2(vec3<u32>(min(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, var_0.b.x, 0u), vec3<u32>(var_1.a.x, var_1.b.x, 28284u)), _wgslsmith_sub_vec3_u32(u_input.b, var_0.b)), var_0.a.x), func_1(~(38649u ^ var_1.b.x)).b.x, func_2(func_1(func_4(var_1.c, -30381i, vec4<u32>(var_0.a.x, 61543u, var_1.a.x, u_input.b.x), Struct_3(Struct_1(u_input.b.x, vec4<f32>(-975f, 929f, 1019f, -485f), vec4<i32>(var_1.c, var_1.c, var_0.c, -35091i), -590f), Struct_1(var_1.a.x, vec4<f32>(-1464f, -1014f, 1412f, -975f), vec4<i32>(var_1.c, -38096i, -2147483647i, 57921i), -303f), Struct_2(u_input.b, u_input.b, var_0.c), true, true)).b.x).c, func_2(var_0.c >> (var_0.a.x % 32u), Struct_2(var_0.a, vec3<u32>(var_1.a.x, 0u, 0u), 15315i), -404f, ~vec4<u32>(u_input.a.x, var_1.b.x, var_1.a.x, 23478u)).c, _wgslsmith_f_op_f32(ceil(1000f)), vec4<u32>(select(0u, 1u, true), var_0.b.x, 28120u, reverseBits(16292u))).b.a), max(vec3<u32>(~var_0.b.x, _wgslsmith_clamp_u32(var_1.a.x, u_input.a.x, u_input.a.x), ~var_1.a.x) >> (vec3<u32>(~13509u, ~var_0.a.x, u_input.a.x) % vec3<u32>(32u)), ~(~var_0.a)), ~32981i);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1018f - -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_6(vec4<bool>(true, false, false, false), false)))), 258f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, 455f, -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -585f), var_2.x, _wgslsmith_f_op_f32(1000f + var_2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, 300f, -1952f)) * var_2)));
}


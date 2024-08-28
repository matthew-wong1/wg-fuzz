struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(2223u, 38281u), vec2<u32>(0u, 49303u), vec2<u32>(71271u, 4294967295u), vec2<u32>(5049u, 1742u), vec2<u32>(12423u, 1u), vec2<u32>(54810u, 0u), vec2<u32>(4294967295u, 87790u), vec2<u32>(11084u, 4294967295u), vec2<u32>(4294967295u, 32878u), vec2<u32>(37045u, 1u), vec2<u32>(29715u, 1u), vec2<u32>(39396u, 4294967295u), vec2<u32>(12964u, 1u), vec2<u32>(1u, 24670u));

var<private> global1: bool;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4285u, 6464u, 1u);

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<f32>(-634f, 586f), false, vec2<i32>(2147483647i, 12378i), vec2<u32>(35279u, 1u)), 17444u, vec3<i32>(i32(-2147483648), 26241i, i32(-2147483648)), 46892i), Struct_2(Struct_1(vec2<f32>(505f, -579f), false, vec2<i32>(43348i, 14206i), vec2<u32>(4294967295u, 8798u)), 27797u, vec3<i32>(2147483647i, -21651i, -16361i), 21310i), Struct_2(Struct_1(vec2<f32>(872f, -332f), true, vec2<i32>(-1334i, -16793i), vec2<u32>(21032u, 1u)), 0u, vec3<i32>(12410i, 55347i, -1i), i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(694f, 1373f), true, vec2<i32>(2147483647i, 25789i), vec2<u32>(0u, 1u)), 0u, vec3<i32>(-57461i, 0i, -1i), 2147483647i), Struct_2(Struct_1(vec2<f32>(1000f, -631f), true, vec2<i32>(2147483647i, -25986i), vec2<u32>(0u, 1329u)), 4294967295u, vec3<i32>(1826i, 8579i, i32(-2147483648)), -1i), Struct_2(Struct_1(vec2<f32>(337f, 190f), false, vec2<i32>(32578i, 0i), vec2<u32>(4294967295u, 1u)), 45920u, vec3<i32>(-5624i, 26738i, -11854i), 2147483647i), Struct_2(Struct_1(vec2<f32>(514f, -354f), false, vec2<i32>(1i, -36211i), vec2<u32>(72122u, 34406u)), 0u, vec3<i32>(-9334i, 1i, -918i), -35948i), Struct_2(Struct_1(vec2<f32>(-1000f, -298f), false, vec2<i32>(10031i, 2147483647i), vec2<u32>(30138u, 103258u)), 0u, vec3<i32>(1i, 2147483647i, -13349i), 22404i), Struct_2(Struct_1(vec2<f32>(-285f, 704f), false, vec2<i32>(1241i, 27333i), vec2<u32>(21732u, 60365u)), 4294967295u, vec3<i32>(-41361i, 0i, 7697i), 38147i), Struct_2(Struct_1(vec2<f32>(1441f, 1000f), true, vec2<i32>(0i, -19494i), vec2<u32>(15392u, 37210u)), 82883u, vec3<i32>(-1i, 23732i, 27094i), 8032i), Struct_2(Struct_1(vec2<f32>(-650f, 930f), false, vec2<i32>(1i, 0i), vec2<u32>(4294967295u, 25158u)), 1u, vec3<i32>(1i, -33914i, -1i), 0i), Struct_2(Struct_1(vec2<f32>(1364f, -300f), false, vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(0u, 10349u)), 59737u, vec3<i32>(-14721i, 66983i, 34656i), 1i), Struct_2(Struct_1(vec2<f32>(-736f, -187f), true, vec2<i32>(-21676i, -1110i), vec2<u32>(128872u, 0u)), 79145u, vec3<i32>(0i, -45127i, -6256i), 13061i), Struct_2(Struct_1(vec2<f32>(822f, -1182f), true, vec2<i32>(-13351i, 1i), vec2<u32>(4294967295u, 122024u)), 22815u, vec3<i32>(2147483647i, 0i, 34963i), -1i), Struct_2(Struct_1(vec2<f32>(1182f, -2412f), true, vec2<i32>(36224i, -38125i), vec2<u32>(1u, 1u)), 1u, vec3<i32>(-23822i, 25139i, i32(-2147483648)), 15611i), Struct_2(Struct_1(vec2<f32>(-253f, -365f), true, vec2<i32>(12623i, 7644i), vec2<u32>(29492u, 0u)), 25285u, vec3<i32>(0i, -89414i, 12697i), 1i), Struct_2(Struct_1(vec2<f32>(219f, -226f), false, vec2<i32>(2147483647i, 11408i), vec2<u32>(17788u, 1u)), 2942u, vec3<i32>(-3791i, -40178i, -1i), -1i), Struct_2(Struct_1(vec2<f32>(-1000f, -204f), true, vec2<i32>(2147483647i, 11675i), vec2<u32>(43396u, 36524u)), 13113u, vec3<i32>(1i, 0i, 2147483647i), 28036i), Struct_2(Struct_1(vec2<f32>(637f, 1416f), false, vec2<i32>(72657i, -15815i), vec2<u32>(13498u, 4294967295u)), 22189u, vec3<i32>(2147483647i, -25221i, 0i), 1i), Struct_2(Struct_1(vec2<f32>(-147f, -3389f), true, vec2<i32>(-49212i, 29965i), vec2<u32>(1u, 9910u)), 109122u, vec3<i32>(1i, 0i, 1i), -1i), Struct_2(Struct_1(vec2<f32>(699f, -719f), true, vec2<i32>(0i, 2147483647i), vec2<u32>(27750u, 79665u)), 4294967295u, vec3<i32>(2147483647i, 344i, 2147483647i), 2147483647i));

var<private> global4: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(select(arg_1, arg_1, true))) - arg_1))), !all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), vec2<i32>(0i, _wgslsmith_clamp_i32(max(u_input.a, -1i), _wgslsmith_mult_i32(~u_input.a, select(u_input.a, 1i, false)), -u_input.a)), vec2<u32>(~4294967295u, 4294967295u >> (global2.x % 32u)));
    global0 = array<vec2<u32>, 14>();
    global3 = array<Struct_2, 21>();
    global4 = var_0.b;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) - -466f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), true)), 773f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_0.c.x, 19657i, var_0.c.x)), -vec3<i32>(var_0.c.x, var_0.c.x, -1i))), var_0.c), vec2<u32>(1u, global2.x));
    return reverseBits(-vec3<i32>(~1i, u_input.a, u_input.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<u32> {
    global0 = array<vec2<u32>, 14>();
    var var_0 = Struct_2(Struct_1(vec2<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(-1701f * -1000f)), false, -countOneBits(vec2<i32>(2147483647i, -17040i)), reverseBits(vec2<u32>(4294967295u, arg_1.a.d.x) & ~global0[_wgslsmith_index_u32(arg_0.d.x, 14u)])), min(47922u, ~_wgslsmith_sub_u32(global2.x & arg_0.d.x, arg_0.d.x)), arg_1.c, arg_0.c.x);
    global0 = array<vec2<u32>, 14>();
    global0 = array<vec2<u32>, 14>();
    let var_1 = true;
    return ~(~(~vec2<u32>(max(arg_0.d.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(26298u, var_0.a.d.x)))));
}

fn func_5(arg_0: vec2<u32>) -> bool {
    global4 = 1i == abs(_wgslsmith_add_i32(-(~u_input.a), _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)))));
    global2 = ~vec4<u32>(global2.x, u_input.b, reverseBits(~arg_0.x), ~(~(~42135u)));
    let var_0 = global3[_wgslsmith_index_u32(~arg_0.x, 21u)];
    global0 = array<vec2<u32>, 14>();
    var var_1 = arg_0.x;
    return all(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, var_0.a.b))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = 1029f;
    global4 = false;
    global0 = array<vec2<u32>, 14>();
    let var_2 = vec2<bool>(func_5(func_4(Struct_1(vec2<f32>(620f, 1765f), true, vec2<i32>(-17214i, u_input.a), min(global2.yz, vec2<u32>(0u, 24266u))), Struct_2(Struct_1(vec2<f32>(1000f, -1000f), false, vec2<i32>(u_input.a, 2147483647i), global0[_wgslsmith_index_u32(6987u, 14u)]), _wgslsmith_div_u32(var_0, 7882u), func_3(-331f, vec2<f32>(-874f, 158f)), -2147483647i))), true);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-796f - -607f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-127f))))), true, vec2<i32>(-41323i, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_clamp_i32(u_input.a, 15593i, -1i), 1i), -firstTrailingBit(vec3<i32>(0i, u_input.a, u_input.a)))), ~global2.zz);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = func_2();
    var var_1 = var_0.c.x;
    global0 = array<vec2<u32>, 14>();
    global3 = array<Struct_2, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-392f)) - _wgslsmith_f_op_f32(f32(-1f) * -806f)), 1442f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, -2321f, -674f, -1002f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, -780f, 469f, -387f))), vec4<f32>(862f, _wgslsmith_div_f32(350f, arg_0), -270f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * -591f), _wgslsmith_f_op_f32(1214f + arg_0), select(var_0.b, var_0.b, var_0.b)))), _wgslsmith_f_op_f32(-var_0.a.x), -431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-431f, -1864f))))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))), countOneBits(-vec2<i32>(18616i, u_input.a)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, 38265u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(global2.x, 0u)), abs(global2.yz), vec2<bool>(false, true)) >> (~global2.yw % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(u_input.b, 30211u, global2.x, 0u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, global2.x, 1u, 32237u), vec4<u32>(global2.x, 6735u, global2.x, u_input.b))), firstTrailingBit(countOneBits(select(vec4<u32>(u_input.b, global2.x, global2.x, 0u), vec4<u32>(21737u, 4294967295u, global2.x, 20451u), false)))), _wgslsmith_add_vec3_i32(~reverseBits(-vec3<i32>(-8407i, 1i, u_input.a)), vec3<i32>(u_input.a, abs(u_input.a), u_input.a)), _wgslsmith_mod_i32(-38353i | abs(u_input.a >> (37837u % 32u)), _wgslsmith_add_i32(62242i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mod_vec3_i32(var_0.c, vec3<i32>(75133i, u_input.a, u_input.a))), global2.yxw, vec4<f32>(var_0.a.a.x, 723f, var_0.a.a.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(-1005f)))));
}


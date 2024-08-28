struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: vec2<u32> = vec2<u32>(2899u, 24665u);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<u32>(1u, 0u, 0u, 223u), Struct_1(23704u, vec4<i32>(-38152i, i32(-2147483648), 28543i, 1i), vec2<i32>(57444i, -44940i))), Struct_2(vec4<u32>(4493u, 4294967295u, 49184u, 0u), Struct_1(0u, vec4<i32>(11476i, -1i, -1i, -21054i), vec2<i32>(0i, i32(-2147483648)))), Struct_2(vec4<u32>(42449u, 1u, 0u, 17015u), Struct_1(1u, vec4<i32>(-12473i, 2147483647i, 2147483647i, 0i), vec2<i32>(2147483647i, 38984i))), Struct_2(vec4<u32>(0u, 21577u, 34173u, 85029u), Struct_1(0u, vec4<i32>(1i, 6131i, i32(-2147483648), -33728i), vec2<i32>(2147483647i, -1i))), Struct_2(vec4<u32>(63444u, 1u, 66461u, 66634u), Struct_1(122627u, vec4<i32>(0i, 1i, 23487i, -4982i), vec2<i32>(-6902i, -9360i))), Struct_2(vec4<u32>(39665u, 4294967295u, 79837u, 48911u), Struct_1(1u, vec4<i32>(-34674i, 89464i, 2147483647i, 1i), vec2<i32>(0i, 19318i))), Struct_2(vec4<u32>(87487u, 15703u, 4294967295u, 37518u), Struct_1(8260u, vec4<i32>(6699i, 1i, -1i, -33930i), vec2<i32>(17745i, -14378i))), Struct_2(vec4<u32>(58067u, 102176u, 4294967295u, 25503u), Struct_1(42484u, vec4<i32>(1i, -1i, 1i, 0i), vec2<i32>(-3093i, -32662i))), Struct_2(vec4<u32>(1u, 39740u, 1u, 47893u), Struct_1(4328u, vec4<i32>(0i, 2147483647i, i32(-2147483648), -52747i), vec2<i32>(7250i, i32(-2147483648)))), Struct_2(vec4<u32>(1u, 42690u, 4294967295u, 1u), Struct_1(1327u, vec4<i32>(-8586i, 28701i, 0i, 0i), vec2<i32>(2147483647i, -7280i))), Struct_2(vec4<u32>(15585u, 4294967295u, 23518u, 0u), Struct_1(1u, vec4<i32>(1i, -1i, 4906i, -14304i), vec2<i32>(0i, i32(-2147483648)))), Struct_2(vec4<u32>(4294967295u, 0u, 0u, 1u), Struct_1(61169u, vec4<i32>(i32(-2147483648), -24243i, i32(-2147483648), 6747i), vec2<i32>(-661i, -13888i))), Struct_2(vec4<u32>(0u, 0u, 43950u, 54653u), Struct_1(3829u, vec4<i32>(i32(-2147483648), 34496i, -15117i, 2147483647i), vec2<i32>(-1521i, -1778i))), Struct_2(vec4<u32>(1u, 15023u, 0u, 0u), Struct_1(4294967295u, vec4<i32>(33159i, 1i, -1i, -2449i), vec2<i32>(-49468i, 39918i))), Struct_2(vec4<u32>(40632u, 1u, 0u, 1u), Struct_1(4294967295u, vec4<i32>(0i, -1i, -27633i, 1i), vec2<i32>(26117i, 3662i))), Struct_2(vec4<u32>(4294967295u, 46269u, 1u, 4294967295u), Struct_1(4294967295u, vec4<i32>(2147483647i, -1i, i32(-2147483648), -31151i), vec2<i32>(2147483647i, 2147483647i))), Struct_2(vec4<u32>(4294967295u, 16396u, 9544u, 28463u), Struct_1(4294967295u, vec4<i32>(20944i, 11263i, 16894i, -1i), vec2<i32>(i32(-2147483648), 1i))), Struct_2(vec4<u32>(4294967295u, 44928u, 73158u, 1u), Struct_1(4294967295u, vec4<i32>(i32(-2147483648), -28189i, -50085i, 9051i), vec2<i32>(2147483647i, 2147483647i))), Struct_2(vec4<u32>(0u, 12660u, 4294967295u, 73660u), Struct_1(0u, vec4<i32>(3929i, 1i, -1i, -1i), vec2<i32>(-36773i, 19005i))), Struct_2(vec4<u32>(89051u, 54512u, 4294967295u, 46847u), Struct_1(0u, vec4<i32>(23079i, i32(-2147483648), 3110i, 20284i), vec2<i32>(16160i, -1i))), Struct_2(vec4<u32>(25101u, 79608u, 95799u, 17262u), Struct_1(35309u, vec4<i32>(0i, 21767i, -10902i, 40550i), vec2<i32>(-82i, 24852i))), Struct_2(vec4<u32>(92312u, 0u, 1u, 45535u), Struct_1(0u, vec4<i32>(-12826i, 51158i, -29009i, i32(-2147483648)), vec2<i32>(9320i, -1i))), Struct_2(vec4<u32>(48697u, 4718u, 18379u, 2499u), Struct_1(44291u, vec4<i32>(1i, i32(-2147483648), -49765i, 17058i), vec2<i32>(2147483647i, 37460i))), Struct_2(vec4<u32>(10190u, 4294967295u, 28330u, 0u), Struct_1(0u, vec4<i32>(-26140i, 2147483647i, -1i, -73371i), vec2<i32>(32173i, 6787i))), Struct_2(vec4<u32>(45014u, 4294967295u, 1u, 12522u), Struct_1(90995u, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), vec2<i32>(-1i, -1i))), Struct_2(vec4<u32>(19092u, 1u, 0u, 4294967295u), Struct_1(91996u, vec4<i32>(-20486i, 40572i, -1i, -41907i), vec2<i32>(-27105i, 2147483647i))), Struct_2(vec4<u32>(4294967295u, 49754u, 3327u, 1u), Struct_1(4294967295u, vec4<i32>(1i, -14697i, 42004i, 2147483647i), vec2<i32>(0i, 5079i))), Struct_2(vec4<u32>(59297u, 4294967295u, 1u, 0u), Struct_1(0u, vec4<i32>(i32(-2147483648), 2147483647i, 36672i, -32488i), vec2<i32>(-8916i, 1i))), Struct_2(vec4<u32>(0u, 1u, 0u, 98254u), Struct_1(0u, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 2147483647i), vec2<i32>(3950i, 13861i))), Struct_2(vec4<u32>(105225u, 20125u, 4294967295u, 4294967295u), Struct_1(4294967295u, vec4<i32>(0i, i32(-2147483648), 25363i, -1i), vec2<i32>(8292i, 0i))));

var<private> global3: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = u_input.a << (select(u_input.a, vec2<u32>(58558u, 0u), true) % vec2<u32>(32u));
    var var_0 = global2[_wgslsmith_index_u32(48748u, 30u)];
    global0 = array<Struct_1, 14>();
    let var_1 = select(~vec3<u32>(arg_0, 33666u, 1u), _wgslsmith_div_vec3_u32(max(select(var_0.a.xxx, var_0.a.yxy, vec3<bool>(true, false, true)), ~vec3<u32>(8614u, global1.x, 0u)), ~var_0.a.wxz), true) | ~vec3<u32>(var_0.a.x, u_input.a.x, 1u);
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(select(-1260f, _wgslsmith_f_op_f32(-316f + _wgslsmith_div_f32(-977f, 1000f)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)))), 398f, _wgslsmith_f_op_f32(round(-225f))), ~countOneBits(~var_1.zx), ~u_input.b.yyz, false, Struct_1(51483u, ~vec4<i32>(-var_0.b.b.x, 38932i, u_input.b.x, min(-36788i, u_input.b.x)), _wgslsmith_clamp_vec2_i32(u_input.b.wy, u_input.b.xx, var_0.b.c)));
    return 63279u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(-54910i), -23190i, -(u_input.b.x >> (4294967295u % 32u)), ~u_input.b.x), (vec4<i32>(-1i) * -max(vec4<i32>(31454i, 2147483647i, u_input.b.x, -1i), arg_1.b)) >> (reverseBits(abs(vec4<u32>(9627u, u_input.a.x, 4294967295u, arg_1.a) ^ vec4<u32>(0u, 0u, u_input.a.x, 0u))) % vec4<u32>(32u)));
    global1 = vec2<u32>(((func_3(u_input.a.x) ^ arg_1.a) << (~29481u % 32u)) ^ 72064u, global1.x);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1783f, 1950f))))))));
    var var_2 = Struct_3(Struct_2(~(~countOneBits(vec4<u32>(arg_1.a, 13639u, 27945u, 57394u))), global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2023f, -791f, -269f, 880f) - vec4<f32>(866f, -818f, -937f, 468f))) - vec4<f32>(_wgslsmith_f_op_f32(select(783f, -1021f, false)), _wgslsmith_f_op_f32(f32(-1f) * -375f), -339f, -1025f))), ~vec3<u32>(~_wgslsmith_div_u32(global1.x, 0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 6924u, 4294967295u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), ~1u), (global1.x << (4294967295u % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global1.x, 0u), vec4<u32>(38462u, 73316u, 4294967295u, 0u)) % 32u)), true);
    var var_3 = global0[_wgslsmith_index_u32(~global1.x, 14u)];
    return global1.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = arg_1.a.yyw;
    let var_2 = vec4<i32>(select(_wgslsmith_mod_i32(u_input.b.x, -9628i), 0i, !all(vec4<bool>(true, true, true, true))), 0i, _wgslsmith_add_i32(-25436i, abs(arg_1.b.b.x >> (func_2(vec2<bool>(false, true), arg_1.b) % 32u))), -9871i);
    var var_3 = true;
    var_3 = all(vec4<bool>(true | !(-6619i <= arg_1.b.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1072f), 805f, true)) <= arg_0.x, select(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), !all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true))), true & any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    return ~(~firstTrailingBit(~4920u) >> (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    global1 = _wgslsmith_add_vec2_u32(vec2<u32>(global1.x ^ (firstTrailingBit(global1.x) << (~4294967295u % 32u)), _wgslsmith_clamp_u32(max(u_input.a.x, ~u_input.a.x), _wgslsmith_sub_u32(~1u, func_1(vec2<f32>(791f, 1207f), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, global1.x, global1.x), Struct_1(u_input.a.x, u_input.b, vec2<i32>(u_input.b.x, u_input.b.x))), vec3<f32>(772f, 426f, -770f))), ~(2041u << (0u % 32u)))), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global1.x, 7500u), vec4<u32>(1u, 12784u, u_input.a.x, 15718u)), global1.x));
    var var_0 = -1364f;
    var var_1 = 1000f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f + 968f) + _wgslsmith_f_op_f32(ceil(-1014f)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2)))), select(vec2<u32>(1u, ~(~global1.x)), vec2<u32>(u_input.a.x, select(_wgslsmith_mod_u32(4294967295u, 83300u), countOneBits(global1.x), true)), vec2<bool>(true, true)), reverseBits(vec3<i32>(0i, u_input.b.x, u_input.b.x) ^ u_input.b.xwz) | u_input.b.wyw, !(false && any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true))), Struct_1(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, global1.x, u_input.a.x)), vec3<u32>(u_input.a.x, global1.x, 12276u)), vec4<i32>(33719i, _wgslsmith_dot_vec2_i32(vec2<i32>(-40840i, -1i) & u_input.b.wy, u_input.b.wx), u_input.b.x, -u_input.b.x), vec2<i32>(2147483647i, ~(~u_input.b.x))));
    var var_4 = all(!select(!(!vec4<bool>(true, true, var_3.d, true)), vec4<bool>(global1.x >= var_3.b.x, true, all(vec3<bool>(var_3.d, var_3.d, var_3.d)), all(vec4<bool>(true, var_3.d, true, var_3.d))), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.b.wxw, _wgslsmith_dot_vec4_i32(var_3.e.b, abs(var_3.e.b) << ((vec4<u32>(1u, var_3.e.a, 4294967295u, 50913u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 66290u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_sub_u32(global1.x, 77116u) % 32u), u_input.b.xx | vec2<i32>(var_3.e.b.x, 1i), -18575i, _wgslsmith_f_op_vec2_f32(var_3.a.xy * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(275f, var_3.a.x) * var_3.a.yy))))));
}


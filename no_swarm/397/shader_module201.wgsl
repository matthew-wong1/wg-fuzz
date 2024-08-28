struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true));

var<private> global2: array<f32, 10>;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-288f, vec4<u32>(52681u, 4294967295u, 45590u, 23504u), vec3<u32>(96883u, 0u, 4294967295u)), Struct_1(-538f, vec4<u32>(7921u, 0u, 1u, 49676u), vec3<u32>(4294967295u, 13725u, 19450u)), Struct_1(-2526f, vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec3<u32>(8470u, 2780u, 47705u)), Struct_1(-848f, vec4<u32>(4294967295u, 65410u, 31756u, 15487u), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(400f, vec4<u32>(1u, 17803u, 0u, 54589u), vec3<u32>(4294967295u, 89852u, 7551u)), Struct_1(-1566f, vec4<u32>(0u, 0u, 17853u, 51359u), vec3<u32>(1u, 0u, 63301u)), Struct_1(613f, vec4<u32>(1u, 1u, 1u, 25996u), vec3<u32>(13058u, 38422u, 10149u)), Struct_1(864f, vec4<u32>(0u, 0u, 80009u, 796u), vec3<u32>(1u, 55098u, 4294967295u)), Struct_1(1351f, vec4<u32>(1u, 0u, 4887u, 1u), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(302f, vec4<u32>(43578u, 0u, 0u, 4294967295u), vec3<u32>(3609u, 11735u, 52485u)), Struct_1(-516f, vec4<u32>(0u, 14303u, 0u, 1u), vec3<u32>(4294967295u, 44836u, 1u)), Struct_1(-985f, vec4<u32>(11729u, 17098u, 37628u, 44089u), vec3<u32>(4294967295u, 57560u, 4294967295u)), Struct_1(-207f, vec4<u32>(2829u, 1u, 0u, 0u), vec3<u32>(19307u, 41697u, 4294967295u)), Struct_1(-103f, vec4<u32>(1u, 4294967295u, 37454u, 11011u), vec3<u32>(1u, 40430u, 43384u)), Struct_1(320f, vec4<u32>(25615u, 0u, 11664u, 25054u), vec3<u32>(1u, 7554u, 1u)), Struct_1(-810f, vec4<u32>(31419u, 4294967295u, 4294967295u, 0u), vec3<u32>(47139u, 1u, 2779u)), Struct_1(-982f, vec4<u32>(1u, 32159u, 4294967295u, 1u), vec3<u32>(1u, 91890u, 0u)), Struct_1(122f, vec4<u32>(0u, 0u, 98938u, 4294967295u), vec3<u32>(39416u, 4294967295u, 0u)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    var var_0 = all(vec2<bool>(true, true));
    let var_1 = arg_2;
    var var_2 = global3[_wgslsmith_index_u32(u_input.b, 18u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(var_2.c.x, 10u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1961f, -812f)))), false))));
    let var_4 = Struct_1(188f, _wgslsmith_div_vec4_u32(var_2.b, var_2.b ^ vec4<u32>(abs(u_input.b), var_2.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 23010u), vec3<u32>(156069u, 1u, u_input.a.x)), u_input.c.x)), ~(~min(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x, 27660u, 61132u), var_2.c), ~vec3<u32>(4585u, 0u, u_input.b))));
    return _wgslsmith_mod_i32(-u_input.d.x & arg_2.a, 22218i);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i >> (u_input.a.x % 32u), u_input.d.x, u_input.d.x) | vec3<i32>(37931i, u_input.d.x >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), u_input.d)), select(-select(vec3<i32>(u_input.d.x, u_input.d.x, 29193i), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<bool>(true, false, true)), vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.d.x, 1i), !select(false, true, false))), u_input.d.x);
    let var_1 = u_input.c;
    var var_2 = Struct_2((1i | func_3(u_input.d.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(563f, global2[_wgslsmith_index_u32(7187u, 10u)]))), Struct_3(0i, u_input.d.x))) & (_wgslsmith_dot_vec2_i32(~vec2<i32>(-1790i, u_input.d.x), u_input.d << (u_input.a % vec2<u32>(32u))) | _wgslsmith_div_i32(-27431i, _wgslsmith_clamp_i32(28068i, 1i, u_input.d.x))), firstTrailingBit(~var_1.x), global3[_wgslsmith_index_u32(~(~max(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_u32(4294967295u, 2581u, 0u))), 18u)], select(firstLeadingBit(~reverseBits(vec3<u32>(0u, u_input.c.x, 0u))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 70025u), var_1) << ((var_1.x | u_input.a.x) % 32u), 56220u), arg_0), ~func_3(-2105i, vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, global2[_wgslsmith_index_u32(4294967295u, 10u)], false)), global2[_wgslsmith_index_u32(u_input.c.x, 10u)]), Struct_3(22165i, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 12350i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(var_2.c.a - _wgslsmith_f_op_f32(var_2.c.a + -742f))), var_2.c.a));
    var var_4 = Struct_1(-1597f, ~vec4<u32>(var_2.c.c.x, var_1.x, ~_wgslsmith_clamp_u32(26835u, 1u, var_1.x), 7545u), _wgslsmith_mod_vec3_u32(var_2.d, var_2.c.c));
    return var_4.a;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_3 {
    global3 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 10u)]), arg_2, _wgslsmith_div_f32(arg_2, 1244f), -506f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(all(vec2<bool>(true, true)))), reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 6683u, 4294967295u), firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, 1u)), vec4<u32>(u_input.b, 17842u, u_input.a.x, u_input.a.x)) << (vec4<u32>(1u, ~61794u, ~u_input.a.x, ~23506u) % vec4<u32>(32u))), vec3<u32>(u_input.c.x, 15058u, u_input.a.x));
    let var_2 = Struct_2(~(-2147483647i), 0u, var_1, firstTrailingBit(var_1.c), max(_wgslsmith_sub_i32(arg_0, arg_1), ~(-arg_0)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(var_2.b & 4294967295u), 10u)])), _wgslsmith_div_f32(1011f, var_0.x)));
    return Struct_3(_wgslsmith_div_i32(var_2.a, arg_1), -1i);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(reverseBits(124010u), 10u)])))), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x ^ 44248u, u_input.c.x, 1u, u_input.a.x), ~vec4<u32>(1u, u_input.c.x, u_input.a.x, 27293u)), vec4<u32>(_wgslsmith_div_u32(~51535u, 1u), ~55496u, reverseBits(~36640u), u_input.c.x), select(global1[_wgslsmith_index_u32(~abs(4294967295u), 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], true)), vec3<u32>(~(~(u_input.a.x << (7270u % 32u))), u_input.c.x, _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(17749u, 0u)), u_input.b << (~22972u % 32u))));
    let var_1 = Struct_2(arg_0.a, var_0.c.x, Struct_1(172f, countOneBits(~max(vec4<u32>(var_0.b.x, 46173u, var_0.b.x, 69403u), vec4<u32>(var_0.c.x, 0u, u_input.a.x, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 1u, var_0.b.x), var_0.b), var_0.c.x), vec3<u32>(4294967295u, 24058u, 4294967295u) << (var_0.c % vec3<u32>(32u)))), vec3<u32>(~(~var_0.b.x & u_input.a.x), 10086u, select(u_input.c.x, _wgslsmith_mult_u32(39794u, 15718u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(55374u, var_0.b.x, var_0.b.x, 4294967295u), vec4<u32>(4294967295u, 0u, var_0.c.x, 89458u)) % 32u), all(vec3<bool>(true, false, true)))), 39307i);
    var var_2 = ~var_1.c.b;
    return select(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(all(vec3<bool>(false, false, false)), true, true)), true & all(select(global1[_wgslsmith_index_u32(var_1.d.x, 22u)], vec4<bool>(false, true, true, true), global1[_wgslsmith_index_u32(48133u, 22u)]))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), all(vec3<bool>(true, true, true)) & true));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50554u, arg_0.b.x, 4294967295u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_3.c.b.yzx, vec3<u32>(arg_3.c.b.x, arg_3.c.b.x, u_input.a.x)), vec3<u32>(0u, ~1u, ~4685u))), ~76620u);
    global3 = array<Struct_1, 18>();
    global2 = array<f32, 10>();
    let var_1 = func_1(10323i, u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1583f));
    var var_2 = ~(~var_0);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 22>();
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2746f)) - -1113f), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), ~vec3<u32>(8112u, u_input.b ^ u_input.c.x, ~u_input.b)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), func_4(func_1(u_input.d.x, u_input.d.x, global2[_wgslsmith_index_u32(u_input.b, 10u)]), abs(vec2<i32>(-2147483647i, -52913i)), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 2278f, true))), false | select(true, true, true)), true), func_1(func_1(-(~u_input.d.x), -(u_input.d.x | u_input.d.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(21726u, 10u)]))).a, 2147483647i, 1f), Struct_2(abs(firstLeadingBit(2666i) ^ reverseBits(u_input.d.x)), countOneBits(4294967295u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2932f), reverseBits(vec4<u32>(0u, u_input.b, u_input.a.x, 6713u) ^ vec4<u32>(u_input.a.x, 30584u, 1u, u_input.b)), vec3<u32>(1u, abs(0u), _wgslsmith_mult_u32(1u, u_input.b))), max(abs(vec3<u32>(4294967295u, u_input.a.x, u_input.b)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.a.x), vec3<u32>(4294967295u, 84884u, 1u)), ~(~vec3<u32>(10606u, 24596u, u_input.b))), -u_input.d.x));
    let var_1 = Struct_3(u_input.d.x, _wgslsmith_add_i32(abs(firstTrailingBit(u_input.d.x) | var_0.e), u_input.d.x));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~36879u, 10u)], _wgslsmith_f_op_f32(ceil(-179f))) * _wgslsmith_f_op_f32(min(-750f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(302f - global2[_wgslsmith_index_u32(u_input.b, 10u)]), var_0.c.a, true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(23772u, 10u)]))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-446f - var_0.c.a))))))));
    var var_3 = Struct_3(func_3(-(~(~u_input.d.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(890f, -1000f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1397f, -622f)))))), var_1), u_input.d.x & 1496i);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1138f), 1810f, -107f, -1192f));
    let var_5 = var_1;
    let var_6 = func_1(firstTrailingBit(_wgslsmith_mult_i32(-41331i, ~var_5.a)), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(var_0.b), _wgslsmith_sub_u32(var_0.b, u_input.a.x)), 10u)])));
    let var_7 = abs(~(vec3<u32>(~u_input.a.x, ~4294967295u, 1u) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(var_0.c.b, vec4<u32>(0u, 1u, 0u, 0u)), ~12993u, 65945u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, -1242f, var_0.c.a))))), select(vec4<i32>(-(var_6.a & var_1.a), ~_wgslsmith_mod_i32(0i, var_1.a), ~(~1i), ~(-13252i)), firstLeadingBit(-vec4<i32>(-2147483647i, 58082i, 59930i, -30747i)) ^ select(vec4<i32>(11406i, var_0.e, var_3.b, var_6.b), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a, var_6.b, 0i, var_6.b), vec4<i32>(var_1.b, var_5.b, -2147483647i, 7443i)), true), true), var_4, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-718f, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(14842u, 10u)], 438f), _wgslsmith_f_op_vec4_f32(-var_4))) + vec4<f32>(-409f, _wgslsmith_f_op_f32(max(var_4.x, var_0.c.a)), _wgslsmith_f_op_f32(-1068f + 2009f), -1735f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, global2[_wgslsmith_index_u32(u_input.b, 10u)], 875f, 1000f)))))));
}


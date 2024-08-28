struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(8153u, 0u, 88369u, 1u), vec3<bool>(true, true, true), 140f, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(1u, 0u, 34311u, 1u), vec3<bool>(false, false, true), 291f, true));

var<private> global2: array<vec4<i32>, 8>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<bool>(true, true, false), vec4<u32>(72281u, 38062u, 0u, 0u), vec3<bool>(false, true, false), 1000f, true), Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 1293u, 1u, 60283u), vec3<bool>(true, true, true), 289f, true), Struct_1(vec3<bool>(true, false, false), vec4<u32>(35413u, 0u, 34497u, 38066u), vec3<bool>(false, false, false), -360f, true), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 8372u, 53475u, 19072u), vec3<bool>(true, false, true), -1349f, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(1u, 4294967295u, 47156u, 101368u), vec3<bool>(false, false, false), -605f, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(40334u, 4989u, 14160u, 30162u), vec3<bool>(true, false, false), -1754f, false), Struct_1(vec3<bool>(false, false, false), vec4<u32>(84192u, 58620u, 4294967295u, 0u), vec3<bool>(false, true, false), -1417f, false), Struct_1(vec3<bool>(false, false, false), vec4<u32>(5155u, 1u, 0u, 29198u), vec3<bool>(true, true, true), -1201f, false), Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 26627u, 4294967295u, 1u), vec3<bool>(false, true, true), -575f, true), Struct_1(vec3<bool>(true, false, true), vec4<u32>(34451u, 1u, 1u, 0u), vec3<bool>(false, true, true), -711f, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 50593u, 2512u, 4294967295u), vec3<bool>(false, false, false), -2215f, true), Struct_1(vec3<bool>(true, true, false), vec4<u32>(0u, 10743u, 1u, 27165u), vec3<bool>(false, false, true), -798f, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(1u, 1161u, 33785u, 0u), vec3<bool>(true, true, true), -1639f, false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(44635u, 49863u, 83209u, 0u), vec3<bool>(false, true, true), -723f, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(56958u, 11641u, 13284u, 51202u), vec3<bool>(true, true, false), 461f, false), Struct_1(vec3<bool>(true, false, true), vec4<u32>(1u, 11522u, 45190u, 25018u), vec3<bool>(true, true, true), 860f, true), Struct_1(vec3<bool>(true, false, false), vec4<u32>(26782u, 1u, 4294967295u, 0u), vec3<bool>(false, false, true), 444f, true), Struct_1(vec3<bool>(true, false, true), vec4<u32>(77625u, 1u, 0u, 2872u), vec3<bool>(false, false, false), 889f, false), Struct_1(vec3<bool>(true, true, true), vec4<u32>(36960u, 42208u, 94024u, 44522u), vec3<bool>(true, false, true), 1654f, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(38680u, 30660u, 4294967295u, 1u), vec3<bool>(false, true, true), -508f, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(27957u, 23505u, 24385u, 4294967295u), vec3<bool>(true, false, true), 238f, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(25499u, 1u, 1u, 0u), vec3<bool>(true, false, false), 430f, false), Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 71596u, 1u, 0u), vec3<bool>(false, true, false), 1373f, false), Struct_1(vec3<bool>(true, true, false), vec4<u32>(65651u, 26005u, 58089u, 23050u), vec3<bool>(true, true, false), -439f, false), Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 4294967295u, 14407u, 0u), vec3<bool>(false, false, false), 216f, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(1u, 34196u, 4294967295u, 13404u), vec3<bool>(false, false, true), -1204f, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(4294967295u, 21402u, 0u, 65591u), vec3<bool>(true, false, true), 1522f, true), Struct_1(vec3<bool>(false, false, false), vec4<u32>(9071u, 70337u, 23205u, 0u), vec3<bool>(false, false, true), -662f, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    let var_0 = vec3<f32>(1442f, _wgslsmith_f_op_f32(global1.a.d + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.b.d, -1344f)), _wgslsmith_f_op_f32(-arg_0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) - arg_0.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))));
    global0 = select(~_wgslsmith_mult_u32(arg_2.x, ~22064u), ~countOneBits(~0u), arg_0.c.x) << (4294967295u % 32u);
    let var_1 = u_input.d.x;
    let var_2 = Struct_2(Struct_1(select(select(select(arg_0.c, vec3<bool>(global1.a.a.x, global1.b.e, global1.b.a.x), arg_0.c), select(arg_0.c, vec3<bool>(true, true, arg_0.a.x), global1.b.c), arg_0.c), vec3<bool>(arg_0.a.x, global1.b.c.x, global1.a.e), !arg_0.c), vec4<u32>(28817u, 4294967295u, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.x), vec2<u32>(u_input.b.x, 1u))), !vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true), global1.a.d, false), Struct_1(!select(select(vec3<bool>(global1.b.c.x, true, global1.b.a.x), global1.b.c, false), !arg_0.c, global1.a.e), arg_0.b, select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), !arg_0.a, select(vec3<bool>(global1.b.e, global1.a.e, true), vec3<bool>(global1.a.a.x, global1.b.e, global1.b.e), global1.b.c.x)), !vec3<bool>(true, global1.b.e, arg_0.e), vec3<bool>(true, false, !arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d)), arg_0.e));
    global3 = array<Struct_1, 28>();
    return ~(~5118u);
}

fn func_2() -> vec4<u32> {
    global1 = Struct_2(Struct_1(vec3<bool>(global1.a.c.x, false, true), vec4<u32>(firstLeadingBit(global1.b.b.x), ~u_input.b.x, 9336u, global1.a.b.x | 0u) << (global1.a.b % vec4<u32>(32u)), select(global1.a.c, select(vec3<bool>(global1.b.e, true, global1.a.a.x), vec3<bool>(false, global1.a.a.x, global1.a.e), true), vec3<bool>(-2147483647i > u_input.c.x, true, true || global1.a.e)), -1966f, all(!select(vec4<bool>(true, true, true, global1.b.a.x), vec4<bool>(true, true, false, false), vec4<bool>(global1.a.a.x, false, true, true)))), global3[_wgslsmith_index_u32(44555u, 28u)]);
    let var_0 = max(~_wgslsmith_sub_vec4_i32(-global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4835u, global1.b.b.x, global1.a.b.x) >> (31419u % 32u), 8u)]), u_input.c);
    var var_1 = u_input.d;
    let var_2 = Struct_3(false, _wgslsmith_mult_u32(1u, 1u), -24792i, !vec4<bool>(false, ~u_input.b.x == u_input.b.x, !all(global1.a.c), false));
    global1 = Struct_2(Struct_1(!var_2.d.xyy, vec4<u32>(_wgslsmith_clamp_u32(func_3(global1.b, 0i, vec3<u32>(u_input.b.x, 50739u, 0u)), 1u, countOneBits(u_input.b.x)), min(abs(global1.a.b.x), select(7205u, 84828u, global1.b.e)), ~13122u, ~var_2.b), select(!vec3<bool>(global1.a.a.x, var_2.a, false), select(vec3<bool>(true, global1.a.c.x, true), !var_2.d.yyz, !vec3<bool>(false, var_2.d.x, false)), !(u_input.c.x > -26818i)), global1.b.d, !all(select(var_2.d, var_2.d, true))), Struct_1(select(vec3<bool>(true, false, !var_2.a), select(global1.b.a, vec3<bool>(true, false, var_2.d.x), true), select(vec3<bool>(var_2.a, true, global1.b.a.x), vec3<bool>(global1.b.a.x, false, var_2.a), all(global1.b.c.xz))), global1.b.b, select(vec3<bool>(any(var_2.d), false, false), var_2.d.wxy, !select(vec3<bool>(var_2.d.x, var_2.a, var_2.d.x), vec3<bool>(global1.a.a.x, global1.a.e, global1.a.a.x), true)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global1.a.d)), var_2.a));
    return _wgslsmith_add_vec4_u32(vec4<u32>(var_2.b, min(firstLeadingBit(var_2.b), ~4294967295u), ~103040u, global1.a.b.x) ^ vec4<u32>((u_input.b.x & global1.a.b.x) ^ _wgslsmith_sub_u32(global1.a.b.x, 49633u), 0u, reverseBits(4684u), _wgslsmith_dot_vec4_u32(global1.b.b, vec4<u32>(8578u, 25842u, u_input.b.x, global1.b.b.x)) ^ global1.b.b.x), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 19648u, 31822u), ~global1.b.b, ~global1.a.b) ^ _wgslsmith_mult_vec4_u32(reverseBits(global1.a.b), global1.a.b)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = global1.a.d;
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.b.x), arg_0.x ^ ~1u, arg_1.b, ~arg_0.x) >> (_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_1.b, 1u, 0u, 22633u)), ~(~global1.b.b), global1.a.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(~arg_0.x, ~(24841u << (arg_0.x % 32u))), select(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, 1u), _wgslsmith_add_u32(4294967295u, global1.b.b.x)), firstLeadingBit(~27195u), true), ~_wgslsmith_mod_u32(max(4294967295u, 4294967295u), 4294967295u), ~17923u));
    global2 = array<vec4<i32>, 8>();
    global3 = array<Struct_1, 28>();
    global3 = array<Struct_1, 28>();
    return Struct_2(global1.a, Struct_1(vec3<bool>(true, global1.a.e, any(arg_1.d.xz)), abs(~vec4<u32>(30008u, 1u, 4294967295u, arg_0.x)), select(select(select(vec3<bool>(true, false, arg_1.a), vec3<bool>(arg_1.d.x, false, arg_1.a), arg_1.a), select(global1.a.c, vec3<bool>(arg_1.a, true, false), false), arg_1.d.x), vec3<bool>(global1.b.e, true, true), arg_1.a), -609f, any(!select(vec4<bool>(true, global1.a.a.x, arg_1.d.x, true), vec4<bool>(true, arg_1.a, false, false), arg_1.d))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_dot_vec4_u32(~(~countOneBits(vec4<u32>(arg_0.a.b.x, 32302u, 83495u, u_input.b.x))), arg_0.b.b);
    global3 = array<Struct_1, 28>();
    global2 = array<vec4<i32>, 8>();
    let var_0 = Struct_3(func_4(global1.a.b, Struct_3(_wgslsmith_add_u32(arg_0.b.b.x, u_input.b.x) >= ~4294967295u, arg_0.b.b.x, ~_wgslsmith_sub_i32(u_input.c.x, -1i), !select(vec4<bool>(arg_0.b.c.x, false, false, true), vec4<bool>(false, true, arg_1.a.x, false), false))).a.c.x, _wgslsmith_add_u32(global1.a.b.x, 1u) << (4294967295u % 32u), u_input.a.x, select(!(!vec4<bool>(arg_1.c.x, true, false, arg_1.a.x)), !(!select(vec4<bool>(false, global1.b.c.x, true, false), vec4<bool>(global1.b.c.x, arg_1.a.x, false, true), true)), arg_0.a.a.x & arg_0.b.a.x));
    let var_1 = var_0;
    return Struct_3(true, _wgslsmith_mod_u32(var_0.b ^ ~arg_0.a.b.x, _wgslsmith_dot_vec4_u32(~arg_1.b, ~vec4<u32>(u_input.b.x, var_1.b, 32670u, u_input.b.x))), ~select(-1i, ~var_1.c << (_wgslsmith_mult_u32(15657u, var_1.b) % 32u), global1.b.d <= arg_1.d), !vec4<bool>(all(vec4<bool>(false, false, false, arg_1.c.x)), false, var_1.d.x & !arg_0.a.a.x, all(select(vec3<bool>(arg_0.a.c.x, var_1.a, false), arg_1.a, vec3<bool>(true, global1.a.a.x, true)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1103f, 1501f)), _wgslsmith_f_op_f32(step(-674f, _wgslsmith_f_op_f32(1000f + arg_1.d))))), arg_1.d)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(~(~arg_0.b), 28u)], Struct_1(func_4((arg_1.b | global1.b.b) & (vec4<u32>(1u, global1.a.b.x, global1.a.b.x, arg_0.b) ^ global1.a.b), arg_0).a.a, countOneBits(~vec4<u32>(0u, 0u, 0u, global1.b.b.x)), !func_4(~arg_1.b, func_5(Struct_2(arg_1, Struct_1(global1.a.c, vec4<u32>(global1.b.b.x, 1u, u_input.b.x, arg_1.b.x), arg_1.a, -955f, global1.a.c.x)), Struct_1(arg_1.a, vec4<u32>(global1.a.b.x, 4294967295u, 4294967295u, global1.b.b.x), vec3<bool>(arg_1.e, false, global1.a.e), 1007f, arg_1.c.x))).b.c, -1228f, !(!select(true, arg_1.c.x, false))));
    global0 = global1.b.b.x;
    return global1.b;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(max(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~global1.a.b.x), u_input.b.x) | u_input.b, max(((global1.b.b.wz >> (u_input.b % vec2<u32>(32u))) & ~vec2<u32>(95174u, 0u)) << (~vec2<u32>(global1.a.b.x, global1.a.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 229u)), max(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(15959u, global1.b.b.x)), vec2<u32>(0u, 957u)), _wgslsmith_mult_vec2_u32(u_input.b >> (vec2<u32>(global1.a.b.x, 23358u) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 4294967295u))), global1.a.b.zx));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1405f, -1777f, global1.b.d)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(557f, 1599f) - _wgslsmith_f_op_f32(select(153f, global1.b.d, false))), _wgslsmith_f_op_f32(select(612f, -1805f, 446f == global1.a.d)), global1.b.d), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1120f), _wgslsmith_f_op_f32(-global1.b.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.d))))), select(global1.a.c, !vec3<bool>(u_input.a.x < u_input.c.x, any(vec4<bool>(false, global1.a.c.x, global1.b.a.x, true)), !global1.b.c.x), false)));
    let var_2 = func_6(func_5(func_4(func_2(), Struct_3(!global1.b.a.x, var_0.x, i32(-1i) * -13380i, vec4<bool>(global1.a.a.x, global1.a.a.x, true, global1.a.e))), Struct_1(select(vec3<bool>(true, false, global1.b.e), !global1.a.c, vec3<bool>(global1.b.c.x, global1.b.a.x, global1.a.c.x)), select(~global1.a.b, countOneBits(global1.b.b), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, global1.b.c.x), global1.b.e)), vec3<bool>(true, global1.b.c.x && global1.b.e, false), global1.a.d, all(global1.a.a))), Struct_1(func_4(func_2(), Struct_3(global1.b.e && global1.b.c.x, func_5(Struct_2(global3[_wgslsmith_index_u32(8821u, 28u)], Struct_1(vec3<bool>(global1.b.e, true, false), vec4<u32>(52483u, 0u, 66367u, global1.b.b.x), global1.a.c, -359f, global1.a.e)), global3[_wgslsmith_index_u32(40029u, 28u)]).b, u_input.d.x & u_input.a.x, vec4<bool>(true, global1.b.e, false, global1.a.e))).a.a, firstLeadingBit(vec4<u32>(1u, var_0.x << (var_0.x % 32u), _wgslsmith_dot_vec4_u32(global1.b.b, vec4<u32>(var_0.x, 66897u, 61079u, 20573u)), _wgslsmith_sub_u32(var_0.x, global1.b.b.x))), global1.a.c, _wgslsmith_f_op_f32(ceil(var_1.x)), global1.b.e == true));
    let var_3 = var_2;
    global3 = array<Struct_1, 28>();
    return func_5(func_4(vec4<u32>(var_2.b.x, abs(4294967295u), var_2.b.x, 51248u) << (vec4<u32>(4294967295u, var_0.x >> (1u % 32u), ~33550u, ~u_input.b.x) % vec4<u32>(32u)), Struct_3(func_6(func_5(Struct_2(var_3, Struct_1(vec3<bool>(false, global1.b.a.x, global1.a.e), global1.b.b, vec3<bool>(true, false, var_3.a.x), -874f, false)), Struct_1(global1.a.a, var_2.b, var_2.c, var_1.x, global1.a.a.x)), func_4(var_3.b, Struct_3(true, var_3.b.x, -2147483647i, vec4<bool>(var_2.c.x, var_2.a.x, true, global1.a.e))).b).a.x, 4294967295u, 0i, vec4<bool>(true, var_2.a.x, var_3.e, var_2.c.x))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(func_2().x, u_input.b.x, reverseBits(func_4(vec4<u32>(5937u, 65540u, 1u, 38426u), Struct_3(false, u_input.b.x, u_input.d.x, var_0.d)).a.b.x)), select(firstLeadingBit(vec3<u32>(6588u, 19900u, 0u) >> (vec3<u32>(global1.b.b.x, global1.b.b.x, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(global1.a.b.x, 0u, u_input.b.x), global1.a.c.x)));
    let var_2 = var_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.d), global1.a.d, global1.b.d, _wgslsmith_f_op_f32(-global1.a.d));
    let var_4 = var_3.x;
    global3 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}


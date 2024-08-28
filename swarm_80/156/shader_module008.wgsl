struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(1070f, vec3<bool>(false, true, false)), vec2<i32>(-2530i, -32075i), vec3<bool>(false, true, true)), Struct_3(Struct_1(-1486f, vec3<bool>(true, false, false)), vec2<i32>(i32(-2147483648), -22184i), vec3<bool>(false, true, false)), Struct_3(Struct_1(-2067f, vec3<bool>(true, true, true)), vec2<i32>(1i, 19663i), vec3<bool>(true, false, false)), Struct_3(Struct_1(1876f, vec3<bool>(false, false, false)), vec2<i32>(25584i, -15153i), vec3<bool>(true, true, true)), Struct_3(Struct_1(628f, vec3<bool>(true, false, false)), vec2<i32>(1i, 2147483647i), vec3<bool>(true, false, true)), Struct_3(Struct_1(-279f, vec3<bool>(true, true, false)), vec2<i32>(-1i, 0i), vec3<bool>(false, false, false)), Struct_3(Struct_1(-1456f, vec3<bool>(true, false, true)), vec2<i32>(i32(-2147483648), -1i), vec3<bool>(true, false, false)), Struct_3(Struct_1(-1060f, vec3<bool>(true, false, false)), vec2<i32>(-36425i, -42203i), vec3<bool>(true, true, false)), Struct_3(Struct_1(1000f, vec3<bool>(false, false, true)), vec2<i32>(-10656i, 23939i), vec3<bool>(true, true, true)), Struct_3(Struct_1(532f, vec3<bool>(false, false, false)), vec2<i32>(-25946i, -6270i), vec3<bool>(true, true, false)), Struct_3(Struct_1(493f, vec3<bool>(true, true, false)), vec2<i32>(-16319i, -53069i), vec3<bool>(false, false, true)), Struct_3(Struct_1(-861f, vec3<bool>(true, false, false)), vec2<i32>(49636i, 0i), vec3<bool>(false, true, false)), Struct_3(Struct_1(354f, vec3<bool>(true, true, true)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, false)), Struct_3(Struct_1(1000f, vec3<bool>(true, false, true)), vec2<i32>(1i, 0i), vec3<bool>(true, false, true)), Struct_3(Struct_1(-757f, vec3<bool>(false, true, false)), vec2<i32>(-2119i, 2147483647i), vec3<bool>(true, false, false)), Struct_3(Struct_1(-663f, vec3<bool>(false, false, false)), vec2<i32>(0i, 1i), vec3<bool>(false, false, true)), Struct_3(Struct_1(-569f, vec3<bool>(false, false, false)), vec2<i32>(-16106i, -1i), vec3<bool>(true, false, true)), Struct_3(Struct_1(-100f, vec3<bool>(true, false, false)), vec2<i32>(1i, 38682i), vec3<bool>(true, true, false)));

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(1319f, vec3<bool>(true, true, false))), Struct_2(Struct_1(115f, vec3<bool>(false, true, true))), Struct_2(Struct_1(1884f, vec3<bool>(true, true, true))), Struct_2(Struct_1(154f, vec3<bool>(true, false, false))), Struct_2(Struct_1(632f, vec3<bool>(false, true, true))), Struct_2(Struct_1(-658f, vec3<bool>(false, true, false))), Struct_2(Struct_1(-329f, vec3<bool>(true, true, true))), Struct_2(Struct_1(443f, vec3<bool>(false, false, true))), Struct_2(Struct_1(1309f, vec3<bool>(true, false, true))), Struct_2(Struct_1(1217f, vec3<bool>(true, true, true))), Struct_2(Struct_1(-450f, vec3<bool>(false, false, true))), Struct_2(Struct_1(662f, vec3<bool>(true, false, true))), Struct_2(Struct_1(118f, vec3<bool>(true, false, true))), Struct_2(Struct_1(-1947f, vec3<bool>(true, false, true))), Struct_2(Struct_1(-1288f, vec3<bool>(false, true, false))), Struct_2(Struct_1(-266f, vec3<bool>(true, true, false))), Struct_2(Struct_1(-263f, vec3<bool>(true, true, false))), Struct_2(Struct_1(2102f, vec3<bool>(false, true, true))), Struct_2(Struct_1(721f, vec3<bool>(true, true, true))), Struct_2(Struct_1(442f, vec3<bool>(false, true, true))), Struct_2(Struct_1(1203f, vec3<bool>(false, false, false))), Struct_2(Struct_1(-1007f, vec3<bool>(false, false, false))), Struct_2(Struct_1(-1798f, vec3<bool>(true, false, false))), Struct_2(Struct_1(-614f, vec3<bool>(true, false, true))), Struct_2(Struct_1(612f, vec3<bool>(false, false, false))), Struct_2(Struct_1(-248f, vec3<bool>(false, true, false))), Struct_2(Struct_1(822f, vec3<bool>(true, false, true))), Struct_2(Struct_1(143f, vec3<bool>(true, false, false))), Struct_2(Struct_1(880f, vec3<bool>(true, true, false))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    global3 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(select(u_input.b.x, u_input.b.x, true)), 2147483647i, -2147483647i) & (~(-vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)) & ~abs(vec3<i32>(23464i, u_input.b.x, 0i))), vec3<i32>(-(0i ^ u_input.b.x) >> (~(arg_1.a.x & 1u) % 32u), _wgslsmith_add_i32(i32(-1i) * -u_input.b.x, -1i), 5564i));
    var var_1 = !arg_0.b;
    global2 = arg_2.a;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_1.a.x, 25021u) << (u_input.a % 32u), _wgslsmith_mod_u32(abs(u_input.a), 39457u) << (min(1u, 12481u) % 32u)), ~abs(reverseBits(arg_1.a.xz)));
    return min(_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(max(1i, 0i)), var_0.x), var_0.x), -37632i);
}

fn func_2() -> Struct_4 {
    var var_0 = any(vec4<bool>(!any(vec2<bool>(false, false)), false, any(global2.b), (func_3(Struct_1(924f, global2.b), Struct_4(vec3<u32>(u_input.d, 83495u, u_input.a), vec3<f32>(1796f, 738f, -1255f)), Struct_2(Struct_1(global2.a, global2.b))) | countOneBits(39153i)) < -1i));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.a)) + 1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1562f)), global2.a)), !select(!global2.b, vec3<bool>(true, true, global2.b.x), false)), u_input.b, select(vec3<bool>(!(!global2.b.x), !(u_input.d <= 4294967295u), select(false, !global2.b.x, true)), !global2.b, select(global2.b.x, any(select(vec4<bool>(false, global2.b.x, global2.b.x, false), vec4<bool>(true, false, global2.b.x, global2.b.x), vec4<bool>(true, global2.b.x, true, global2.b.x))), true)));
    var var_2 = Struct_2(var_1.a);
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.a, 34477u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u)) << (~vec4<u32>(u_input.d, 26616u, 50192u, 27658u) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 11069u, 14637u, u_input.d), vec4<u32>(u_input.a, u_input.a, 0u, 0u)), ~vec4<u32>(u_input.d, 30488u, 4294967295u, u_input.a), !vec4<bool>(global2.b.x, var_1.c.x, global2.b.x, global2.b.x)), countOneBits(~vec4<u32>(49614u, u_input.d, 4294967295u, 0u))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a)) ^ ~vec4<u32>(u_input.d, 68618u, 62766u, u_input.d), vec4<u32>(u_input.a, abs(u_input.a), countOneBits(36988u), ~1u))), (u_input.d | (~67698u >> (u_input.d % 32u))) | ~firstLeadingBit(24096u)), 18u)];
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a), vec4<u32>(0u, 1u, 956u, 1u)), ~vec4<u32>(u_input.a, 4294967295u, 19476u, 19353u)) & _wgslsmith_clamp_u32(~(~(~62370u)), 1u, _wgslsmith_mod_u32(~19081u, 26529u | u_input.d)), 18u)];
    return Struct_4(vec3<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a & (u_input.d << (u_input.a % 32u)), _wgslsmith_sub_u32(min(u_input.a, 29641u), ~u_input.a)), 0u), vec3<f32>(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(min(1f, var_1.a.a))), -1334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-477f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(global2.a, -203f);
    let var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(~(~(abs(abs(u_input.a)) & countOneBits(~11671u))), 18u)];
    var var_3 = Struct_2(var_2.a);
    let var_4 = 1u;
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_3 {
    let var_0 = select(true, !(!any(vec4<bool>(arg_2.x, arg_3.d.x, false, global2.b.x))) || (abs(_wgslsmith_add_u32(4294967295u, arg_3.e.a.x)) <= (_wgslsmith_mod_u32(1u, 35818u) << (arg_0.a.x % 32u))), false);
    return global1[_wgslsmith_index_u32(u_input.d & _wgslsmith_div_u32(reverseBits(4294967295u), ~firstTrailingBit(u_input.d & 26298u)), 18u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_5(func_4(func_2(), _wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_0, 64694u, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, u_input.a, arg_0), vec4<u32>(arg_0, 43135u, 61459u, 4294967295u)), select(vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), false)), vec4<u32>(arg_0, 1u, u_input.d >> (arg_0 % 32u), 4294967295u))), func_4(Struct_4(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_0, arg_0), vec3<u32>(1u, arg_0, 4294967295u)), func_4(Struct_4(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<f32>(146f, global2.a, global2.a)), vec4<u32>(11226u, arg_0, 12661u, u_input.d)).a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, 193f, global2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global2.a, 338f) * vec3<f32>(global2.a, 1207f, global2.a))))), vec4<u32>(firstTrailingBit(arg_0), ~0u | select(u_input.d, arg_0, global2.b.x), firstTrailingBit(firstLeadingBit(arg_0)), arg_0)).b.xx, vec3<bool>(true, true, any(global2.b.zz)), Struct_5(countOneBits(~vec3<i32>(-1i, -2147483647i, u_input.b.x)) ^ firstLeadingBit(~vec3<i32>(u_input.b.x, -12275i, u_input.b.x)), 10041i, !vec4<bool>(all(global2.b.zx), true, global2.b.x, select(true, global2.b.x, global2.b.x)), select(!(!vec2<bool>(global2.b.x, true)), global2.b.zy, false), func_2()));
    var var_1 = global3[_wgslsmith_index_u32(37547u, 29u)];
    var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~(~1u)), 29u)];
    return func_5(Struct_4(abs((vec3<u32>(u_input.a, 23139u, u_input.a) ^ vec3<u32>(1u, u_input.a, 91346u)) ^ vec3<u32>(4294967295u, arg_0, 86634u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, var_0.a.a, var_1.a.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, var_1.a.a, global2.a) * func_2().b))), vec2<f32>(var_1.a.a, var_1.a.a), vec3<bool>(all(select(!vec4<bool>(true, var_0.c.x, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), all(vec4<bool>(false, true, global2.b.x, global2.b.x)))), var_1.a.b.x, false), Struct_5(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(3212i, -1i), countOneBits(-31196i)), 8023i, u_input.b.x), firstLeadingBit(_wgslsmith_mod_i32(var_0.b.x >> (3023u % 32u), _wgslsmith_add_i32(u_input.b.x, -48552i))), select(select(!vec4<bool>(true, true, false, var_0.a.b.x), vec4<bool>(false, false, global2.b.x, false), any(var_0.c.zz)), !(!vec4<bool>(global2.b.x, var_1.a.b.x, global2.b.x, true)), any(vec4<bool>(true, var_1.a.b.x, global2.b.x, false))), !vec2<bool>(var_0.c.x, var_1.a.b.x), func_4(func_2(), firstTrailingBit(reverseBits(vec4<u32>(31935u, 44122u, 1u, arg_0)))))).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: u32) -> Struct_4 {
    global3 = array<Struct_2, 29>();
    global1 = array<Struct_3, 18>();
    let var_0 = 771i;
    global1 = array<Struct_3, 18>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_1.e.b.x * arg_1.e.b.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1.e.b.x, arg_1.e.b.x))))) + _wgslsmith_f_op_f32(abs(-157f))), vec3<bool>(false, all(arg_1.c), false));
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(global2.b, !vec3<bool>(global2.b.x & true, true, 15215u != u_input.a), !vec3<bool>(false || global2.b.x, any(vec4<bool>(global2.b.x, global2.b.x, true, false)), global2.b.x)));
    global2 = Struct_1(-1256f, select(vec3<bool>(!(true & global2.b.x), true, select(true, true, any(vec2<bool>(var_0, true)))), global2.b, select(vec3<bool>(false, global2.b.x, !global2.b.x), select(select(global2.b, global2.b, false), select(global2.b, global2.b, true), select(vec3<bool>(global2.b.x, false, false), global2.b, true)), true)));
    global1 = array<Struct_3, 18>();
    var var_1 = func_6(Struct_2(func_1(0u)), Struct_5(vec3<i32>(u_input.b.x, -_wgslsmith_mod_i32(16039i, u_input.c), firstTrailingBit(1i) & reverseBits(1i)), 1i, vec4<bool>(all(!vec2<bool>(global2.b.x, true)), true, true, !global2.b.x), global2.b.zy, Struct_4(func_4(Struct_4(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<f32>(global2.a, global2.a, -1373f)), vec4<u32>(u_input.a, 31684u, 29401u, u_input.a)).a & (vec3<u32>(u_input.a, u_input.d, 4294967295u) | vec3<u32>(u_input.d, 8377u, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, global2.a, 1000f))))), func_5(func_4(Struct_4(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 36954u), vec3<u32>(70429u, 14516u, 43739u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a, 703f, 533f)))), vec4<u32>(u_input.a, ~u_input.a, u_input.d, u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(1334f * _wgslsmith_f_op_f32(-global2.a))), func_1(21127u).b, Struct_5(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -18434i), vec3<i32>(66715i, 0i, -2147483647i))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -16997i, u_input.b.x, u_input.c), vec4<i32>(u_input.b.x, 16178i, u_input.c, -2147483647i)), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, u_input.b.x)), !select(vec4<bool>(global2.b.x, true, true, false), vec4<bool>(false, global2.b.x, global2.b.x, false), vec4<bool>(var_0, false, true, global2.b.x)), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, 56223u), vec4<u32>(1u, u_input.a, 4294967295u, 1u))).b.xz, Struct_4(vec3<u32>(u_input.a, 31973u, 38174u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, -725f))))).c.xy, 30294u);
    global1 = array<Struct_3, 18>();
    global1 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.xy, vec2<f32>(global2.a, global2.a)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, var_1.b.x), vec2<f32>(954f, -101f)))), func_5(func_2(), vec2<f32>(1181f, -323f), func_1(u_input.a).b, Struct_5(vec3<i32>(u_input.c, u_input.b.x, u_input.c), u_input.c, vec4<bool>(true, true, global2.b.x, true), global2.b.xy, Struct_4(var_1.a, var_1.b))).a.b.x)) * var_1.b.xy), -(~_wgslsmith_add_vec4_i32(vec4<i32>(63491i, 6613i, u_input.c, u_input.c), min(vec4<i32>(u_input.b.x, u_input.c, 0i, -1i), vec4<i32>(0i, u_input.c, u_input.b.x, u_input.b.x)))));
}


struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 3080f;

var<private> global1: f32 = -277f;

var<private> global2: u32;

var<private> global3: array<Struct_1, 12>;

var<private> global4: f32 = 385f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = 9292u;
    let var_1 = Struct_4(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(step(-1059f, 125f)), _wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x)), ~_wgslsmith_mod_u32(var_0, ~var_0)), ~max(vec3<u32>(u_input.c << (1u % 32u), arg_2 & var_0, 1u), vec3<u32>(reverseBits(arg_2), var_0, 11361u)));
    var var_2 = Struct_3(false, firstLeadingBit(33444u), select(vec2<u32>(u_input.a >> (min(var_0, var_0) % 32u), ~var_1.a.c), ~(~(var_1.b.yx | var_1.b.zy)), !(!(!vec2<bool>(true, var_1.a.a)))));
    var var_3 = firstTrailingBit(max(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.d.x, ~u_input.d.x), u_input.d), u_input.d));
    var var_4 = var_1;
    return _wgslsmith_clamp_u32(var_4.a.c << (select(var_4.b.x, 35514u << (~var_1.b.x % 32u), all(vec3<bool>(true, arg_0, true)) & arg_0) % 32u), abs(38007u), _wgslsmith_clamp_u32(~1u & _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, var_4.a.c, var_1.b.x, var_4.a.c)), countOneBits(vec4<u32>(49373u, var_2.c.x, 9026u, 4294967295u))), var_2.c.x ^ ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 4294967295u, 1u, ~var_4.a.c), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0, arg_2, arg_2), vec4<u32>(1u, u_input.a, var_1.a.c, 4294967295u)), vec4<u32>(52301u, 1u, 0u, 1u) ^ vec4<u32>(26808u, var_1.a.c, var_4.b.x, var_4.b.x)))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_4 {
    global2 = 4294967295u;
    let var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1366f, -676f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(792f))))), _wgslsmith_f_op_f32(f32(-1f) * -359f));
    global1 = 903f;
    let var_1 = firstLeadingBit(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-5232i, -1i, arg_0, -15258i), vec4<i32>(arg_1, 505i, arg_1, -2147483647i)) | ~arg_0);
    global3 = array<Struct_1, 12>();
    return Struct_4(global3[_wgslsmith_index_u32(u_input.c, 12u)], _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.a, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 36084u), vec3<u32>(6319u, u_input.a, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 11869u), vec3<u32>(4294967295u, u_input.c, u_input.a)))), vec3<u32>(func_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, 383f, var_0.x, 414f) - vec4<f32>(var_0.x, -1044f, 1000f, var_0.x)), u_input.a, -8354i >= arg_0), countOneBits(85934u), u_input.a)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_4 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(-arg_1.b.x));
    var var_0 = abs(~((vec4<u32>(arg_1.c, u_input.c, 5195u, u_input.c) ^ vec4<u32>(u_input.c, arg_1.c, arg_1.c, arg_1.c)) << (~vec4<u32>(u_input.a, arg_1.c, arg_1.c, arg_1.c) % vec4<u32>(32u))) | (~(vec4<u32>(73078u, 15617u, 0u, arg_1.c) << (vec4<u32>(1u, 20401u, 4294967295u, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.c, arg_1.c, 24550u, arg_1.c) % vec4<u32>(32u))));
    global2 = 4294967295u;
    return func_2(_wgslsmith_div_i32(i32(-1i) * -17200i, 1i), -abs(u_input.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    global4 = _wgslsmith_f_op_f32(arg_0.a.b.x - -390f);
    let var_0 = u_input.d.x;
    let var_1 = func_2(_wgslsmith_dot_vec2_i32(arg_2.a, reverseBits(reverseBits(arg_2.a))), 2147483647i).a.c;
    let var_2 = select(vec2<bool>(any(vec3<bool>(false, arg_2.d, 2147483647i == var_0)), select(all(select(vec2<bool>(arg_0.a.a, arg_1.a), vec2<bool>(true, true), arg_1.a)), true, false)), !(!(!(!vec2<bool>(arg_1.a, arg_0.a.a)))), select(select(select(select(vec2<bool>(false, arg_1.a), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, arg_1.a), arg_2.c < 1717f), select(vec2<bool>(true, false), vec2<bool>(arg_0.a.a, arg_1.a), vec2<bool>(true, true)), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(!vec2<bool>(arg_0.a.a, false), !vec2<bool>(arg_0.a.a, false), arg_1.a), !(arg_2.a.x > arg_2.a.x)), arg_2.e.x >= var_1));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(round(490f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x + -337f))))), -284f, !(_wgslsmith_div_i32(arg_2.b, -arg_2.b) > -1i)));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    return Struct_3(any(vec2<bool>((arg_0.c.x >> (14819u % 32u)) != ~61819u, true)), select(u_input.a, 1u, arg_0.a), firstLeadingBit(arg_0.c));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1226f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(606f * 840f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f + -489f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(floor(411f))))) - 1115f)));
    var var_0 = Struct_4(func_2(-min(min(17981i, -2147483647i), 100460i), _wgslsmith_add_i32(1i, arg_1.x)).a, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(arg_2, 35094u), _wgslsmith_div_u32(arg_0.c.x, arg_0.c.x), 59278u), vec3<u32>(4294967295u, _wgslsmith_mult_u32(56281u, u_input.c), ~arg_2))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1615f) * _wgslsmith_f_op_f32(-247f * var_0.a.b.x))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x + -214f), var_0.a.b.x)), true)) + var_0.a.b.x);
    var var_1 = arg_1.x;
    let var_2 = arg_0.a;
    return !vec3<bool>(false, true, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(func_1(~vec4<i32>(3759i, -70610i, u_input.d.x, u_input.d.x), Struct_1(true, vec4<f32>(646f, -148f, -353f, -1719f), 47851u)), Struct_3(all(vec2<bool>(true, true)), u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 26748u), vec2<u32>(u_input.a, u_input.a))), Struct_2(-u_input.b, -22389i, _wgslsmith_f_op_f32(1979f + 1260f), false, vec4<u32>(1u, u_input.c, 1u, 1u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(212i, u_input.e), -vec2<i32>(u_input.b.x, u_input.b.x), ~vec2<i32>(-23457i, 1i)) ^ vec2<i32>(i32(-1i) * -2147483647i, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-377f)))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.e, -1i)), u_input.b.x | u_input.b.x, 34336i), -u_input.d), u_input.d), u_input.c, u_input.d.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-753f, 234f)))) * -241f)), -1241f, -739f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2249f, 686f)) * _wgslsmith_f_op_f32(f32(-1f) * -1789f)), _wgslsmith_f_op_f32(sign(-322f)), var_0.x & var_0.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_f_op_f32(-245f + 1000f)))))));
    let var_2 = vec3<i32>(u_input.b.x, u_input.b.x & u_input.b.x, ~_wgslsmith_mod_i32(-663i << (func_1(vec4<i32>(-3397i, 30410i, u_input.e, u_input.b.x), global3[_wgslsmith_index_u32(44989u, 12u)]).a.c % 32u), -180i));
    var var_3 = ~(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(func_2(u_input.d.x, var_2.x).a.b.x + -216f), var_1.x, var_1.x), 48607u);
}


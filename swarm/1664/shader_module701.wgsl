struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(2147483647i), Struct_3(-16004i), Struct_3(-1i), Struct_3(29221i), Struct_3(0i), Struct_3(-9714i), Struct_3(-52177i), Struct_3(2147483647i), Struct_3(0i), Struct_3(-3412i), Struct_3(2147483647i), Struct_3(1i), Struct_3(-29871i));

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 30>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> vec4<i32> {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(arg_0 & _wgslsmith_mod_u32(4294967295u, 1u)) & ((~arg_0 >> (51213u % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(2283u, u_input.b) >> (u_input.e.wx % vec2<u32>(32u)))), ~4294967295u), 30u)];
    global0 = array<Struct_3, 13>();
    var var_0 = Struct_2(arg_1.d);
    let var_1 = _wgslsmith_add_vec3_u32(u_input.e.yxy, vec3<u32>(abs(_wgslsmith_sub_u32(arg_0, arg_0 >> (arg_1.a % 32u))), arg_0, ~(~reverseBits(u_input.a))));
    global0 = array<Struct_3, 13>();
    return ~vec4<i32>(global1.a, _wgslsmith_add_i32((i32(-1i) * -22995i) >> (~4294967295u % 32u), u_input.d.x >> (_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(52632u, 29265u, arg_0)) % 32u)), ~(-u_input.d.x), _wgslsmith_sub_i32(-70215i, arg_1.e));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_2(false);
    let var_1 = Struct_2(global1.a == (-2447i ^ ~(~global1.a)));
    var_0 = Struct_2(all(vec3<bool>(true, all(!vec2<bool>(var_0.a, var_1.a)), all(vec4<bool>(var_1.a, true, true, true)))));
    let var_2 = select(_wgslsmith_mult_vec3_u32(countOneBits(u_input.e.xzw), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.e.x)) ^ abs(~vec3<u32>(u_input.a, 6975u, 3543u))), ~u_input.e.yyx, !(!vec3<bool>(true, all(vec3<bool>(var_1.a, var_0.a, var_0.a)), false)));
    let var_3 = Struct_2(true);
    return global1.a > (firstTrailingBit(u_input.d.x << (u_input.c % 32u)) ^ ~(-1i));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(u_input.e.x, select(1u, u_input.a, false));
    var var_1 = select(select(vec4<bool>(!any(vec4<bool>(false, true, false, false)), true, true, arg_2.a), !(!select(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false), vec4<bool>(arg_2.a, true, arg_2.a, true), vec4<bool>(arg_2.a, false, arg_2.a, true))), true), vec4<bool>(!all(select(vec3<bool>(true, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(false, arg_2.a, arg_2.a))), ~u_input.a <= min(u_input.e.x, var_0), true, all(!(!vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a)))), -(~func_2(102696u, Struct_1(7766u, -423f, true, arg_2.a, -23863i), -1045f, vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true)).x) == 36212i);
    return Struct_2(var_1.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = func_4(-2147483647i, func_2(43523u >> (~firstTrailingBit(arg_1.x) % 32u), Struct_1(~_wgslsmith_mult_u32(arg_1.x, 4294967295u), _wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(-1091f + 418f)), any(vec2<bool>(false, arg_3.a)), any(vec4<bool>(arg_0.x, false, false, arg_3.a)), 1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1630f)) - _wgslsmith_f_op_f32(ceil(-102f))))), vec4<bool>((false != arg_0.x) | arg_2.a, !all(vec4<bool>(true, false, false, arg_2.a)), false, arg_0.x)), func_4(-6329i, _wgslsmith_div_vec4_i32((vec4<i32>(global1.a, global1.a, global1.a, u_input.d.x) | vec4<i32>(-30905i, 1i, -1i, global1.a)) ^ func_2(arg_1.x, Struct_1(u_input.e.x, 264f, arg_0.x, arg_3.a, global1.a), 441f, vec4<bool>(true, true, false, arg_3.a)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 1i, -9930i), vec4<i32>(2147483647i, u_input.d.x, -1i, u_input.d.x)) & (vec4<i32>(-2147483647i, u_input.d.x, 1i, u_input.d.x) >> (u_input.e % vec4<u32>(32u)))), Struct_2(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-490f, -1025f), vec2<f32>(768f, -1648f))))));
    var_0 = arg_3;
    var var_1 = func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(func_2(40046u, Struct_1(1u, -3285f, arg_2.a, false, -2147483647i), -737f, vec4<bool>(true, arg_2.a, true, false)).x, 1i, global1.a >> (0u % 32u)), abs(abs(vec3<i32>(global1.a, global1.a, -48494i)))), -(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, 0i, global1.a), vec3<i32>(1i, global1.a, 0i)) >> (u_input.e.zzx % vec3<u32>(32u)))), min(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(7662i, -2147483647i, global1.a, global1.a) ^ vec4<i32>(-13764i, -11718i, 2147483647i, global1.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-46580i, -2147483647i, global1.a, u_input.d.x) | vec4<i32>(u_input.d.x, -25984i, 73233i, 2147483647i), vec4<i32>(global1.a, 6509i, global1.a, u_input.d.x), vec4<i32>(-38403i, global1.a, global1.a, global1.a) & vec4<i32>(global1.a, -19037i, global1.a, -1i)), vec4<i32>(-12827i, 1i, i32(-1i) * -28894i, u_input.d.x)), vec4<i32>(firstTrailingBit(-2147483647i), 1i, global1.a, _wgslsmith_clamp_i32(-16226i, _wgslsmith_mult_i32(u_input.d.x, 0i), min(-2147483647i, u_input.d.x)))), func_4(global1.a, vec4<i32>(-1i, ~_wgslsmith_sub_i32(u_input.d.x, 0i), global1.a, global1.a), arg_2));
    let var_2 = vec3<bool>(all(!vec3<bool>(arg_2.a, false, true)) && true, arg_2.a, arg_2.a);
    var_1 = arg_3;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(383f, 1f), -1240f);
}

fn func_6(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(global1.a);
    return func_4(_wgslsmith_dot_vec4_i32(~countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, var_0.a, u_input.d.x, global1.a), vec4<i32>(var_0.a, var_0.a, u_input.d.x, u_input.d.x))), ~max(vec4<i32>(0i, global1.a, 1i, var_0.a), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.a, u_input.d.x, u_input.d.x), vec4<i32>(0i, var_0.a, 0i, 42931i)))), select(~vec4<i32>(-2147483647i, global1.a, u_input.d.x, firstLeadingBit(var_0.a)), abs(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(45863i, global1.a, 1i, 1i), vec4<i32>(global1.a, 0i, -51221i, var_0.a), vec4<i32>(21367i, 30869i, global1.a, 0i)))), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true))), func_4(-var_0.a, reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.a, var_0.a, var_0.a, 16093i), vec4<i32>(-16625i, global1.a, -32504i, -2147483647i))), Struct_2(func_4(0i, vec4<i32>(-1i, u_input.d.x, 16251i, u_input.d.x), Struct_2(false)).a & (arg_0 < -874f))));
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_3, 13>();
    let var_0 = func_6(_wgslsmith_f_op_f32(func_5(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<u32>(~_wgslsmith_sub_u32(18050u, u_input.a), 1u), func_4(_wgslsmith_div_i32(-4920i, -u_input.d.x), ~func_2(24356u, Struct_1(u_input.c, 1550f, true, false, global1.a), 677f, vec4<bool>(true, true, false, false)), Struct_2(func_3(vec2<f32>(-267f, 781f)))), Struct_2(any(vec2<bool>(true, true))))));
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1384f, 225f, -207f) + vec3<f32>(996f, -569f, -641f)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, 491f, -1992f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1207f, 188f, -1157f), vec3<f32>(-167f, 1061f, 2926f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-688f, -2094f, -1807f))), vec3<f32>(1f, 1f, 1f)), var_0.a)))));
    return ~u_input.e.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1977f + -461f), _wgslsmith_f_op_f32(max(-730f, -508f)), _wgslsmith_f_op_f32(-201f + -1339f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1335f, 1556f, -177f))) + vec3<f32>(1f, 1f, 1f))));
    let var_2 = Struct_2(true);
    var var_3 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(min(var_1, _wgslsmith_f_op_vec3_f32(select(var_1, vec3<f32>(1f, -321f, _wgslsmith_f_op_f32(select(1f, var_1.x, any(vec4<bool>(false, false, true, var_2.a))))), true))));
    let var_5 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, var_0.x) & _wgslsmith_sub_u32(34735u, var_0.x), abs(var_0.x) >> (~30230u % 32u), firstLeadingBit(firstLeadingBit(u_input.e.x)), u_input.c), _wgslsmith_mult_vec4_u32(u_input.e >> (u_input.e % vec4<u32>(32u)), vec4<u32>(37689u, abs(1u), 10578u, var_0.x)), firstTrailingBit(min(u_input.e, vec4<u32>(1u, u_input.c, u_input.c, 29838u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a, u_input.a, 13557u), vec4<u32>(1u, 41247u, u_input.e.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1275f, ~(select(~var_0.x, 1541u << (var_5.x % 32u), !var_2.a) << (9641u % 32u)), ~vec3<u32>(u_input.c << (firstTrailingBit(var_0.x) % 32u), ~countOneBits(var_0.x), 22073u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), -592f, var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f * var_1.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -379f))))), u_input.c);
}


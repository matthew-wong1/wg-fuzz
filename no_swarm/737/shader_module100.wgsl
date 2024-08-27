struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_1(2147483647i, -681f)), Struct_4(Struct_1(1i, -1952f)), Struct_4(Struct_1(32037i, -506f)), Struct_4(Struct_1(4311i, 1085f)), Struct_4(Struct_1(1i, -913f)), Struct_4(Struct_1(-1i, -1000f)), Struct_4(Struct_1(27756i, 699f)), Struct_4(Struct_1(49687i, -338f)), Struct_4(Struct_1(-61352i, -987f)), Struct_4(Struct_1(23372i, 657f)), Struct_4(Struct_1(2147483647i, -825f)), Struct_4(Struct_1(2147483647i, 969f)), Struct_4(Struct_1(-72781i, 1198f)), Struct_4(Struct_1(-52813i, -175f)), Struct_4(Struct_1(1i, -1642f)), Struct_4(Struct_1(0i, 117f)), Struct_4(Struct_1(15013i, 382f)), Struct_4(Struct_1(0i, -1016f)), Struct_4(Struct_1(1i, -1070f)), Struct_4(Struct_1(1i, 1296f)), Struct_4(Struct_1(i32(-2147483648), 347f)), Struct_4(Struct_1(-50262i, 288f)), Struct_4(Struct_1(i32(-2147483648), -372f)), Struct_4(Struct_1(-5474i, -1147f)), Struct_4(Struct_1(-12254i, 428f)), Struct_4(Struct_1(0i, -618f)), Struct_4(Struct_1(i32(-2147483648), 309f)), Struct_4(Struct_1(9845i, 1296f)), Struct_4(Struct_1(-14232i, -168f)), Struct_4(Struct_1(-1i, 1968f)), Struct_4(Struct_1(1i, 1703f)), Struct_4(Struct_1(1657i, 1000f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 66393u, 13577u), _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zy), firstLeadingBit(u_input.a.x), 1u), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, u_input.b.x, 1u, 0u)) >> (min(u_input.a, u_input.a) % vec4<u32>(32u))) < 4294967295u, 2147483647i, ~u_input.a.x);
    global0 = array<Struct_4, 32>();
    let var_1 = u_input.b.yz;
    return _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(u_input.b.x, max(var_1.x, 0u), var_1.x, 22267u)), ~u_input.a);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x ^ ~reverseBits(min(46196u, arg_0.a.x)), _wgslsmith_dot_vec2_u32(~u_input.a.wx << (vec2<u32>(37507u, u_input.b.x) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec2_u32(arg_0.a.yy, vec2<u32>(u_input.b.x, u_input.a.x)))) >> ((~(~u_input.a.x) << (_wgslsmith_div_u32(u_input.a.x, ~arg_0.a.x) % 32u)) % 32u)), 32u)];
    global0 = array<Struct_4, 32>();
    let var_1 = Struct_2(select(func_3(_wgslsmith_add_u32(13816u, u_input.a.x) >= 0u, Struct_1(-2147483647i, -447f), var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2036f))))), ~u_input.a << (countOneBits(firstLeadingBit(u_input.a)) % vec4<u32>(32u)), false), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_0.b << (0u % 32u)), arg_0.b, 1i), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(2147483647i, -1i, var_0.a.a)), countOneBits(-vec3<i32>(9832i, var_0.a.a, arg_0.b)))), arg_0.c, !arg_2, arg_0.e);
    var var_2 = ~arg_0.a.xw;
    let var_3 = ~vec3<u32>(reverseBits(var_2.x << (_wgslsmith_clamp_u32(arg_0.a.x, var_2.x, 59736u) % 32u)), 0u, 31992u);
    return -vec3<i32>(-5617i, var_0.a.a, _wgslsmith_div_i32(-1i, abs(arg_0.e.a))) >> (arg_0.a.xxz % vec3<u32>(32u));
}

fn func_1() -> vec4<i32> {
    return vec4<i32>(-2147483647i, reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 41280i, -52476i), vec4<i32>(12034i, 0i, 24800i, 2147483647i)), _wgslsmith_div_i32(0i, i32(-1i) * -70183i))), _wgslsmith_dot_vec2_i32(-(~abs(vec2<i32>(-1i, -41692i))), ~vec2<i32>(_wgslsmith_add_i32(-1i, -1i), 10804i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(21826i, -24116i), min(11480i, -1i), select(0i, -11451i, false)), func_2(Struct_2(u_input.a, 30237i, vec3<f32>(-397f, -1022f, 1121f), true, Struct_1(2147483647i, 1503f)), ~0i, true)) << (firstLeadingBit(u_input.a.x) % 32u));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_3(-66002i <= (_wgslsmith_sub_i32(1i, select(1i, arg_2.x, arg_1.x)) & abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_2.x), vec2<i32>(arg_2.x, arg_2.x)))), _wgslsmith_div_i32(func_1().x, 33276i), ~(u_input.b.x << (37655u % 32u)));
    global0 = array<Struct_4, 32>();
    let var_1 = Struct_1(abs(1i), -541f);
    return Struct_1(min(_wgslsmith_div_i32(var_0.b, _wgslsmith_dot_vec3_i32(arg_2.zyx | vec3<i32>(1i, arg_2.x, arg_2.x), arg_2.zxy)), var_0.b), var_1.b);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    var var_0 = global0[_wgslsmith_index_u32(~(firstTrailingBit(~countOneBits(0u)) & _wgslsmith_div_u32(4294967295u, ~1u)), 32u)];
    var var_1 = 1u;
    let var_2 = Struct_3(!all(select(!vec2<bool>(true, arg_3), select(vec2<bool>(false, true), vec2<bool>(false, true), arg_3), all(vec2<bool>(arg_3, false)))), arg_0, ~1u);
    return Struct_2(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, var_2.c, var_2.c, 83491u)), u_input.a, u_input.a) & select(vec4<u32>(0u, u_input.a.x, ~20821u, ~21502u), ~u_input.a << ((u_input.a | u_input.a) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, var_2.a), vec4<bool>(true, var_2.a, true, false), true)), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.b, -1257f, 832f), vec3<f32>(var_0.a.b, arg_2.b, arg_2.b))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.b, 414f, arg_2.b)))))))), true || var_2.a, func_4(true, select(!(!vec4<bool>(false, var_2.a, true, true)), vec4<bool>(var_2.c > 46334u, !var_2.a, true, arg_3 != var_2.a), true & any(vec4<bool>(false, true, true, arg_3))), vec4<i32>(i32(-1i) * -var_2.b, -2147483647i >> (~u_input.a.x % 32u), -8295i, 1i & arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 32>();
    let var_0 = func_5(i32(-1i) * -4182i, -vec2<i32>(-2147483647i, -1i), func_4(true, select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(select(true, false, false), any(vec4<bool>(false, false, true, false)), true, true), all(vec4<bool>(true, false, false, true))), select(vec4<i32>(-1i, -18842i, -1i, 1i), func_1(), true) ^ select(vec4<i32>(1i, 1i, 1i, 1i), func_1(), vec4<bool>(true, false, false, false))), select(func_3(true, func_4(false, vec4<bool>(true, false, true, false), vec4<i32>(-9274i, -2147483647i, 27728i, 1052i)), Struct_1(-1i, 175f), _wgslsmith_f_op_f32(217f * 1164f)).x != (~u_input.a.x << (~20647u % 32u)), select(any(vec4<bool>(true, false, false, true)) & true, false, ~u_input.a.x > 32143u), true));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.a.zzw, ~vec3<u32>(u_input.a.x ^ 1u, 4294967295u, ~var_0.a.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(28218u, 33590u, u_input.a.x)), func_5(~9125i, vec2<i32>(0i, var_0.b), var_0.e, true).a.zww, u_input.a.zxy)), ~firstLeadingBit(firstLeadingBit(var_0.a.zwx)) ^ firstTrailingBit(select(var_0.a.ywz, vec3<u32>(u_input.a.x, var_0.a.x, u_input.a.x), vec3<bool>(var_0.d, var_0.d, var_0.d)) >> (_wgslsmith_mult_vec3_u32(var_0.a.yyz, u_input.a.zyy) % vec3<u32>(32u)))), 32u)];
    global0 = array<Struct_4, 32>();
    let var_2 = Struct_3((1u <= u_input.b.x) && (true & var_0.d), ~firstTrailingBit(_wgslsmith_add_i32(~(-29724i), min(var_1.a.a, 15840i))), 6820u << (1u % 32u));
    global0 = array<Struct_4, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(select(_wgslsmith_sub_i32(var_0.b, -17939i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a, var_1.a.a, var_0.e.a), vec3<i32>(2147483647i, var_0.b, var_2.b)), var_0.d), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, var_2.b, 9671i) >> (vec4<u32>(9254u, 1u, var_0.a.x, var_0.a.x) % vec4<u32>(32u)), max(vec4<i32>(var_1.a.a, var_1.a.a, var_2.b, var_0.b), vec4<i32>(-37196i, var_2.b, var_0.b, 37707i)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1440f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1646f, var_0.c.x, all(vec3<bool>(false, var_2.a, var_0.d)))), func_4(true, !vec4<bool>(true, false, false, var_0.d), -vec4<i32>(1i, var_2.b, -16154i, var_0.b)).b), -1000f, var_1.a.b));
}


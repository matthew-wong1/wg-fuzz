struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec4<f32>(297f, -1326f, -1744f, -401f), vec3<f32>(612f, 590f, -274f), Struct_2(543f), Struct_2(830f)), Struct_3(vec4<f32>(-2101f, 208f, -623f, -340f), vec3<f32>(-293f, 1134f, -230f), Struct_2(-1080f), Struct_2(-964f)), Struct_3(vec4<f32>(-741f, -579f, -723f, 1000f), vec3<f32>(-1000f, -1569f, -252f), Struct_2(627f), Struct_2(-1509f)), Struct_3(vec4<f32>(-325f, 111f, 2164f, 1201f), vec3<f32>(533f, -121f, -1049f), Struct_2(-1000f), Struct_2(-169f)), Struct_3(vec4<f32>(-1266f, 577f, 1445f, 1325f), vec3<f32>(-585f, -1850f, 1000f), Struct_2(137f), Struct_2(1000f)), Struct_3(vec4<f32>(454f, 538f, 206f, 1269f), vec3<f32>(1000f, -111f, 1659f), Struct_2(1000f), Struct_2(-1000f)), Struct_3(vec4<f32>(478f, 821f, -274f, 1810f), vec3<f32>(-1244f, -1692f, -1000f), Struct_2(721f), Struct_2(-569f)), Struct_3(vec4<f32>(-109f, 2296f, 103f, 1093f), vec3<f32>(259f, 184f, 613f), Struct_2(821f), Struct_2(1000f)), Struct_3(vec4<f32>(1351f, 376f, 171f, -1000f), vec3<f32>(619f, 1383f, 806f), Struct_2(842f), Struct_2(1628f)), Struct_3(vec4<f32>(-1001f, -348f, -424f, 187f), vec3<f32>(-1000f, 759f, 1528f), Struct_2(145f), Struct_2(1377f)));

var<private> global2: array<vec4<bool>, 16>;

var<private> global3: array<u32, 30> = array<u32, 30>(1u, 0u, 99294u, 0u, 20662u, 1u, 48836u, 4294967295u, 1u, 4294967295u, 88847u, 4294967295u, 0u, 0u, 1u, 0u, 1u, 20897u, 18730u, 1u, 4294967295u, 0u, 10022u, 1u, 4294967295u, 56843u, 0u, 433u, 0u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    return Struct_1(-firstTrailingBit(arg_1), ~(~global0.x), _wgslsmith_add_i32(max(arg_1.x, u_input.b), countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_1.x, arg_1.x), arg_1)))));
}

fn func_3() -> vec3<i32> {
    global3 = array<u32, 30>();
    return ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(19865i, u_input.b << (1u % 32u), u_input.b), vec3<i32>(u_input.b, 1i << (~u_input.a.x % 32u), countOneBits(u_input.b)), select(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 1i, -7209i), vec3<i32>(-9809i, u_input.b, u_input.b)), -vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(-29164i, 12427i, 0i), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(~(~arg_2.a), countOneBits(min(func_3() >> (_wgslsmith_mod_vec3_u32(u_input.a.wxy, u_input.a.wyx) % vec3<u32>(32u)), abs(vec3<i32>(arg_0.a.x, 3296i, arg_2.a.x) ^ vec3<i32>(2147483647i, -1i, 1i)))));
    let var_1 = global0.yz << (u_input.a.yx % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(abs(-103f))), arg_1.a));
    global3 = array<u32, 30>();
    var var_3 = -160f;
    return var_1.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = !(abs(u_input.b) >= 29776i);
    global0 = u_input.a.zwy;
    var var_1 = abs(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a) - _wgslsmith_f_op_f32(sign(1f)))));
    global1 = array<Struct_3, 10>();
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1317f + arg_0))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(917f))))), 1536f, all(vec3<bool>(false, all(vec3<bool>(false, false, true)), var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 30>();
    var var_0 = func_4(_wgslsmith_f_op_f32(-193f * _wgslsmith_div_f32(703f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_div_f32(986f, 435f))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global0.x), u_input.a.x) << (func_2(func_1(true, vec3<i32>(u_input.b, 0i, -7204i)), Struct_2(-161f), func_1(true, vec3<i32>(0i, 1i, 0i))) % 32u), ~2255u), 10u)]);
    global0 = ~u_input.a.wxz;
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_div_f32(var_0.a, -138f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f + 1380f))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -362f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + var_0.a)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-982f, var_0.a, -1018f), vec3<f32>(var_0.a, var_0.a, var_0.a)) + vec3<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -131f), var_0.a)))), func_4(116f, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1879f, -1000f, var_0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -264f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-569f, var_0.a, -1032f), vec3<f32>(var_0.a, -1827f, var_0.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2364f, var_0.a, var_0.a) - vec3<f32>(-320f, var_0.a, var_0.a))), Struct_2(334f), func_4(_wgslsmith_f_op_f32(-var_0.a), global1[_wgslsmith_index_u32(global0.x, 10u)]))), func_4(1600f, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1046f, var_0.a, 802f, var_0.a) * vec4<f32>(var_0.a, var_0.a, -559f, 681f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -902f, var_0.a), vec3<f32>(-743f, var_0.a, var_0.a))), Struct_2(_wgslsmith_f_op_f32(758f * 1379f)), Struct_2(var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(global0.x, abs(45376u), ~global3[_wgslsmith_index_u32(1u, 30u)]), ~(~global3[_wgslsmith_index_u32(70005u, 30u)]), ~(~global3[_wgslsmith_index_u32(34924u, 30u)]))));
}


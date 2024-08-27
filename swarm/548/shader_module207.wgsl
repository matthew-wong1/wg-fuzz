struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<i32, 5>;

var<private> global2: array<i32, 27> = array<i32, 27>(34727i, 2147483647i, 96872i, -1i, -6439i, 31576i, i32(-2147483648), 2147483647i, -26634i, -3192i, -1i, i32(-2147483648), 2147483647i, 19763i, 5255i, 0i, -1i, -919i, 2147483647i, 2147483647i, 33197i, i32(-2147483648), 79561i, -1i, -1i, i32(-2147483648), -22701i);

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_5(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], Struct_4(_wgslsmith_f_op_f32(ceil(arg_1.b.c)), arg_1.b));
    global0 = array<Struct_2, 28>();
    var var_1 = any(vec4<bool>(false, !any(!vec2<bool>(arg_0, true)), !arg_1.b.a.d, all(select(vec3<bool>(true, false, true), vec3<bool>(var_0.a.a.d, false, var_0.a.a.d), vec3<bool>(arg_1.b.a.d, var_0.a.a.d, true)))));
    global3 = ~(~(~arg_1.b.b));
    var_0 = Struct_5(global0[_wgslsmith_index_u32(arg_1.b.a.b.x, 28u)], Struct_4(-847f, arg_1.b));
    return var_0.b.b.b.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_4(arg_2.c, global0[_wgslsmith_index_u32(~min(global3.x, _wgslsmith_div_u32(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u), arg_3))), 28u)]);
    var var_1 = u_input.c > (arg_1 >> (1u % 32u));
    var var_2 = Struct_5(arg_2, Struct_4(146f, var_0.b));
    let var_3 = vec3<bool>((_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.b.a.e.x), 884f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.c)))) & all(vec3<bool>(-468f >= arg_2.c, any(vec4<bool>(false, var_0.b.a.d, var_2.b.b.a.d, false)), all(vec4<bool>(arg_2.a.d, false, var_2.b.b.a.d, var_2.b.b.a.d)))), true, true);
    global3 = var_2.a.d.b.zw;
    return u_input.d;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global3 = u_input.a.xw;
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-27721i), global1[_wgslsmith_index_u32(countOneBits(1u), 5u)], _wgslsmith_mult_i32(~(-1i & global1[_wgslsmith_index_u32(22787u, 5u)]), select(global1[_wgslsmith_index_u32(4294967295u, 5u)] & global2[_wgslsmith_index_u32(arg_0.a.b.x, 27u)], 23065i, true)), -5124i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.b.x, global3.x), u_input.e.zx) | firstTrailingBit(arg_0.b.x)) % 32u)), _wgslsmith_mult_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, arg_0.d.a, -19792i, 0i), vec4<i32>(53022i, -7652i, -11544i, global1[_wgslsmith_index_u32(arg_0.b.x, 5u)])) << (vec4<u32>(arg_0.a.b.x, 81616u, 51438u, u_input.a.x) % vec4<u32>(32u))) << (arg_0.a.b % vec4<u32>(32u)), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -51699i, -1i, 11074i), vec4<i32>(-24717i, -37337i, 12614i, global1[_wgslsmith_index_u32(global3.x, 5u)])))));
    let var_1 = _wgslsmith_clamp_u32(~(~u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(41413u, abs(4294967295u), 4294967295u), ~_wgslsmith_div_vec3_u32(u_input.a.xxz, u_input.e)), ~(~vec3<u32>(u_input.e.x, 61509u, 1u))), global3.x);
    global0 = array<Struct_2, 28>();
    let var_2 = arg_0.d.e.x;
    return Struct_2(Struct_1(func_4(-2147483647i, 1u & func_3(arg_0.a.d, Struct_4(var_2, Struct_2(Struct_1(-11926i, vec4<u32>(0u, var_1, 52295u, arg_0.b.x), -1720f, false, arg_0.d.e), vec2<u32>(var_1, 1u), var_2, arg_0.d)), arg_0.d.e.x, vec3<u32>(var_1, arg_0.b.x, 0u)), global0[_wgslsmith_index_u32(~(global3.x ^ u_input.a.x), 28u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u) ^ vec2<u32>(arg_0.a.b.x, 0u), select(arg_0.d.b.zx, vec2<u32>(global3.x, arg_0.a.b.x), true), abs(arg_0.d.b.zy))), max(~arg_0.d.b, vec4<u32>(arg_0.a.b.x, firstLeadingBit(var_1), 4294967295u, 1u)), -1588f, true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.e - vec2<f32>(-290f, arg_0.a.c)) + vec2<f32>(181f, var_2))))), arg_0.d.b.wx, _wgslsmith_f_op_f32(trunc(448f)), Struct_1(arg_0.a.a, ~arg_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(max(-191f, -1114f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1440f, 642f))))), arg_0.d.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.d.e, arg_0.d.e)))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<i32>) -> Struct_3 {
    global3 = ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(9375u, 0u) << (arg_0.b.b % vec2<u32>(32u))), u_input.e.zx) << (vec2<u32>(_wgslsmith_mult_u32(u_input.c, 29258u), firstTrailingBit(u_input.c)) % vec2<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-105f, 607f)) - _wgslsmith_f_op_f32(-arg_0.b.a.e.x)))));
    let var_1 = u_input.a;
    var var_2 = Struct_4(func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(2147483647i, u_input.a, -1799f, false, vec2<f32>(var_0, var_0)), vec2<u32>(var_1.x, arg_0.b.a.b.x), 1000f, Struct_1(2147483647i, vec4<u32>(31211u, 1u, 0u, var_1.x), arg_0.b.a.e.x, true, arg_0.b.d.e))).a.b.x, 5u)], u_input.a, _wgslsmith_div_f32(457f, -782f), true, arg_0.b.d.e), func_2(global0[_wgslsmith_index_u32(var_1.x, 28u)]).d.b.yy, -1029f, func_2(arg_0.b).d)).c, arg_0.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, 360f, var_0) * vec4<f32>(1028f, 1321f, 1278f, 212f)) + vec4<f32>(-1843f, -966f, -545f, 822f))))));
    return Struct_3(arg_2.xxz, _wgslsmith_div_vec4_i32(arg_2, _wgslsmith_sub_vec4_i32(arg_2 >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(arg_2, arg_2))) << ((var_2.b.a.b << (~select(vec4<u32>(var_2.b.a.b.x, 1u, 52930u, 1u), vec4<u32>(1u, arg_1, global3.x, arg_0.b.b.x), vec4<bool>(true, false, var_2.b.a.d, true)) % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(func_2(Struct_2(func_2(Struct_2(Struct_1(0i, var_2.b.a.b, -1000f, false, arg_0.b.d.e), var_1.wx, -900f, Struct_1(global2[_wgslsmith_index_u32(59812u, 27u)], u_input.a, -176f, false, vec2<f32>(arg_0.a, 1197f)))).d, abs(u_input.a.ww), 1435f, Struct_1(arg_0.b.a.a, var_2.b.d.b, var_3.x, false, arg_0.b.a.e)))));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = Struct_5(func_5(arg_3.b, 1u, select(arg_1.b >> (arg_3.a.a.b % vec4<u32>(32u)), ~arg_1.b, select(!vec4<bool>(arg_1.c.a.d, false, false, arg_3.a.a.d), vec4<bool>(false, true, false, arg_3.a.a.d), false))).c, arg_3.b);
    let var_1 = Struct_2(func_2(func_5(Struct_4(_wgslsmith_f_op_f32(ceil(var_0.b.b.d.c)), Struct_2(arg_3.b.b.d, var_0.b.b.d.b.ww, -1000f, arg_3.b.b.d)), ~_wgslsmith_div_u32(arg_1.c.d.b.x, var_0.b.b.b.x), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 5u)], 45254i), vec2<i32>(var_0.b.b.d.a, var_0.a.a.a)), arg_3.b.b.a.a, _wgslsmith_dot_vec2_i32(arg_1.b.wz, arg_1.a.zz), _wgslsmith_dot_vec3_i32(vec3<i32>(13443i, global2[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(arg_1.c.d.b.x, 5u)]), vec3<i32>(1i, u_input.d, u_input.d)))).c).d, select(~(arg_3.a.a.b.wx ^ func_5(var_0.b, 1u, vec4<i32>(2147483647i, 33089i, 1i, 2147483647i)).c.b), arg_3.b.b.a.b.zx, arg_1.c.d.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(f32(-1f) * -1030f))), Struct_1(-33858i, select(vec4<u32>(78467u, ~var_0.a.b.x, ~28742u, ~73274u), vec4<u32>(0u, 16163u, global3.x, global3.x) | ~vec4<u32>(global3.x, 112729u, 4294967295u, 5566u), !vec4<bool>(true, arg_1.c.a.d, arg_1.c.a.d, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.d.c - 1116f) - 124f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(658f * var_0.a.c))))), arg_1.c.a.d, vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a.e.x + _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-var_0.a.c))));
    global3 = var_0.b.b.d.b.yy;
    var var_2 = ~countOneBits(func_5(Struct_4(-781f, func_2(Struct_2(Struct_1(0i, arg_3.a.d.b, var_0.a.a.e.x, arg_3.a.a.d, var_1.d.e), var_1.a.b.xx, arg_1.c.a.e.x, arg_3.b.b.d))), func_5(arg_3.b, 75448u, vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(arg_1.c.a.b.x, 5u)], 9655i, -4987i)).c.b.x & ~arg_2, ~arg_1.b).b.xz);
    var_2 = arg_1.a.yz;
    return func_2(arg_3.b.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = func_6(-23884i, func_5(Struct_4(_wgslsmith_f_op_f32(trunc(-737f)), func_2(global0[_wgslsmith_index_u32(~0u, 28u)])), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(34800u, global3.x), 4294967295u), ~(-(~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 0i, 2147483647i, 10791i)))), ~0u, Struct_5(global0[_wgslsmith_index_u32(~func_2(Struct_2(Struct_1(arg_2.x, vec4<u32>(4294967295u, 12855u, 5990u, u_input.e.x), 377f, false, arg_0.yy), vec2<u32>(u_input.c, global3.x), 524f, Struct_1(50797i, vec4<u32>(global3.x, u_input.c, global3.x, u_input.c), arg_0.x, true, vec2<f32>(arg_0.x, arg_0.x)))).b.x, 28u)], Struct_4(func_5(Struct_4(-1000f, global0[_wgslsmith_index_u32(0u, 28u)]), 4250u, vec4<i32>(-249i, -1i, 1i, arg_1) | vec4<i32>(global2[_wgslsmith_index_u32(0u, 27u)], -1700i, -25942i, global1[_wgslsmith_index_u32(global3.x, 5u)])).c.d.c, func_5(Struct_4(arg_0.x, Struct_2(Struct_1(2147483647i, vec4<u32>(global3.x, 1u, global3.x, global3.x), 562f, true, vec2<f32>(arg_0.x, arg_0.x)), vec2<u32>(u_input.e.x, u_input.c), 727f, Struct_1(global1[_wgslsmith_index_u32(global3.x, 5u)], u_input.a, arg_0.x, true, vec2<f32>(arg_0.x, arg_0.x)))), abs(71903u), arg_2 & vec4<i32>(-53848i, arg_2.x, arg_2.x, -13837i)).c)));
    var var_1 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_0.b.x) << (func_2(global0[_wgslsmith_index_u32(4294967295u, 28u)]).d.b.x % 32u), 24477u | _wgslsmith_clamp_u32(42624u, u_input.e.x, global3.x)), 4294967295u));
    var var_2 = var_0.d;
    var var_3 = global0[_wgslsmith_index_u32(27106u, 28u)];
    let var_4 = func_6(i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global3.x, 27u)], 10316i), -var_3.d.a), func_5(Struct_4(105f, global0[_wgslsmith_index_u32(max(countOneBits(var_0.a.b.x), var_2.b.x), 28u)]), 24823u, abs(~vec4<i32>(arg_1, -15784i, global1[_wgslsmith_index_u32(global3.x, 5u)], 2147483647i))), select(var_0.b.x, _wgslsmith_add_u32(3294u, 1u), true), Struct_5(global0[_wgslsmith_index_u32(~var_2.b.x, 28u)], Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e.x, -1094f) * _wgslsmith_f_op_f32(-858f + arg_0.x)), global0[_wgslsmith_index_u32(~var_2.b.x, 28u)])));
    return vec4<bool>(485f <= var_2.c, var_3.a.d, _wgslsmith_mod_u32(0u, var_4.d.b.x) < ~(~max(4572u, 55243u)), var_3.a.a >= 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    let var_0 = !func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-599f, 2027f, -1798f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, -779f, -1000f)))), -1i, ~reverseBits(~vec4<i32>(0i, 1i, global2[_wgslsmith_index_u32(9266u, 27u)], global2[_wgslsmith_index_u32(global3.x, 27u)])));
    global2 = array<i32, 27>();
    var var_1 = vec3<i32>(firstLeadingBit(global2[_wgslsmith_index_u32(select(u_input.c, 1u, true), 27u)] << (_wgslsmith_sub_u32(~10672u, firstTrailingBit(u_input.c)) % 32u)), u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(37354u, 5u)], global2[_wgslsmith_index_u32(33014u, 27u)]), reverseBits(vec2<i32>(13203i, 1i))), 62754i, 0i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-55182i, -43897i, u_input.b), select(select(vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.e.x, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), vec3<i32>(30622i, 677i, global1[_wgslsmith_index_u32(0u, 5u)]), false), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 27u)], -26069i), vec3<bool>(false, var_0.x, true)), select(~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], -1i), -vec3<i32>(global2[_wgslsmith_index_u32(global3.x, 27u)], u_input.d, global1[_wgslsmith_index_u32(global3.x, 5u)]), !var_0.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1815f - _wgslsmith_f_op_f32(f32(-1f) * -2039f))))));
    let var_3 = var_1.x;
    let var_4 = Struct_3(vec3<i32>(-func_2(Struct_2(Struct_1(-25695i, u_input.a, var_2.x, false, vec2<f32>(var_2.x, var_2.x)), vec2<u32>(69531u, global3.x), var_2.x, Struct_1(global2[_wgslsmith_index_u32(1u, 27u)], u_input.a, var_2.x, false, vec2<f32>(var_2.x, var_2.x)))).d.a, reverseBits(~(-9835i)), 1i), ~_wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(0i, var_1.x, global1[_wgslsmith_index_u32(4294967295u, 5u)], -1i))), vec4<i32>(global1[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(u_input.e.x, 27u)], u_input.b, global2[_wgslsmith_index_u32(u_input.e.x, 27u)]) >> (max(u_input.a, vec4<u32>(global3.x, u_input.a.x, 0u, global3.x)) % vec4<u32>(32u))), func_2(global0[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(-35372i, u_input.a, -294f, true, vec2<f32>(var_2.x, 586f)), u_input.e.zx, _wgslsmith_f_op_f32(-var_2.x), Struct_1(-17872i, u_input.a, var_2.x, var_0.x, vec2<f32>(var_2.x, 1187f)))).a.b.x, 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-158f, vec2<u32>(~func_2(var_4.c).b.x, 1u), vec3<i32>(-1i, u_input.b, var_4.b.x), _wgslsmith_mult_u32(u_input.e.x, ~(~4294967295u)), countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(77709u, var_4.c.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.c.a.b.x, 20876u, u_input.c, var_4.c.d.b.x), var_4.c.d.b)), 0u)));
}


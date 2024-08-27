struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 2> = array<f32, 2>(-1141f, -721f);

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_f_op_f32(f32(-1f) * -216f), 1564f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], -2196f, -1228f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global1[_wgslsmith_index_u32(0u, 2u)]) + vec4<f32>(global0.x, global1[_wgslsmith_index_u32(42857u, 2u)], global0.x, 498f))))), Struct_1(-u_input.b.x), any(vec3<bool>(true, arg_0, all(vec2<bool>(true, arg_0))))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, 78162u)), _wgslsmith_div_vec3_u32(vec3<u32>(44682u, 1u, 30119u), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 16248u, 0u), vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(0u, u_input.a, 511u)))), Struct_1(u_input.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(round(-126f)))), global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), u_input.a & u_input.a, arg_0), 2u)], global1[_wgslsmith_index_u32(18211u, 2u)], _wgslsmith_f_op_f32(f32(-1f) * -130f)), vec4<f32>(-1163f, -520f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -971f)), vec4<bool>(true, true, true, true))));
    var var_1 = -21333i;
    var var_2 = Struct_4(~(~vec3<i32>(-2147483647i, var_0.b.b.a, -var_0.b.b.a)), firstTrailingBit(~_wgslsmith_dot_vec2_u32(var_0.c.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(9787u, 5651u), var_0.c.xx, vec2<u32>(u_input.a, 4294967295u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2732f, -723f))) + vec2<f32>(262f, global0.x))))) + var_0.b.a.yx);
    global2 = array<vec4<bool>, 6>();
    return _wgslsmith_f_op_vec2_f32(step(var_3, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], 712f) + vec2<f32>(var_3.x, -1782f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.e.yx, vec2<f32>(var_3.x, -1531f)))) - _wgslsmith_f_op_vec2_f32(max(var_0.b.a.yy, var_0.e.xx)))))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = ~_wgslsmith_add_i32(u_input.b.x, 2147483647i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(!(!(u_input.a >= u_input.a)))));
    let var_1 = u_input.b.x;
    let var_2 = global0.x;
    let var_3 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(~(arg_0 >> (arg_0 % 32u)), u_input.a), vec2<u32>(u_input.a, reverseBits(arg_0) >> (reverseBits(u_input.a) % 32u)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(66331u, 2u)], global0.x, global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_3.x, 2u)], -714f, global0.x))) + vec3<f32>(525f, -944f, -1000f)))), Struct_2(vec4<f32>(-550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f + global0.x)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -210f)), Struct_1(countOneBits(-2147483647i)), true), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 59236u, 80937u), countOneBits(vec3<u32>(var_3.x, var_3.x, arg_0))), var_3.x, select(~arg_0, 0u, all(vec3<bool>(false, true, false)))), Struct_1(var_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(arg_0, 2u)], global0.x, global1[_wgslsmith_index_u32(arg_0, 2u)]) * vec4<f32>(-2050f, -1252f, -332f, global0.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)], -1000f), vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(34111u, 2u)], global1[_wgslsmith_index_u32(28165u, 2u)], global0.x)))))), all(vec3<bool>(false, true, false)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_4 {
    var var_0 = arg_1.b.a;
    global2 = array<vec4<bool>, 6>();
    let var_1 = arg_0;
    global1 = array<f32, 2>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.a.x, -1327f, arg_1.b.c & arg_1.b.c)), -2202f, arg_1.e.x), vec3<bool>(!(0u == u_input.a), true, !arg_1.b.c))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.b.a))), func_2(_wgslsmith_clamp_u32(82856u, 7121u, 62655u) >> (u_input.a % 32u)).d, select(arg_1.b.c | true, true, all(vec3<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c)))), abs(~arg_1.c) | _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1.c.x, 4294967295u, u_input.a), vec3<u32>(40195u, 0u, u_input.a), arg_1.b.c), vec3<u32>(countOneBits(u_input.a), 0u, 4294967295u)), func_2(arg_1.c.x & (reverseBits(u_input.a) >> ((1u >> (u_input.a % 32u)) % 32u))).d, arg_1.b.a);
    return Struct_4(u_input.b << ((~select(var_2.c, vec3<u32>(26349u, 4294967295u, 1u), vec3<bool>(var_2.b.c, arg_1.b.c, arg_1.b.c)) & ~vec3<u32>(1u, var_2.c.x, arg_1.c.x)) % vec3<u32>(32u)), 4294967295u);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, _wgslsmith_mod_u32(~u_input.a, ~u_input.a), _wgslsmith_mult_u32(u_input.a, abs(21650u)), max(arg_0.b, 1u & u_input.a)), ~vec4<u32>(arg_0.b, ~u_input.a, _wgslsmith_mult_u32(24387u, 29867u), 31676u), firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u), vec4<u32>(u_input.a, arg_0.b, arg_0.b, u_input.a) & vec4<u32>(4294967295u, arg_0.b, 1u, 4294967295u)))));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(~4294967295u), var_0.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(68055u, 72827u, u_input.a, 16102u), vec4<u32>(u_input.a, 9775u, var_0.x, var_0.x)), abs(vec4<u32>(var_0.x, 32262u, u_input.a, 61416u))), 4294967295u), ~(~reverseBits(vec4<u32>(arg_0.b, arg_0.b, u_input.a, var_0.x))));
    let var_1 = vec3<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true)), true);
    var_0 = vec4<u32>(select(var_0.x, abs(_wgslsmith_mod_u32(abs(arg_0.b), 71435u)), true), 1u, abs(~(~countOneBits(u_input.a))), ~_wgslsmith_clamp_u32(abs(0u), arg_0.b >> (u_input.a % 32u), 24955u) & _wgslsmith_dot_vec3_u32(~firstTrailingBit(var_0.xzw), var_0.xwx));
    let var_2 = any(!(!(!select(vec2<bool>(true, false), var_1.zx, false))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_0.b, 2u)], -816f, global1[_wgslsmith_index_u32(arg_0.b, 2u)])), arg_1)), arg_1))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, arg_1.x, -1323f, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -925f, global1[_wgslsmith_index_u32(var_0.x, 2u)], 774f))))), func_2(select(func_2(0u).c.x, reverseBits(var_0.x), true)).d, !(!var_2)), ~(~vec3<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 39601u, 54878u, 1u), vec4<u32>(var_0.x, 28558u, u_input.a, var_0.x)), u_input.a ^ u_input.a)), Struct_1(arg_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global1[_wgslsmith_index_u32(4294967295u, 2u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2193f, arg_1.x, 1000f, -909f))))));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 2u)]), func_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a << (arg_0.b % 32u))), func_2(43614u).d), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(360f, global0.x, global0.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1988f, 1373f, global0.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(0u, 2u)], -682f, -1802f))))))));
    let var_1 = 1801f;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e.xz) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 2u)], global0.x), vec2<f32>(var_1, -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2029f, -694f) - var_0.e.zy)))))));
    var var_2 = vec3<bool>(arg_0.b < arg_0.b, (1850f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 2u)] + -1424f))) & !(false == !var_0.b.c), func_2(abs(65646u)).b.c);
    var var_3 = func_2(max(_wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, arg_0.b), vec2<u32>(0u, 85395u))), func_5(func_4(1110f, Struct_3(vec3<f32>(var_0.b.a.x, global1[_wgslsmith_index_u32(var_0.c.x, 2u)], global0.x), Struct_2(vec4<f32>(1000f, -649f, global1[_wgslsmith_index_u32(62253u, 2u)], -108f), var_0.b.b, var_2.x), var_0.c, Struct_1(-1i), var_0.e), Struct_1(1i)), _wgslsmith_f_op_vec3_f32(-var_0.a)).c.x), 1u));
    return Struct_1(arg_0.a.x);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 2u)];
    let var_1 = reverseBits(vec4<i32>(arg_0.a, _wgslsmith_clamp_i32(38918i, u_input.b.x, reverseBits(48371i)), arg_0.a, arg_0.a));
    let var_2 = !(!(u_input.b.x == ~(-35017i)));
    let var_3 = true;
    let var_4 = func_5(Struct_4(vec3<i32>(min(-2147483647i, arg_0.a), func_5(Struct_4(vec3<i32>(28829i, var_1.x, 0i), 4294967295u), vec3<f32>(global1[_wgslsmith_index_u32(34866u, 2u)], 1000f, global1[_wgslsmith_index_u32(0u, 2u)])).d.a << (u_input.a % 32u), select(var_1.x, 2147483647i, var_3)), ~(~(~u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 2u)] * 2818f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(func_5(Struct_4(vec3<i32>(u_input.b.x, -2472i, -4483i), u_input.a), vec3<f32>(global0.x, 226f, global0.x)).c, firstTrailingBit(vec3<u32>(u_input.a, 419u, u_input.a))), firstLeadingBit(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), var_2))), 2u)], -756f));
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(Struct_4(~max(u_input.b, vec3<i32>(1i, -1i, -1i)), firstLeadingBit(4294967295u) << (_wgslsmith_mult_u32(17387u, u_input.a) % 32u))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1887f * 616f), -443f, _wgslsmith_f_op_f32(216f + -1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-489f, -538f, global0.x) * vec3<f32>(1261f, global1[_wgslsmith_index_u32(u_input.a, 2u)], global0.x))) - func_5(func_4(global0.x, Struct_3(vec3<f32>(global1[_wgslsmith_index_u32(0u, 2u)], 1343f, global1[_wgslsmith_index_u32(u_input.a, 2u)]), Struct_2(vec4<f32>(-387f, 1000f, global1[_wgslsmith_index_u32(37184u, 2u)], -906f), Struct_1(var_0.a), true), vec3<u32>(0u, u_input.a, 18120u), Struct_1(u_input.b.x), vec4<f32>(global0.x, global0.x, 513f, 346f)), Struct_1(-10701i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], 1079f, -1224f)))).e.zxw)), func_2(0u).b, vec3<u32>(_wgslsmith_dot_vec2_u32(func_2(u_input.a).c.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 21938u), vec2<u32>(u_input.a, u_input.a)) | reverseBits(vec2<u32>(32030u, u_input.a))), _wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(88124u, u_input.a, u_input.a, 1u))), select(max(vec4<u32>(u_input.a, 0u, 2460u, u_input.a), vec4<u32>(u_input.a, 53686u, 76587u, u_input.a)), countOneBits(vec4<u32>(14067u, 4294967295u, u_input.a, u_input.a)), true)), u_input.a), func_2(~u_input.a).b.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2315f, 205f, global0.x, 1001f))), vec4<f32>(662f, -463f, global0.x, -1294f), var_0.a == -2147483647i))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, global1[_wgslsmith_index_u32(16586u, 2u)])), _wgslsmith_f_op_f32(sign(482f)), _wgslsmith_f_op_f32(f32(-1f) * -1140f), global0.x))), vec4<bool>(true, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 2u)] - global0.x) != global1[_wgslsmith_index_u32(min(u_input.a, u_input.a), 2u)], true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))))));
    var var_2 = !all(select(global2[_wgslsmith_index_u32(u_input.a, 6u)], !select(vec4<bool>(var_1.b.c, var_1.b.c, true, var_1.b.c), global2[_wgslsmith_index_u32(32686u, 6u)], vec4<bool>(var_1.b.c, var_1.b.c, var_1.b.c, true)), !all(vec3<bool>(true, var_1.b.c, var_1.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<i32>(func_5(func_4(-355f, Struct_3(var_1.e.ywz, var_1.b, var_1.c, Struct_1(34905i), vec4<f32>(-1276f, -1456f, global0.x, global1[_wgslsmith_index_u32(u_input.a, 2u)])), func_6(var_0)), vec3<f32>(-1513f, -527f, 1550f)).b.b.a, 1i, -31564i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, var_0.a) << (vec4<u32>(u_input.a, u_input.a, 14493u, var_1.c.x) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, 8388i, 16617i, var_1.b.b.a))), func_5(Struct_4(-u_input.b, ~(~u_input.a)), _wgslsmith_f_op_vec3_f32(trunc(var_1.a))).e.x, _wgslsmith_mod_u32(firstTrailingBit(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_1.c.x, var_1.c.x), vec4<u32>(u_input.a, var_1.c.x, 96998u, u_input.a))), _wgslsmith_mod_u32(_wgslsmith_add_u32(25840u, 19550u) >> (1u % 32u), ~var_1.c.x << (~var_1.c.x % 32u))));
}


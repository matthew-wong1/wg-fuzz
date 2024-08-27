struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-1i, 2147483647i, -7277i), vec3<i32>(1i, 42950i, 24533i), vec3<i32>(0i, i32(-2147483648), -50739i), vec3<i32>(7001i, 1i, 0i), vec3<i32>(-35129i, 0i, -29169i), vec3<i32>(i32(-2147483648), -685i, i32(-2147483648)), vec3<i32>(0i, -51699i, 2147483647i), vec3<i32>(2147483647i, 21203i, -1i), vec3<i32>(-42314i, -24573i, i32(-2147483648)), vec3<i32>(2147483647i, 3899i, 34965i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(9073i, i32(-2147483648), 1i), vec3<i32>(-1i, -49980i, -6549i), vec3<i32>(1i, -33756i, 0i), vec3<i32>(-56248i, i32(-2147483648), 125334i), vec3<i32>(1i, 34066i, 27691i), vec3<i32>(-12789i, -959i, 418i), vec3<i32>(-12446i, 0i, 0i), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-17374i, 0i, -46221i));

var<private> global1: f32 = -195f;

var<private> global2: vec4<u32> = vec4<u32>(19920u, 48215u, 4294967295u, 1u);

var<private> global3: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(58372i, 0i, -1i, -32468i), vec4<i32>(-25623i, 2147483647i, -9620i, 16980i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(345f + arg_0.d.x), -229f));
    let var_1 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(10490u, u_input.a, 67788u), vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a, u_input.a, 40612u), vec4<u32>(u_input.a, u_input.a, 0u, 78561u), vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x)), ~vec4<u32>(50168u, 17822u, 0u, global2.x)), select(4294967295u, 8680u, arg_0.c.x) << (~1u % 32u), _wgslsmith_add_u32(max(global2.x, u_input.a), _wgslsmith_dot_vec2_u32(global2.xy, global2.zx))));
    global3 = array<vec4<i32>, 2>();
    var var_2 = 1027f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, -1385f, arg_0.d.x, arg_0.d.x), vec4<f32>(1216f, 2027f, 472f, 943f))))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * var_0.a)), -536f, _wgslsmith_f_op_f32(-arg_0.d.x))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_mult_u32(~(~countOneBits(~7858u)), 0u);
    global3 = array<vec4<i32>, 2>();
    return arg_0.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_3 {
    global2 = arg_1;
    global1 = arg_2.a;
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 4294967295u)), 21u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(Struct_4(var_0.yz, 53721i, select(vec3<bool>(false, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), ~39735u <= ~u_input.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(-arg_2.a)), vec2<f32>(arg_2.a, -812f))), Struct_3(_wgslsmith_mod_i32(1i, min(-13662i, -1i)))), _wgslsmith_add_i32(-(~9182i) << ((12823u ^ arg_1.x) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -2147483647i, 10540i), global0[_wgslsmith_index_u32((arg_1.x << (u_input.a % 32u)) >> (_wgslsmith_div_u32(global2.x, u_input.a) % 32u), 21u)]))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2(Struct_4(vec2<i32>(var_0.x, -34690i), abs(func_3(global0[_wgslsmith_index_u32(u_input.a, 21u)], var_1.yxy, var_1.x)), vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a)), arg_2.a), arg_0), arg_0.a)).x, -1124f, -vec4<i32>(-18403i, 31463i, arg_0.a, ~(arg_0.a | 26464i)));
    return Struct_3(_wgslsmith_mult_i32(abs(countOneBits(-13586i)), arg_0.a) >> (_wgslsmith_dot_vec3_u32(select(global2.xxx, vec3<u32>(53031u, 43817u, u_input.a), true), ~(~arg_1.xxy)) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    global3 = array<vec4<i32>, 2>();
    var var_0 = arg_0;
    var_0 = func_1(Struct_3(_wgslsmith_clamp_i32(2147483647i & (-1i >> (arg_2.x % 32u)), _wgslsmith_div_i32(arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(arg_0.a, arg_0.a))), max(-var_0.a, arg_0.a))), vec4<u32>(reverseBits(11953u), 13062u | u_input.a, _wgslsmith_clamp_u32(u_input.a, 10440u, u_input.a), 30552u >> (countOneBits(~62197u) % 32u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(208f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -708f)))));
    let var_1 = arg_1;
    var_0 = func_1(arg_0, vec4<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(global2.x), global2.x, arg_2.x), ~(~(~0u)), firstTrailingBit(~(~global2.x)), global2.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -409f)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f + 165f)) - -597f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1528f, 407f)) - _wgslsmith_f_op_f32(select(1213f, -1179f, true))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(-1000f * 582f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_3(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(38666i, -27959i), vec2<i32>(1i, -58373i)))), firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(13782u, 11485u, global2.x, global2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 0u, 0u, u_input.a), vec4<u32>(42173u, 0u, 0u, 1u)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1175f))), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_1(Struct_3(679i), vec4<u32>(global2.x, 1u, global2.x, 33456u), Struct_2(1684f)).a > 8766i), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), all(vec2<bool>(true, true))), vec3<u32>(0u, ~firstTrailingBit(1u), _wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), 160002u)));
    global1 = var_0.a;
    global1 = 1f;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -168f, var_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1590f, -712f, var_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1105f, var_0.a, var_0.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, var_0.a, var_0.a)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(trunc(-810f)), func_4(Struct_3(-2147483647i), vec2<bool>(true, false), vec3<u32>(u_input.a, u_input.a, 54538u)).a))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(var_0.a)))));
    var var_2 = Struct_4(vec2<i32>(abs(~(~0i)), -53574i), reverseBits(_wgslsmith_mod_i32(1i, 62067i) >> (~4294967295u % 32u)) << (abs(~reverseBits(global2.x)) % 32u), select(vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(all(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, true, true, true))), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1560f, 113f)), Struct_3(1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(30860u, ~_wgslsmith_mod_u32(62686u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~2857u, 4294967295u), vec2<u32>(reverseBits(global2.x), _wgslsmith_mult_u32(global2.x, 20556u))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), reverseBits(u_input.a)), ~(global2.zz | vec2<u32>(0u, 4294967295u)))), global2.x, _wgslsmith_f_op_vec4_f32(func_2(Struct_4(var_2.a, _wgslsmith_div_i32(~var_2.a.x, var_2.b), !select(vec3<bool>(false, true, var_2.c.x), var_2.c, var_2.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, var_2.d.x) + vec2<f32>(var_2.d.x, var_2.d.x))), var_2.e), _wgslsmith_mult_i32(~2147483647i, var_2.e.a))).x, ~_wgslsmith_div_i32(1i, ~var_2.e.a));
}


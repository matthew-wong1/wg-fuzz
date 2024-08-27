struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 4> = array<f32, 4>(-1003f, -594f, -212f, 1830f);

var<private> global2: Struct_3 = Struct_3(14172u, Struct_2(Struct_1(288f, 662f, -218f, vec3<u32>(1u, 23859u, 0u)), 19856u, 2147483647i, Struct_1(-245f, 324f, 888f, vec3<u32>(1u, 22318u, 22591u)), Struct_1(-114f, 373f, 170f, vec3<u32>(16721u, 1u, 4294967295u))), Struct_2(Struct_1(621f, -278f, 841f, vec3<u32>(32036u, 64507u, 67451u)), 4294967295u, 11099i, Struct_1(-1086f, -143f, 728f, vec3<u32>(4294967295u, 64363u, 0u)), Struct_1(-622f, -2165f, 3104f, vec3<u32>(88679u, 36457u, 64077u))));

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = countOneBits(~(~(vec3<i32>(u_input.b, arg_0, 10939i) >> (arg_1.a.d % vec3<u32>(32u)))));
    let var_1 = select(select(vec2<bool>(global3.x, any(select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, global3.x, true, true)))), !(!vec2<bool>(global3.x, global3.x)), global3.yx), global3.xy, vec2<bool>(!(!global3.x), true));
    var var_2 = Struct_3(47659u, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b.d.b))), arg_1.a.c, 128f, _wgslsmith_div_vec3_u32(global2.b.d.d, vec3<u32>(0u, 26446u, 50125u)) ^ ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)), 29877u, u_input.b, Struct_1(_wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(-352f - arg_1.a.a)), _wgslsmith_f_op_f32(global2.c.a.c + _wgslsmith_f_op_f32(arg_1.e.b * global1[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.b, -811f)) + _wgslsmith_f_op_f32(global2.c.e.a + -417f)), min(max(arg_1.e.d, arg_1.d.d), vec3<u32>(u_input.c.x, arg_1.e.d.x, global2.a) & vec3<u32>(1u, 505u, global2.b.a.d.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a.a - -433f)), global1[_wgslsmith_index_u32(u_input.c.x, 4u)], firstLeadingBit(select(global2.b.a.d, global2.b.a.d, vec3<bool>(false, global3.x, var_1.x))))), arg_1);
    var var_3 = Struct_3(abs(~select(~4294967295u, 36016u, global3.x)), Struct_2(arg_1.d, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global2.c.d.d.x, 0u, 1u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_1.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, global2.a, global2.b.a.d.x), vec4<u32>(62058u, 1u, 1u, u_input.c.x))), (global2.b.c | max(-1i, 2147483647i)) << (arg_1.d.d.x % 32u), arg_1.d, arg_1.d), arg_1);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-605f, var_2.c.e.c, -2679f), vec3<f32>(-213f, arg_1.a.a, global2.c.d.b))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.e.b, var_2.c.a.b, 609f), vec3<f32>(-2023f, -214f, global1[_wgslsmith_index_u32(26000u, 4u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1.b, 4u)], -155f, -394f))))) + vec3<f32>(var_3.b.d.b, 266f, 241f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1124f)), var_2.c.a.a, _wgslsmith_f_op_f32(897f * arg_1.d.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, -1046f, -151f))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1361f);
}

fn func_2() -> Struct_1 {
    let var_0 = -409i;
    global0 = !global3.x;
    global0 = all(vec4<bool>(global3.x, global3.x && global3.x, true, any(select(!vec4<bool>(global3.x, global3.x, true, true), !vec4<bool>(global3.x, global3.x, global3.x, global3.x), all(vec3<bool>(global3.x, global3.x, global3.x))))));
    var var_1 = global2.b.e.c;
    var_1 = _wgslsmith_div_f32(global2.c.e.c, -1114f);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(122f + 165f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.a.a), 1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global2.c.d.d.x, 4u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0i, global2.b))), 475f, vec3<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(36169u, abs(20980u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a, 1u, global2.a, u_input.a.x), u_input.a), ~vec4<u32>(global2.c.b, global2.c.a.d.x, 18202u, 4294967295u))), 32721u));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global3 = select(arg_1, select(arg_1, select(vec3<bool>(!global3.x, arg_1.x, false), arg_1, arg_1), global3.x), !vec3<bool>(arg_0.d, global3.x, any(!arg_1)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.b.a.a, 1000f))))), arg_2.e.b, _wgslsmith_f_op_f32(900f * 2225f)));
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    var var_1 = ~(~29316u);
    return ~u_input.b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = ~firstTrailingBit(func_4(Struct_4(vec2<i32>(global2.b.c, global2.b.c), Struct_2(global2.b.e, arg_0.a, arg_1.c, arg_0.c.e, global2.c.d), _wgslsmith_mult_u32(4294967295u, 1u), global3.x), !vec3<bool>(global3.x, global3.x, false), Struct_2(arg_1.a, 1u, 0i, func_2(), arg_0.c.e), Struct_2(func_2(), u_input.c.x, firstLeadingBit(u_input.b), Struct_1(global1[_wgslsmith_index_u32(13022u, 4u)], global1[_wgslsmith_index_u32(global2.b.b, 4u)], 1009f, u_input.c), global2.c.d)));
    var_0 = abs(~abs(~2147483647i >> (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)));
    let var_1 = any(select(vec4<bool>(!(global3.x && true), !select(true, false, global3.x), !any(vec2<bool>(true, false)), true), vec4<bool>(select(global3.x, true, !global3.x), global3.x, true, !all(vec2<bool>(global3.x, global3.x))), 12814i == global2.b.c));
    global2 = Struct_3(arg_0.a, Struct_2(func_2(), reverseBits(_wgslsmith_clamp_u32(~14422u, ~arg_1.e.d.x, 0u)), global2.c.c, func_2(), func_2()), global2.b);
    var var_2 = arg_0;
    return false;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = ~(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-36434i, -32729i), vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_mod_i32(u_input.b, 2147483647i))) | select(_wgslsmith_mult_vec2_i32(vec2<i32>(-57532i, global2.b.c) | vec2<i32>(35767i, -2147483647i), select(vec2<i32>(-3893i, -2147483647i), vec2<i32>(global2.c.c, global2.c.c), true)), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(global2.b.c, u_input.b), 4294967295u == u_input.c.x));
    var_0 = ~(-vec2<i32>(~_wgslsmith_mod_i32(u_input.b, 2147483647i), 2147483647i));
    var var_1 = Struct_4(vec2<i32>(global2.b.c, var_0.x), Struct_2(Struct_1(-2316f, -552f, -657f, arg_3.d ^ ~arg_3.d), countOneBits(~arg_3.d.x), -2147483647i, arg_3, global2.c.a), 26869u, -22248i <= global2.b.c);
    global2 = Struct_3(15679u, Struct_2(func_2(), var_1.b.e.d.x, var_1.b.c, Struct_1(_wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(step(arg_3.c, 1291f))), _wgslsmith_f_op_f32(round(-840f)), _wgslsmith_f_op_f32(min(-1384f, global1[_wgslsmith_index_u32(~31408u, 4u)])), arg_3.d), func_2()), Struct_2(arg_3, arg_3.d.x << (4294967295u % 32u), firstTrailingBit(u_input.b), var_1.b.a, var_1.b.d));
    var var_2 = Struct_4(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(57137i, -5745i), vec2<i32>(-1i, 1108i)), var_1.a), Struct_2(func_2(), arg_2, 4616i, Struct_1(_wgslsmith_f_op_f32(-105f - 1039f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a, -146f)), _wgslsmith_f_op_f32(-arg_3.b), vec3<u32>(~40983u, 58830u, firstLeadingBit(global2.a))), Struct_1(arg_3.c, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 4u)] + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 4u)], -1000f))), 403f, vec3<u32>(_wgslsmith_add_u32(11062u, global2.c.a.d.x), _wgslsmith_dot_vec2_u32(arg_3.d.xy, arg_3.d.zy), global2.b.d.d.x))), var_1.c, any(vec4<bool>(true, max(var_1.b.c, global2.b.c) < var_1.b.c, !all(vec2<bool>(false, global3.x)), false)));
    return Struct_3(var_2.b.d.d.x, Struct_2(Struct_1(-1967f, global2.b.e.c, global1[_wgslsmith_index_u32(1u, 4u)], countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.d.x, global2.b.b, arg_2), var_1.b.d.d))), arg_3.d.x, var_1.b.c | countOneBits(var_1.b.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.e.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(662f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.a)), ~max(var_1.b.e.d, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), var_2.b.d), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(global2.b.d.a * -2307f), select(global3.x, !func_1(Struct_3(global2.b.d.d.x, Struct_2(global2.c.d, global2.a, u_input.b, Struct_1(global2.c.d.c, global2.c.a.b, -1600f, global2.b.e.d), global2.c.e), Struct_2(Struct_1(-315f, -170f, global2.b.e.a, vec3<u32>(u_input.a.x, global2.a, 15649u)), global2.c.d.d.x, -2147483647i, Struct_1(-270f, 154f, -1533f, vec3<u32>(global2.b.b, global2.a, 47756u)), Struct_1(274f, global2.b.e.a, 763f, vec3<u32>(1u, 10086u, 0u)))), global2.b), any(!vec3<bool>(true, global3.x, false))) & global3.x, global2.c.d.d.x, Struct_1(-332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(func_3(-max(-1i, u_input.b), Struct_2(func_2(), global2.c.a.d.x, 1i, Struct_1(global2.c.e.a, global2.b.e.a, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.c), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], -2205f, vec3<u32>(4294967295u, 18512u, u_input.a.x))))), countOneBits(~vec3<u32>(u_input.a.x, global2.a, u_input.a.x))));
    global1 = array<f32, 4>();
    let var_1 = vec4<f32>(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1317f), global2.b.a.a), true, func_2().d.x, func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.e.a + global1[_wgslsmith_index_u32(global2.c.d.d.x, 4u)]))), true, ~(~u_input.c.x), func_2()).b.e).c.e.b, _wgslsmith_f_op_f32(max(-715f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 4u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(470f, global2.c.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(345f * -1000f) * _wgslsmith_f_op_f32(exp2(global2.c.e.a))))) * global2.c.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 4u)])));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~abs(vec2<i32>(u_input.b, -1i))), 16818u, var_0.b.a.c, 1u);
}


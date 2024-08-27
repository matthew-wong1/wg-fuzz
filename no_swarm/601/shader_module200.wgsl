struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(-23310i, 2147483647i, i32(-2147483648), -50368i), vec4<i32>(-29557i, 2147483647i, i32(-2147483648), 26360i), vec4<i32>(2147483647i, 1i, 27437i, -5452i), vec4<i32>(1i, 15802i, 35629i, -23649i), vec4<i32>(20808i, 2147483647i, -56504i, -1i), vec4<i32>(-1i, 5188i, -12654i, i32(-2147483648)));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    var var_0 = global2.x;
    let var_1 = _wgslsmith_f_op_f32(sign(595f));
    let var_2 = select(vec3<bool>(true, any(vec3<bool>(false, !global2.x, true)), all(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true), global2.x))), select(select(vec3<bool>(false, global2.x, !global2.x), vec3<bool>(global2.x, !global2.x, global2.x), select(true, !global2.x, global2.x)), !select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, global2.x, true), global2.x), true | (_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(45291u, 6u)], vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a)) != u_input.a)), vec3<bool>(all(vec4<bool>(false, false, false, true)) || true, all(vec4<bool>(global2.x | global2.x, true, true, true)), all(!(!vec3<bool>(global2.x, global2.x, global2.x)))));
    return 0u;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> vec4<f32> {
    var var_0 = func_3();
    var var_1 = 1u ^ ~arg_0.x;
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    let var_2 = Struct_2(Struct_1(~abs(24859u), select(vec2<bool>(arg_1 >= -920f, arg_2 < 42045u), select(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false)), select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true)), global2.x), select(vec2<bool>(true, true), select(vec2<bool>(true, global2.x), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec4<u32>(~(arg_2 << (1u % 32u)), arg_2, arg_2, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_2, 4294967295u), 6301u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(537f, global0[_wgslsmith_index_u32(arg_2, 22u)], global0[_wgslsmith_index_u32(21978u, 22u)], 342f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(576f, -739f, 635f, arg_1), vec4<f32>(global0[_wgslsmith_index_u32(arg_2, 22u)], -788f, arg_1, global0[_wgslsmith_index_u32(27496u, 22u)]), global2.x)), false)), _wgslsmith_div_vec4_f32(vec4<f32>(289f, -100f, 695f, global0[_wgslsmith_index_u32(arg_0.x, 22u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(6433u, 22u)], 359f, arg_1, global0[_wgslsmith_index_u32(arg_2, 22u)]), vec4<f32>(-297f, arg_1, global0[_wgslsmith_index_u32(46157u, 22u)], arg_1), false))), !select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(true, global2.x, false, global2.x), global2.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, -357f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -797f, global0[_wgslsmith_index_u32(1u, 22u)], arg_1) - vec4<f32>(322f, 596f, global0[_wgslsmith_index_u32(0u, 22u)], -350f))), -1072f > _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_2, 22u)]))))), Struct_1(0u << (_wgslsmith_sub_u32(~arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 18128u, 24123u), arg_0.xzw)) % 32u), select(vec2<bool>(true, all(vec3<bool>(false, false, true))), vec2<bool>(any(vec3<bool>(global2.x, false, global2.x)), global2.x), global2.x), firstTrailingBit(arg_0)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-393f, global0[_wgslsmith_index_u32(35977u, 22u)], arg_1))))))));
    return var_2.b;
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_u32(abs(~50411u), 3426u);
    global2 = vec2<bool>(!(true & global2.x), true);
    var var_1 = Struct_1(var_0, !select(!(!vec2<bool>(global2.x, global2.x)), !select(vec2<bool>(false, true), vec2<bool>(true, global2.x), vec2<bool>(true, global2.x)), vec2<bool>(all(vec3<bool>(global2.x, false, false)), global2.x)), ~min(abs(~vec4<u32>(0u, var_0, 50165u, var_0)), min(vec4<u32>(85324u, 0u, 4294967295u, 1u), vec4<u32>(16504u, 1u, var_0, 1u)) >> (~vec4<u32>(var_0, var_0, var_0, 0u) % vec4<u32>(32u))));
    var var_2 = false;
    let var_3 = vec3<u32>(4294967295u, ~0u, 1u);
    return Struct_2(Struct_1(21132u, !select(var_1.b, var_1.b, select(vec2<bool>(true, global2.x), var_1.b, var_1.b)), firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_1.a, var_1.c.x, 10949u), vec4<u32>(4294967295u, 0u, var_1.a, 4294967295u), vec4<u32>(4294967295u, var_0, var_0, var_3.x)), var_1.c))), arg_0, Struct_1(var_0, var_1.b, var_1.c), arg_0.yzx);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_1.d.x));
    var var_1 = Struct_2(Struct_1(~(~arg_1.c.a), !select(arg_1.c.b, func_4(vec4<f32>(-1000f, -1000f, -1211f, var_0)).c.b, all(vec4<bool>(true, false, arg_1.a.b.x, global2.x))), ~arg_1.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.a, 27099u, arg_1.a.a) << (vec3<u32>(arg_1.a.a, arg_1.a.a, 1u) % vec3<u32>(32u)), ~vec3<u32>(arg_1.a.c.x, 9195u, 6731u) & (vec3<u32>(arg_1.c.a, arg_1.c.a, arg_1.c.c.x) >> (arg_1.c.c.zwz % vec3<u32>(32u)))), arg_1.a.b, _wgslsmith_clamp_vec4_u32(~(~arg_1.c.c), max(arg_1.c.c, abs(vec4<u32>(1u, arg_1.c.a, 0u, 27503u))), arg_1.c.c)), _wgslsmith_f_op_vec3_f32(-arg_1.d));
    var var_2 = arg_1;
    var var_3 = vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, 6873i), min(97684i, u_input.a)) < -min(reverseBits(2147483647i), u_input.a), !any(vec2<bool>(true, true)), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, global2.x), var_1.a.b.x)) || (-791f <= arg_1.d.x), false);
    var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-472f * var_0), _wgslsmith_f_op_f32(f32(-1f) * -166f))) * 1768f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-674f))), _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(666f)) + _wgslsmith_f_op_f32(arg_1.d.x * var_0))), var_0));
    return func_4(arg_1.b).c;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> vec4<f32> {
    var var_0 = func_5(firstLeadingBit(vec3<i32>(1i, -14656i | u_input.a, max(~arg_1, 2147483647i))), func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2(max(vec4<u32>(1u, 35762u, 17561u, 61397u), vec4<u32>(4294967295u, 0u, 1u, 0u)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9641u, 22u)] - global0[_wgslsmith_index_u32(4294967295u, 22u)]), 14913u)), vec4<f32>(_wgslsmith_f_op_f32(sign(716f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 56723u), 22u)], 846f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)] + global0[_wgslsmith_index_u32(20089u, 22u)]))))), -2147483647i);
    let var_1 = func_5(vec3<i32>(-u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1, arg_1, -34367i) << ((vec3<u32>(4365u, var_0.c.x, var_0.c.x) >> (var_0.c.www % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~vec3<i32>(0i, u_input.a, arg_1), vec3<i32>(u_input.a, u_input.a, 47845i) ^ vec3<i32>(0i, u_input.a, 37428i))), 31808i), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c.x, 22u)]), _wgslsmith_f_op_f32(ceil(-392f)), 757f) - vec4<f32>(_wgslsmith_f_op_f32(-269f - global0[_wgslsmith_index_u32(31954u, 22u)]), -1317f, _wgslsmith_f_op_f32(sign(241f)), _wgslsmith_div_f32(1396f, -1000f)))), arg_1);
    global2 = arg_0;
    global1 = array<vec4<i32>, 6>();
    let var_2 = Struct_1(~_wgslsmith_clamp_u32(0u, var_1.a, _wgslsmith_add_u32(1u, 11514u)), var_0.b, vec4<u32>(~var_0.a, 1u, 28657u, 4294967295u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 1067f, -1164f, func_4(vec4<f32>(global0[_wgslsmith_index_u32(var_1.a, 22u)], global0[_wgslsmith_index_u32(var_0.c.x, 22u)], -1000f, global0[_wgslsmith_index_u32(var_0.c.x, 22u)])).b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(select(!vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), false), i32(-1i) * -28269i, select(true, true, !global2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(true, true), ~u_input.a, global2.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, 789f, 1522f, global0[_wgslsmith_index_u32(13804u, 22u)]) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(72451u, 22u)], global0[_wgslsmith_index_u32(80642u, 22u)])))))));
    var var_1 = 1u < _wgslsmith_sub_u32(firstTrailingBit(~46060u), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec3_i32(~vec3<i32>(~9606i, ~0i, -2147483647i), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, 27052i, -2147483647i)))), -vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-8015i, -1i, 48554i), vec3<i32>(1i, u_input.a, 28440i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-16023i, u_input.a, u_input.a), vec3<i32>(16880i, u_input.a, 45903i))), u_input.a), vec3<u32>(func_3(), select(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_add_u32(~1u, func_4(var_0).a.a), true), 1u));
}


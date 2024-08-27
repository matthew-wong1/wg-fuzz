struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_4;

var<private> global3: array<bool, 15>;

var<private> global4: Struct_1 = Struct_1(9238u, true, vec3<f32>(-613f, 1246f, 1308f), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global1 = u_input.c;
    global0 = 1f;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(sign(arg_0.a.c.x)), global2.d.a.c.x, global4.c.x)) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.c.x), _wgslsmith_f_op_f32(sign(global4.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f + -717f)), arg_0.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.d.a.c.x - global2.d.a.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.d.a.c.x, 482f, 201f, -908f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2470f, 144f, 453f, 163f), vec4<f32>(-927f, -234f, global2.d.a.c.x, global2.d.a.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, global4.c.x, 876f, global2.d.a.c.x) - vec4<f32>(global2.d.a.c.x, -1357f, global4.c.x, arg_0.a.c.x)))) - vec4<f32>(-618f, -1337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(536f, -309f)))))), all(global2.d.c.yx)));
    let var_1 = global4.c;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(903f, 767f, _wgslsmith_f_op_f32(trunc(203f)), var_0.x), vec4<f32>(-1482f, -1810f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), var_1.x)))));
    return vec4<bool>(true && !any(global2.c.a.xx), select(true, arg_0.e.x | !global2.b.x, !select(false, arg_0.a.b, false)) | all(!arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global2.d.a.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1243f)) < 1000f, !(!(!global4.b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_5 {
    global2 = Struct_4(_wgslsmith_add_u32(7591u, global4.d.x) == _wgslsmith_mod_u32(abs(_wgslsmith_add_u32(1u, global4.d.x)), u_input.b), select(select(select(select(vec4<bool>(false, global2.a, false, arg_3), global2.b, global2.b), vec4<bool>(false, false, true, false), -759f == arg_0.x), select(select(global2.b, global2.b, global2.b), select(vec4<bool>(true, global2.c.a.x, true, false), global2.b, true), arg_3 || arg_2), arg_2), vec4<bool>(!global4.b, select(arg_3, any(vec2<bool>(arg_3, true)), select(false, global3[_wgslsmith_index_u32(u_input.b, 15u)], global4.b)), any(global2.b), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~4294967295u), 15u)]), func_3(Struct_2(Struct_1(6286u, false, global4.c, vec2<u32>(u_input.d, 4294967295u)), global2.b.zz, !global2.c.a, global4.d.x, !global2.c.a.zx))), global2.c, global2.d);
    var var_0 = global2.b.zzy;
    let var_1 = global2.d.a;
    let var_2 = Struct_2(global2.d.a, !var_0.xy, !vec3<bool>(false, global2.d.e.x, var_1.b), 8628u, var_0.yy);
    let var_3 = var_2.a.c.yy;
    return Struct_5(Struct_4(arg_2, vec4<bool>(arg_2, arg_1 < 56756i, var_0.x, any(!vec4<bool>(var_1.b, true, var_2.a.b, var_1.b))), global2.c, var_2));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: bool) -> Struct_2 {
    var var_0 = abs(reverseBits(~(~u_input.e.x)) ^ global4.a);
    var var_1 = abs(~_wgslsmith_sub_u32(28035u, global4.a));
    global3 = array<bool, 15>();
    global3 = array<bool, 15>();
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(920f - -925f), _wgslsmith_div_f32(global2.d.a.c.x, global2.d.a.c.x), global4.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(586f, arg_1.a.d.a.c.x))))), _wgslsmith_add_i32(-17926i, countOneBits(global1.x)), arg_1.a.c.a.x & all(global2.d.c), false).a;
    return Struct_2(global2.d.a, vec2<bool>(var_2.d.c.x, func_2(global4.c.xy, firstTrailingBit(arg_0), arg_1.a.d.b.x, false).a.d.e.x), func_2(_wgslsmith_f_op_vec2_f32(var_2.d.a.c.xx - arg_1.a.d.a.c.yz), 30358i, !var_2.b.x, any(!vec2<bool>(arg_1.a.b.x, arg_2))).a.d.c, ~4294967295u >> ((_wgslsmith_div_u32(global2.d.a.d.x, _wgslsmith_clamp_u32(u_input.b, 1u, global4.d.x)) & ((global4.a >> (1u % 32u)) ^ min(20939u, 2252u))) % 32u), var_2.d.e);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = -1i;
    var var_1 = Struct_1(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 15u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.c.x, 289f, 1684f))))), global4.d >> (vec2<u32>(1u, ~global4.a << ((u_input.b ^ global2.d.a.d.x) % 32u)) % vec2<u32>(32u)));
    var var_2 = Struct_4(true, vec4<bool>(global2.d.d < ~global4.a, false, false, !all(select(vec3<bool>(false, true, true), global2.c.a, arg_2.xww))), Struct_3(vec3<bool>(all(vec4<bool>(false, false, arg_0.x, global4.b)), false, var_1.a != 36305u)), func_4(~(global1.x | -global1.x), func_2(vec2<f32>(-351f, -760f), -27749i, global2.d.e.x, false), _wgslsmith_dot_vec2_u32(var_1.d, ~global2.d.a.d) >= 61034u));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global4.c.x + 1540f), global2.d.a.c.x, _wgslsmith_f_op_f32(floor(global4.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, vec3<f32>(var_1.c.x, global4.c.x, 1000f)) - _wgslsmith_div_vec3_f32(global2.d.a.c, vec3<f32>(1408f, 1000f, global4.c.x))), arg_0.x))));
    var var_4 = min(4294967295u, 57555u);
    return Struct_1(_wgslsmith_add_u32(global4.d.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.a.d.x, global2.d.a.d.x, 1u, 4294967295u), u_input.e))), u_input.c.x == u_input.c.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_4(~(-75377i), Struct_5(Struct_4(arg_1.a.x, global2.b, Struct_3(arg_2.wxy), var_2.d)), true | var_1.b).a.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1115f))), _wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.a.c.x, -947f, global4.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-787f, var_2.d.a.c.x, global2.d.a.c.x)), vec3<bool>(var_2.b.x, false, true))), _wgslsmith_f_op_vec3_f32(trunc(var_2.d.a.c)), arg_1.a)), arg_1.a)), ~var_2.d.a.d);
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = firstTrailingBit(u_input.c);
    var var_1 = u_input.e.yyy;
    let var_2 = u_input.a.x;
    let var_3 = vec4<i32>(min(-(_wgslsmith_clamp_i32(1i, global1.x, -22091i) << (func_2(vec2<f32>(global4.c.x, global2.d.a.c.x), 2147483647i, true, false).a.d.a.a % 32u)), ~u_input.a.x), var_0.x, ~abs(var_0.x), -_wgslsmith_mod_i32(i32(-1i) * -global1.x, ~(~var_2)));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 15>();
    var var_0 = -u_input.c;
    let var_1 = Struct_2(global2.d.a, vec2<bool>(global4.b, false), select(global2.b.ywx, global2.b.zyz, all(global2.b)), 4294967295u, select(vec2<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 15u)], false, global4.b, true)) | true, (global2.d.c.x || global3[_wgslsmith_index_u32(u_input.e.x, 15u)]) && any(vec2<bool>(global4.b, false))), vec2<bool>(!(global4.b || global4.b), !global3[_wgslsmith_index_u32(global4.d.x, 15u)]), all(!select(global2.d.c, global2.b.yxx, global4.b))));
    global2 = Struct_4(!global2.d.c.x, global2.b, func_5(func_1(!(!global2.c.a.zx), Struct_3(select(global2.d.c, var_1.c, vec3<bool>(true, global4.b, false))), select(select(global2.b, vec4<bool>(global4.b, true, global4.b, var_1.a.b), global2.b), !global2.b, vec4<bool>(global2.a, global3[_wgslsmith_index_u32(var_1.a.a, 15u)], var_1.e.x, true)))), Struct_2(Struct_1(reverseBits(10652u << (global4.d.x % 32u)), !var_1.b.x, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1149f, global4.c.x)), 1i, var_1.e.x, 13253u > global2.d.d).a.d.a.c, global4.d), vec2<bool>(true, global2.b.x), func_4(13845i, func_2(vec2<f32>(-1465f, -524f), ~var_0.x, true, true), select(true, false, all(var_1.c))).c, global4.a, vec2<bool>(true & global2.d.b.x, global4.b)));
    var var_2 = Struct_4(var_1.a.b, vec4<bool>(global2.c.a.x, global3[_wgslsmith_index_u32(~global2.d.d, 15u)], var_1.b.x, global2.d.b.x | global4.b), func_5(var_1.a), global2.d);
    var var_3 = Struct_4(true && !(!(u_input.d < 4981u)), vec4<bool>(func_4(_wgslsmith_sub_i32(global1.x, u_input.c.x), func_2(var_1.a.c.xy, -41565i, true, global3[_wgslsmith_index_u32(1u, 15u)]), global4.b).a.b || ((var_1.a.d.x << (5725u % 32u)) != u_input.d), -1561f > _wgslsmith_f_op_f32(-var_1.a.c.x), any(!(!vec4<bool>(false, var_1.e.x, false, global4.b))), all(var_2.d.c)), func_5(Struct_1(~(u_input.e.x ^ 1u), any(vec4<bool>(true, false, false, global4.b)), var_2.d.a.c, ~u_input.e.yw)), Struct_2(Struct_1(u_input.d, true, global4.c, u_input.e.zz), vec2<bool>(var_2.a | true, -1291f != var_1.a.c.x), func_2(vec2<f32>(_wgslsmith_f_op_f32(-global2.d.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -591f)), abs(u_input.c.x), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(28367u, ~global2.d.a.d.x), 15u)], any(var_2.b)).a.d.c, 0u, vec2<bool>(!(!global2.d.a.b), (var_2.d.d != var_1.a.a) | (-713f != var_2.d.a.c.x))));
    var var_4 = vec3<bool>(true, false, !all(!vec4<bool>(true, var_1.e.x, global2.b.x, global3[_wgslsmith_index_u32(var_3.d.a.a, 15u)])));
    let var_5 = 1000f;
    var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-292f, 997f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.a.c.x * _wgslsmith_f_op_f32(-global4.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.a.c.x, -501f)))), ~(~_wgslsmith_div_i32(~u_input.c.x, 33106i)), true, func_5(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.d), global2.d.a.d), vec2<u32>(51372u, global4.a)), false || any(vec4<bool>(global2.a, false, global3[_wgslsmith_index_u32(4294967295u, 15u)], global2.c.a.x)), _wgslsmith_f_op_vec3_f32(round(func_1(var_1.c.zz, var_2.c, global2.b).c)), vec2<u32>(~1594u, 4294967295u))).a.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(abs(reverseBits(-2147483647i)), _wgslsmith_add_i32(var_0.x, -2147483647i), var_0.x, max(countOneBits(32959i), var_0.x))), min(vec4<i32>(min(1i, global1.x), ~32258i, global1.x, ~u_input.a.x), ~u_input.c) >> (u_input.e % vec4<u32>(32u)), ~global2.d.a.d, u_input.e.ywy, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~45224i, -countOneBits(-11189i), u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(-33170i, 0i), -4000i) & var_0.x));
}


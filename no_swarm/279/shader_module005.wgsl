struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1u), Struct_1(1916u), Struct_1(0u));

var<private> global1: array<f32, 31>;

var<private> global2: array<bool, 15> = array<bool, 15>(false, true, false, true, true, true, false, false, false, false, true, false, false, true, false);

var<private> global3: array<bool, 24>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, -1i), vec3<i32>(-2147483647i, u_input.b, -37139i))), vec3<i32>(13293i, reverseBits(u_input.b), u_input.b ^ u_input.b)), vec3<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -10649i), vec2<i32>(22649i, 0i)), abs(u_input.b)), 0i, -u_input.b)), min(vec3<i32>(1i, -63729i, u_input.b), vec3<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, -11855i, u_input.b)) | abs(1i), -(~14547i))));
    let var_1 = vec2<bool>(true, true);
    global3 = array<bool, 24>();
    var var_2 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_2.a, 31u)], 1f, any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 24u)], var_1.x))));
    global3 = array<bool, 24>();
    return any(!select(!(!var_1), select(!vec2<bool>(arg_0.b, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), var_1, true), vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = array<f32, 31>();
    let var_0 = arg_0.d;
    global1 = array<f32, 31>();
    let var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, 29200i) ^ vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(6237i, -1i))), -max(vec2<i32>(u_input.b, 40619i) >> (vec2<u32>(arg_0.c, 1u) % vec2<u32>(32u)), vec2<i32>(-1i, 2147483647i)));
    let var_2 = arg_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 31u)], -324f)));
}

fn func_2() -> bool {
    var var_0 = ~(~u_input.a.x);
    var var_1 = _wgslsmith_sub_i32(-19874i, 1i);
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2276f + _wgslsmith_f_op_f32(1368f - -642f))))) <= _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(select(1u, var_2.a, global3[_wgslsmith_index_u32(0u, 24u)])), true, var_2.a, func_3(Struct_2(Struct_1(u_input.a.x), false, 2755u, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), true, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]) || any(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 15u)], false)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1589f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] - _wgslsmith_f_op_f32(-599f * -498f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-304f)))))))));
    return all(select(vec4<bool>(any(select(vec3<bool>(global3[_wgslsmith_index_u32(7595u, 24u)], global3[_wgslsmith_index_u32(35387u, 24u)], true), vec3<bool>(global3[_wgslsmith_index_u32(var_2.a, 24u)], false, false), false)), global2[_wgslsmith_index_u32(~39889u, 15u)], true && all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], false, false, global2[_wgslsmith_index_u32(95895u, 15u)])), any(!vec3<bool>(global3[_wgslsmith_index_u32(var_2.a, 24u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]))), select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 24u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 24u)], true), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.c.x, 24u)], true)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], false, global2[_wgslsmith_index_u32(var_2.a, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), global2[_wgslsmith_index_u32(firstTrailingBit(~0u), 15u)]), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a, 90187u), 15u)]));
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(~1u), 3u)];
    global2 = array<bool, 15>();
    global1 = array<f32, 31>();
    let var_1 = select(vec3<bool>(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(23083i, 0i, -26372i), vec3<i32>(u_input.b, u_input.b, u_input.b)), u_input.b) < u_input.b, true, global2[_wgslsmith_index_u32(var_0.a, 15u)]), vec3<bool>(any(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(28312u, 15u)], false, global2[_wgslsmith_index_u32(var_0.a, 15u)])) & !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.a.xyx), 24u)], ~_wgslsmith_mult_i32(-12607i, u_input.b) == u_input.b, func_2()), !select(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_0.a, 15u)])), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(var_0.a, 15u)]), false), -521f > _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] - -1142f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(var_0.a, 31u)], -1501f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(-186f, 257f, -741f), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], -1196f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])))))));
    return global0[_wgslsmith_index_u32(0u, 3u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = ~countOneBits(~vec3<i32>(abs(1i), -55919i << (arg_2.a % 32u), -25243i));
    let var_1 = vec4<u32>(u_input.c.x, arg_2.a >> (countOneBits(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(4294967295u, u_input.c.x))) % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x | 0u, ~43338u)), arg_0), _wgslsmith_mult_u32(firstTrailingBit(~60295u), arg_0.x));
    var var_2 = -14896i;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(687f, -1024f, -1954f, 2364f), vec4<f32>(arg_1, 419f, arg_1, arg_1)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-354f, _wgslsmith_f_op_f32(sign(-953f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + 554f))), _wgslsmith_f_op_f32(ceil(-1589f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(927f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1333f))), -342f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1[_wgslsmith_index_u32(4294967295u, 31u)], 488f, -868f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2530f, global1[_wgslsmith_index_u32(arg_2.a, 31u)], -1140f, var_3.x)))))));
    return vec2<bool>(_wgslsmith_div_f32(789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))) == _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(74346u, 31u)]), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~u_input.a.x | firstTrailingBit(~u_input.c.x));
    global0 = array<Struct_1, 3>();
    let var_1 = select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)] > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)] + global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), true), func_5(~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 31u)]) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1162f, -557f) * _wgslsmith_f_op_f32(-739f + global1[_wgslsmith_index_u32(1u, 31u)]))), func_1(), select(vec2<bool>(global2[_wgslsmith_index_u32(reverseBits(15288u), 15u)], true), !vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)]), global2[_wgslsmith_index_u32(~var_0, 15u)] || true)), vec2<bool>(true, true));
    global3 = array<bool, 24>();
    var var_2 = func_1();
    var var_3 = max(~max(var_2.a, 1u), _wgslsmith_add_u32(var_2.a, 1u));
    let var_4 = vec4<bool>(true, func_2(), !func_3(Struct_2(Struct_1(30212u), global3[_wgslsmith_index_u32(~0u, 24u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, 79810u), vec4<u32>(var_2.a, 1u, 0u, 28270u)), any(vec3<bool>(true, true, global3[_wgslsmith_index_u32(1u, 24u)]))), !any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(var_2.a, 24u)], true, true)), Struct_1(~u_input.a.x)), u_input.b < ~(-(50273i << (var_2.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.a, _wgslsmith_add_u32(var_2.a, u_input.a.x)) << (u_input.a.xx % vec2<u32>(32u)), ~u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(35659u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]))), vec3<f32>(-680f, -657f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)])))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(64654u, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(27180u), true, var_0, var_1.x))) + _wgslsmith_f_op_f32(-1549f - 145f))), u_input.b < _wgslsmith_mult_i32(countOneBits(1i), ~2147483647i))));
}


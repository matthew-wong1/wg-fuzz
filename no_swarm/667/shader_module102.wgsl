struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(927f, 1881f, 1093f, -842f, 1703f, 1136f, -294f, -398f, 1071f, -1978f, -388f, 1048f, -402f, -501f, 490f, 948f, 1770f, -480f, -828f);

var<private> global1: Struct_3 = Struct_3(vec2<u32>(27177u, 56904u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global1 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(~(~71057u), ~(~global1.a.x)), ~(~vec2<u32>(global1.a.x, 31095u)) >> (vec2<u32>(abs(u_input.c), max(arg_0.b.x, 13348u)) % vec2<u32>(32u))));
    var var_0 = -_wgslsmith_clamp_vec3_i32(select(-(~vec3<i32>(52317i, -12055i, -19066i)), vec3<i32>(arg_0.d << (43781u % 32u), -2147483647i, 0i), select(!arg_0.c.a, vec3<bool>(true, true, false), arg_0.c.a.x)), -u_input.a, ~(~(-u_input.a)));
    var var_1 = var_0.x & ~2147483647i;
    return Struct_3(vec2<u32>(~0u, abs(69631u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = ~u_input.a;
    global1 = func_2(Struct_4(Struct_1(vec3<bool>(true, true, true)), firstTrailingBit(global1.a), Struct_1(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), false)), u_input.e));
    var_0 = _wgslsmith_div_vec3_i32(u_input.a, countOneBits(u_input.a));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3760f, arg_2, global0[_wgslsmith_index_u32(arg_3, 19u)], arg_2) * vec4<f32>(arg_2, arg_1, global0[_wgslsmith_index_u32(arg_3, 19u)], -730f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1103f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], arg_2) - vec4<f32>(-1343f, arg_1, global0[_wgslsmith_index_u32(global1.a.x, 19u)], -1027f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -278f, arg_2, arg_2))) * vec4<f32>(arg_1, 749f, 209f, 374f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_2, var_1.a.x, -1000f), var_1.a, true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, 1045f, global0[_wgslsmith_index_u32(46861u, 19u)]), var_1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-342f, global0[_wgslsmith_index_u32(1u, 19u)], -783f, -1030f) + var_1.a)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1586f - _wgslsmith_f_op_f32(f32(-1f) * -947f)) + _wgslsmith_f_op_f32(step(var_1.a.x, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))) + _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~u_input.b.x, 19u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)])))), 435f, var_1.a.x));
    return Struct_1(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: u32) -> vec4<i32> {
    global1 = func_2(Struct_4(Struct_1(arg_0.a), vec2<u32>(arg_1.x, global1.a.x), arg_0, u_input.a.x));
    var var_0 = Struct_2(firstLeadingBit(select(624i, countOneBits(u_input.e), arg_0.a.x)) ^ u_input.e);
    var_0 = Struct_2(var_0.a);
    global1 = func_2(Struct_4(Struct_1(func_3(func_2(Struct_4(Struct_1(arg_0.a), vec2<u32>(global1.a.x, u_input.b.x), Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), var_0.a)), -1767f, _wgslsmith_f_op_f32(-166f + global0[_wgslsmith_index_u32(4294967295u, 19u)]), firstLeadingBit(arg_1.x)).a), _wgslsmith_div_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_3), arg_1.yx, vec2<u32>(7531u, 3733u)), ~vec2<u32>(arg_1.x, 1u), arg_0.a.x), vec2<u32>(global1.a.x, 1u)), arg_0, var_0.a));
    let var_1 = _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, arg_1.x, 123242u), _wgslsmith_div_vec3_u32(vec3<u32>(min(1u, ~40891u), u_input.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(11306u, global1.a.x, arg_3, arg_3), vec4<u32>(arg_1.x, 1u, 6488u, 4294967295u))), vec3<u32>(arg_3, ~_wgslsmith_div_u32(4294967295u, 7640u), 12791u)));
    return min(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -36088i, var_0.a, -2147483647i) | -vec4<i32>(2147483647i, var_0.a, -22460i, 1i), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.e), u_input.a.x, -2147483647i, var_0.a))), ~countOneBits(-reverseBits(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, u_input.e))));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(abs(25931u), ~(~min(arg_0, u_input.b.x))));
    var var_1 = Struct_2(func_4(Struct_1(vec3<bool>(any(vec2<bool>(false, false)), false, all(vec2<bool>(true, true)))), vec3<u32>(45182u, 0u, _wgslsmith_mod_u32(686u, 4294967295u)) << (vec3<u32>(global1.a.x, global1.a.x, var_0) % vec3<u32>(32u)), Struct_5(vec4<f32>(global0[_wgslsmith_index_u32(global1.a.x, 19u)], _wgslsmith_div_f32(-1537f, -1000f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 46479u), 19u)], -535f)), min(u_input.d, 1u)).x);
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(arg_0, 19u)], 296f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(arg_0, 19u)], 918f, global0[_wgslsmith_index_u32(1028u, 19u)]))) * vec4<f32>(-1073f, _wgslsmith_f_op_f32(floor(-771f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(98569u, 19u)] + global0[_wgslsmith_index_u32(global1.a.x, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 19u)] * 398f)))));
    let var_3 = Struct_4(func_3(func_2(Struct_4(func_3(Struct_3(u_input.b.yx), -1024f, var_2.a.x, 0u), vec2<u32>(1u, u_input.d), func_3(Struct_3(vec2<u32>(3531u, global1.a.x)), 641f, 608f, 1314u), u_input.a.x << (var_0 % 32u))), 136f, var_2.a.x, select(countOneBits(~0u), 4294967295u, true)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(func_2(Struct_4(Struct_1(vec3<bool>(true, true, false)), vec2<u32>(24279u, 4294967295u), Struct_1(vec3<bool>(false, true, true)), -1i)).a, ~(~vec2<u32>(u_input.c, global1.a.x))), global1.a), Struct_1(func_3(Struct_3(~u_input.b.zx), _wgslsmith_f_op_f32(var_2.a.x + global0[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_f_op_f32(abs(-1925f)), ~min(15668u, global1.a.x)).a), arg_1.x);
    var var_4 = !vec2<bool>(var_3.a.a.x, all(select(!vec4<bool>(var_3.c.a.x, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(var_3.a.a.x, var_3.a.a.x, var_3.a.a.x, true), vec4<bool>(true, false, false, var_3.c.a.x)), select(vec4<bool>(var_3.a.a.x, false, false, var_3.c.a.x), vec4<bool>(false, var_3.c.a.x, var_3.a.a.x, false), true))));
    return var_3.a.a.x;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = select(true, func_5(global1.a.x, func_4(func_3(func_2(Struct_4(Struct_1(vec3<bool>(true, true, false)), u_input.b.yy, Struct_1(vec3<bool>(true, false, true)), 6811i)), _wgslsmith_div_f32(-2336f, global0[_wgslsmith_index_u32(u_input.d, 19u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a.x, global1.a.x), 19u)], ~global1.a.x), vec3<u32>(1u, global1.a.x, 4294967295u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 41831u, u_input.c), vec3<u32>(u_input.c, 0u, 6033u)), Struct_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 300f, arg_0, arg_0), vec4<f32>(global0[_wgslsmith_index_u32(29051u, 19u)], 1000f, -238f, global0[_wgslsmith_index_u32(38299u, 19u)])))), 1u)), ~_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_div_u32(61545u, 45498u), u_input.d) > ~(~u_input.d));
    var var_1 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1551f))) + arg_0) >= _wgslsmith_f_op_f32(-730f * -1368f), !(!(_wgslsmith_f_op_f32(832f - -629f) != _wgslsmith_f_op_f32(trunc(arg_0)))), true);
    var_1 = true;
    let var_2 = ~(u_input.b >> (u_input.b % vec4<u32>(32u)));
    var_0 = any(vec2<bool>(!(!(global0[_wgslsmith_index_u32(8453u, 19u)] > arg_0)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-415f * -262f), 647f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1545f) + arg_0), _wgslsmith_f_op_f32(421f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(14890u, 19u)], arg_0))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_4(func_3(func_2(Struct_4(func_3(Struct_3(vec2<u32>(1u, 7474u)), 1140f, -999f, global1.a.x), global1.a, Struct_1(vec3<bool>(true, false, true)), arg_0.a)), -427f, 597f, arg_2), vec2<u32>(firstTrailingBit(1u), 1u), func_3(Struct_3(_wgslsmith_sub_vec2_u32(~u_input.b.zy, global1.a & vec2<u32>(arg_2, 4294967295u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(53669u, 19u)] - 2211f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)]))), 1885f, true)), 40184u), arg_0.a);
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(-arg_0.a | -u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, 0i), u_input.a.xy)) | 6346i);
    global0 = array<f32, 19>();
    return Struct_3(u_input.b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    global1 = Struct_3(vec2<u32>(global1.a.x, abs(~countOneBits(global1.a.x))));
    global1 = func_6(Struct_2(1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(1000f))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(206f)).x, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~16104u, 19u)])), _wgslsmith_f_op_f32(2192f * -181f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23480u ^ u_input.b.x, 19u)] * global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))), countOneBits(_wgslsmith_mod_u32(30267u, 7804u)), ~min(~_wgslsmith_dot_vec3_u32(u_input.b.ywz, u_input.b.wzz), reverseBits(0u)));
    let var_0 = _wgslsmith_f_op_f32(921f + 129f);
    var var_1 = !vec3<bool>(false, !((u_input.e >> (u_input.c % 32u)) > firstLeadingBit(-23493i)), u_input.b.x > _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global1.a.x, 36309u)), global1.a));
    global1 = Struct_3(min(u_input.b.yw, abs(vec2<u32>(u_input.c, 4294967295u))));
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d, 0u), u_input.d), 1u, 4294967295u), u_input.b.zyw);
    var var_3 = Struct_2(u_input.e);
    var var_4 = Struct_4(func_3(Struct_3(~reverseBits(global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(35947u, 19u)], -968f)) * -1399f) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(43646u, 19u)]))))), u_input.d), vec2<u32>(abs(u_input.c), ~func_6(Struct_2(60055i), _wgslsmith_div_vec4_f32(vec4<f32>(-549f, -1183f, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(6844u, 19u)]), vec4<f32>(-473f, 822f, global0[_wgslsmith_index_u32(11431u, 19u)], 2290f)), min(global1.a.x, 1u), 42786u).a.x), Struct_1(func_3(Struct_3(_wgslsmith_div_vec2_u32(global1.a, u_input.b.zz)), _wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-573f + 138f))), _wgslsmith_dot_vec3_u32(u_input.b.yzz << (u_input.b.ywz % vec3<u32>(32u)), abs(vec3<u32>(global1.a.x, global1.a.x, u_input.c)))).a), reverseBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(func_6(Struct_2(u_input.e), vec4<f32>(var_0, 671f, -305f, -883f), 21226u, u_input.c).a.x, 16100u, _wgslsmith_div_u32(global1.a.x, 56085u), u_input.c), u_input.b), -(vec3<i32>(-2147483647i, 23403i, _wgslsmith_mult_i32(1i, -1i)) & reverseBits(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(48296u, 19u)] + _wgslsmith_div_f32(-752f, -1337f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1011f * 2279f)), var_0))));
}


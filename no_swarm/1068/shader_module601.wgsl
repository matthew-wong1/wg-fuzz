struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2380i, vec2<i32>(-18404i, -1i), Struct_2(vec2<u32>(1008u, 68791u), vec4<bool>(false, true, true, true), false, 51215u));

var<private> global1: array<Struct_2, 27>;

var<private> global2: f32 = 1264f;

var<private> global3: array<f32, 12>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> i32 {
    global3 = array<f32, 12>();
    return u_input.d.x;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global2 = 125f;
    global0 = Struct_4(select(func_3(Struct_2(_wgslsmith_add_vec2_u32(u_input.b.zx, u_input.b.zx), select(global0.c.b, global0.c.b, vec4<bool>(arg_0, true, true, arg_0)), any(vec2<bool>(true, false)), 22214u), Struct_1(true, global0.c.b.x, true), Struct_2(~vec2<u32>(4294967295u, 0u), !vec4<bool>(true, true, false, global0.c.b.x), global0.c.c != false, ~50056u), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0.c.a.x, 12u)], _wgslsmith_f_op_f32(select(-171f, global3[_wgslsmith_index_u32(global0.c.a.x, 12u)], true)))), u_input.d.x >> (u_input.b.x % 32u), !(global0.c.c && all(global0.c.b.wyx))), global0.b, global0.c);
    global3 = array<f32, 12>();
    global0 = Struct_4(40918i, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.a), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(global0.b.x, 2147483647i)))) | select(firstTrailingBit(u_input.d.yy), -select(vec2<i32>(0i, -22750i), u_input.d.zy, arg_0), !(!arg_0)), Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy & vec2<u32>(global0.c.a.x, 0u), reverseBits(vec2<u32>(58594u, u_input.b.x))), _wgslsmith_sub_u32(~0u, 47960u)), global0.c.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyz, u_input.b), 12u)] >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(0u, 12u)])))), 34513u));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0.c.d, 12u)], 1000f), global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), global3[_wgslsmith_index_u32(~(u_input.b.x ^ 1u), 12u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.c.a.x, 12u)] + global3[_wgslsmith_index_u32(global0.c.a.x, 12u)]), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(global0.c.a.x, 12u)]))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, global0.c.d), _wgslsmith_div_u32(global0.c.a.x, 31908u)), 12u)]) - _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 12u)], -1000f, 1f, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, -764f, global3[_wgslsmith_index_u32(global0.c.d, 12u)], -183f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(global0.c.a.x, 12u)], -673f, global3[_wgslsmith_index_u32(global0.c.d, 12u)]), vec4<f32>(global3[_wgslsmith_index_u32(global0.c.d, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], -1080f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 12u)], -783f, 806f, 699f)), global0.c.d >= 4120u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2421f, global3[_wgslsmith_index_u32(u_input.a.x, 12u)], -1005f, 732f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)], -300f, global3[_wgslsmith_index_u32(global0.c.d, 12u)]) + vec4<f32>(global3[_wgslsmith_index_u32(1u, 12u)], -1262f, 1134f, -480f)))), vec4<f32>(_wgslsmith_f_op_f32(-593f - global3[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -1482f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.c.d, 12u)] + global3[_wgslsmith_index_u32(1u, 12u)]), -672f)))));
    return Struct_3(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, u_input.c, global0.b.x), vec3<i32>(u_input.c, 12900i, u_input.c) << (vec3<u32>(u_input.a.x, 0u, global0.c.d) % vec3<u32>(32u))), i32(-1i) * -_wgslsmith_div_i32(global0.a, 2147483647i)), Struct_1(true, !any(!global0.c.b.zwx), !any(!vec2<bool>(global0.c.c, global0.c.c))), Struct_2(~(~_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(44063u, 41053u))), global0.c.b, arg_0, _wgslsmith_mod_u32(global0.c.a.x | u_input.a.x, ~global0.c.d) ^ 5292u), global0.c.d, global0.c.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_4 {
    global3 = array<f32, 12>();
    global0 = Struct_4(_wgslsmith_mult_i32(arg_0.a, 9364i), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_0.a & -11316i), u_input.d.xy ^ -global0.b), func_2(false).c);
    global1 = array<Struct_2, 27>();
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.a), u_input.a))), 12u)];
    global0 = Struct_4(-3179i, _wgslsmith_sub_vec2_i32(vec2<i32>(~abs(arg_0.a), ~arg_0.a), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d.xy, vec2<i32>(u_input.d.x, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, 1i), global0.b, vec2<i32>(0i, u_input.d.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.d.x, global0.a)) | min(global0.b, vec2<i32>(u_input.c, 0i)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(global0.c.d), abs(global0.c.d), countOneBits(0u)), vec3<u32>(_wgslsmith_add_u32(31533u, u_input.a.x), arg_0.c.a.x & 4294967295u, _wgslsmith_clamp_u32(14550u, 24837u, global0.c.a.x))), 4294967295u), 27u)]);
    return Struct_4(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_i32(~global0.b.x, 1i))), ~firstLeadingBit(select(vec2<i32>(35171i, -2147483647i), reverseBits(vec2<i32>(1i, arg_0.a)), !arg_0.e.xx)), global1[_wgslsmith_index_u32(55350u, 27u)]);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    var var_0 = global0.a;
    global1 = array<Struct_2, 27>();
    return Struct_4(_wgslsmith_clamp_i32(-2147483647i, ~arg_0.a, global0.b.x), vec2<i32>(-3962i, arg_2.a), Struct_2(vec2<u32>(47950u, 1u), arg_0.c.b, !arg_0.c.b.x, ~1u));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = vec2<i32>(i32(-1i) * -2147483647i, 2147483647i | global0.a);
    global3 = array<f32, 12>();
    let var_1 = global0.c.b.yy;
    global0 = func_5(func_4(func_2(true), global0.c.a), abs(_wgslsmith_sub_i32(global0.b.x, _wgslsmith_sub_i32(-2147483647i << (global0.c.a.x % 32u), arg_0))), Struct_3(~0i, func_2(true).b, global1[_wgslsmith_index_u32(max(global0.c.d, 0u), 27u)], _wgslsmith_clamp_u32(u_input.b.x, func_4(func_2(var_1.x), ~vec2<u32>(u_input.b.x, global0.c.a.x)).c.a.x, ~u_input.b.x >> (~30757u % 32u)), !vec4<bool>(var_1.x, true, var_1.x, !var_1.x)), func_2(false).b);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(791f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(47242u, 12u)] - global3[_wgslsmith_index_u32(34719u, 12u)])), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, global0.c.d), 12u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 12u)])))))), global3[_wgslsmith_index_u32(1u, 12u)]);
    return vec4<bool>(global0.c.c, global0.c.c, global0.c.b.x, 4294967295u != _wgslsmith_mod_u32(func_4(Struct_3(55760i, Struct_1(false, false, global0.c.b.x), Struct_2(global0.c.a, global0.c.b, false, 0u), 0u, vec4<bool>(true, false, true, true)), u_input.a.xy).c.d, 1u));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    global3 = array<f32, 12>();
    let var_0 = func_5(func_5(Struct_4(-2147483647i, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.xx, vec2<i32>(-52924i, -1i)), global0.b), global0.c), arg_1.x, func_2(select(true, global0.c.c, true)), Struct_1(false, any(global0.c.b.xy), true)), global0.a, func_2(true), Struct_1(false, 42750u != (u_input.a.x << (_wgslsmith_sub_u32(arg_2.d, arg_0.x) % 32u)), arg_2.c)).c;
    var var_1 = u_input.d;
    let var_2 = arg_2.b.wzy;
    var var_3 = ~u_input.a;
    return func_4(Struct_3(-6219i, func_2(arg_3).b, var_0, global0.c.d, !vec4<bool>(global3[_wgslsmith_index_u32(1u, 12u)] >= global3[_wgslsmith_index_u32(52596u, 12u)], all(global0.c.b.xyz), 6678u > arg_0.x, var_2.x | var_0.b.x)), vec2<u32>(~global0.c.a.x, ~(~firstTrailingBit(arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(u_input.c, vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, 36727i), vec3<i32>(u_input.d.x, 30723i, i32(-1i) * -32903i)), -1i), global0.c);
    global3 = array<f32, 12>();
    let var_0 = ~u_input.b;
    let var_1 = func_6(~max(vec2<u32>(~4294967295u, ~1u), ~(~u_input.a.ww)), ~u_input.d, Struct_2(vec2<u32>(_wgslsmith_div_u32(17370u, 1u), (global0.c.d ^ 44924u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(18600u, var_0.x), global0.c.a) % 32u)), func_1(1i), true, ~(~var_0.x)), all(func_2(any(!vec3<bool>(false, global0.c.b.x, false))).e.wxx));
    let var_2 = func_2(var_1.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(266f + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 12u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f * 376f) + _wgslsmith_f_op_f32(step(879f, -737f))))));
}


struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18>;

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = abs(firstLeadingBit(~u_input.b));
    var var_1 = reverseBits(global1.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-202f, 815f) * vec2<f32>(global3.b, -833f)))) + arg_1);
    global2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b, arg_0.b, true))), _wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1957f * -1289f) - global2.x)))));
    global0 = array<vec4<bool>, 18>();
    return 1000f;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global3 = Struct_1(~global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, arg_1.b)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - arg_0.x), global1.b))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * -903f))))), arg_1.c, select(~1u, arg_1.d, true));
    global0 = array<vec4<bool>, 18>();
    var var_0 = global1.a.zxy;
    global1 = Struct_1(vec4<i32>(arg_1.a.x, abs(global1.a.x) & -2147483647i, 0i, global3.a.x ^ _wgslsmith_sub_i32(u_input.a.x, 20988i)) ^ vec4<i32>(min(arg_1.a.x >> (21378u % 32u), _wgslsmith_clamp_i32(40703i, 40594i, global3.a.x)), ~(-1i), -_wgslsmith_sub_i32(u_input.a.x, var_0.x), -4278i), _wgslsmith_f_op_f32(sign(1f)), any(!vec3<bool>(arg_1.c, global1.b == -1000f, false)), min(arg_1.d, arg_1.d));
    var var_1 = -(~0i);
    return global3.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(true, Struct_1(countOneBits(select(abs(vec4<i32>(-1i, global1.a.x, u_input.a.x, 932i)), _wgslsmith_mod_vec4_i32(global3.a, vec4<i32>(global1.a.x, global1.a.x, 2147483647i, u_input.a.x)), !global1.c)), global3.b, func_3(vec4<f32>(_wgslsmith_f_op_f32(global2.x + -777f), global2.x, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(func_2(Struct_1(global3.a, global2.x, false, u_input.c), vec2<f32>(global2.x, global3.b), vec4<i32>(2147483647i, global1.a.x, u_input.a.x, global1.a.x)))), Struct_1(global1.a, _wgslsmith_f_op_f32(round(365f)), true, _wgslsmith_clamp_u32(arg_0.x, global3.d, 1u))), firstLeadingBit(~countOneBits(70714u))), Struct_1(max(global3.a, global1.a), _wgslsmith_f_op_f32(f32(-1f) * -919f), !global3.c, 4294967295u), vec2<i32>(-22053i, _wgslsmith_clamp_i32(i32(-1i) * -38467i, _wgslsmith_dot_vec4_i32(global3.a, global1.a), select(-2147483647i, u_input.a.x, true) & countOneBits(u_input.a.x))), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.x, -52503i, u_input.a.x, _wgslsmith_mod_i32(global3.a.x, global1.a.x)), vec4<i32>(min(-1i, global3.a.x), u_input.a.x & global1.a.x, -global1.a.x, ~(-1i))), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-2008f + 1186f)))), false, 4294967295u));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1656f, var_0.b.b), vec2<f32>(global2.x, global2.x))))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, var_0.c.b)), vec2<f32>(814f, _wgslsmith_f_op_f32(-global2.x))))));
    var var_1 = var_0.e;
    var var_2 = vec4<u32>(~firstLeadingBit(~countOneBits(var_0.c.d)), global1.d, _wgslsmith_add_u32(~43035u, var_0.b.d), ~global3.d);
    let var_3 = Struct_2(!func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, -2544f, var_0.b.b, 618f)), var_0.e), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f * var_1.b) - _wgslsmith_f_op_f32(-global2.x))), !(var_0.e.c && (global1.b <= -1475f)), ~global1.d), Struct_1(_wgslsmith_mod_vec4_i32(-firstLeadingBit(global3.a), countOneBits(global3.a)), -882f, !((global2.x == var_1.b) | (var_0.c.b > var_0.b.b)), 4294967295u), _wgslsmith_clamp_vec2_i32(~firstTrailingBit(countOneBits(global3.a.yx)), global3.a.yy & global3.a.xy, max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5688i, 21771i), _wgslsmith_mult_vec2_i32(global3.a.xx, vec2<i32>(-1i, u_input.a.x)), max(vec2<i32>(0i, global3.a.x), vec2<i32>(0i, -44760i))), firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x) | u_input.a))), var_0.b);
    return Struct_1(-_wgslsmith_div_vec4_i32(var_0.b.a, ~var_1.a ^ global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global1.b)) * 269f), all(select(!select(vec2<bool>(true, true), vec2<bool>(true, var_1.c), global1.c), vec2<bool>(var_1.c, var_3.e.c), !any(vec3<bool>(false, var_1.c, var_0.a)))), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b);
    var var_1 = var_0.d;
    let var_2 = Struct_1(global1.a, _wgslsmith_f_op_f32(-1549f * _wgslsmith_div_f32(-1724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, global2.x)) * _wgslsmith_f_op_f32(-global3.b)))), true, ~var_0.d);
    var_1 = var_2.d;
    let var_3 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(8277i, ~(_wgslsmith_dot_vec2_i32(var_0.a.wx, vec2<i32>(0i, var_2.a.x)) ^ _wgslsmith_clamp_i32(-46522i, -21769i, -17997i))));
    var var_4 = Struct_2(any(select(!select(vec3<bool>(global3.c, false, true), vec3<bool>(global1.c, global1.c, false), var_0.c), select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(true, true, var_2.c), true), true)), func_1(vec4<u32>(func_1(vec4<u32>(142601u, var_2.d, var_2.d, u_input.b.x) | u_input.b).d, _wgslsmith_sub_u32(0u | var_2.d, global3.d), global1.d, ~global3.d)), var_2, global1.a.xy, var_2);
    let var_5 = Struct_1(firstTrailingBit(global1.a), global3.b, (true || var_2.c) & var_4.e.c, var_0.d);
    var var_6 = Struct_2(true, Struct_1(global3.a, global1.b, var_4.e.c, global3.d), Struct_1(var_4.b.a, 197f, var_4.c.c, _wgslsmith_add_u32(~abs(11762u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(82935u, 48699u, var_5.d, global3.d), vec4<u32>(38677u, 52320u, 7685u, 17049u)), var_0.d))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d.x, 64511i, var_5.a.x), vec3<i32>(-70125i, var_2.a.x, 1i)), max(var_3.x >> (0u % 32u), ~32525i)), -(~u_input.a.x)), var_4.b);
    let var_7 = abs(~(~(~(~u_input.b.xx))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 205f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2697f, var_5.b) + vec2<f32>(var_5.b, var_2.b)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(999f, global1.b))))))));
}


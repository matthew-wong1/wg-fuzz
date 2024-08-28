struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1097f, 610f), vec2<f32>(-329f, 247f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = global0.a;
    let var_1 = vec2<u32>(u_input.b >> (0u % 32u), 0u);
    global0 = Struct_1(!arg_1.a, _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.d.x - arg_0.d.x))))), countOneBits(i32(-1i) * -abs(arg_0.c)), arg_0.d, arg_0.c);
    let var_2 = ~4294967295u;
    let var_3 = Struct_1(!select(vec3<bool>(false & var_0.x, true, any(vec3<bool>(true, var_0.x, true))), vec3<bool>(false, all(vec2<bool>(false, true)), global0.a.x), !arg_0.a.x && true), 111f, _wgslsmith_dot_vec2_i32(abs(~(-vec2<i32>(arg_1.e, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 1i) & vec2<i32>(arg_1.e, 16963i), -max(vec2<i32>(arg_0.c, u_input.a), vec2<i32>(0i, 0i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 1264f, -2093f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, arg_1.d.x, -744f) + arg_0.d) * vec3<f32>(global0.d.x, arg_1.b, -1970f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, -1000f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global0.d)), _wgslsmith_div_vec3_f32(vec3<f32>(565f, global0.b, arg_1.d.x), arg_1.d), false)))), -_wgslsmith_clamp_i32(firstTrailingBit(~u_input.a), 2147483647i, -(-5273i << (1u % 32u))));
    return _wgslsmith_f_op_vec3_f32(exp2(var_3.d));
}

fn func_2() -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1803f, 1f))))));
    var var_0 = vec3<bool>(any(vec4<bool>(false, true, global0.a.x, _wgslsmith_add_i32(u_input.a, -51548i) > 1i)), firstTrailingBit(0u) == (u_input.b | u_input.b), global0.a.x);
    let var_1 = Struct_1(select(!(!global0.a), global0.a, ~(u_input.b & 15420u) <= u_input.b), _wgslsmith_f_op_f32(trunc(430f)), 13164i, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<bool>(global0.a.x, global0.a.x, false), _wgslsmith_f_op_f32(abs(1452f)), 0i, global0.d, u_input.a & _wgslsmith_mod_i32(u_input.a, global0.e)), Struct_1(!global0.a, 103f, u_input.a, _wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(global0.e, -11287i, -5263i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(985f - 254f), _wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(0u, 2u)] - global0.d.xz), _wgslsmith_f_op_vec2_f32(-global0.d.xx))))), _wgslsmith_add_i32(u_input.a, -(i32(-1i) * -16872i)));
    let var_2 = -vec3<i32>(~42233i, ~(-58656i), global0.e);
    let var_3 = firstTrailingBit(countOneBits(reverseBits(-(vec4<i32>(2147483647i, -10192i, var_1.c, var_2.x) ^ vec4<i32>(-105709i, -16276i, 58432i, global0.e)))));
    return -vec3<i32>(var_1.e, 41995i, global0.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = firstTrailingBit(func_2());
    global2 = array<vec2<f32>, 2>();
    var var_1 = Struct_1(!global0.a, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_add_i32(-1i, -(~firstTrailingBit(3561i))), vec3<f32>(998f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.d.x, global0.d.x, false)), global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1847f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.d.x)))), _wgslsmith_sub_i32(~global0.e, global0.e >> (~countOneBits(99850u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-578f, arg_0.b, -309f, 833f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b, -1801f, global0.d.x, arg_0.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1765f, 1091f, -1761f, -557f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b, arg_0.d.x, global0.d.x, 1000f), vec4<f32>(arg_0.d.x, arg_0.b, -1000f, var_1.d.x)))))));
    global0 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(940f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-262f, var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f - global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global0.a, global0.d.x, u_input.a, global0.d, u_input.a), vec4<u32>(4101u, 1u, 1u, u_input.b) | vec4<u32>(u_input.b, 0u, u_input.b, 1u))))) - 894f);
    var var_1 = Struct_1(select(global0.a, vec3<bool>(true, u_input.b < _wgslsmith_div_u32(u_input.b, 4294967295u), all(vec2<bool>(global0.a.x, global0.a.x))), !(select(true, true, true) & false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), ~(u_input.a >> ((u_input.b << (32074u % 32u)) % 32u)) ^ global0.e, _wgslsmith_f_op_vec3_f32(select(global0.d, _wgslsmith_f_op_vec3_f32(trunc(global0.d)), global0.a)), u_input.a >> (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))) % 32u));
    var_1 = Struct_1(select(var_1.a, !vec3<bool>(true, u_input.b < u_input.b, var_1.c <= -21387i), false), global0.b, ~(-global0.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1043f))), var_1.b) - global0.d), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.c, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c, -3930i, u_input.a), vec3<i32>(8273i, 7903i, u_input.a))));
    var var_2 = 54268u;
    let var_3 = var_1.b;
    let var_4 = vec3<u32>(_wgslsmith_add_u32(7316u, 0u), 19832u, 12307u);
    var var_5 = Struct_1(!select(!select(global0.a, vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(global0.a.x, false, global0.a.x)), global0.a, vec3<bool>(true, true, true)), var_1.b, ~firstLeadingBit(~(11821i >> (var_4.x % 32u))), global0.d, 1i);
    var var_6 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x * -1347f), any(vec3<bool>(global0.a.x, true, var_5.a.x)))), var_1.b), _wgslsmith_f_op_f32(-var_1.d.x), -507f);
    var var_7 = countOneBits(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(35963u, u_input.b, 1u, 30053u)), ~vec4<u32>(u_input.b, var_4.x, var_4.x, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(var_4.x, u_input.b, 1840u, 49365u), vec4<u32>(90153u, 38540u, u_input.b, var_4.x))), firstLeadingBit(~vec4<u32>(1u, var_4.x, var_4.x, 23306u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, firstLeadingBit(_wgslsmith_mod_i32(-81234i, min(-27997i, -2147483647i)))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_7.yy | var_4.zx, var_7.xy), var_7.xw), 0u >> (var_4.x % 32u), _wgslsmith_div_u32(4294967295u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(9623u, u_input.b, 1u, 29641u), vec4<u32>(0u, 16146u, var_4.x, var_7.x)), var_4.x & var_4.x)), var_4.x), ~var_4.x, vec4<u32>(4294967295u, var_7.x, var_4.x << (_wgslsmith_clamp_u32(0u, 72649u, 46274u) % 32u), firstLeadingBit(~var_4.x)) << (~(~(~vec4<u32>(var_4.x, var_7.x, u_input.b, var_4.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1732f * -658f))))));
}


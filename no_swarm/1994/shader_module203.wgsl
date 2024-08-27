struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(815f, 129f, -2474f);

var<private> global1: array<i32, 27>;

var<private> global2: vec4<f32> = vec4<f32>(1160f, -1433f, 1430f, 1270f);

var<private> global3: array<f32, 18> = array<f32, 18>(-599f, -402f, 743f, 1145f, -630f, -463f, -835f, -770f, 252f, 573f, 580f, -1000f, -569f, 1445f, -1000f, -1651f, 1435f, 140f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec4<f32> {
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(533f))), _wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 18u)] * arg_1.x)), -1434f)))));
    var var_0 = Struct_3(vec4<i32>(45747i, -(global1[_wgslsmith_index_u32(arg_0 >> (u_input.e.x % 32u), 27u)] & 1i), i32(-1i) * -1i, ~(-firstLeadingBit(u_input.d.x))), 556f, vec4<i32>(-1i) * -reverseBits(-vec4<i32>(-16455i, global1[_wgslsmith_index_u32(u_input.e.x, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)], -1i)), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)));
    let var_1 = global0.x;
    var var_2 = Struct_3((var_0.a << (abs(vec4<u32>(40922u, 25292u, arg_0, 12197u)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.a, var_0.a | vec4<i32>(var_0.a.x, u_input.a, global1[_wgslsmith_index_u32(arg_0, 27u)], 2147483647i)), vec4<i32>(u_input.a, reverseBits(7655i), countOneBits(global1[_wgslsmith_index_u32(u_input.b, 27u)]), global1[_wgslsmith_index_u32(1668u, 27u)]), -var_0.a), _wgslsmith_f_op_f32(1f - 813f), select(~_wgslsmith_sub_vec4_i32(var_0.a, min(var_0.a, vec4<i32>(var_0.c.x, 0i, 14538i, 2147483647i))), _wgslsmith_clamp_vec4_i32(var_0.c, firstLeadingBit(vec4<i32>(29675i, var_0.a.x, 42027i, global1[_wgslsmith_index_u32(u_input.c.x, 27u)])) ^ ~vec4<i32>(var_0.a.x, -1i, 0i, global1[_wgslsmith_index_u32(4760u, 27u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(-8641i, var_0.a.x, global1[_wgslsmith_index_u32(54457u, 27u)], u_input.d.x) ^ var_0.a, -vec4<i32>(1i, u_input.d.x, u_input.d.x, -24456i))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(808f - -1594f)), _wgslsmith_f_op_f32(-986f * _wgslsmith_f_op_f32(step(arg_1.x, var_0.d))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1054f)) + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -894f), false))), -1271f, -265f);
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-354f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(561f - global0.x)), -789f, _wgslsmith_f_op_f32(f32(-1f) * -703f))));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_div_vec3_f32(global2.wyz, global2.zwy);
    global0 = global2.xwx;
    let var_0 = Struct_1(vec3<bool>((u_input.d.x | global1[_wgslsmith_index_u32(35575u, 27u)]) == -1i, true, true));
    global2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(~abs(u_input.c.x), global2.xyx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(14517u, 18u)], -495f, 1000f, _wgslsmith_f_op_f32(trunc(-2418f))))));
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.zwx, global2.yzy))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 18u)], global2.x, 450f)), _wgslsmith_f_op_vec3_f32(abs(global2.yyx)), false))))));
    return global0.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1627f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + 1130f)))) - global2.x), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(267f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f + global0.x) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e.x, 18u)]))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - 779f))));
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 927f)))))));
    global3 = array<f32, 18>();
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(4676u, 4294967295u)), ~(~(~u_input.c))), vec2<u32>(~arg_0, arg_0));
    var var_2 = var_1.x;
    return Struct_1(arg_2.yyw);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -134f, 428f, global0.x) + vec4<f32>(global0.x, global2.x, -1744f, global3[_wgslsmith_index_u32(42323u, 18u)])) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -121f, global3[_wgslsmith_index_u32(0u, 18u)], -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1913f, global3[_wgslsmith_index_u32(u_input.b, 18u)], 912f, global2.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-372f, global0.x, global0.x, -363f) - vec4<f32>(960f, global3[_wgslsmith_index_u32(u_input.b, 18u)], global0.x, 777f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1176f, -182f, global3[_wgslsmith_index_u32(6378u, 18u)]) * vec4<f32>(global2.x, global2.x, -599f, global2.x)))))));
    global3 = array<f32, 18>();
    let var_0 = u_input.a;
    global0 = global2.xzz;
    var var_1 = func_1(~1206u, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, 73007u), 27u)], -var_0), -(i32(-1i) * -1i)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), (-_wgslsmith_div_i32(-11897i, -2147483647i) >> (u_input.c.x % 32u)) << (1u % 32u));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(-2261f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-global2.yyy));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, 1f, _wgslsmith_f_op_vec4_f32(func_3(abs(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(u_input.e.x, 18u)]) * global2.ywz)))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * global0.x), -1718f), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], -1000f, _wgslsmith_f_op_f32(-global2.x), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.zy), vec2<i32>(u_input.d.x, ~max(u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(global2.xyw)))), -(-(~u_input.d) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2147483647i), -vec2<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))), ~(-(~global1[_wgslsmith_index_u32(u_input.c.x | u_input.b, 27u)])));
}


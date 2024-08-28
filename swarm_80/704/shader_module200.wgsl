struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = ~_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x, ~(-1941i)), -_wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(-69968i, -2302i)));
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(arg_2.x, 1u)]))))));
    let var_3 = arg_1;
    global0 = array<f32, 1>();
    return false;
}

fn func_2(arg_0: bool) -> i32 {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_0 = max(27285u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b ^ u_input.b, vec4<u32>(57243u, u_input.b.x, 4294967295u, 17334u)), ~_wgslsmith_div_vec4_u32(u_input.b, u_input.b)));
    var var_1 = ~(-1i);
    return 1i;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    global0 = array<f32, 1>();
    var var_0 = Struct_1(28196u, arg_1.x, vec3<u32>(~_wgslsmith_sub_u32(max(u_input.b.x, 4294967295u), 47027u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.b.x), ~502u), _wgslsmith_sub_u32(u_input.a, u_input.b.x), 56070u), 54262u), -(~_wgslsmith_dot_vec2_i32(u_input.c.wy, u_input.c.wy) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 7878u), ~vec3<u32>(u_input.d.x, 1u, u_input.b.x)) % 32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 791f, -184f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1570f, 1613f, global0[_wgslsmith_index_u32(0u, 1u)], 438f)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), any(vec4<bool>(arg_0, false, arg_0, true)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], var_0.e.x) - var_0.e.yx))))) + var_0.e.zw);
    let var_2 = countOneBits(_wgslsmith_mod_u32(11914u, ~73473u)) >> (_wgslsmith_mod_u32(firstLeadingBit(var_0.a), ~(~u_input.a) >> (~u_input.d.x % 32u)) % 32u);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), true, ~vec3<u32>(countOneBits(0u), var_0.a, var_0.a), u_input.c.x, var_0.e);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~u_input.b.x), !(~2147483647i > (min(u_input.c.x, u_input.e.x) >> (~0u % 32u))), _wgslsmith_add_vec3_u32(~u_input.b.wxx, _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 17562u, u_input.b.x), abs(vec3<u32>(24981u, u_input.b.x, u_input.a)) ^ _wgslsmith_div_vec3_u32(u_input.b.yzw, vec3<u32>(0u, 14914u, 35329u)))), func_2(func_1(max(u_input.e.wzz | vec3<i32>(1i, u_input.c.x, 2147483647i), u_input.e.zyw | u_input.e.yyx), ~(~u_input.b.yy), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.d.x, 4616u, 0u), u_input.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-407f)) - _wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(1u, 1u)])), _wgslsmith_f_op_f32(func_3(true, vec2<bool>(false, true))), global0[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(34520u, 1u)], 326f, true)), -1955f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1104f, global0[_wgslsmith_index_u32(4294967295u, 1u)], 695f, global0[_wgslsmith_index_u32(u_input.a, 1u)]) * vec4<f32>(-864f, -417f, 104f, global0[_wgslsmith_index_u32(u_input.d.x, 1u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], 1623f, 955f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(21433u, 1u)], -1000f))))));
    var_0 = Struct_1(4294967295u, var_0.b, select(vec3<u32>(var_0.a, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(24507u, var_0.a, u_input.a, u_input.a), vec4<u32>(36640u, 0u, var_0.c.x, 0u))), ~u_input.b.yzz, select(select(!vec3<bool>(var_0.b, var_0.b, false), select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, false, var_0.b)), var_0.b && false), vec3<bool>(all(vec4<bool>(false, var_0.b, var_0.b, true)), !var_0.b, !var_0.b), vec3<bool>(true, var_0.b, true))), u_input.e.x, _wgslsmith_f_op_vec4_f32(step(var_0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(34842u, 1u)], _wgslsmith_div_f32(978f, global0[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_div_f32(var_0.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 1u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 1u)]))))));
    var_0 = Struct_1(~18437u, false, abs(u_input.b.zxx), _wgslsmith_dot_vec3_i32(~u_input.e.zyw, u_input.e.ywz), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.a, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(var_0.e.x - -231f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, global0[_wgslsmith_index_u32(0u, 1u)], 153f)) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 1u)], 1000f, global0[_wgslsmith_index_u32(var_0.a, 1u)], 1765f))))));
    let var_1 = Struct_1(~u_input.b.x, true, u_input.b.wyx, -var_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 757f), -1420f, -1741f, 708f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(var_0.c.x, 1u)], var_0.e.x, var_0.e.x, global0[_wgslsmith_index_u32(23923u, 1u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, -122f, -1896f, 798f), var_0.e), select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b)))) + _wgslsmith_f_op_vec4_f32(step(var_0.e, var_0.e)))));
    var var_2 = true;
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.d.x), var_0.a, 1u, countOneBits(u_input.b.x)) | vec4<u32>(u_input.b.x, var_1.c.x, 66086u, ~u_input.d.x), vec4<u32>(_wgslsmith_clamp_u32(firstLeadingBit(var_0.a), var_0.a | 1u, 0u), _wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), 1u), ~4294967295u, abs(_wgslsmith_add_u32(var_0.c.x, 25274u)))), u_input.b.x << (~var_0.a % 32u));
    var_2 = !(!var_0.b);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(select(var_0.e.x, var_1.e.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1235f, var_1.e.x)), -1121f))), -744f);
    let var_5 = Struct_1(1u, true, u_input.b.xyx, -(_wgslsmith_sub_i32(var_0.d, var_0.d) << (~_wgslsmith_mult_u32(var_0.a, 57132u) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_1.e, var_0.e), vec4<f32>(global0[_wgslsmith_index_u32(~u_input.b.x, 1u)], var_0.e.x, _wgslsmith_div_f32(166f, 589f), 445f), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, (i32(-1i) * -2147483647i) & _wgslsmith_mult_i32(~u_input.e.x >> (_wgslsmith_mult_u32(1670u, 1u) % 32u), -_wgslsmith_clamp_i32(var_1.d, -16669i, u_input.e.x)), 1u, u_input.b, vec4<f32>(-1129f, 1f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) + _wgslsmith_f_op_f32(-var_0.e.x)) - global0[_wgslsmith_index_u32(max(var_0.c.x >> (var_3.x % 32u), min(0u, var_1.a)), 1u)])));
}


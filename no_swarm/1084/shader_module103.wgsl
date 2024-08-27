struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(-929f)), 192f))), arg_0);
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_add_vec2_u32(global0.xy, global0.xy)), ~(~vec2<u32>(u_input.a, global0.x))), vec2<u32>(global0.x ^ global0.x, 0u));
    var var_2 = global3[_wgslsmith_index_u32(~var_1.x, 9u)];
    let var_3 = global3[_wgslsmith_index_u32(var_1.x, 9u)];
    global3 = array<Struct_1, 9>();
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2756f, _wgslsmith_div_f32(-842f, -347f), false & global2.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2023f), _wgslsmith_f_op_f32(func_3(vec2<f32>(816f, 173f), global2.d.x, arg_3.b, arg_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(false, true, global2.b | arg_0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1237f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(868f)), _wgslsmith_f_op_f32(abs(-506f)))), -697f)), _wgslsmith_f_op_f32(round(-286f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1584f + 1f)));
    global0 = ~vec3<u32>(abs(u_input.a), _wgslsmith_mod_u32(~global0.x, 165u), 4998u);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, 682i, ~arg_0.d.x), vec3<i32>(1i, 21818i, ~(arg_1.x ^ arg_3.a.x)));
    return all(vec4<bool>(all(select(!vec4<bool>(arg_3.c.x, false, true, true), select(vec4<bool>(global2.c.x, global2.b, arg_0.c.x, true), vec4<bool>(false, false, true, false), arg_3.b), global2.b)), arg_3.b, false, select((arg_3.a.x < -2147483647i) == (-52195i <= arg_3.d.x), (arg_0.b & false) & any(arg_0.c), false)));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, 0u), vec3<u32>(0u, 6852u, 1u)))), 15576u), 9u)];
    var var_1 = -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstTrailingBit(var_0.d.x | 34289i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.d.x, global2.d.x, 0i), vec4<i32>(-11574i, 1i, var_0.d.x, 1i)))), global2.a.x, var_0.a.x | (-2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 4294967295u), vec4<u32>(global0.x, u_input.a, global0.x, 4294967295u)) % 32u)));
    let var_2 = vec3<u32>(0u, u_input.a, ~(~15343u) & global0.x) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(76218u, _wgslsmith_add_u32(global0.x, global0.x), abs(u_input.a)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(global0.x, u_input.a, 15230u), vec3<u32>(global0.x, 14792u, global0.x), vec3<bool>(arg_0, global2.c.x, false)), vec3<u32>(0u, 4294967295u, global0.x) << (vec3<u32>(u_input.a, 44344u, 1u) % vec3<u32>(32u))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-372f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.x | var_0.c.x))), 1000f);
    var_0 = Struct_1(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-1228i, 2619i), var_0.d, global2.c.zy), global2.a), true, vec3<bool>(all(vec3<bool>(arg_0, !global2.b, func_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), vec2<i32>(var_0.d.x, 21755i), vec4<u32>(1u, var_2.x, var_2.x, var_2.x), global3[_wgslsmith_index_u32(global0.x, 9u)]))), false, func_2(global3[_wgslsmith_index_u32(~global0.x, 9u)], var_0.a, min(vec4<u32>(21534u, 52158u, 4294967295u, global0.x), vec4<u32>(global0.x, u_input.a, global0.x, var_2.x)), global3[_wgslsmith_index_u32(14600u & global0.x, 9u)]) == arg_0), _wgslsmith_add_vec2_i32(vec2<i32>(global2.d.x | -6595i, global2.a.x) & select(-vec2<i32>(var_0.a.x, global2.d.x), global2.a, !vec2<bool>(global2.b, true)), countOneBits(abs(~global2.d))));
    return global2.d.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> vec3<u32> {
    var var_0 = ~arg_2.zy;
    global1 = !(1103i > global2.a.x);
    var var_1 = !(!select(!vec3<bool>(arg_1.x, true, true), vec3<bool>(true, any(vec3<bool>(true, true, global2.b)), global2.b), arg_1.x && !global2.b));
    global0 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(arg_2, arg_2), 91767u | min(var_0.x, var_0.x)) >> ((~global0.x & ((var_0.x | 75638u) & 0u)) % 32u), ~global0.x, ~firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 47518u, arg_2.x), arg_2.zww), _wgslsmith_dot_vec3_u32(vec3<u32>(30512u, 4294967295u, 19099u), arg_2.xyy))));
    global0 = vec3<u32>(1u, arg_2.x, _wgslsmith_clamp_u32(1u, abs(firstTrailingBit(u_input.a) & var_0.x), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~15469u, 1u >> (global0.x % 32u), ~var_0.x))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, countOneBits(~32186u)), abs(vec3<u32>(~u_input.a, ~(~49970u), _wgslsmith_div_u32(abs(global0.x), _wgslsmith_dot_vec2_u32(arg_2.xw, arg_2.ww)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_4(-vec3<i32>(-28870i, func_1(global2.c.x), _wgslsmith_div_i32(-19809i, global2.a.x)), global2.c.xz, ~vec4<u32>(global0.x, 4294967295u, u_input.a, 42916u));
    global2 = global3[_wgslsmith_index_u32(global0.x, 9u)];
    var var_0 = global2.d.x;
    var var_1 = -1i;
    var var_2 = -global2.d;
    var_0 = countOneBits(-(~(~global2.d.x)));
    var_0 = -var_2.x;
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global2.a.x, 21153i, -23197i, var_2.x)), vec4<i32>(var_2.x, 20273i, global2.a.x, global2.a.x)), ~var_2.x ^ reverseBits(_wgslsmith_clamp_i32(var_2.x, -2930i, -37906i))), global2.d.x);
    var var_4 = abs(~firstLeadingBit(u_input.a & max(1u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(var_3.x, ~var_2.x, i32(-1i) * -global2.d.x)), vec3<u32>(~u_input.a, global0.x ^ ~countOneBits(4294967295u), ~global0.x), vec4<i32>(0i, var_2.x, _wgslsmith_mod_i32(-global2.d.x, 0i & var_3.x), firstLeadingBit(~(-global2.d.x))), 18621i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) + _wgslsmith_f_op_f32(1000f - 1976f)));
}


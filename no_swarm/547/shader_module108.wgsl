struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 350f, -1276f, -506f);

var<private> global1: array<f32, 9> = array<f32, 9>(-1117f, -1253f, -249f, 549f, 261f, -1630f, 511f, 1000f, -162f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = -988f;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-855f, -658f) + vec2<f32>(_wgslsmith_f_op_f32(global0.x + 1262f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 82218u, 0u), vec3<u32>(u_input.b, 0u, 4294967295u)), 9u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(253f - global0.x), arg_1.b.x)), global0.yw)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) - _wgslsmith_f_op_f32(1069f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1008f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - -225f))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) * var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_div_f32(arg_1.c, -614f)) * -110f), 479f), arg_0));
    let var_2 = select(firstLeadingBit(vec4<i32>(9948i, arg_1.a, 2147483647i, 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(~(~arg_1.e), 2414i), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.a, u_input.a.x, -1i), -_wgslsmith_add_vec3_i32(u_input.a, u_input.a)), arg_1.e, 71783i), select(select(!vec4<bool>(arg_0, false, true, true), vec4<bool>(true, u_input.d < -2005i, true, arg_0), any(vec4<bool>(arg_0, arg_1.d.x, arg_0, true))), !(!(!vec4<bool>(false, false, arg_0, arg_0))), arg_0));
    return 558f;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = array<f32, 9>();
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(-1i, u_input.a.x, -10664i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.d), vec4<i32>(u_input.a.x, u_input.d, u_input.a.x, 2147483647i))), vec4<i32>(68307i, 2147483647i >> (_wgslsmith_add_u32(arg_0.x, 71496u) % 32u), -u_input.d, -2147483647i)), firstLeadingBit(abs(-abs(vec4<i32>(-25559i, -1005i, -49138i, u_input.a.x)))));
    var var_1 = true;
    var var_2 = Struct_1(u_input.d, vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 9u)]), 963f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 35797u), 9u)], _wgslsmith_f_op_f32(func_3(false, Struct_1(u_input.d, global0.zyy, -701f, vec3<bool>(true, true, false), u_input.a.x)))))), _wgslsmith_f_op_f32(273f + global0.x), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), false)), _wgslsmith_div_i32(u_input.d, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -3199i, u_input.d, u_input.d), vec4<i32>(14036i, u_input.a.x, u_input.d, u_input.a.x), vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.a.x))), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, u_input.a.x, u_input.d, u_input.d)), vec4<i32>(u_input.d, -1i, 2147483647i, -1i)))));
    global1 = array<f32, 9>();
    return _wgslsmith_dot_vec3_u32(select(arg_0, _wgslsmith_mod_vec3_u32(arg_0 & arg_0, vec3<u32>(u_input.b, u_input.e.x, 7699u) ^ vec3<u32>(u_input.e.x, u_input.e.x, 19937u)), any(select(vec2<bool>(var_2.d.x, var_2.d.x), var_2.d.zx, false))), ~vec3<u32>(arg_0.x, ~13372u, ~0u)) != _wgslsmith_mult_u32(u_input.e.x, ~90365u);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    global1 = array<f32, 9>();
    let var_0 = -_wgslsmith_mult_i32(select(u_input.a.x, ~1i, any(arg_0.yx)), 5879i | _wgslsmith_add_i32(u_input.d, -1i)) > u_input.a.x;
    let var_1 = func_2(abs(~abs(vec3<u32>(49206u, 4294967295u, 0u))));
    global0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-631f, -993f, -1025f, -1256f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global1[_wgslsmith_index_u32(1u, 9u)], 117f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(62934u ^ u_input.b, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -726f), global0.x, -785f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-882f, global1[_wgslsmith_index_u32(u_input.b, 9u)], -2179f, global0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(628f, -750f, -579f, 838f), vec4<f32>(1732f, global0.x, -299f, global1[_wgslsmith_index_u32(0u, 9u)]))), select(select(vec4<bool>(arg_0.x, true, arg_0.x, var_1), arg_0, vec4<bool>(true, var_0, var_1, true)), arg_0, vec4<bool>(var_1, var_0, var_1, var_1)))))));
    var var_2 = Struct_1(-7789i, _wgslsmith_f_op_vec3_f32(-global0.yyz), global0.x, select(vec3<bool>(-u_input.a.x != u_input.d, !(arg_0.x & false), false), !(!arg_0.yzy), !arg_0.zxx), abs(u_input.a.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(21950u, u_input.e.x, 66024u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.e.x), vec3<u32>(u_input.b, u_input.e.x, 22115u)))) ^ vec3<u32>(countOneBits(max(func_1(vec4<bool>(false, false, true, false)), ~53164u)), 88749u, ~u_input.c);
    let var_1 = var_0.x;
    var var_2 = Struct_1(max(_wgslsmith_mult_i32(u_input.d, u_input.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(-u_input.a), select(vec3<i32>(-14521i, 41091i, -37328i), ~vec3<i32>(u_input.d, 0i, -14847i), vec3<bool>(true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), 2499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 9u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(func_1(vec4<bool>(true, false, false, false)), 9u)])))), !vec3<bool>(true, (global1[_wgslsmith_index_u32(15577u, 9u)] <= global0.x) && true, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 9u)], 357f)) > _wgslsmith_f_op_f32(global0.x - 1000f)), i32(-1i) * -_wgslsmith_div_i32(firstLeadingBit(u_input.d), _wgslsmith_div_i32(0i, u_input.d)));
    let var_3 = Struct_1(max(u_input.a.x, _wgslsmith_div_i32(var_2.e, -var_2.a) ^ u_input.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-840f, global1[_wgslsmith_index_u32(1u, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1603f, global0.x)))))), 431f, select(select(var_2.d, vec3<bool>(var_2.d.x & false, var_2.d.x, var_2.d.x), var_2.d), var_2.d, var_2.d), -1i);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-727f - global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1553f - global1[_wgslsmith_index_u32(var_1, 9u)]))))), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f - var_3.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f)) - _wgslsmith_f_op_f32(step(506f, -1490f)))), -1082f, _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))));
    var var_4 = false | any(select(select(select(vec3<bool>(var_2.d.x, var_3.d.x, var_2.d.x), var_2.d, false), vec3<bool>(var_3.d.x, false, var_2.d.x), false & var_3.d.x), vec3<bool>(true, var_2.d.x, var_2.d.x & false), select(!vec3<bool>(var_2.d.x, false, false), vec3<bool>(var_2.d.x, true, var_2.d.x), any(vec4<bool>(false, true, true, false)))));
    let var_5 = _wgslsmith_mod_i32(var_3.e, var_3.e);
    let var_6 = !var_2.d;
    var var_7 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1077f, global1[_wgslsmith_index_u32(var_1, 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(-1i) * -u_input.a), ~(~24852u) << (var_0.x % 32u));
}


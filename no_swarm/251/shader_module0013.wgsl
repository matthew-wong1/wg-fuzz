struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-4995i, 0i, 25333i);

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 63760u, 24634u);

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = ~(~(reverseBits(~vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 42386u)) ^ vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 1u), ~global1[_wgslsmith_index_u32(1u, 3u)], 33654u)));
    global1 = array<u32, 3>();
    global2 = true;
    var var_1 = 1i;
    let var_2 = Struct_1(vec2<f32>(722f, _wgslsmith_f_op_f32(f32(-1f) * -1183f)));
    return !vec4<bool>(((-67863i ^ global0.x) != 2147483647i) == false, false, !(!(0i <= global0.x)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.a);
    global2 = arg_2;
    var var_1 = !select(!vec4<bool>(true, 302f == var_0.a.x, true, all(vec3<bool>(arg_2, true, true))), !(!(!vec4<bool>(arg_2, arg_2, arg_2, true))), arg_2);
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * 653f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(595f + -2228f), 562f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a.x)))), Struct_3(~(~u_input.a) >> (~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31533u, 3u)], 3u)], 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(1u, 3u)], 3516u, 0u)) % vec4<u32>(32u)), 13111u), select(select(select(!vec4<bool>(false, false, true, arg_2), vec4<bool>(false, arg_2, true, arg_2), func_3()), select(vec4<bool>(var_1.x, false, false, arg_2), select(vec4<bool>(arg_2, var_1.x, false, var_1.x), vec4<bool>(arg_2, var_1.x, true, true), false), select(vec4<bool>(var_1.x, false, arg_2, true), vec4<bool>(true, true, arg_2, false), vec4<bool>(var_1.x, true, false, arg_2))), true), !func_3(), arg_2));
    global0 = vec3<i32>(global0.x, ~(~(-54877i)), 1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + -774f) + _wgslsmith_f_op_f32(var_2.b + arg_3.a.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> Struct_3 {
    var var_0 = all(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -300f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<i32>(global0.x, -2147483647i), Struct_1(vec2<f32>(1075f, 1052f)), false, Struct_1(vec2<f32>(-424f, 1736f))))))));
    global0 = abs(vec3<i32>(select(-(-44723i >> (arg_0.x % 32u)), global0.x, true), -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, 81162i, global0.x, 25927i)), arg_1));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, -669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(112f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(845f, -1508f)), _wgslsmith_f_op_f32(min(302f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(531f)) - _wgslsmith_f_op_f32(abs(-174f))) - -1738f)), Struct_3(_wgslsmith_sub_vec4_i32(select(reverseBits(vec4<i32>(u_input.a.x, 0i, -2147483647i, arg_1)), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false)), u_input.a), arg_0.x), vec4<bool>(true, true, any(vec2<bool>(true, true)) && true, any(vec4<bool>(true, true, true, true))));
    var_0 = !var_1.d.x;
    let var_2 = var_1.c.a.x;
    return Struct_3(~_wgslsmith_clamp_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.a.x, 1i, 41886i, arg_1), vec4<i32>(1i, var_1.c.a.x, -2147483647i, 0i)), vec4<i32>(global0.x, u_input.a.x, 2147483647i, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(534i, var_1.c.a.x, arg_1, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, arg_1, arg_1), var_1.c.a)), -reverseBits(vec4<i32>(u_input.a.x, global0.x, var_1.c.a.x, 1i))), ~select(countOneBits(arg_0.x), ~global1[_wgslsmith_index_u32(arg_0.x, 3u)], any(var_1.d.zyw)) ^ (abs(3825u) << (arg_2 % 32u)));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    var var_0 = max(~(~global1[_wgslsmith_index_u32(countOneBits(0u), 3u)]), _wgslsmith_mult_u32(0u, arg_1 ^ arg_1) | _wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(12186u, 1u, global1[_wgslsmith_index_u32(0u, 3u)]), vec3<u32>(3921u, 5097u, global1[_wgslsmith_index_u32(29283u, 3u)])), vec3<u32>(global1[_wgslsmith_index_u32(arg_0.c.b, 3u)], arg_1, 21635u) >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68717u, 3u)], 3u)], arg_0.c.b) % vec3<u32>(32u))), vec3<u32>(16241u, 4294967295u, 24527u) << ((vec3<u32>(0u, 0u, arg_0.c.b) >> (vec3<u32>(arg_0.c.b, 14783u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = 48664u;
    global2 = true;
    global2 = !arg_0.d.x;
    var var_2 = -18141i;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-338f, 1220f), vec2<f32>(1032f, arg_0.a.x)))) * _wgslsmith_f_op_vec2_f32(arg_0.a.yy * vec2<f32>(1797f, -183f)))), Struct_1(arg_0.a.xz), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1309f + _wgslsmith_f_op_f32(step(arg_0.b, -415f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, arg_0.b))))), arg_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.b - -562f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    global2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(554f * _wgslsmith_f_op_f32(step(-143f, 998f))) - -975f) < _wgslsmith_f_op_f32(1835f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-489f, 867f, false)) * _wgslsmith_f_op_f32(trunc(138f)))));
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-432f * 520f), _wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(-376f * -2133f)), vec3<f32>(153f, 1291f, 336f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - 1177f)), -545f), func_1(vec4<u32>(105478u & global1[_wgslsmith_index_u32(1u, 3u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26380u, 3u)], 3u)] | 0u, reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35433u, 3u)], 3u)])), -_wgslsmith_mod_i32(61058i, u_input.a.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21046u, 3u)], 3u)]), vec4<bool>(min(global1[_wgslsmith_index_u32(45830u, 3u)], 81073u) > ~24096u, true, true, all(vec3<bool>(true, false, false)))), func_1(vec4<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]), 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)] & (global1[_wgslsmith_index_u32(0u, 3u)] << (1u % 32u)), reverseBits(~4294967295u), global1[_wgslsmith_index_u32(100u, 3u)]), -u_input.a.x, ~(~1u | func_1(vec4<u32>(103665u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]), global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19602u, 3u)], 3u)], 3u)]).b)).b);
    global1 = array<u32, 3>();
    var var_1 = u_input.a.x;
    var var_2 = any(!vec3<bool>(all(vec4<bool>(true, true, true, false)), true, all(vec3<bool>(true, false, false)) & true));
    global0 = _wgslsmith_div_vec3_i32(u_input.a.yzw, ~u_input.a.zwy);
    var var_3 = -1021f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.c.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -550f)))))), max(_wgslsmith_add_i32(global0.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(global0.x, 9265i, global0.x, -51307i), select(u_input.a, u_input.a << (vec4<u32>(66804u, global1[_wgslsmith_index_u32(0u, 3u)], 0u, global1[_wgslsmith_index_u32(1u, 3u)]) % vec4<u32>(32u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true)))), 38807i, vec4<f32>(1223f, -587f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(818f, var_0.c.a.x)))), 1000f), max(~select(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31763u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(34775u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35513u, 3u)], 3u)], 0u), true), max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(97054u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], global1[_wgslsmith_index_u32(0u, 3u)])) & vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 1u, 32126u), vec3<u32>(2100u, global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)]) | vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 0u, global1[_wgslsmith_index_u32(50699u, 3u)]))));
}


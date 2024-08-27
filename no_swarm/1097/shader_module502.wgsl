struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<f32, 27> = array<f32, 27>(-462f, 447f, -1102f, -173f, -483f, -181f, -316f, -797f, -569f, -338f, -599f, 899f, 2201f, 1912f, -2010f, 1087f, -668f, -376f, 504f, 198f, -2220f, 923f, 214f, 390f, -1000f, -1322f, 1070f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<vec2<f32>, 18>();
    var var_0 = 0u;
    global1 = array<f32, 27>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)] * 184f) - global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1816f + -1159f), -693f, true)))), -421f);
    let var_2 = Struct_1(false, ~countOneBits(-vec4<i32>(23767i, -1i, 2147483647i, 2147483647i)));
    return -444f;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 27u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f + _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x ^ ~81256u, 27u)]))));
    var var_1 = !vec4<bool>(true, arg_1 <= ~73719u, true != (_wgslsmith_f_op_f32(var_0.x * -588f) != _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(max(1411f, _wgslsmith_f_op_f32(arg_0.x + 282f))) > _wgslsmith_f_op_f32(step(arg_0.x, -103f)));
    let var_2 = _wgslsmith_f_op_f32(max(var_0.x, arg_0.x));
    let var_3 = select(abs(-(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -1i))), -(~_wgslsmith_mod_vec2_i32(~vec2<i32>(23806i, -2147483647i), vec2<i32>(-2147483647i, 7137i))), true);
    let var_4 = Struct_3(Struct_2(vec2<i32>(var_3.x, reverseBits(6745i)), _wgslsmith_div_i32(1i, -36546i), _wgslsmith_dot_vec2_i32(var_3, vec2<i32>(max(-2147483647i, 7186i), ~(-2147483647i)))), vec2<bool>(!var_1.x, any(!vec4<bool>(false, var_1.x, var_1.x, false))), abs(~firstTrailingBit(vec3<i32>(var_3.x, var_3.x, var_3.x))), ~u_input.a);
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(~0i, ~abs(-26682i)), _wgslsmith_mod_i32(542i, 1i)), 19764i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(19049i, countOneBits(-1i), abs(arg_1.b.x)) ^ firstLeadingBit(-2175i), i32(-1i) * -_wgslsmith_mod_i32(arg_1.b.x, 1i)));
    var var_1 = _wgslsmith_f_op_f32(-196f - global1[_wgslsmith_index_u32(1u, 27u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 12094u, u_input.a.x, 42057u), vec4<u32>(arg_2.x, 4294967295u, 36057u, u_input.a.x)), 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.x, 27u)] - _wgslsmith_f_op_f32(select(828f, global1[_wgslsmith_index_u32(72719u, 27u)], arg_1.a))))), 56197u));
    var var_3 = arg_2.x;
    var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(~arg_2.x, 27u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(2121f, global1[_wgslsmith_index_u32(arg_2.x, 27u)])), -234f)), 807f)))));
    return Struct_4(false, Struct_1(true, vec4<i32>(8198i, -1i, var_0.a.x, var_0.a.x) & vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a, var_0.a), ~(-55355i), max(arg_1.b.x, arg_1.b.x), -var_0.b)), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(sign(252f))), _wgslsmith_f_op_f32(536f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(26349u, 27u)] * _wgslsmith_f_op_f32(trunc(-510f)))))), 1i);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_2(!all(vec4<bool>(arg_0.a, true, arg_0.b.x >= 26178i, !arg_0.a)), arg_0, firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, ~64278u)));
    var_0 = func_2(var_0.b.a, arg_0, u_input.a);
    let var_1 = Struct_3(Struct_2(var_0.b.b.wx, _wgslsmith_mult_i32(arg_0.b.x, var_0.e), ~reverseBits(-16452i)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(true, true))), select(select(!vec2<bool>(arg_0.a, var_0.b.a), select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, false), var_0.b.a), !arg_0.a), vec2<bool>(arg_0.a || false, arg_0.a), vec2<bool>(var_0.a, -2147483647i > arg_0.b.x)), vec2<bool>(u_input.a.x <= select(u_input.a.x, u_input.a.x, var_0.b.a), var_0.a)), abs(arg_0.b.zwz), min(select(u_input.a, ~u_input.a, all(vec3<bool>(arg_0.a, var_0.a, var_0.a))), vec3<u32>(7198u | u_input.a.x, _wgslsmith_add_u32(0u, u_input.a.x), u_input.a.x)) | _wgslsmith_div_vec3_u32(~abs(vec3<u32>(0u, u_input.a.x, u_input.a.x)), vec3<u32>(58795u, 25451u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 53463u, u_input.a.x), vec3<u32>(u_input.a.x, 37942u, u_input.a.x)))));
    var var_2 = ~var_1.d.x;
    var var_3 = arg_0;
    return _wgslsmith_dot_vec3_u32(var_1.d, var_1.d << (var_1.d % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 18>();
    global1 = array<f32, 27>();
    let var_0 = Struct_4(true, Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(656i, 68950i, 28447i, 2147483647i), vec4<i32>(2147483647i, 28446i, 1i, -1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-165f, global1[_wgslsmith_index_u32(1u, 27u)])), global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 18u)], select(true, any(vec4<bool>(true, true, false, false)), true)))), global1[_wgslsmith_index_u32(func_1(Struct_1(true, min(vec4<i32>(0i, 46909i, 2147483647i, 1i), vec4<i32>(-41656i, 1i, 2147483647i, -46540i)))) >> (1u % 32u), 27u)], ~countOneBits(_wgslsmith_sub_i32(-15722i, countOneBits(-1i))));
    let var_1 = min(_wgslsmith_mod_vec3_i32(vec3<i32>(func_2(!var_0.b.a, var_0.b, vec3<u32>(1u, 1u, 102080u) | u_input.a).b.b.x, 4744i & -var_0.e, firstTrailingBit(-52692i)), func_2(~u_input.a.x <= u_input.a.x, var_0.b, ~select(u_input.a, vec3<u32>(u_input.a.x, 7293u, u_input.a.x), vec3<bool>(true, var_0.a, var_0.a))).b.b.wzw), ~min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2670i, var_0.b.b.x, var_0.e), var_0.b.b.zwy), select(1i, var_0.e, var_0.a), var_0.e), reverseBits(-vec3<i32>(-43210i, 0i, var_0.e))));
    global1 = array<f32, 27>();
    let var_2 = Struct_2(~(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), countOneBits(-2147483647i)) << (~u_input.a.zz % vec2<u32>(32u))), 2147483647i, 0i);
    global0 = array<vec2<f32>, 18>();
    var var_3 = vec3<f32>(func_2(false, func_2(false, var_0.b, u_input.a).b, vec3<u32>(~u_input.a.x, max(0u, _wgslsmith_mult_u32(u_input.a.x, 16590u)), _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x))).c.x, _wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), var_0.d, _wgslsmith_f_op_f32(func_3(true)), var_0.c.x), ~(~u_input.a.x))).x, var_0.d);
    let var_4 = Struct_3(var_2, vec2<bool>(true, !(u_input.a.x > 8586u)), -select(select(vec3<i32>(18913i, var_0.b.b.x, var_2.b), -vec3<i32>(var_1.x, var_2.c, -2147483647i), select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, var_0.b.a, true), vec3<bool>(true, var_0.a, false))), var_1, all(select(vec2<bool>(false, var_0.a), vec2<bool>(true, false), var_0.a))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, select(vec3<bool>(true, var_0.a, true), !vec3<bool>(var_0.b.a, var_0.b.a, false), vec3<bool>(false, false, true))), ~min(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), ~vec3<u32>(1326u, 0u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.d.x, u_input.a.x), select(u_input.a.xz, vec2<u32>(24056u, var_4.d.x), var_4.b)), 923i, 1u);
}


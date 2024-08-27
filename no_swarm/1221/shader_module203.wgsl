struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(-950f, 14232u, 9423i, vec4<u32>(1u, 61202u, 4294967295u, 4294967295u), 47676u);

var<private> global3: array<i32, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-1351f * -453f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(914f, 539f)) + _wgslsmith_f_op_f32(-global2.a)), !(true & any(vec3<bool>(false, true, true))), false, false);
    let var_1 = var_0.x;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-814f - 882f);
    var var_4 = abs(_wgslsmith_dot_vec2_i32(((vec2<i32>(-9681i, global3[_wgslsmith_index_u32(1311u, 26u)]) & u_input.b.yy) | u_input.b.zz) | abs(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-var_2.a)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(global2.a, arg_0.x, false)), _wgslsmith_f_op_f32(func_3(Struct_1(-2683f, global2.d.x, u_input.a.x, vec4<u32>(1u, 39797u, 23270u, 4294967295u), 0u))), _wgslsmith_f_op_f32(f32(-1f) * -525f), -940f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, arg_2.x, -1815f, -694f), vec4<f32>(-598f, arg_2.x, global2.a, -1000f))))))));
    return Struct_1(global2.a, abs(~(~firstLeadingBit(4294967295u))), ~0i, vec4<u32>(~global2.b, ~(~_wgslsmith_sub_u32(global2.b, 30618u)), arg_1.x & ((75028u << (global2.d.x % 32u)) & 61373u), countOneBits(_wgslsmith_mod_u32(reverseBits(0u), ~83125u))), 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.yy, _wgslsmith_f_op_vec2_f32(arg_1.wx - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1438f, arg_1.x) - vec2<f32>(-645f, global2.a))))), ~vec4<u32>(arg_3, ~global2.e, 45535u, arg_3), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(global2.a * -896f))), -1444f, _wgslsmith_f_op_f32(f32(-1f) * -1501f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    return _wgslsmith_mod_i32(arg_1.c << (arg_1.e % 32u), _wgslsmith_div_i32(func_1(u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, 755f, arg_1.a, -350f)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_dot_vec4_u32(arg_1.d, vec4<u32>(arg_1.d.x, 30603u, 129815u, 15474u))).c, 1i)) << ((18946u << ((_wgslsmith_mod_u32(~arg_1.b, _wgslsmith_add_u32(106327u, 31321u)) & firstLeadingBit(global2.b >> (arg_1.e % 32u))) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2087f))), _wgslsmith_clamp_u32(global2.b, 64803u, ~_wgslsmith_mult_u32(5911u ^ global2.e, 41178u)), reverseBits(func_4(vec4<i32>(-u_input.b.x, _wgslsmith_sub_i32(global2.c, global2.c), 1i, 52331i & global3[_wgslsmith_index_u32(1u, 26u)]), func_1(~u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-613f, global2.a, global2.a, 1447f) * vec4<f32>(320f, -505f, global2.a, global2.a)), vec4<i32>(global3[_wgslsmith_index_u32(global2.b, 26u)], global2.c, global2.c, u_input.a.x), _wgslsmith_add_u32(global2.b, global2.d.x)))), abs(~(~_wgslsmith_sub_vec4_u32(global2.d, vec4<u32>(3397u, 1u, 65406u, global2.b)))), 71291u);
    global1 = _wgslsmith_mod_u32(~4294967295u, firstTrailingBit(var_0.d.x));
    global1 = reverseBits(global2.d.x);
    var var_1 = _wgslsmith_mult_u32(~0u, ~(~abs(global2.b) << (106225u % 32u)));
    var var_2 = var_0;
    let var_3 = any(!select(vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true, -2147483647i < global2.c), vec4<bool>(true, true, false, true), !select(false, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-422f, func_1(u_input.b, _wgslsmith_div_vec4_f32(vec4<f32>(-398f, var_2.a, var_0.a, var_0.a), vec4<f32>(var_0.a, global2.a, var_0.a, -1564f)), vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(37011u, 26u)]), global3[_wgslsmith_index_u32(global2.d.x, 26u)] << (69303u % 32u), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-25611i, global3[_wgslsmith_index_u32(4294967295u, 26u)])), 38828i), _wgslsmith_sub_u32(global2.d.x, 65508u)).a, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-1480f + var_2.a)), func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a, global2.a))))), global2.d, vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_f32(trunc(global2.a)))).a), _wgslsmith_mult_i32(u_input.a.x, func_2(vec2<f32>(var_0.a, 722f), _wgslsmith_div_vec4_u32(vec4<u32>(34231u, 1u, 10644u, 40648u), var_2.d), vec3<f32>(2519f, 1539f, -864f)).c | 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(43676u, 26u)], var_0.c | 2147483647i), -28346i >> (global2.b % 32u), ~(-var_2.c), max(5664i, -1i)), firstTrailingBit(max(vec4<i32>(2147483647i, var_0.c, var_0.c, var_0.c), select(vec4<i32>(38305i, var_2.c, 2147483647i, var_2.c), vec4<i32>(var_2.c, 1i, global2.c, 2147483647i), vec4<bool>(false, var_3, var_3, false))))));
}


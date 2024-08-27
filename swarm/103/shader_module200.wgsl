struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: Struct_1 = Struct_1(-30758i, vec2<f32>(1000f, 881f), 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = true;
    var var_1 = max(firstTrailingBit(vec4<i32>(max(arg_1.a, firstLeadingBit(arg_1.c)), countOneBits(_wgslsmith_sub_i32(2147483647i, global1.c)), (global1.c ^ global0[_wgslsmith_index_u32(u_input.a, 23u)]) >> (_wgslsmith_add_u32(arg_0.x, u_input.a) % 32u), ~global1.a)), vec4<i32>(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(0i, 39912i, global1.c), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, global1.a, global1.c), vec3<i32>(2147483647i, 32999i, global0[_wgslsmith_index_u32(486u, 23u)]), vec3<bool>(var_0, false, true)), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -73908i, -2147483647i) | vec3<i32>(0i, 1i, arg_1.a))), 0i, -18057i, _wgslsmith_clamp_i32(arg_1.c, _wgslsmith_div_i32(~1i, i32(-1i) * -57719i), arg_1.a)));
    var var_2 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -26280i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(select(arg_0, vec2<u32>(4294967295u, u_input.a), var_0), arg_0), ~vec2<u32>(49869u, u_input.a) << ((arg_0 ^ vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))), 23u)]), arg_1.b, arg_1.c);
    var var_3 = !select(vec2<bool>(var_0, true), vec2<bool>(true, true), vec2<bool>(false, true));
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_vec2_f32(max(arg_1.b, vec2<f32>(793f, global1.b.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 34267u), vec2<u32>(u_input.a, 0u)), Struct_1(global1.c, vec2<f32>(global1.b.x, 388f), 5641i))), vec2<f32>(global1.b.x, global1.b.x), select(true, true, global0[_wgslsmith_index_u32(23159u, 23u)] == global0[_wgslsmith_index_u32(u_input.a, 23u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(abs(vec2<u32>(u_input.a, 1u)), Struct_1(57232i, global1.b, 2147483647i))))), -global0[_wgslsmith_index_u32(~firstLeadingBit(1u) | min(~25842u, select(29601u, 0u, true)), 23u)]);
    var var_1 = Struct_1(min(reverseBits(global0[_wgslsmith_index_u32(~u_input.a, 23u)]), ~(-44840i)) << (max(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30339u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 94810u), vec4<u32>(u_input.a, 0u, u_input.a, 73719u)))) % 32u), vec2<f32>(-1128f, _wgslsmith_f_op_f32(round(global1.b.x))), abs(i32(-1i) * -35497i));
    let var_2 = 26960u;
    var var_3 = -323f;
    var var_4 = Struct_1(abs(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, 1i), vec2<i32>(var_0.c, var_1.c)), ~vec2<i32>(-2147483647i, var_1.c))), _wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, 566f))))), -24408i);
    return Struct_1(-1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1446f, var_4.b.x)) + vec2<f32>(var_4.b.x, var_4.b.x))))), global1.a);
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(366f, 648f, 2340f, -1039f), vec4<f32>(1054f, 2008f, var_0.b.x, 160f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b.x, -152f, -537f, global1.b.x), vec4<f32>(-1748f, var_0.b.x, global1.b.x, var_0.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_0.b.x, -597f, 1000f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1273f, 125f, global1.b.x), vec4<f32>(var_0.b.x, 1060f, -922f, var_0.b.x))) * vec4<f32>(global1.b.x, global1.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1471f, 621f, var_0.b.x, global1.b.x), vec4<f32>(var_0.b.x, global1.b.x, 625f, global1.b.x), false))), vec4<f32>(_wgslsmith_f_op_f32(max(global1.b.x, 211f)), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(abs(-532f)), _wgslsmith_f_op_f32(-var_0.b.x)), vec4<bool>(all(vec2<bool>(false, false)), false, true, true)))));
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    return ~_wgslsmith_dot_vec2_i32(-max(firstLeadingBit(vec2<i32>(var_0.a, 78683i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, -79567i), vec2<i32>(4179i, global1.a))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3788i, var_0.c, var_0.c), ~vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 23u)], -21787i)), func_2().a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = vec3<i32>(func_1(), firstTrailingBit(global1.a), -global0[_wgslsmith_index_u32(11088u, 23u)]);
    let var_2 = func_2();
    var var_3 = Struct_1(_wgslsmith_mod_i32(firstTrailingBit(~1i), -(_wgslsmith_clamp_i32(var_2.c, var_2.a, var_2.a) ^ (var_0 >> (1u % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.x, var_2.b.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -165f))))), select(i32(-1i) * -15260i, -_wgslsmith_clamp_i32(global1.c, global1.c, i32(-1i) * -33046i), true));
    let var_4 = true & all(!vec3<bool>(all(vec3<bool>(false, false, false)), var_2.b.x <= 1224f, true));
    var var_5 = var_2;
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_5.b.x, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -366f)), _wgslsmith_f_op_f32(-var_2.b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.x)) * _wgslsmith_f_op_f32(-var_5.b.x)), var_3.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.b.x, var_5.b.x))))));
    global1 = func_2();
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a | 11735u), var_0, vec4<i32>(global1.c, var_1.x, reverseBits(~global1.a >> (u_input.a % 32u)), -reverseBits(1i) ^ _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 23u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 23u)], var_3.c))));
}


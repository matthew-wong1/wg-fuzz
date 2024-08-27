struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: u32 = 0u;

var<private> global2: array<vec3<i32>, 4>;

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1166f, -651f), vec2<f32>(1000f, 1088f), vec2<f32>(-691f, 1387f), vec2<f32>(1224f, -1000f), vec2<f32>(217f, 1354f), vec2<f32>(338f, -147f), vec2<f32>(771f, 1000f), vec2<f32>(258f, -1000f), vec2<f32>(-1736f, 1851f), vec2<f32>(1007f, -123f), vec2<f32>(525f, 903f), vec2<f32>(476f, -2500f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(22945u, arg_2.a) >= 1u;
    global2 = array<vec3<i32>, 4>();
    var var_1 = Struct_1(60499u, -591f);
    var_1 = arg_2;
    var var_2 = arg_2;
    return Struct_1(reverseBits(~firstTrailingBit(~1u)), _wgslsmith_f_op_f32(f32(-1f) * -333f));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = func_1(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)] & false, select(true, false, false), true), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.a, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(9099u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)], true), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(52703u, 23u)])), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], false))), !vec3<bool>(4294967295u >= u_input.b, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], true)), true), true), 550f, func_1(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 23u)], !global0[_wgslsmith_index_u32(~14825u, 23u)]), _wgslsmith_f_op_f32(round(arg_1)), Struct_1(~1u, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(select(-256f, 1572f, global0[_wgslsmith_index_u32(0u, 23u)]))))));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -427f));
    global0 = array<bool, 23>();
    global2 = array<vec3<i32>, 4>();
    var var_2 = var_0;
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, 1087f, _wgslsmith_f_op_f32(var_2.b + 237f), arg_1), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b, arg_0.b, 693f, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1552f, -946f, -1149f, var_0.b) - vec4<f32>(152f, var_1.b, -455f, var_1.b)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-747f, 1340f, var_2.b, arg_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, var_2.b, 962f, var_2.b))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, -1498f, 1795f, var_1.b))), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.a, 23u)], false, true))))))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1052f, _wgslsmith_f_op_f32(f32(-1f) * -510f), 754f, _wgslsmith_f_op_f32(arg_3.b - arg_2.b)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1630f, arg_1, arg_2.b, arg_3.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_3, 412f, vec3<i32>(arg_0, 0i, arg_0)))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), arg_3.b, 433f, 654f)))));
    global1 = ~_wgslsmith_dot_vec3_u32(~u_input.d.zyx, ~u_input.d.xxx) >> (64018u % 32u);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.b, 742f, -1266f, _wgslsmith_f_op_f32(ceil(-396f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(383f, 781f, -352f, var_0.x) - vec4<f32>(432f, 634f, arg_3.b, 552f)) + vec4<f32>(-1523f, arg_1, -1000f, -709f))))));
    global3 = array<vec2<f32>, 12>();
    let var_1 = Struct_1(_wgslsmith_sub_u32(arg_2.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    return !any(vec3<bool>(all(vec3<bool>(true, false, true)), !all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(arg_2.a, 23u)], false)), global0[_wgslsmith_index_u32(4294967295u, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(37095u, 23u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(12467u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1112f)) + _wgslsmith_div_f32(-1506f, -827f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) - _wgslsmith_f_op_f32(918f - 395f)))));
    let var_1 = func_1(vec3<bool>(true, true, global0[_wgslsmith_index_u32(min(~4294967295u, 18990u), 23u)]), -880f, func_1(vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(31415u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)])), !global0[_wgslsmith_index_u32(u_input.b, 23u)], func_2(-16007i, _wgslsmith_div_f32(var_0.b, 625f), func_1(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 23u)], true, true), var_0.b, Struct_1(0u, var_0.b)), Struct_1(1u, -1000f))), -192f, Struct_1(firstTrailingBit(28797u), 1000f)));
    var_0 = var_1;
    var_0 = Struct_1(firstLeadingBit(4294967295u), 1732f);
    global0 = array<bool, 23>();
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -35181i, select(1i, _wgslsmith_clamp_i32(1i, reverseBits(-1i), i32(-1i) * -2147483647i), any(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(2890u, 23u)], global0[_wgslsmith_index_u32(u_input.d.x, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(28501u, 23u)], true, global0[_wgslsmith_index_u32(var_0.a, 23u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(46865u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)])))), -13602i >> (var_1.a % 32u), max(1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(15040i, 7587i))))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(vec4<i32>(_wgslsmith_div_i32(-2147483647i, 1i), 1i, -2147483647i, _wgslsmith_sub_i32(0i, 1i)))));
    var var_3 = ~(_wgslsmith_sub_u32(var_0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d.www, u_input.d.zyw, vec3<u32>(u_input.c.x, 0u, 0u)), u_input.d.wwy)) >> (max(1u, 3362u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(16802i);
}


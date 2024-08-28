struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = select(arg_0, arg_0, vec4<bool>(u_input.a < u_input.a, !all(vec3<bool>(true, true, false)) & any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), all(global0[_wgslsmith_index_u32(arg_0.x, 7u)]), false), false));
    global0 = array<vec4<bool>, 7>();
    var_0 = select(vec4<u32>(~(_wgslsmith_mult_u32(var_0.x, arg_0.x) << (_wgslsmith_div_u32(var_0.x, 4287u) % 32u)), 54951u, ~firstLeadingBit(arg_0.x), 23842u), ~vec4<u32>(select(21141u, var_0.x, true), 4294967295u, 1u & _wgslsmith_add_u32(1u, arg_0.x), select(firstTrailingBit(arg_0.x), _wgslsmith_dot_vec2_u32(var_0.wy, var_0.xx), true)), true);
    global0 = array<vec4<bool>, 7>();
    var var_1 = !(!select(vec3<bool>(true, any(vec2<bool>(true, false)), any(global0[_wgslsmith_index_u32(arg_0.x, 7u)])), vec3<bool>(true, true, false), true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, 1699f, 896f, -552f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, 1547f, 255f, 1222f))), vec4<f32>(-1588f, _wgslsmith_f_op_f32(ceil(-783f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(355f, -803f, var_1.x)) * _wgslsmith_f_op_f32(min(581f, -722f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -944f), 1f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1744f, 1321f, -598f, 1477f), vec4<f32>(-548f, 127f, 1000f, -1927f))) - vec4<f32>(-1383f, 1032f, 838f, -1274f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2338f * 692f), -1000f, -1689f, -1000f))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_2 {
    var var_0 = true;
    global0 = array<vec4<bool>, 7>();
    var_0 = any(vec2<bool>(any(select(vec2<bool>(arg_3.a, false), select(vec2<bool>(true, true), vec2<bool>(false, true), arg_3.a), true)), (u_input.a ^ 11793i) > _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0, -1i), vec3<i32>(arg_3.b, arg_0, -14077i)), min(vec3<i32>(-2147483647i, 39565i, arg_3.b), vec3<i32>(u_input.a, -24458i, -1i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 837f) - vec4<f32>(-1491f, 1500f, arg_2.c.x, arg_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_2.c.x, -1196f), vec4<f32>(arg_1.x, -1178f, arg_1.x, arg_2.c.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-192f, arg_2.c.x, -358f, var_1.x), vec4<f32>(-117f, arg_2.c.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(arg_2.a, 1u, 0u, arg_2.a)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 693f, arg_2.c.x, -1402f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(550f, var_1.x, var_1.x, arg_1.x) * vec4<f32>(776f, 939f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, -1742f, arg_1.x, -1091f) + vec4<f32>(var_1.x, -803f, arg_1.x, 496f)))))));
    return Struct_2(var_1.xw);
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4) -> f32 {
    global0 = array<vec4<bool>, 7>();
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(-1353f * 1908f);
    var var_1 = func_2(firstTrailingBit(-48106i), vec3<f32>(939f, arg_1, arg_1), Struct_1(arg_2.c.x, !(arg_2.b & (0u >= arg_2.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-465f, arg_1, arg_1))))))), Struct_5(arg_0.a, _wgslsmith_div_i32(-34732i, firstTrailingBit(arg_0.b) << (firstLeadingBit(9376u) % 32u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, var_1.a.x))) * vec2<f32>(arg_1, _wgslsmith_f_op_f32(ceil(105f)))), var_1.a)));
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(219f, 696f, true)) - _wgslsmith_f_op_f32(ceil(-1443f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(696f, 1035f)) - -533f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(false, 1i), 1073f, Struct_4(u_input.a, true, vec3<u32>(26988u, 53468u, 23176u))))), -1417f)), vec4<u32>(~1u, 0u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1085u, 1u)), vec3<u32>(4294967295u, 1u, firstTrailingBit(3057u))), ~(~_wgslsmith_div_u32(4294967295u, 27787u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1122f * -1368f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(190f))))), _wgslsmith_div_f32(1032f, 297f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -660f))) + _wgslsmith_f_op_f32(floor(-1009f))));
}


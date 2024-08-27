struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.d, arg_0.c.b, -717f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1351f, arg_0.c.b, arg_0.c.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !all(vec3<bool>(false, false, true)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.b, -2164f, arg_0.c.b), vec3<f32>(-1045f, 595f, arg_0.c.b))))))));
    let var_1 = arg_0.c.b;
    var var_2 = arg_0;
    var var_3 = all(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), var_1 >= var_2.c.b), false));
    let var_4 = Struct_1(~9015u ^ var_2.c.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.d, var_2.c.b))) * 592f))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1726f)) * _wgslsmith_div_f32(-319f, 790f))) + _wgslsmith_div_f32(arg_0.c.b, 218f)));
    return select(7186i == _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, var_2.b)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false), true)), !(countOneBits(arg_0.b) < 5576i)) == any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, 47734i), -10849i);
    let var_1 = vec4<bool>(false, false, !all(vec2<bool>(select(true, false, true), true)), true);
    var var_2 = select(vec4<bool>(any(var_1.xww), var_1.x, var_1.x, true), vec4<bool>(false, func_3(Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, -1i), u_input.a), var_0.x, Struct_1(25246u, -116f, 0u, 1332f)), ~_wgslsmith_sub_u32(110858u, u_input.b)), false, true), any(var_1.zx) || (0i == u_input.a.x));
    let var_3 = all(vec2<bool>(all(vec4<bool>(4294967295u == u_input.b, true | var_2.x, var_1.x, any(vec4<bool>(true, var_1.x, var_1.x, var_2.x)))), var_2.x));
    var var_4 = var_1.x;
    return Struct_4(Struct_2(u_input.a.x, Struct_1(abs(u_input.b << (u_input.b % 32u)), _wgslsmith_f_op_f32(1034f + -1241f), ~(3141u << (u_input.b % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1570f)))), var_3, ~1i, -1000f);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> vec4<f32> {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = vec2<u32>(~_wgslsmith_add_u32(62252u, ~firstLeadingBit(var_0.a.b.c)), _wgslsmith_dot_vec2_u32(arg_1.wx, ~vec2<u32>(1u, 1u)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.b.d + 370f), -273f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + -1215f))), _wgslsmith_f_op_f32(-656f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-526f + var_2), func_2().a.b.d)), 1225f));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1866f, var_2))), var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1008f)), _wgslsmith_f_op_f32(f32(-1f) * -117f))))), !vec4<bool>(!any(vec2<bool>(arg_2, arg_2)), arg_2, true | var_0.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(1u, -154f, 13606u, -177f), vec4<u32>(u_input.b, 0u, 0u, 98651u), true, u_input.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1883f, 300f, 259f, -453f) * vec4<f32>(-1000f, 963f, -379f, 1526f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-896f, -1135f, 620f, -127f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1208f, 1012f, -1000f, -1374f))), true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-888f, 632f, 930f, -772f), vec4<f32>(1231f, -422f, -772f, 1000f)), vec4<f32>(-420f, -2404f, 1921f, -284f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))))));
    var var_1 = !select(vec3<bool>(false, true || all(vec2<bool>(true, true)), all(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), all(vec4<bool>(true, true, true, true)));
    let var_2 = var_0.x;
    var_1 = !select(select(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), false), select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, true, false), var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, false, true), var_1.x), !vec3<bool>(false, var_1.x, true)), !(!vec3<bool>(var_1.x, var_1.x, false))), vec3<bool>(var_1.x, any(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false))), var_1.x), select(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, false), vec3<bool>(true, false, var_1.x)), !select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true)), select(!vec3<bool>(true, var_1.x, true), vec3<bool>(true, false, var_1.x), !vec3<bool>(var_1.x, false, var_1.x))));
    var_1 = !(!vec3<bool>(all(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), var_1.x)), _wgslsmith_div_i32(u_input.a.x, -13772i) > -1i, any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}


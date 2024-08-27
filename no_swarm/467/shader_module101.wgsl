struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: vec3<i32> = vec3<i32>(-28752i, -40024i, -10341i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(19777u, 16u)] >= 1u, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), vec2<bool>(select(true, 2u > _wgslsmith_dot_vec3_u32(arg_1.a.c, arg_1.a.c), true), true), vec2<bool>(true, true));
    let var_1 = arg_1;
    var var_2 = arg_1.a.a.x;
    global2 = vec3<i32>(max(u_input.c, firstLeadingBit(u_input.a)) | abs(countOneBits(u_input.a) | -12711i), countOneBits(abs(33277i)), -1i);
    global2 = -(~(~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 5196i, u_input.c), vec3<i32>(-1i, u_input.c, global2.x)))));
    return _wgslsmith_f_op_f32(959f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-842f)), arg_1.c, var_0.x)), -172f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-471f, arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(296f * arg_1.b.x), _wgslsmith_f_op_f32(trunc(1000f)))))));
}

fn func_2() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2638f, 1490f), vec2<f32>(-1000f, -2496f))) - vec2<f32>(549f, 1152f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -597f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -432f))))))), u_input.b, 43692u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2135f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(898f, -1222f, -1175f, -1038f), vec4<f32>(-969f, -1000f, -1277f, 1063f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, -1134f, -1596f, -1000f))), Struct_2(Struct_1(u_input.b.xyz, vec2<u32>(u_input.b.x, u_input.b.x), vec3<u32>(u_input.d.x, 3979u, 0u)), vec2<f32>(-1347f, 374f), _wgslsmith_f_op_f32(-242f * -135f)))), -1280f));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -182f, var_0.d.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -2542f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.d.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(277f, 329f)), var_1.x)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), (-5991i ^ global2.x) <= 24083i))));
    global0 = array<u32, 16>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2, vec2<f32>(var_0.d.x, 642f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -849f)))), ~u_input.b, 57788u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, var_2.x, 422f, _wgslsmith_f_op_f32(f32(-1f) * -263f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.d)) + vec4<f32>(-665f, 345f, var_0.a.x, 675f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - 678f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1677f))), var_0.d.x, -311f)));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(max(vec3<i32>(2256i, max(u_input.c, i32(-1i) * -12204i), firstLeadingBit(~global2.x)), select(vec3<i32>(global2.x, global2.x, -75663i) ^ vec3<i32>(global2.x, -11726i, 1i), abs(-vec3<i32>(-2147483647i, -9046i, 0i)), true)));
    let var_0 = 1u;
    let var_1 = false;
    var var_2 = select(select(vec2<bool>(true || var_1, !(!var_1)), !vec2<bool>(false || var_1, !var_1), true), !select(!func_1(), !select(vec2<bool>(var_1, true), vec2<bool>(false, true), vec2<bool>(var_1, var_1)), true), any(vec4<bool>(all(select(vec3<bool>(var_1, false, true), vec3<bool>(false, var_1, false), vec3<bool>(false, true, var_1))), var_1, var_1, var_1)));
    global0 = array<u32, 16>();
    let var_3 = select(select(select(vec4<bool>(true, true, any(vec3<bool>(true, var_1, var_1)), false), !global1[_wgslsmith_index_u32(abs(u_input.b.x), 27u)], select(select(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(7020u, 27u)], false), select(global1[_wgslsmith_index_u32(var_0, 27u)], vec4<bool>(false, var_2.x, true, var_1), global1[_wgslsmith_index_u32(18926u, 27u)]), 22671i > u_input.a)), vec4<bool>(any(select(global1[_wgslsmith_index_u32(21039u, 27u)], vec4<bool>(false, var_1, false, var_1), vec4<bool>(var_2.x, var_2.x, var_1, var_1))), true, true, all(vec4<bool>(true, true, true, true))), var_1), !(!select(vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(false, var_1, var_1, false), var_2.x)), false);
    let var_4 = select(vec2<bool>(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 16u)], 16u)], _wgslsmith_sub_u32(var_0, 4977u)) >= 4294967295u, true), select(vec2<bool>((u_input.d.x >= 11979u) & false, var_2.x), vec2<bool>(_wgslsmith_div_u32(u_input.d.x, 0u) != ~u_input.d.x, any(!var_3.xw)), !(!(!var_3.xz))), var_2.x);
    let var_5 = Struct_1(~u_input.b.wyx, ~(~u_input.b.yx), ~(~max(u_input.b.zxy, _wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 39469u, global0[_wgslsmith_index_u32(1u, 16u)]), u_input.b.xww))));
    var_2 = !(!func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1527f)))), -1065f)), _wgslsmith_div_f32(func_2().d.x, -1000f));
}


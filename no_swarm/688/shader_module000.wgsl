struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 390f;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(-915f, 2716f), vec3<u32>(16470u, 1u, 0u)), Struct_1(vec2<f32>(-649f, 1001f), vec3<u32>(6218u, 1u, 0u)), Struct_1(vec2<f32>(224f, -205f), vec3<u32>(25121u, 0u, 67307u)), Struct_1(vec2<f32>(1314f, -1581f), vec3<u32>(1u, 18925u, 4294967295u)), Struct_1(vec2<f32>(-1000f, -379f), vec3<u32>(1u, 2159u, 15761u)), Struct_1(vec2<f32>(-1267f, -1125f), vec3<u32>(1u, 60883u, 45048u)), Struct_1(vec2<f32>(-170f, 306f), vec3<u32>(1u, 22814u, 4294967295u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 7>();
    let var_0 = 1i;
    let var_1 = 21883u;
    var var_2 = u_input.d;
    var var_3 = u_input.d.x >> (firstLeadingBit(32157u) % 32u);
    return 1000f;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true)), vec2<bool>(false, (_wgslsmith_f_op_f32(-1236f - 449f) <= _wgslsmith_f_op_f32(-arg_1.a.x)) != !(u_input.c.x > 2668u)), vec2<bool>(true, !all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a.x, arg_1.a.x), arg_1.a))))), ~abs(u_input.c) >> (~arg_1.b % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.x))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -602f), -262f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-652f, var_1.a.x)))))), var_1.a.x);
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> i32 {
    global1 = array<Struct_1, 7>();
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(-1883i, 44319i, func_3(reverseBits(u_input.d.zyz), global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), -1i), vec4<i32>(~abs(_wgslsmith_add_i32(u_input.d.x, -1i)), firstTrailingBit(2147483647i), u_input.d.x, min(-_wgslsmith_add_i32(u_input.d.x, arg_0), -50098i)));
}

fn func_4(arg_0: vec2<i32>) -> StorageBuffer {
    global1 = array<Struct_1, 7>();
    let var_0 = ~u_input.a;
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(740f - 1f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), vec2<f32>(-432f, 638f));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_1.x + -172f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(-var_1.x)), -1413f), 1324f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), ~(u_input.d.x ^ -2147483647i), -countOneBits(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-178f, 847f, 1788f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(302f, 2785f, -1000f), vec3<f32>(831f, 1000f, 2192f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-856f, 1000f, 448f) + vec3<f32>(-196f, 539f, 784f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1019f, -1041f, 761f))) - vec3<f32>(_wgslsmith_div_f32(790f, -1410f), _wgslsmith_f_op_f32(2138f - -1911f), _wgslsmith_f_op_f32(f32(-1f) * -998f)))));
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_1 = global1[_wgslsmith_index_u32(~u_input.a, 7u)];
    var var_2 = all(!(!vec3<bool>(true, true, u_input.a <= 29763u)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, var_1.a.x, -1847f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -155f, -1148f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - 1384f), -803f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), -1842f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), -579f, _wgslsmith_f_op_f32(f32(-1f) * -1592f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1630f, -2426f))))));
    let x = u_input.a;
    s_output = func_4(vec2<i32>(u_input.d.x, firstLeadingBit(func_2(u_input.d.x, vec2<bool>(true, false), 1000f)) | abs(-1i)));
}


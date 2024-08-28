struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(732f, -1000f), vec2<f32>(1514f, -2232f), vec2<f32>(1818f, -1000f), vec2<f32>(1005f, 1531f), vec2<f32>(-237f, 391f), vec2<f32>(-917f, -930f), vec2<f32>(-182f, 1170f), vec2<f32>(234f, -303f), vec2<f32>(-445f, -853f), vec2<f32>(-840f, -1000f), vec2<f32>(240f, -333f), vec2<f32>(-472f, -1000f), vec2<f32>(-452f, 681f), vec2<f32>(-261f, -956f), vec2<f32>(483f, 2306f), vec2<f32>(-1274f, 1117f), vec2<f32>(-303f, -341f), vec2<f32>(-124f, -145f));

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_3, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global3 = array<Struct_3, 2>();
    global1 = array<vec2<f32>, 18>();
    var var_0 = select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true & select(true, true, all(vec4<bool>(false, true, true, false)))), vec4<bool>(true, (any(vec4<bool>(false, false, true, false)) | all(vec2<bool>(true, true))) && ((i32(-1i) * -2147483647i) != u_input.a.x), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, false))), true), false);
    let var_1 = arg_0.zx;
    let var_2 = !(!var_0.x);
    return _wgslsmith_div_u32(13044u, ~firstTrailingBit(0u)) << (~38711u % 32u);
}

fn func_3() -> bool {
    let var_0 = u_input.a.x;
    global2 = array<Struct_1, 11>();
    global0 = vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.x));
    var var_1 = vec2<u32>(max(select(0u, 1u, true), _wgslsmith_mod_u32(90110u, 1u)), 99635u | firstTrailingBit(0u));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, -1021f, global0.x)), vec3<f32>(780f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 905f, 761f) * vec3<f32>(-1053f, -1822f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, global0.x, global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-2230f + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f - global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -2399f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -316f) + _wgslsmith_f_op_f32(581f * 1108f)), _wgslsmith_f_op_f32(-507f * global0.x)))));
    return select(global0.x != global0.x, true, true);
}

fn func_1() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1236f, 263f, -3240f) * vec3<f32>(-998f, 205f, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, -632f, 1483f))))), 11u)];
    var var_1 = any(vec3<bool>(true, func_3(), true));
    var_0 = global2[_wgslsmith_index_u32(~6487u, 11u)];
    var var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-457f)))) * 1125f));
    var var_3 = func_2(var_0.a.zxz);
    return global2[_wgslsmith_index_u32(0u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-1i) * -countOneBits(vec2<i32>(u_input.a.x, -45241i) ^ u_input.a.zx), func_1(), false);
    global3 = array<Struct_3, 2>();
    var var_1 = var_0.b.a.x;
    var var_2 = Struct_2(select(vec2<i32>(var_0.a.x, 28713i), var_0.a & vec2<i32>(2147483647i, 0i), var_0.b.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-228f)))), func_1(), true);
    var var_3 = !func_3();
    var var_4 = Struct_2(u_input.a.zz ^ var_2.a, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.b.a))), vec4<f32>(var_2.b.a.x, _wgslsmith_f_op_f32(abs(var_2.b.a.x)), -507f, 1116f))), false);
    var var_5 = vec3<f32>(324f, -677f, _wgslsmith_f_op_f32(sign(var_0.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_5.zy), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_5.x, var_2.b.a.x), var_0.b.a.xy)))))));
}


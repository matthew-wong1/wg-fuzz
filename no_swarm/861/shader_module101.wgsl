struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1u);

var<private> global1: bool = true;

var<private> global2: u32 = 0u;

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global4: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec2<bool> {
    global1 = true;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1314f)))) * -908f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(535f, 1025f, -842f, -1241f) - vec4<f32>(745f, -653f, -217f, -744f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(189f, 1128f, -1352f, 470f))))), vec4<f32>(_wgslsmith_f_op_f32(478f + 789f), 1522f, 1074f, _wgslsmith_f_op_f32(-694f * 670f))))));
    global0 = Struct_4(abs(arg_0.x));
    global4 = 645f;
    global2 = 17028u;
    return vec2<bool>(arg_1.x & !(arg_1.x & arg_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(var_0.a))))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + 329f), var_0.a));
}

fn func_2() -> f32 {
    var var_0 = false;
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.a.xzx, u_input.a.zyw);
    var_0 = all(select(func_3(~reverseBits(vec4<u32>(4294967295u, 11561u, u_input.b.x, 1u)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_2(~u_input.b.x, -12972i, _wgslsmith_sub_u32(global0.a, global0.a))), func_3(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(1u, u_input.b.x, global0.a, 1u)), vec3<bool>(true, true, true), Struct_2(min(u_input.b.x, global0.a), 20090i, 58928u)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), select(true, true, false)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(1f)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-909f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - -861f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-560f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-435f, 1159f)))));
    global1 = var_2.b.x == _wgslsmith_f_op_f32(floor(651f));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(364f, -1124f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a)) - -1081f)))));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<bool> {
    var var_0 = !arg_0;
    var_0 = arg_1;
    global4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -470f), true));
    var var_1 = Struct_2(~13602u, -2147483647i, global0.a);
    var var_2 = Struct_4(var_1.a);
    return !vec3<bool>(arg_1, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.ywy;
    global3 = vec2<i32>(min(global3.x, _wgslsmith_div_i32(u_input.a.x, -37481i)), ~(~u_input.a.x));
    var var_1 = vec2<f32>(-1025f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-139f, 275f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1601f - 105f) + _wgslsmith_div_f32(487f, 624f)))));
    var var_2 = !select(vec3<bool>(true, true, true), !vec3<bool>(-8164i < global3.x, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(false, true)), !func_1(false, true)));
    let var_3 = Struct_2(14446u, u_input.a.x, global0.a >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.a), vec2<u32>(1u, 1u)), vec2<u32>(1u, 24929u) ^ u_input.b.zz) % 32u));
    var var_4 = 23851u;
    var var_5 = Struct_3(Struct_2(global0.a, ~abs(9430i), firstTrailingBit(u_input.b.x)), vec3<f32>(1000f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 1000f)) - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(717f)) + 1989f)), 0u, var_3, Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 329f, var_1.x, 941f), vec4<f32>(var_1.x, var_1.x, -657f, 804f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -2673f, 238f, -341f), vec4<f32>(1044f, var_1.x, 477f, var_1.x), vec4<bool>(false, true, var_2.x, var_2.x))), vec4<bool>(true, false, var_2.x, var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(145f, _wgslsmith_f_op_f32(-1367f * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-336f)))));
}


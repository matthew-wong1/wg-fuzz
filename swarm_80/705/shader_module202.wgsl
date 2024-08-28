struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1637f);

var<private> global1: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(504f, -186f), vec2<f32>(1120f, -2109f), vec2<f32>(-613f, -960f), vec2<f32>(-1095f, -799f), vec2<f32>(-776f, 1771f), vec2<f32>(192f, -266f), vec2<f32>(1331f, 1515f), vec2<f32>(-1000f, 411f), vec2<f32>(-457f, 2132f), vec2<f32>(-1076f, -133f), vec2<f32>(-690f, 2257f), vec2<f32>(621f, 402f), vec2<f32>(-657f, -589f), vec2<f32>(-252f, -1008f), vec2<f32>(-1341f, 408f), vec2<f32>(-1500f, -126f), vec2<f32>(-1546f, 2244f), vec2<f32>(-1322f, 1006f), vec2<f32>(-1160f, -669f), vec2<f32>(-1000f, 1552f), vec2<f32>(-218f, -453f), vec2<f32>(1349f, -1009f), vec2<f32>(-694f, 158f), vec2<f32>(503f, -359f), vec2<f32>(-1243f, -1410f), vec2<f32>(444f, 2167f), vec2<f32>(-1000f, 835f), vec2<f32>(1188f, 1000f), vec2<f32>(1966f, 1745f), vec2<f32>(-475f, -2369f), vec2<f32>(-1000f, -1000f), vec2<f32>(994f, 1115f));

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 42279u, 17461u, 8035u, 5461u, 54745u, 9192u, 30949u, 58002u, 19891u, 23228u, 4515u, 48904u, 43769u, 0u, 13550u, 1u, 1u, 36927u, 0u, 13757u, 1u, 1u, 4630u);

var<private> global3: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(var_0.a)));
    let var_2 = u_input.b;
    var var_3 = u_input.a;
    global2 = array<u32, 24>();
    return _wgslsmith_f_op_f32(floor(var_0.a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_1 {
    global3 = array<vec3<bool>, 22>();
    var var_0 = Struct_1(-198f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f * 1339f) - _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), vec3<f32>(-784f, arg_1.x, 466f), true, Struct_1(arg_1.x)))), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1835f, _wgslsmith_f_op_f32(-1016f + 1075f))) - global0.a));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1826f, global0.a))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = array<vec3<bool>, 22>();
    var var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a) > arg_0.a, true)));
    let var_1 = vec2<bool>(all(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), !select(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false))), false, select(false, false, true)));
    global0 = arg_0;
    global1 = array<vec2<f32>, 32>();
    return arg_0;
}

fn func_1() -> vec4<bool> {
    var var_0 = ~u_input.c;
    let var_1 = u_input.a;
    var_0 = ~(vec3<i32>(var_0.x, 17782i, -(~u_input.c.x)) & ~abs(vec3<i32>(8151i, -9499i, 31988i)));
    let var_2 = func_4(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1, 24u)], 24u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 42929u, 43488u), vec3<u32>(var_1, 32162u, var_1)), 0u), vec4<u32>(min(var_1, 1u), abs(54226u), 67017u, countOneBits(5022u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(841f, global0.a, -1189f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(457f, 719f, global0.a)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, 571f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, -1719f, 651f))))))));
    return vec4<bool>(true, true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -340f), global0.a, global0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, global0.a, global0.a, global0.a)))))));
    let var_1 = select(select(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), func_1(), -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1310f * 644f) - _wgslsmith_f_op_f32(var_0.x - -2062f))), select(vec4<bool>(false, false, func_1().x, all(vec3<bool>(true, true, false)) | any(vec4<bool>(false, true, true, true))), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), all(vec2<bool>(true, true))), vec4<bool>(!select(true, true, false), true, any(vec2<bool>(false, false)), false)), !func_1());
    var var_2 = reverseBits(firstTrailingBit(vec2<u32>(~u_input.a, abs(global2[_wgslsmith_index_u32(u_input.a, 24u)]) << (abs(24970u) % 32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(722f - var_0.x))) - _wgslsmith_f_op_f32(-global0.a))));
    let var_4 = 5869i;
    var var_5 = ~vec4<u32>(~86265u, ~(abs(global2[_wgslsmith_index_u32(0u, 24u)]) << (~0u % 32u)), ~abs(var_2.x) >> (25218u % 32u), 32619u);
    var var_6 = var_1.wz;
    var_6 = select(select(!(!select(var_1.xz, vec2<bool>(var_1.x, false), var_1.xy)), vec2<bool>(var_1.x, var_6.x), !var_1.yw), var_1.yy, var_1.x & all(vec2<bool>(var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_dot_vec3_u32(abs(~var_5.yxx), var_5.yxw)), ~(~(~reverseBits(vec4<u32>(u_input.b, 1u, global2[_wgslsmith_index_u32(u_input.a, 24u)], var_2.x)))), 4294967295u << (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.b, 26647u)), max(vec2<u32>(u_input.a, u_input.b), _wgslsmith_sub_vec2_u32(var_5.wz, vec2<u32>(var_2.x, 34085u)))) % 32u), u_input.a);
}


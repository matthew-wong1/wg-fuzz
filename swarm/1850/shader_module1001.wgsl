struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(56048u, 41998u), vec4<f32>(-1445f, -998f, 217f, 663f), vec2<bool>(false, true)), Struct_1(vec2<u32>(4113u, 28188u), vec4<f32>(2178f, -242f, -1693f, -765f), vec2<bool>(true, false)), Struct_1(vec2<u32>(35667u, 0u), vec4<f32>(1511f, -796f, 1085f, -547f), vec2<bool>(true, true)), Struct_1(vec2<u32>(9710u, 1u), vec4<f32>(-292f, -977f, -1505f, 289f), vec2<bool>(false, false)), Struct_1(vec2<u32>(1u, 8337u), vec4<f32>(858f, -864f, 303f, 476f), vec2<bool>(true, false)), Struct_1(vec2<u32>(11962u, 1u), vec4<f32>(390f, -1148f, -2058f, -812f), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-1000f, -998f, 331f, -1296f), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 83011u), vec4<f32>(-517f, -1000f, 1131f, -245f), vec2<bool>(true, false)), Struct_1(vec2<u32>(33114u, 37855u), vec4<f32>(157f, 421f, -1071f, 352f), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 26697u), vec4<f32>(-101f, 733f, 521f, 1389f), vec2<bool>(true, false)), Struct_1(vec2<u32>(23795u, 30677u), vec4<f32>(-1128f, -2009f, -1903f, 187f), vec2<bool>(true, true)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(890f, -673f, -281f, 697f), vec2<bool>(true, false)), Struct_1(vec2<u32>(79965u, 51142u), vec4<f32>(-572f, -1073f, 447f, 1214f), vec2<bool>(false, true)), Struct_1(vec2<u32>(28909u, 4294967295u), vec4<f32>(-299f, 504f, -374f, 414f), vec2<bool>(true, true)), Struct_1(vec2<u32>(41671u, 0u), vec4<f32>(856f, -1158f, -157f, -1344f), vec2<bool>(true, true)), Struct_1(vec2<u32>(1u, 12717u), vec4<f32>(514f, -636f, -1113f, 1000f), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 23926u), vec4<f32>(2063f, 354f, -713f, -1000f), vec2<bool>(false, false)), Struct_1(vec2<u32>(3990u, 0u), vec4<f32>(-1807f, 606f, -253f, -551f), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 25097u), vec4<f32>(-1457f, -1781f, 1122f, 1000f), vec2<bool>(false, false)), Struct_1(vec2<u32>(25689u, 0u), vec4<f32>(2296f, 740f, 1870f, -1452f), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 25361u), vec4<f32>(1581f, 248f, -1825f, -1000f), vec2<bool>(false, true)), Struct_1(vec2<u32>(24812u, 0u), vec4<f32>(1288f, -911f, -374f, -1000f), vec2<bool>(true, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = 24222i;
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_1 = arg_3;
    return arg_2.a.x;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_0 = ~abs(~abs(arg_3.a.x)) < ~25923u;
    var var_1 = arg_2.b.xxy;
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.a, arg_3.a), vec2<u32>(firstTrailingBit(arg_2.a.x), ~arg_3.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_3.b))) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_3.b.x), -182f, _wgslsmith_f_op_f32(-225f - arg_0))), arg_2.b, false)), vec2<bool>(!arg_2.c.x, !arg_3.c.x));
    return var_2.c;
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 22>();
    let var_0 = all(select(func_3(_wgslsmith_f_op_f32(374f - 608f), u_input.a.x, Struct_1(vec2<u32>(30055u, 4294967295u), vec4<f32>(-1000f, 1000f, -1943f, 1000f), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(1835f, -1023f, 1279f, 1000f), vec2<bool>(false, false))), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))) & true;
    let var_1 = min(u_input.a.x, -1i);
    let var_2 = vec3<f32>(-586f, _wgslsmith_f_op_f32(select(-674f, _wgslsmith_f_op_f32(abs(-153f)), true || var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2390f) + -1067f) + -525f)));
    global0 = array<Struct_1, 22>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 22u)];
    let var_1 = !(!vec2<bool>(reverseBits(var_0.a.x) <= func_1(var_0.b.x, vec3<u32>(1962u, var_0.a.x, 47736u), Struct_1(vec2<u32>(16328u, 1u), var_0.b, var_0.c), global0[_wgslsmith_index_u32(62766u, 22u)]), false));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.b.ywz - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-279f * 228f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-712f * 645f)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -598f), var_0.b.x), true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), var_0.b)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.b.x, -1000f, var_2.x))), _wgslsmith_f_op_vec4_f32(-var_0.b), vec4<bool>(var_0.c.x == var_0.c.x, !var_0.c.x, true, var_1.x)))) - vec4<f32>(506f, 835f, var_0.b.x, _wgslsmith_f_op_f32(trunc(811f))));
    let var_4 = Struct_1(abs(max(vec2<u32>(var_0.a.x, func_1(var_2.x, vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(var_0.a, var_3, var_0.c), global0[_wgslsmith_index_u32(19405u, 22u)])), abs(~vec2<u32>(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(var_3 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 921f, var_2.x, -408f))))), select(vec2<bool>(all(var_0.c), true), var_0.c, select(false, true, true)));
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1103f)) - var_3.x)), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(var_3.x)))), 862f, _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(f32(-1f) * -554f))));
}


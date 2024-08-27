struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(33109u, 1u), true);

var<private> global2: bool;

var<private> global3: array<u32, 17> = array<u32, 17>(1u, 0u, 0u, 62735u, 7112u, 4294967295u, 19798u, 48357u, 0u, 1u, 25777u, 1u, 31057u, 1u, 17655u, 4294967295u, 34185u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global3 = array<u32, 17>();
    var var_0 = 1410f;
    var var_1 = _wgslsmith_sub_vec3_u32(~countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(22659u, 17u)], u_input.b.x), u_input.b)), ~u_input.b);
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(108f, 317f, -287f, arg_2))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -507f, arg_2, -565f), vec4<f32>(1000f, arg_3, -912f, arg_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -283f, arg_2, arg_2)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, -780f, -499f), vec4<f32>(1052f, -328f, arg_2, -1648f), vec4<bool>(true, global1.b, global1.b, global1.b))))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-561f + _wgslsmith_f_op_f32(trunc(-147f))), -375f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -1403f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))), var_0.x, arg_2))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, arg_3, arg_2, -321f))))));
    global0 = array<vec4<u32>, 22>();
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_0.zz))))));
    let var_2 = false;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2 * arg_3), _wgslsmith_f_op_f32(abs(-1134f))), var_1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_0.zy)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> i32 {
    global2 = !(!((false & arg_1.x) & true));
    let var_0 = vec2<i32>(u_input.c, u_input.d.x);
    global2 = arg_2.b;
    let var_1 = func_2(vec4<bool>(global1.b, select((true || global1.b) & func_2(vec4<bool>(false, false, true, true), -87981i, Struct_1(vec2<u32>(u_input.a, 4294967295u), global1.b), vec4<f32>(1446f, arg_0.x, arg_3, -752f)).b, arg_2.a.x != (u_input.a ^ 1535u), true), true, all(vec4<bool>(func_2(vec4<bool>(arg_1.x, arg_2.b, global1.b, arg_1.x), 1i, arg_2, vec4<f32>(-1000f, -137f, -342f, 1778f)).b, arg_2.b, !global1.b, true))), -var_0.x, func_2(!select(!vec4<bool>(false, arg_1.x, false, arg_2.b), select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(false, true, false, false), vec4<bool>(arg_1.x, global1.b, false, global1.b)), true), -2147483647i, arg_2, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_3), _wgslsmith_f_op_f32(1237f - arg_3), _wgslsmith_f_op_f32(arg_0.x + 1619f), _wgslsmith_f_op_f32(min(201f, 375f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-1377f - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3)))));
    var var_2 = func_2(select(vec4<bool>(all(arg_1), any(select(vec3<bool>(arg_2.b, arg_1.x, arg_1.x), vec3<bool>(var_1.b, arg_1.x, var_1.b), true)), arg_2.b, arg_2.b), !vec4<bool>(arg_2.b, false, var_1.b && false, all(arg_1)), vec4<bool>(all(vec2<bool>(var_1.b, arg_2.b)), !(!arg_2.b), true, all(vec4<bool>(arg_1.x, arg_2.b, arg_2.b, arg_1.x)))), 1i, Struct_1(reverseBits(~vec2<u32>(u_input.b.x, 1u)), var_1.b || true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 330f, arg_3, arg_3), vec4<f32>(1099f, -329f, arg_0.x, -790f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, arg_3, 627f, -665f) - vec4<f32>(-525f, 1937f, arg_0.x, 130f)))))));
    return -1i;
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_div_u32(430u & firstTrailingBit(4294967295u), ~firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b.x, 17u)] ^ u_input.a)) & reverseBits(~0u);
    let var_1 = _wgslsmith_mod_i32(func_4(_wgslsmith_f_op_vec2_f32(func_3(func_2(vec4<bool>(false, false, global1.b, true), -arg_1, Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(22200u, 17u)], global3[_wgslsmith_index_u32(20381u, 17u)]), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1024f, -344f, arg_0) * vec4<f32>(-549f, arg_0, 445f, arg_0))), abs(-517i), arg_0, -1000f)), select(!(!vec3<bool>(global1.b, false, true)), vec3<bool>(global1.b, global1.b && global1.b, select(global1.b, global1.b, global1.b)), !(!vec3<bool>(false, global1.b, global1.b))), Struct_1(min(~u_input.b.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(28304u, 0u), global1.a, u_input.b.xy)), true), -104f), -(u_input.d.x & -2147483647i));
    var var_2 = select(!select(vec2<bool>(40311u <= global1.a.x, func_2(vec4<bool>(global1.b, global1.b, false, true), var_1, Struct_1(vec2<u32>(4294967295u, global1.a.x), global1.b), vec4<f32>(arg_0, arg_0, 1387f, arg_0)).b), select(select(vec2<bool>(false, global1.b), vec2<bool>(false, global1.b), global1.b), select(vec2<bool>(global1.b, true), vec2<bool>(true, true), vec2<bool>(global1.b, false)), global1.b && global1.b), !(global1.b & true)), !select(!vec2<bool>(false, global1.b), vec2<bool>(true, 51445u <= var_0), global1.b), func_2(vec4<bool>(global1.b & global1.b, global1.b, all(!vec3<bool>(global1.b, false, false)), false), (i32(-1i) * -arg_1) | arg_1, func_2(!vec4<bool>(global1.b, global1.b, false, global1.b), min(-1i, select(var_1, -1i, false)), func_2(!vec4<bool>(global1.b, false, true, false), u_input.d.x, func_2(vec4<bool>(global1.b, true, false, global1.b), 1i, Struct_1(global1.a, global1.b), vec4<f32>(arg_0, -392f, -252f, 2473f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(264f, 214f, arg_0, 1462f) + vec4<f32>(arg_0, arg_0, arg_0, -408f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(226f, -1004f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, arg_0, arg_0, -1581f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1f), arg_0, arg_0, arg_0)).b);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 192f))) + arg_0)), -1121f, arg_0, 1130f);
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-282f)), 1f, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + 287f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(arg_0 * 1003f), _wgslsmith_f_op_f32(-202f + -491f), _wgslsmith_f_op_f32(331f + arg_0)) - vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), -1049f, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global1.a, false), 1i, arg_0, var_3.x)).x, var_3.x))));
    return !select(!(!vec2<bool>(var_2.x, false)), vec2<bool>((false | var_2.x) & true, firstTrailingBit(4294967295u) <= 17094u), vec2<bool>(any(select(vec3<bool>(global1.b, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x), vec3<bool>(global1.b, global1.b, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f - _wgslsmith_div_f32(-550f, -1851f)))), u_input.c << (select(29896u, u_input.a, true) % 32u));
    global2 = !(any(vec3<bool>(true, true, true)) | all(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~u_input.c)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), ~global1.a << (select(vec2<u32>(global1.a.x, 68518u), ~vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)) % vec2<u32>(32u))), global1.b);
    let var_2 = var_1;
    global2 = var_1.b;
    global3 = array<u32, 17>();
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1463f * -186f)))))));
    global3 = array<u32, 17>();
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(432f, _wgslsmith_f_op_f32(max(2106f, 187f)), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(443f, -386f, 2191f) - vec3<f32>(723f, -238f, 1122f))))));
}


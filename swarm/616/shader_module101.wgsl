struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
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

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(65201i, 19925i), vec2<i32>(18142i, -8280i), vec2<i32>(i32(-2147483648), -822i), vec2<i32>(-1i, 25501i), vec2<i32>(2147483647i, 1i), vec2<i32>(38482i, 0i), vec2<i32>(8604i, 22668i), vec2<i32>(-1i, -55880i), vec2<i32>(45520i, 32795i), vec2<i32>(20381i, 0i), vec2<i32>(-1i, -286i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 18891i), vec2<i32>(-63i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(0i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-57369i, -1i), vec2<i32>(-38406i, -1i), vec2<i32>(40930i, -1i), vec2<i32>(-34019i, 1i), vec2<i32>(1i, -36882i), vec2<i32>(-22137i, 0i), vec2<i32>(i32(-2147483648), -49060i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(31509i, -1i), vec2<i32>(i32(-2147483648), -53081i));

var<private> global1: f32;

var<private> global2: Struct_4;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> f32 {
    global3 = abs(u_input.d.ww ^ firstTrailingBit(~u_input.d.xz));
    let var_0 = Struct_2(global2.b.a, global2.d);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -887f), Struct_1(vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x))), global2.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x * 1163f) - _wgslsmith_f_op_f32(-global2.c)))), select(select(vec3<bool>(global2.e < 1u, any(vec4<bool>(false, false, false, true)), all(vec4<bool>(false, true, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), false), any(vec3<bool>(true, true, true))), false);
    let var_2 = var_0;
    global1 = _wgslsmith_f_op_f32(-var_1.a);
    return _wgslsmith_f_op_f32(1541f * _wgslsmith_f_op_f32(-var_2.b.a.x));
}

fn func_2() -> Struct_2 {
    let var_0 = ~0u;
    global0 = array<vec2<i32>, 29>();
    let var_1 = Struct_3(global2.b.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1097f, 1f, _wgslsmith_div_f32(-540f, global2.a.x), _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global2.d.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, -2077f, global2.b.a.x, 950f)))))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)))), any(vec2<bool>(!all(vec2<bool>(true, false)), true | (global2.c == global2.c))));
    let var_2 = ~min(firstTrailingBit(vec3<u32>(1u, 1u, ~0u)), min(~countOneBits(vec3<u32>(52687u, var_0, 56058u)), max(firstTrailingBit(u_input.d.wzz), ~vec3<u32>(var_0, 1u, 23897u))));
    global0 = array<vec2<i32>, 29>();
    return Struct_2(var_1.b.a, global2.d);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: u32) -> vec4<f32> {
    global0 = array<vec2<i32>, 29>();
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_vec2_f32(global2.a.xy, arg_0.yy);
    var var_2 = vec3<f32>(func_2().a.x, global2.b.a.x, global2.b.a.x);
    global3 = firstLeadingBit(vec2<u32>(global3.x, ~(0u | global3.x)));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1615f, global2.a.x)), global2.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-513f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = global2.b;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-141f, global2.c, -962f, -551f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a.x, global2.d.a.x, global2.a.x, global2.d.a.x)))), global2.b), Struct_1(_wgslsmith_f_op_vec4_f32(func_1(global2.b.a.xyy, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(6664i, -10340i)), _wgslsmith_div_u32(87321u, ~global3.x)))), vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1050f >= global2.d.a.x)), ~_wgslsmith_mult_i32(-2147483647i, u_input.b) <= (u_input.b ^ 2147483647i)));
    global2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), -2159f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(467f - _wgslsmith_div_f32(1224f, global2.a.x))))), Struct_1(vec4<f32>(global2.a.x, 272f, -432f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1509f, -804f)))), _wgslsmith_f_op_f32(-1f), global2.b, abs(firstLeadingBit(global3.x >> (_wgslsmith_mod_u32(global2.e, 0u) % 32u))));
    global1 = func_2().a.x;
    var var_1 = (countOneBits(vec2<u32>(~101014u, _wgslsmith_mod_u32(global3.x, global2.e))) & vec2<u32>(4294967295u, global3.x)) | ~(~u_input.d.yw);
    let var_2 = !var_0;
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(step(global2.b.a.x, global2.d.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-562f * global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f + global2.a.x))), -843f), func_2().b, -1424f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(global2.b.a.x, 947f, true)), global2.b.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1056f, global2.c)))), _wgslsmith_f_op_f32(1437f - 1f))), 4294967295u);
    let var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-283f * _wgslsmith_div_f32(global2.c, 2285f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1394f - 146f), _wgslsmith_f_op_f32(-var_3.d.a.x)))), var_3.c, _wgslsmith_f_op_f32(select(var_3.b.a.x, global2.a.x, var_0 & var_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c * global2.a.x), func_2().b.a.x) + global2.d.a.x)), func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.a.x, var_4.a.x))));
}


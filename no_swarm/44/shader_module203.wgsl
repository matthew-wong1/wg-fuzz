struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(741f, 347f), true, vec3<u32>(27768u, 1u, 17888u)), Struct_1(vec2<f32>(169f, -1931f), true, vec3<u32>(60684u, 53705u, 63497u)), Struct_1(vec2<f32>(-3075f, 715f), false, vec3<u32>(41398u, 4294967295u, 0u)), Struct_1(vec2<f32>(-1960f, 511f), false, vec3<u32>(71879u, 4294967295u, 4294967295u)), Struct_1(vec2<f32>(-1969f, 634f), false, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec2<f32>(1456f, 508f), false, vec3<u32>(69966u, 45411u, 1321u)), Struct_1(vec2<f32>(-153f, 855f), false, vec3<u32>(83473u, 8875u, 46730u)), Struct_1(vec2<f32>(-863f, 895f), true, vec3<u32>(4294967295u, 35280u, 42673u)), Struct_1(vec2<f32>(-179f, 1000f), true, vec3<u32>(0u, 85452u, 1u)), Struct_1(vec2<f32>(1074f, -211f), true, vec3<u32>(17036u, 44893u, 0u)), Struct_1(vec2<f32>(-610f, 549f), true, vec3<u32>(32101u, 4294967295u, 21908u)), Struct_1(vec2<f32>(578f, 510f), false, vec3<u32>(1u, 34676u, 18977u)), Struct_1(vec2<f32>(-140f, 191f), false, vec3<u32>(16921u, 4294967295u, 0u)), Struct_1(vec2<f32>(-608f, -911f), true, vec3<u32>(62649u, 4294967295u, 21903u)), Struct_1(vec2<f32>(926f, 463f), true, vec3<u32>(4294967295u, 0u, 37538u)), Struct_1(vec2<f32>(-1000f, 664f), true, vec3<u32>(0u, 4294967295u, 5590u)), Struct_1(vec2<f32>(1000f, 415f), false, vec3<u32>(0u, 1u, 1u)), Struct_1(vec2<f32>(-1413f, 1471f), true, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec2<f32>(1000f, 2007f), true, vec3<u32>(11716u, 4294967295u, 0u)), Struct_1(vec2<f32>(-779f, 963f), false, vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec2<f32>(1044f, 1063f), false, vec3<u32>(47042u, 37508u, 53980u)), Struct_1(vec2<f32>(902f, -146f), false, vec3<u32>(75263u, 0u, 1u)), Struct_1(vec2<f32>(1000f, 592f), true, vec3<u32>(30237u, 28724u, 71268u)), Struct_1(vec2<f32>(734f, -1000f), false, vec3<u32>(1u, 45144u, 4294967295u)), Struct_1(vec2<f32>(2321f, 1000f), true, vec3<u32>(19242u, 4294967295u, 0u)), Struct_1(vec2<f32>(-1000f, 244f), false, vec3<u32>(33360u, 39576u, 0u)), Struct_1(vec2<f32>(-136f, -816f), false, vec3<u32>(0u, 47138u, 4294967295u)), Struct_1(vec2<f32>(180f, 1063f), true, vec3<u32>(75367u, 59697u, 0u)), Struct_1(vec2<f32>(113f, 737f), true, vec3<u32>(1u, 4294967295u, 48317u)), Struct_1(vec2<f32>(-1955f, -478f), true, vec3<u32>(4294967295u, 21594u, 1u)), Struct_1(vec2<f32>(-362f, 1609f), true, vec3<u32>(10507u, 4294967295u, 0u)));

var<private> global1: array<vec3<i32>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    global0 = array<Struct_1, 31>();
    var var_0 = ~arg_0.x;
    let var_1 = arg_2.c.x;
    let var_2 = arg_0;
    var var_3 = arg_2.b;
    return !select(vec2<bool>(any(vec4<bool>(false, false, arg_1.b, true)), true), vec2<bool>(!arg_1.b, arg_2.b), true);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> bool {
    global1 = array<vec3<i32>, 2>();
    let var_0 = arg_1;
    var var_1 = select(!select(vec4<bool>(!arg_1.b, any(vec4<bool>(false, var_0.b, true, arg_1.b)), true, all(vec3<bool>(arg_1.b, false, true))), vec4<bool>(arg_1.a.x == arg_0.x, true, false, true), vec4<bool>(all(vec3<bool>(false, false, var_0.b)), true, false, true)), vec4<bool>(true, var_0.b, !var_0.b, !var_0.b), vec4<bool>(arg_1.b, arg_1.b, true, !(!(!var_0.b))));
    global0 = array<Struct_1, 31>();
    let var_2 = arg_2;
    return var_0.c.x < _wgslsmith_mod_u32(firstLeadingBit(~arg_3 | 1u), _wgslsmith_sub_u32(arg_3, 4294967295u >> (var_0.c.x % 32u)));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 31>();
    return vec3<bool>(arg_0.b, !arg_0.b, !func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, 578f) - vec3<f32>(-278f, 1416f, arg_0.a.x)), global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 732f, arg_0.a.x) + vec3<f32>(534f, arg_0.a.x, arg_0.a.x)))), arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.d, 7587u)) | ~26349u) > _wgslsmith_dot_vec4_u32(~vec4<u32>(11606u, u_input.d, u_input.c.x, 44427u), u_input.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1431f * 2329f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-930f * 840f) + _wgslsmith_f_op_f32(trunc(-493f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(629f, 162f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(2034f, _wgslsmith_f_op_f32(-1f)))), select(vec2<bool>(false, true), select(select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)), vec2<bool>(var_0, var_0), !var_0), !vec2<bool>(true, var_0), select(vec2<bool>(var_0, var_0), func_1(vec4<u32>(0u, u_input.b, 1u, 21191u), global0[_wgslsmith_index_u32(122800u, 31u)], global0[_wgslsmith_index_u32(43202u, 31u)], -12008i), !vec2<bool>(true, var_0))), vec2<bool>(select(all(vec2<bool>(true, false)), true, func_1(vec4<u32>(6065u, 41639u, 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(u_input.d, 31u)], Struct_1(vec2<f32>(1224f, -1000f), var_0, vec3<u32>(u_input.b, 9197u, 0u)), -1i).x), !(!var_0)))));
    let var_2 = ~u_input.b;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 31u)];
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1091f, _wgslsmith_f_op_f32(round(var_3.a.x)))), any(select(!func_2(Struct_1(vec2<f32>(-492f, 317f), true, vec3<u32>(4294967295u, 1u, 55705u))), !select(vec3<bool>(var_3.b, true, var_3.b), vec3<bool>(var_3.b, false, true), vec3<bool>(var_0, true, var_0)), vec3<bool>(!var_0, any(vec3<bool>(var_3.b, true, var_0)), var_0))), u_input.c.xww);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~1i, var_3.a.x);
}


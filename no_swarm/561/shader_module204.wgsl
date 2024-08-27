struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 12296u, 0u), vec3<u32>(0u, 1u, 34080u), vec3<u32>(2489u, 4294967295u, 4294967295u), vec3<u32>(95366u, 0u, 4294967295u), vec3<u32>(31999u, 59859u, 5325u), vec3<u32>(1u, 87575u, 74570u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(31380u, 93511u, 7680u), vec3<u32>(25447u, 4294967295u, 64981u), vec3<u32>(0u, 13401u, 0u), vec3<u32>(12729u, 16105u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4116u, 47605u, 1u), vec3<u32>(67222u, 26289u, 4294967295u), vec3<u32>(0u, 0u, 45772u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 66144u, 12831u), vec3<u32>(1u, 1u, 40327u), vec3<u32>(4294967295u, 15457u, 20346u), vec3<u32>(0u, 31401u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(11001u, 0u, 35135u), vec3<u32>(14751u, 4294967295u, 32633u), vec3<u32>(4294967295u, 46089u, 24290u), vec3<u32>(35242u, 4294967295u, 67777u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(28722u, 4294967295u, 36256u), vec3<u32>(15574u, 4294967295u, 41601u));

var<private> global3: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(2887u, 0u), vec2<u32>(0u, 1u), vec2<u32>(2506u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4471u, 67919u), vec2<u32>(86467u, 4294967295u), vec2<u32>(54585u, 8204u), vec2<u32>(26745u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 339u), vec2<u32>(34262u, 0u), vec2<u32>(37879u, 0u), vec2<u32>(8631u, 38913u), vec2<u32>(54096u, 0u), vec2<u32>(820u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(10341u, 0u), vec2<u32>(23074u, 51870u), vec2<u32>(18661u, 1u), vec2<u32>(27520u, 89378u), vec2<u32>(4294967295u, 23019u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(!(!(!(!vec3<bool>(arg_1.x, false, arg_1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(938f - _wgslsmith_f_op_f32(f32(-1f) * -2248f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1194f)) + _wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(max(-2473f, -2279f)))), !all(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(false, true, true), vec3<bool>(arg_1.x, true, true))))));
    let var_1 = 1u;
    var var_2 = ~u_input.a;
    global0 = 0u;
    global1 = select(global3[_wgslsmith_index_u32(~23443u & arg_2, 23u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(select(global2[_wgslsmith_index_u32(u_input.b, 29u)], vec3<u32>(global1.x, 1u, global1.x), var_0.a.x) & vec3<u32>(u_input.b, u_input.b, 19216u)), vec3<u32>(global1.x, firstTrailingBit(_wgslsmith_add_u32(arg_2, arg_2)), 1u)), 23u)], !(true | arg_1.x));
    return -600f;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.yx, vec2<bool>(true, false), global1.x)) * arg_0))))));
    let var_1 = ~arg_2.x;
    var var_2 = true;
    var var_3 = ~firstLeadingBit(~firstTrailingBit(global2[_wgslsmith_index_u32(global1.x, 29u)] << (vec3<u32>(0u, u_input.b, global1.x) % vec3<u32>(32u))));
    let var_4 = true;
    return select(all(!(!vec4<bool>(true, var_4, var_4, var_4))) | var_4, var_4, any(select(select(!vec3<bool>(false, false, var_4), !vec3<bool>(var_4, true, true), select(vec3<bool>(var_4, var_4, true), vec3<bool>(false, var_4, false), vec3<bool>(var_4, var_4, false))), vec3<bool>(var_4, true, var_4), vec3<bool>(any(vec2<bool>(false, var_4)), false, all(vec3<bool>(true, var_4, false))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: f32) -> vec2<i32> {
    global3 = array<vec2<u32>, 23>();
    let var_0 = !vec4<bool>(true & !select(true, true, false), func_2(arg_1.x, -u_input.c, -vec2<i32>(0i, 58388i)), true, true);
    var var_1 = any(var_0.yy);
    let var_2 = ~u_input.c;
    return u_input.c.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.c.x, max(max(-24055i, _wgslsmith_dot_vec2_i32(func_1(u_input.a.yy, vec4<f32>(-1000f, 1213f, 481f, -1645f), vec2<f32>(-496f, 422f), 1980f), max(u_input.a.wz, u_input.c.zz))), u_input.a.x));
    var_0 = _wgslsmith_mod_i32(u_input.c.x, u_input.a.x);
    global3 = array<vec2<u32>, 23>();
    var var_1 = !(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = Struct_1(vec3<bool>(false, true, all(select(!vec2<bool>(var_1.x, var_1.x), select(var_1.yz, var_1.yz, var_1.zy), var_1.x))), 1781f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_2.b)), var_2.b, true))), u_input.c.x, select(~abs(global3[_wgslsmith_index_u32(39334u, 23u)]) >> (~min(vec2<u32>(global1.x, global1.x), global3[_wgslsmith_index_u32(u_input.b, 23u)]) % vec2<u32>(32u)), ~vec2<u32>(global1.x >> (0u % 32u), 4294967295u), !(!vec2<bool>(var_1.x, var_1.x))));
}


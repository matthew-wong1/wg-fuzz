struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 7>;

var<private> global2: vec2<f32>;

var<private> global3: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0.a * -377f));
    var_0 = arg_1;
    var var_2 = 27489i & u_input.a.x;
    let var_3 = !vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(2315u << (u_input.c.x % 32u), 7u)], any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 7u)], false, global1[_wgslsmith_index_u32(1u, 7u)])), true)), -14713i > select(select(-2147483647i, -19350i, false), ~u_input.a.x, false));
    return ~vec2<u32>(global0.x, firstTrailingBit((1u >> (arg_2 % 32u)) | _wgslsmith_clamp_u32(global0.x, u_input.b, 0u)));
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = Struct_1(global2.x);
    var var_1 = -vec2<i32>(2147483647i, u_input.d);
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), 841f, _wgslsmith_div_f32(-830f, -416f), _wgslsmith_f_op_f32(trunc(195f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2077f, _wgslsmith_f_op_f32(max(-1000f, -257f)), _wgslsmith_f_op_f32(176f - -2092f), 574f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2004f, 240f, 485f, global2.x)))));
    let var_4 = global1[_wgslsmith_index_u32(u_input.c.x | abs(firstLeadingBit(select(u_input.c.x, max(u_input.b, global0.x), !global1[_wgslsmith_index_u32(23233u, 7u)]))), 7u)];
    return global1[_wgslsmith_index_u32(~38439u, 7u)];
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    global1 = array<bool, 7>();
    let var_0 = vec4<bool>(!func_3(_wgslsmith_mult_u32(u_input.b >> (1u % 32u), global0.x), abs(abs(29370u))), arg_0, all(select(vec4<bool>(any(vec4<bool>(arg_1.x, true, true, arg_0)), arg_2.a < 112f, any(vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(select(global0.x, 27092u, true), 7u)]), vec4<bool>(true | global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global1[_wgslsmith_index_u32(60018u, 7u)], true, true), !vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.b, 7u)], arg_0, true))), any(arg_1));
    global1 = array<bool, 7>();
    let var_1 = arg_2;
    global3 = 284u;
    return select(!arg_1.x, arg_0, arg_2.a == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) * -957f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~abs(_wgslsmith_sub_vec2_u32(func_1(Struct_1(207f), Struct_1(-1001f), u_input.c.x), ~u_input.c)));
    let var_0 = !vec2<bool>(!(global0.x == 1u) | global1[_wgslsmith_index_u32(101653u << (_wgslsmith_mod_u32(0u, global0.x) % 32u), 7u)], false);
    var var_1 = vec2<bool>(true, !all(vec2<bool>(func_2(global1[_wgslsmith_index_u32(31893u, 7u)], vec3<bool>(true, true, true), Struct_1(global2.x)), all(vec3<bool>(true, var_0.x, true)))));
    let var_2 = vec4<bool>(global2.x >= -111f, false, any(select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(false, true, var_1.x), !global1[_wgslsmith_index_u32(4294967295u, 7u)]), select(vec3<bool>(var_1.x, false, false), select(vec3<bool>(var_1.x, var_0.x, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(34831u, 7u)], false, false)), !var_0.x), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], true, var_1.x))), global1[_wgslsmith_index_u32(countOneBits(countOneBits(~countOneBits(128514u))), 7u)]);
    global3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~global0.x, _wgslsmith_mult_u32(global0.x, _wgslsmith_mult_u32(68611u, 1u)), global0.x), vec3<u32>(_wgslsmith_sub_u32(abs(global0.x), global0.x), 5689u, 0u));
    var_1 = var_2.xz;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f)) + _wgslsmith_f_op_f32(step(1f, -692f))));
    global1 = array<bool, 7>();
    var var_4 = Struct_1(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-4178i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(644f, var_3.a, 145f, global2.x) * vec4<f32>(var_4.a, 1006f, 205f, var_3.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(345f, -896f, 139f, var_4.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_4.a, -1619f, global2.x) * vec4<f32>(global2.x, 486f, -245f, var_3.a)))) * vec4<f32>(var_4.a, var_3.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_4.a, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f + var_4.a) - var_4.a))));
}


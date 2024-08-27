struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: array<Struct_3, 21>;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = !(global2.a.b > _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 164f) + _wgslsmith_f_op_f32(sign(arg_0.b))));
    var var_1 = true;
    var var_2 = vec3<i32>(~19781i, 1i, global2.a.a.x << (max(1u, _wgslsmith_add_u32(0u, 29884u)) % 32u));
    let var_3 = global2.a;
    let var_4 = 39792i;
    return vec4<u32>(4294967295u, countOneBits(~(~(~20678u))), _wgslsmith_clamp_u32(46668u, 1u, ~1u), _wgslsmith_div_u32(~(max(4982u, 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(676u, 0u, 75199u, 4294967295u)) % 32u)), select(countOneBits(29588u), _wgslsmith_clamp_u32(4294967295u, 1u, 0u), true) ^ ~(~0u)));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global2 = Struct_2(global2.a);
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 21u)];
    return (select(vec4<u32>(~9048u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 75253u, var_0.a), vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)), _wgslsmith_clamp_u32(1u, var_0.a, 0u), 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(25591u, var_0.a, var_0.a, var_0.a) << (vec4<u32>(var_0.a, var_0.a, 0u, var_0.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(18047u, var_0.a, var_0.a, var_0.a), vec4<u32>(23477u, 56837u, 3747u, var_0.a))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)) << (abs(abs(~vec4<u32>(44424u, var_0.a, 76988u, var_0.a))) % vec4<u32>(32u))) ^ min(~select(func_3(Struct_1(vec2<i32>(u_input.a.x, -30078i), 336f)), max(vec4<u32>(4294967295u, 1u, var_0.a, 40553u), vec4<u32>(21615u, 0u, 40402u, 1u)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), max(select(vec4<u32>(var_0.a, 6065u, var_0.a, var_0.a), reverseBits(vec4<u32>(74014u, 1u, 4294967295u, var_0.a)), vec4<bool>(true, true, true, true)), countOneBits(~vec4<u32>(var_0.a, 1u, var_0.a, 57216u))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = arg_2;
    global2 = Struct_2(var_0.c);
    let var_1 = ~_wgslsmith_div_u32(arg_1.x, ~(~4294967295u));
    global0 = array<vec2<bool>, 27>();
    return Struct_2(var_0.c);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    var var_0 = select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 116303u) | vec2<u32>(arg_0, arg_0), vec2<u32>(arg_1, arg_0) << (~vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))), 27u)], global0[_wgslsmith_index_u32(abs(~arg_0), 27u)], vec2<bool>(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(arg_2.x, arg_2.x, false, false), arg_2.x)), any(vec4<bool>(arg_2.x, !arg_2.x, arg_2.x, false & arg_2.x))));
    var_0 = vec2<bool>(arg_2.x, true);
    global1 = array<Struct_3, 21>();
    global2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a.b - global2.a.b)))), ~select(vec4<u32>(arg_1, arg_0, arg_0, _wgslsmith_div_u32(17591u, arg_0)), func_2(_wgslsmith_f_op_f32(-global2.a.b)), vec4<bool>(var_0.x, true, any(vec2<bool>(arg_2.x, false)), var_0.x)), Struct_4(global1[_wgslsmith_index_u32(~918u, 21u)], global2.a.a.x, global2.a, vec3<bool>(all(vec3<bool>(var_0.x, true, true)), any(vec4<bool>(var_0.x, true, false, arg_2.x)) | (true == arg_2.x), !arg_2.x), 1172f), vec3<i32>(-2147483647i, 2147483647i, u_input.a.x));
    global2 = Struct_2(global2.a);
    return -105f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 21>();
    var var_0 = Struct_1(abs(global2.a.a), _wgslsmith_f_op_f32(max(global2.a.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(1u, ~1u, vec3<bool>(true, false, true))))))));
    var var_1 = Struct_3(abs(_wgslsmith_dot_vec4_u32(func_3(func_4(var_0.b, vec4<u32>(10311u, 31684u, 1u, 0u), Struct_4(global1[_wgslsmith_index_u32(0u, 21u)], 0i, global2.a, vec3<bool>(false, false, true), 310f), vec3<i32>(global2.a.a.x, var_0.a.x, -50001i)).a), ~vec4<u32>(25596u, 39851u, 19551u, 1u))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(global2.a.b * -490f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}


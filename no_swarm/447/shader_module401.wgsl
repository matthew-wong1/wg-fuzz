struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-18204i, i32(-2147483648), -1i), vec3<i32>(19400i, 1i, 0i), vec3<i32>(-50398i, -19810i, i32(-2147483648)));

var<private> global1: vec2<u32> = vec2<u32>(1u, 33137u);

var<private> global2: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0), vec4<bool>(any(!select(vec3<bool>(arg_2.a.b, arg_1, arg_1), vec3<bool>(true, arg_2.a.a, arg_1), arg_2.a.a)), arg_1 && arg_2.a.a, any(!vec4<bool>(arg_2.a.b, arg_2.a.a, arg_1, arg_1)), arg_2.a.b)));
    var var_1 = Struct_2(any(select(vec2<bool>(false, any(vec4<bool>(false, arg_1, true, arg_1))), !(!vec2<bool>(arg_2.a.a, true)), select(vec2<bool>(arg_2.a.a, arg_2.a.a), select(vec2<bool>(arg_1, arg_2.a.a), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, arg_1), vec2<bool>(false, true))))), true, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(46535u, 47109u)), ~min(~1u, 1u)));
    global0 = array<vec3<i32>, 3>();
    var_1 = arg_2.a;
    var var_2 = vec3<u32>(select(global2.x, 4294967295u, !var_1.a) | abs(~1u), var_1.c, ~select(~34992u, abs(global1.x), true != arg_1)) << (vec3<u32>(global2.x, 0u, 51144u) % vec3<u32>(32u));
    return u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = Struct_2(true, true, (1u << (_wgslsmith_mod_u32(select(global1.x, 31637u, false), ~global2.x) % 32u)) | 117061u);
    global0 = array<vec3<i32>, 3>();
    let var_1 = !vec3<bool>(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1882f, arg_1, 1081f) * vec4<f32>(-566f, arg_1, 165f, 285f)), true, Struct_3(var_0, global0[_wgslsmith_index_u32(20481u, 3u)])) > _wgslsmith_add_u32(1u, ~arg_0), true, any(vec3<bool>(any(vec2<bool>(false, false)), true, !var_0.b)));
    let var_2 = vec3<i32>(-57661i, ~(~(-2147483647i)), -2147483647i);
    global2 = ~vec2<u32>(57255u, 1924u);
    return _wgslsmith_div_u32(37708u, 1u);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    global0 = array<vec3<i32>, 3>();
    let var_0 = any(!select(!select(vec4<bool>(false, arg_0.a, true, false), vec4<bool>(false, false, false, arg_0.b), vec4<bool>(arg_0.a, arg_0.b, arg_0.a, arg_0.a)), !vec4<bool>(false, arg_0.b, arg_0.b, false), vec4<bool>(true || arg_0.b, true, true, !arg_0.a)));
    global0 = array<vec3<i32>, 3>();
    var var_1 = arg_0;
    var_1 = arg_0;
    return ~min((global2.x ^ (arg_0.c ^ 81804u)) & (_wgslsmith_mult_u32(1u, 37381u) >> (func_2(global1.x, -662f) % 32u)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(all(vec2<bool>(true, true)), false, global1.x), _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(func_1(Struct_2(true, true, ~0u), 6560i), 3u)], -max(abs(global0[_wgslsmith_index_u32(57053u, 3u)]), global0[_wgslsmith_index_u32(75211u >> (global1.x % 32u), 3u)])));
    let var_1 = Struct_3(var_0.a, global0[_wgslsmith_index_u32(0u, 3u)]);
    let var_2 = Struct_1(_wgslsmith_add_u32(global2.x | ~30848u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, vec2<u32>(var_0.a.c, var_0.a.c), vec2<u32>(4294967295u, 38791u)), ~vec2<u32>(0u, global1.x))));
    global0 = array<vec3<i32>, 3>();
    global2 = countOneBits(_wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(select(u_input.b.yx, u_input.b.zx, vec2<bool>(true, true)), select(vec2<u32>(global1.x, global1.x), vec2<u32>(var_1.a.c, 2839u), vec2<bool>(true, var_1.a.b)))), ~(vec2<u32>(global1.x, global1.x) >> (u_input.a.xy % vec2<u32>(32u))) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, global1.x), vec2<u32>(1u, 0u)) & vec2<u32>(11647u, 52534u)) % vec2<u32>(32u))));
    var var_3 = global2.x;
    var var_4 = ~abs(~abs(~vec3<u32>(15159u, 16372u, 8950u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)), -116f, false))), ~(~vec2<u32>(abs(58363u), 1u)));
}


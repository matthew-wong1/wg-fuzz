struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(854f, -181f, -1315f);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = vec3<bool>(true, any(vec2<bool>(false, _wgslsmith_f_op_f32(min(193f, 576f)) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(76336u, 3u)]))), 5281u <= abs(~(3022u ^ arg_0.a.b.x)));
    let var_0 = 4294967295u >> (global2.a.c.x % 32u);
    global1 = !select(select(arg_0.a.a, !select(vec3<bool>(true, global2.a.a.x, true), global2.a.a, arg_0.a.a.x), all(!vec3<bool>(global2.a.a.x, false, false))), !vec3<bool>(arg_0.a.a.x, u_input.c.x >= -49402i, true), select(select(!arg_0.a.a, !vec3<bool>(global2.a.a.x, false, arg_0.a.a.x), vec3<bool>(true, global1.x, true)), global2.a.a, global2.a.a));
    var var_1 = ~var_0 << (firstLeadingBit(~4294967295u) % 32u);
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    global1 = arg_2.a;
    var var_0 = global2.a;
    let var_1 = Struct_1(!select(vec3<bool>(func_3(Struct_2(arg_2)), true, all(vec3<bool>(global2.a.a.x, true, true))), select(select(var_0.a, arg_2.a, vec3<bool>(true, true, true)), !arg_2.a, arg_2.a), any(vec3<bool>(var_0.a.x, global2.a.a.x, false))), ~_wgslsmith_mod_vec2_u32(~(~var_0.c.ww), vec2<u32>(u_input.b, ~0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x >> (66892u % 32u), 1u, 4294967295u, _wgslsmith_clamp_u32(arg_2.b.x, 0u, global2.a.c.x)), max(vec4<u32>(0u, 0u, 51848u, 73122u), vec4<u32>(48288u, 16833u, var_0.d, 4294967295u)) >> (~global2.a.c % vec4<u32>(32u))), 31605u);
    var var_2 = u_input.c.yy;
    var var_3 = abs(u_input.c.x);
    return var_1.c.x;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~u_input.b, firstTrailingBit(21542u | u_input.b)) & (~func_2(global0[_wgslsmith_index_u32(arg_0.a.x, 3u)], Struct_3(vec2<u32>(arg_0.a.x, 0u)), Struct_1(vec3<bool>(arg_2, true, true), vec2<u32>(75662u, global2.a.d), global2.a.c, 1u)) | ~(~96269u)), firstTrailingBit(1u), 12870u);
    let var_1 = vec3<f32>(-687f, _wgslsmith_f_op_f32(step(1f, global0[_wgslsmith_index_u32(global2.a.b.x, 3u)])), 826f);
    global0 = array<f32, 3>();
    var var_2 = global2.a.c;
    var var_3 = global2.a;
    return Struct_2(Struct_1(!(!global2.a.a), vec2<u32>(~(~40734u), _wgslsmith_add_u32(~global2.a.d, _wgslsmith_sub_u32(var_2.x, arg_0.a.x))), vec4<u32>(arg_0.a.x, u_input.a, 1u ^ _wgslsmith_sub_u32(var_2.x, 60786u), var_3.c.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.a.c.yz);
    global0 = array<f32, 3>();
    global1 = select(vec3<bool>(true, all(!global2.a.a), global2.a.a.x), !(!(!(!vec3<bool>(global2.a.a.x, false, global1.x)))), vec3<bool>(true, true, any(vec4<bool>(true, global2.a.a.x, select(false, global2.a.a.x, true), 1266f != global0[_wgslsmith_index_u32(5389u, 3u)]))));
    let var_1 = Struct_3(vec2<u32>(global2.a.c.x, var_0.a.x));
    global0 = array<f32, 3>();
    let var_2 = true;
    global2 = func_1(Struct_3(max(global2.a.b, max(var_1.a, var_1.a)) << (select(~vec2<u32>(var_0.a.x, 0u), var_0.a | var_1.a, select(global2.a.a.yx, vec2<bool>(global2.a.a.x, global1.x), true)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(-28655i, u_input.c.x, -2147483647i) >> (global2.a.c.xyy % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d, u_input.c.x, u_input.d), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i))) <= u_input.d, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~global2.a.b, global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(select(var_1.a.x, 0u, false), ~24752u)), 3u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-815f, global0[_wgslsmith_index_u32(global2.a.c.x, 3u)], -599f) + vec3<f32>(-823f, global0[_wgslsmith_index_u32(var_1.a.x, 3u)], global0[_wgslsmith_index_u32(29587u, 3u)])))), vec3<f32>(global0[_wgslsmith_index_u32(~4294967295u, 3u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 3u)]))))));
}


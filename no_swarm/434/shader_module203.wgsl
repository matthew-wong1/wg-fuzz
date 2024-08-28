struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<i32, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global1 = vec3<bool>(!global1.x, !arg_1.a, global0.b.b.a);
    global0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.d * _wgslsmith_f_op_vec4_f32(-arg_0.d)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, 1177f, _wgslsmith_f_op_f32(select(global0.a.x, -257f, false)), _wgslsmith_f_op_f32(f32(-1f) * -478f)), arg_0.d)), Struct_2(arg_0.a, arg_1, _wgslsmith_div_f32(-496f, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(arg_0.c + global0.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(2216f, 581f)), -1000f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(max(2148f, 864f))))), arg_0.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    global0 = Struct_3(global0.b.d, global0.b);
    var var_0 = _wgslsmith_f_op_f32(func_3(global0.b, global0.b.a, max(vec3<i32>(28180i << (arg_0.x % 32u), -7858i, countOneBits(global2[_wgslsmith_index_u32(u_input.b.x, 27u)])), firstTrailingBit(~vec3<i32>(global2[_wgslsmith_index_u32(global0.b.e.b, 27u)], -2147483647i, 1i))))) != global0.a.x;
    var var_1 = 5088u;
    var_0 = false;
    global1 = vec3<bool>(true, global1.x, !all(!select(vec3<bool>(true, false, true), vec3<bool>(global0.b.b.a, false, global1.x), global0.b.a.a)));
    return vec3<bool>(global1.x, !global1.x, true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c, global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.c + global0.b.c) * global0.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.x)), global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(203f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.x)) - global0.b.d.x))));
    let var_1 = false;
    global2 = array<i32, 27>();
    let var_2 = Struct_3(global0.a, global0.b);
    var var_3 = Struct_1(all(vec2<bool>(any(!vec4<bool>(var_2.b.b.a, arg_0, true, false)), true)), ~_wgslsmith_div_u32(1u, ~(4294967295u & var_2.b.b.b)));
    return ~u_input.b.x;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    return func_4(false, Struct_1(all(!func_2(u_input.a)), ~u_input.b.x), global0.b.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(func_1(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)] >= -2147483647i, false, !global1.x)), 27u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(4294967295u, u_input.a.x, 37900u)), u_input.a.xxy), 27u)]), ~(vec2<i32>(global2[_wgslsmith_index_u32(36321u | global0.b.a.b, 27u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), 27u)]) & _wgslsmith_mult_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(global0.b.b.b, 27u)]), vec2<i32>(global2[_wgslsmith_index_u32(global0.b.b.b, 27u)], -1i))), -vec2<i32>(firstLeadingBit(~(-40612i)), i32(-1i) * -55077i));
    var_0 = abs(abs(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], 9810i), vec2<i32>(3836i, 0i), vec2<i32>(-7491i, global2[_wgslsmith_index_u32(60658u, 27u)])) & ~vec2<i32>(var_0.x, var_0.x), vec2<i32>(-45950i, 0i))));
    var var_1 = global0.b;
    global1 = !vec3<bool>(_wgslsmith_add_u32(25299u, u_input.a.x << (var_1.e.b % 32u)) < 65633u, false && any(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, true, global0.b.b.a), false)), all(!global1.xx));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-var_1.c), all(select(vec4<bool>(global0.b.a.a, true, global1.x, true), vec4<bool>(var_1.a.a, global1.x, false, false), global1.x)))), 549f)));
    var var_3 = min(u_input.a, vec4<u32>(global0.b.b.b, func_1(func_2(~u_input.a)), firstLeadingBit(~23160u), ~_wgslsmith_mod_u32(global0.b.a.b, _wgslsmith_div_u32(global0.b.b.b, 3371u))));
    var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(0i), 1i, ~0i >> (1u % 32u)), vec3<i32>(var_0.x ^ (var_0.x ^ var_0.x), countOneBits(abs(18732i)), var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_2.x, var_2.x) * vec3<f32>(-1000f, var_2.x, 1543f)) + _wgslsmith_f_op_vec3_f32(global0.b.d.xxz - global0.a.wwz))), ~vec2<u32>(24107u | min(u_input.a.x, 4294967295u), var_3.x), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(global0.a.x))), u_input.a.yw ^ _wgslsmith_clamp_vec2_u32(var_3.yx, _wgslsmith_clamp_vec2_u32(~u_input.b.yx, var_3.xz << (vec2<u32>(u_input.b.x, var_1.a.b) % vec2<u32>(32u)), var_3.yy), ~(vec2<u32>(0u, global0.b.b.b) ^ u_input.a.wy)));
}


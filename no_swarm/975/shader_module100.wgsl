struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 0i);

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = -_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(22369i, global2.a.b, _wgslsmith_add_i32(-58288i, 1i), global1.x)), -vec4<i32>(~(-1i), i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-2147483647i, global1.x, 1i), 1i));
    global1 = var_0.xzw;
    var var_1 = vec4<u32>(abs(~min(firstLeadingBit(61618u), _wgslsmith_clamp_u32(0u, 7702u, 4483u))), u_input.a.x, 1u, ~u_input.a.x);
    global0 = any(select(!select(!vec4<bool>(false, arg_2.c, true, true), select(vec4<bool>(false, true, true, arg_2.c), vec4<bool>(true, arg_2.c, arg_2.c, arg_2.c), vec4<bool>(false, false, arg_2.c, true)), !vec4<bool>(false, false, arg_2.c, arg_2.c)), select(!vec4<bool>(arg_2.c, arg_2.c, true, arg_2.c), select(!vec4<bool>(false, arg_2.c, false, true), !vec4<bool>(arg_2.c, true, true, true), true), vec4<bool>(any(vec4<bool>(true, false, arg_2.c, true)), select(true, arg_2.c, true), false, !arg_2.c)), vec4<bool>(arg_2.c, any(select(vec3<bool>(false, arg_2.c, true), vec3<bool>(true, true, false), vec3<bool>(true, false, arg_2.c))), any(vec4<bool>(arg_2.c, arg_2.c, true, true)), all(vec4<bool>(true, true, true, arg_2.c)))));
    global0 = !arg_2.c;
    return vec2<bool>(all(vec2<bool>(arg_2.c | arg_2.c, arg_1.x >= arg_0)), all(vec2<bool>(any(!vec3<bool>(arg_2.c, true, true)), !any(vec3<bool>(arg_2.c, false, arg_2.c)))));
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = min(global1.x, -58811i) & 17159i;
    var var_1 = Struct_4(select(!func_3(120f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, -1000f), vec2<f32>(679f, arg_1), vec2<bool>(arg_0, arg_0))), Struct_1(u_input.a.zy, vec3<i32>(global1.x, var_0, var_0), true, 10502i)), vec2<bool>(true, !arg_0), arg_0), vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * arg_1)))), arg_1, 457f), all(vec4<bool>(!all(vec4<bool>(arg_0, true, false, true)), true, arg_0, arg_0)), Struct_1(select(global2.a.a, (global2.a.a ^ u_input.a.xx) ^ ~global2.a.a, true), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -1i, global1.x, -6058i), vec4<i32>(-1571i, 1i, u_input.b, var_0) | vec4<i32>(2147483647i, var_0, 1i, 29444i)), 18704i, abs(1i)), arg_0, var_0), Struct_2(vec2<u32>((global2.a.a.x >> (1u % 32u)) & _wgslsmith_mod_u32(0u, 4294967295u), (u_input.a.x | global2.a.a.x) | 1u), _wgslsmith_add_i32(global1.x, 1i)));
    var var_2 = global1.xy;
    global2 = Struct_3(var_1.e);
    global1 = var_1.d.b;
    return all(!vec2<bool>(var_1.c, var_1.d.c));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    global0 = !(!func_2(select(true, true, arg_2), _wgslsmith_f_op_f32(abs(1999f))) | true);
    let var_0 = global2.a;
    global1 = vec3<i32>((global1.x << ((u_input.a.x & arg_1.x) % 32u)) ^ arg_0.x, -2147483647i, arg_0.x) & vec3<i32>(_wgslsmith_clamp_i32(46965i >> (select(u_input.a.x, var_0.a.x, arg_2) % 32u), -global1.x, -2147483647i), 2147483647i, var_0.b);
    let var_1 = abs(vec3<u32>(min(_wgslsmith_add_u32(var_0.a.x & arg_1.x, _wgslsmith_mod_u32(4294967295u, 86090u)), arg_1.x), 19654u, ~24354u));
    var var_2 = true;
    return _wgslsmith_mod_i32(global1.x, ~abs(-global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(-1i) * -(vec3<i32>(_wgslsmith_mod_i32(-1i, 1i), u_input.b, -1i) ^ ((vec3<i32>(global2.a.b, 6688i, -2147483647i) | vec3<i32>(global2.a.b, 1i, global2.a.b)) ^ -vec3<i32>(38377i, -41891i, -22626i)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f)), 547f));
    global1 = vec3<i32>(func_1(vec3<i32>(26261i, _wgslsmith_dot_vec2_i32(vec2<i32>(-13246i, -2147483647i), vec2<i32>(u_input.b, -9093i)), 0i), vec2<u32>(1u, global2.a.a.x << (u_input.a.x % 32u)), true) ^ 1i, -global1.x, ~firstLeadingBit(-2147483647i));
    let var_1 = Struct_4(vec2<bool>(all(vec3<bool>(all(vec3<bool>(true, true, false)), false, true)), !(global2.a.a.x <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global2.a.a.x, u_input.a.x)))), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1642f + var_0) + var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(sign(var_0)))))), false, Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.zx, reverseBits(global2.a.a))), vec3<i32>(-2147483647i, global1.x, _wgslsmith_mult_i32(global2.a.b, 1i) << (_wgslsmith_add_u32(u_input.a.x, global2.a.a.x) % 32u)), select(true, _wgslsmith_f_op_f32(round(var_0)) == _wgslsmith_f_op_f32(428f * -287f), func_2(true, 865f)), max(~(~0i), -(~1i))), Struct_2(u_input.a.yy, ~reverseBits(1i)));
    global0 = var_1.a.x;
    global2 = Struct_3(global2.a);
    global1 = var_1.d.b;
    global2 = Struct_3(Struct_2(vec2<u32>(u_input.a.x, ~_wgslsmith_sub_u32(var_1.e.a.x, var_1.e.a.x)), _wgslsmith_sub_i32(-1i, abs(var_1.e.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -664f)), 1i, var_1.b.wz, ~(~(countOneBits(vec2<u32>(4294967295u, 53374u)) & _wgslsmith_mult_vec2_u32(u_input.a.yx, var_1.d.a))), 1u);
}


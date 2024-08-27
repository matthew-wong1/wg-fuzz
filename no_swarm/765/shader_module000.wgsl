struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-17956i, 2147483647i, 1i, 1i), -845f, vec2<u32>(16808u, 0u), vec2<bool>(true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: bool) -> vec2<u32> {
    global1 = array<Struct_1, 27>();
    let var_0 = 11135u;
    let var_1 = vec3<bool>(global2.c.x < 0u, true, true);
    let var_2 = select(select(-vec2<i32>(u_input.b.x, -34615i), u_input.d.zx, any(!select(vec2<bool>(global2.d.x, global2.d.x), global2.d, global2.d.x))), -(firstLeadingBit(arg_0.yx | vec2<i32>(arg_0.x, 23969i)) ^ global2.a.yy), true);
    let var_3 = var_0 | _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(1u), 0u), abs(global2.c) << (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), max(~global2.c, u_input.a));
    return vec2<u32>(arg_2.x | _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 3017u, var_3, global2.c.x), vec4<u32>(var_0, arg_2.x, 115942u, global2.c.x)), vec4<u32>(1u, u_input.a.x, var_3, 27807u)), global2.c.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(global2.b, -545f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1428f, arg_1.b)) * _wgslsmith_f_op_f32(global2.b - arg_1.b)), global2.b);
    global2 = Struct_1(~global2.a, _wgslsmith_f_op_f32(-var_0.x), vec2<u32>(~(~arg_1.c.x), reverseBits(firstTrailingBit(54176u))) | _wgslsmith_add_vec2_u32(vec2<u32>(max(u_input.a.x, u_input.a.x), 37784u), _wgslsmith_sub_vec2_u32(func_3(vec4<i32>(12411i, -34053i, u_input.b.x, arg_1.a.x), vec4<f32>(global2.b, 288f, var_0.x, -325f), vec4<u32>(global2.c.x, 25401u, arg_1.c.x, 0u), global2.d.x), _wgslsmith_mod_vec2_u32(global2.c, vec2<u32>(u_input.a.x, global2.c.x)))), global0[_wgslsmith_index_u32(arg_1.c.x, 25u)]);
    let var_1 = vec2<bool>(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, global2.d.x, arg_1.d.x), false)) && arg_1.d.x, arg_2);
    let var_2 = vec4<bool>(arg_1.d.x, all(select(!arg_1.d, select(select(global2.d, vec2<bool>(arg_1.d.x, arg_2), false), !vec2<bool>(global2.d.x, true), all(vec2<bool>(global2.d.x, arg_1.d.x))), global0[_wgslsmith_index_u32(arg_1.c.x, 25u)])), arg_1.d.x, any(select(!(!global2.d), !vec2<bool>(true, arg_0), global2.d.x)));
    let var_3 = var_1.x;
    return 1363f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 25>();
    var var_0 = 1u;
    let var_1 = global1[_wgslsmith_index_u32(11680u, 27u)];
    let var_2 = vec4<bool>(-1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1.d.x, Struct_1(var_1.a, 2565f, vec2<u32>(var_1.c.x, var_1.c.x), global0[_wgslsmith_index_u32(arg_1.x, 25u)]), true)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.b, 439f)) + _wgslsmith_f_op_f32(min(global2.b, var_1.b))) * 1274f), var_1.b > var_1.b, all(vec2<bool>(any(!vec2<bool>(false, global2.d.x)), false)));
    var var_3 = global1[_wgslsmith_index_u32(global2.c.x, 27u)];
    return global1[_wgslsmith_index_u32(16159u, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(~vec4<i32>(2147483647i, abs(reverseBits(u_input.b.x)), _wgslsmith_mult_i32(reverseBits(1i), global2.a.x), global2.a.x), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(global2.b * -432f)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, 7223u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(10890u, global2.c.x, 23095u), vec3<u32>(u_input.a.x, global2.c.x, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 1u, 86403u)), 1u), !vec2<bool>(all(select(vec2<bool>(global2.d.x, global2.d.x), vec2<bool>(global2.d.x, global2.d.x), global2.d.x)), global2.b > global2.b));
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_add_i32(global2.a.x, global2.a.x), 2147483647i);
    let var_1 = func_1(abs(vec2<i32>(global2.a.x, _wgslsmith_dot_vec3_i32(u_input.d >> (vec3<u32>(51161u, 23961u, 6062u) % vec3<u32>(32u)), u_input.b.wwy))), firstLeadingBit(min(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~(~vec3<u32>(13932u, u_input.a.x, 0u)))), _wgslsmith_clamp_u32(global2.c.x, global2.c.x, ~((u_input.a.x ^ u_input.a.x) >> (~0u % 32u))));
    var var_2 = -573f;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(ceil(-447f))))), all(!(!select(vec4<bool>(true, var_1.d.x, true, global2.d.x), vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, false), var_1.d.x)))));
    var var_3 = func_1(vec2<i32>(var_1.a.x, _wgslsmith_clamp_i32(var_1.a.x, _wgslsmith_mod_i32(14454i, u_input.d.x), _wgslsmith_sub_i32(var_1.a.x, var_1.a.x))) | global2.a.zy, ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(10561u, 3325u, 23899u), ~vec3<u32>(5434u, 0u, global2.c.x)), vec3<u32>(u_input.a.x, 127372u, 0u) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.x, 22056u), vec3<u32>(1u, 1u, global2.c.x))), select(u_input.a.x << (1u % 32u), ~var_1.c.x | firstTrailingBit(u_input.a.x), !any(func_1(u_input.d.xy, vec3<u32>(5372u, 45781u, u_input.a.x), var_1.c.x).d)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~func_1(u_input.d.zz, ~vec3<u32>(var_1.c.x, u_input.a.x, global2.c.x), ~41615u).c, var_1.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 984f, var_1.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -1847f, 568f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, var_1.b, -1015f) - vec3<f32>(1937f, 412f, 652f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(992f, 738f, -1296f))))), _wgslsmith_div_f32(860f, 199f));
}


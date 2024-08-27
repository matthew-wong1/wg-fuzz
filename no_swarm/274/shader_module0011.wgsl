struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 0u, 30900u, 10551u), -1567f);

var<private> global1: array<Struct_5, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))))), vec4<bool>(false, false, true, false), true);
    let var_1 = Struct_1(vec4<u32>(global0.a.x, (reverseBits(global0.a.x) & 17981u) | abs(1u), u_input.a, abs(1u)), _wgslsmith_f_op_f32(1108f + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(195f, global0.b)) - global0.b)))));
    global0 = Struct_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.a, 0u), u_input.a), u_input.a, select(firstLeadingBit(1u), 51527u, any(!vec3<bool>(false, false, var_0.x))), ~max(~4294967295u, _wgslsmith_div_u32(var_1.a.x, global0.a.x))), var_1.b);
    global0 = Struct_1(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2002f)), -1000f), _wgslsmith_f_op_f32(global0.b * -550f))));
    return 1754f;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -535f) + -116f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1199f, 104f)), global0.b))));
    global0 = Struct_1(~global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - -309f))) + -525f)));
    global0 = var_0;
    var var_1 = global0.a.x;
    var_1 = firstLeadingBit(var_0.a.x);
    return var_0.a;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global0 = Struct_1(func_2(), _wgslsmith_f_op_f32(ceil(571f)));
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(arg_0, arg_0), arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, -9808i) | vec2<i32>(36233i, arg_0))), (vec3<i32>(arg_0, -21997i, arg_0) | (vec3<i32>(25819i, arg_0, arg_0) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))) >> (vec3<u32>(abs(u_input.a), ~15317u, ~4294967295u) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global0.a, global0.a), u_input.a);
    var_2 = ~countOneBits(select(reverseBits(1u), ~abs(u_input.a), true));
    return global0.a.yxw;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(~(~global0.a), global0.b), global0.a, Struct_1(select(vec4<u32>(33693u, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(u_input.a, global0.a.x, global0.a.x, 37290u)), u_input.a, ~u_input.a), select(vec4<u32>(4294967295u, 62858u, arg_1.x, global0.a.x), vec4<u32>(1u, global0.a.x, global0.a.x, u_input.a), false) | ~vec4<u32>(4294967295u, arg_1.x, 1u, arg_1.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b)))), Struct_2(_wgslsmith_sub_u32(~(30743u >> (arg_1.x % 32u)), ~_wgslsmith_clamp_u32(arg_1.x, u_input.a, global0.a.x)), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 8946u, 2589u), global0.a | vec4<u32>(1u, 0u, 0u, u_input.a)), global0.b), ~countOneBits(select(2147483647i, -1i, true))), Struct_1(vec4<u32>(min(_wgslsmith_div_u32(20511u, u_input.a), ~0u), func_1(1i).x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(86115u, 4294967295u, global0.a.x, arg_1.x), global0.a), 27817u, _wgslsmith_clamp_u32(arg_1.x, 1u, 6861u)), global0.b));
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, global0.a), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(arg_1.x, arg_1.x)), global0.a.zy | global0.a.zx), max(reverseBits(0u), 5671u), ~u_input.a, reverseBits(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * var_0.d.b.b)), -139f)) + -198f));
    let var_1 = global1[_wgslsmith_index_u32(12454u, 30u)];
    global1 = array<Struct_5, 30>();
    let var_2 = Struct_2(_wgslsmith_div_u32(var_1.c.b.a.x, _wgslsmith_mult_u32(~u_input.a, abs(36269u)) << (abs(var_1.c.b.a.x & 74629u) % 32u)), var_1.c.b, _wgslsmith_dot_vec2_i32(select(-var_1.d, var_1.d, any(arg_0)), var_1.d) >> (firstTrailingBit(0u) % 32u));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec2<bool>(true, true), ((func_1(-10141i) & ~global0.a.xzz) ^ (~vec3<u32>(u_input.a, u_input.a, u_input.a) ^ ~vec3<u32>(23734u, 6893u, 4294967295u))) ^ (global0.a.wyz ^ ~(vec3<u32>(1u, 68347u, 68336u) << (global0.a.wyz % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, _wgslsmith_div_vec3_u32(global0.a.yxw, ~vec3<u32>(_wgslsmith_mult_u32(global0.a.x, u_input.a), u_input.a, u_input.a)));
}


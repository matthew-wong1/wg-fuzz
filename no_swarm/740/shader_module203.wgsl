struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)));

var<private> global1: vec2<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = ~abs(~(~vec4<u32>(u_input.b, 4294967295u, 15880u, 90957u)));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_1 = -27783i;
    return var_1;
}

fn func_2(arg_0: bool, arg_1: u32) -> u32 {
    var var_0 = -2147483647i;
    var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c.x, -981i) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), u_input.c.yy), _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, -14818i), vec2<i32>(u_input.c.x, -2147483647i)), vec2<i32>(u_input.c.x, ~18707i)));
    global1 = vec2<u32>(countOneBits(~(~arg_1) & ~(arg_1 << (arg_1 % 32u))), ~42111u);
    var var_1 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(91817u, global1.x, arg_1, 15776u), _wgslsmith_mod_vec4_u32(vec4<u32>(64366u, 6404u, global1.x, 27311u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 84198u, arg_1, 2757u), vec4<u32>(0u, 0u, u_input.d, u_input.a), vec4<u32>(u_input.d, 48483u, 4663u, global1.x))), vec4<bool>(!arg_0, true, true, any(vec4<bool>(true, arg_0, true, arg_0)))) << (vec4<u32>(3425u, 1u, firstTrailingBit(20799u), global1.x) % vec4<u32>(32u)), select(countOneBits(~(~vec4<u32>(4294967295u, u_input.d, 1u, arg_1))), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, u_input.a, global1.x, 1u), firstTrailingBit(vec4<u32>(global1.x, 4181u, 73521u, u_input.b)) >> (vec4<u32>(4294967295u, 26142u, u_input.a, 2352u) % vec4<u32>(32u))), vec4<bool>(true, !(u_input.b == arg_1), all(vec4<bool>(arg_0, arg_0, arg_0, true)), arg_0)));
    var_0 = _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x ^ u_input.c.x, -1i, -32864i, ~1i), -_wgslsmith_mod_vec4_i32(vec4<i32>(8166i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, u_input.c.x)), vec4<i32>(min(-29958i, u_input.c.x), u_input.c.x, func_3(), -23861i))), vec4<i32>(-1i, ~1i, u_input.c.x & _wgslsmith_sub_i32(u_input.c.x, 1i), select(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x, arg_0)) ^ ((vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i) | vec4<i32>(2147483647i, -2147483647i, 1i, u_input.c.x)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-19734i, -2147483647i, 2147483647i, u_input.c.x), ~vec4<i32>(-2147483647i, u_input.c.x, -2147483647i, u_input.c.x))));
    return reverseBits(23121u);
}

fn func_1(arg_0: bool) -> u32 {
    return func_2(2147483647i > -(~(u_input.c.x & u_input.c.x)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, ~0u), 4294967295u, firstTrailingBit(86545u) << (min(41992u, 66180u) % 32u)), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(vec2<u32>((4814u >> (~4294967295u % 32u)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.x, global1.x, 4294967295u), vec4<u32>(u_input.b, global1.x, 1u, 0u)) & u_input.d) % 32u), ~_wgslsmith_add_u32(8320u, u_input.a)));
    var var_0 = max(~(_wgslsmith_mod_u32(global1.x >> (1u % 32u), 1u) & global1.x), global1.x);
    let var_1 = Struct_3(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(all(vec2<bool>(true, true)), false)));
    var var_2 = abs(-(-vec2<i32>(22455i, 7325i) | ~(u_input.c.yy | vec2<i32>(2147483647i, 0i))));
    var var_3 = ~var_2.x;
    global1 = vec2<u32>(2579u, ~abs(0u));
    var_0 = 25533u;
    var var_4 = ~vec2<u32>(u_input.d, func_1(var_1.a.x));
    let var_5 = select(var_1.a, vec2<bool>(true, any(vec2<bool>(false, true))), !(!(!(global1.x < 80100u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(220f, 788f, -901f, 431f), vec4<f32>(-1445f, -217f, -2482f, 1330f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, -567f, -773f, 305f)))), vec4<f32>(-580f, _wgslsmith_f_op_f32(ceil(1934f)), _wgslsmith_f_op_f32(step(1150f, 494f)), _wgslsmith_f_op_f32(635f + -186f)))), u_input.c.yx, firstTrailingBit(vec3<u32>(select(u_input.a ^ 53564u, u_input.b & var_4.x, any(vec4<bool>(false, var_1.a.x, true, var_1.a.x))), func_2(true, global1.x), _wgslsmith_div_u32(u_input.d, 39069u) << (func_2(var_5.x, 30938u) % 32u))));
}


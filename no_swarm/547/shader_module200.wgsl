struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<f32>(1247f, 169f), 0i, -929f, vec2<f32>(255f, -886f));

var<private> global1: Struct_2 = Struct_2(74479u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = !(!select(vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(false, any(vec2<bool>(true, true))), true));
    let var_1 = Struct_2(_wgslsmith_mult_u32(abs(firstTrailingBit(1u | arg_0.x)), ~(~_wgslsmith_sub_u32(57016u, global0.a))));
    let var_2 = Struct_3(var_1);
    global1 = Struct_2(1u);
    var_0 = select(select(!select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x), vec2<bool>(true, true), true), !select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, true)), !vec2<bool>(var_0.x, false), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x))), select(!vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), -1031f == global0.b.x), vec2<bool>(true, any(vec2<bool>(var_0.x, true)))), vec2<bool>(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, global1.a), _wgslsmith_add_u32(global0.a, arg_0.x)) == (~var_1.a ^ max(65993u, global1.a)), var_0.x));
    return vec4<bool>(true, any(select(vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, !var_0.x, true, true))), select(true && (10209u == _wgslsmith_div_u32(19195u, var_2.a.a)), -631f == global0.b.x, any(select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), true))), true);
}

fn func_2() -> u32 {
    var var_0 = vec3<bool>(any(vec2<bool>(true, true)), (true & !any(vec3<bool>(true, true, false))) || select(false, true, _wgslsmith_f_op_f32(f32(-1f) * -1094f) > global0.b.x), any(func_3(~vec2<u32>(0u, 0u))) || (abs(-42216i) < (~27574i & -global0.c)));
    var var_1 = _wgslsmith_f_op_f32(sign(-338f));
    var_0 = vec3<bool>(var_0.x, false, var_0.x);
    var_0 = select(select(vec3<bool>(var_0.x, true, false), select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, var_0.x), !var_0.x), select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, true), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), vec3<bool>(var_0.x, var_0.x, all(select(var_0.zy, vec2<bool>(var_0.x, false), true)))), !func_3(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(44028u, 1u)), min(vec2<u32>(global0.a, 22615u), vec2<u32>(20340u, global0.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, global1.a), vec2<u32>(global0.a, 15457u), vec2<u32>(43478u, 4294967295u)))).zyx, false);
    let var_2 = _wgslsmith_f_op_f32(ceil(-1504f));
    return ~(~_wgslsmith_mod_u32(global1.a, ~global1.a ^ ~89839u));
}

fn func_1() -> u32 {
    let var_0 = abs(reverseBits(func_2()));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - global0.e.x)), _wgslsmith_f_op_f32(-377f + _wgslsmith_div_f32(364f, global0.e.x))))));
    var var_2 = true;
    var var_3 = Struct_3(Struct_2(global1.a));
    var var_4 = select(~vec2<u32>(22058u, global0.a), vec2<u32>(~var_3.a.a, 27225u) | abs(_wgslsmith_add_vec2_u32(select(vec2<u32>(var_0, 53870u), vec2<u32>(0u, 32507u), vec2<bool>(true, true)), vec2<u32>(1u, global1.a))), func_3(vec2<u32>(max(global1.a, global1.a) & _wgslsmith_dot_vec3_u32(vec3<u32>(34249u, var_3.a.a, var_0), vec3<u32>(4294967295u, global1.a, 24328u)), 49254u)).wz);
    return ~var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~func_1()), _wgslsmith_f_op_vec2_f32(-global0.e), -2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d * global0.e.x)))), 1460f, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-751f, _wgslsmith_f_op_f32(-global0.d)), global0.e)));
    var var_1 = Struct_2(~0u);
    var_0 = Struct_1(1u, vec2<f32>(global0.d, 424f), _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(33984i, u_input.a.x, var_0.c) & vec3<i32>(var_0.c, global0.c, var_0.c)), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(7207i, 2147483647i, global0.c)) | ~vec3<i32>(59565i, global0.c, global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-537f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d)) - var_0.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.e)))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(u_input.a.x), global0.c, u_input.a.x, _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~(~(-1i)))), -select(vec4<i32>(_wgslsmith_div_i32(var_0.c, -2147483647i), ~(-62840i), var_0.c ^ u_input.a.x, var_0.c), vec4<i32>(var_0.c, 39692i ^ u_input.a.x, var_0.c, global0.c), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), true)));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_sub_u32(30772u, 14852u) | var_1.a)), ~(~(~245u)), ~(-((global0.c << (25442u % 32u)) & global0.c)));
}


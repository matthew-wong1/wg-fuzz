struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = false;
    var_0 = (1784u & u_input.e.x) >= ~(~1u);
    var var_1 = true;
    var_0 = false;
    var var_2 = false;
    return u_input.c.x;
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, -297f, 334f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 357f, global0.x, global0.x), vec4<f32>(global0.x, arg_0.c.b.a, global0.x, global0.x)), vec4<f32>(arg_0.c.b.a, -796f, global0.x, 2716f), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.e.x, false)))), arg_0.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c.b.a, -1357f, global0.x, arg_0.c.b.a), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, global0.x, 819f))), arg_0.d == arg_0.c.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), 2149f)));
    global1 = _wgslsmith_f_op_f32(arg_0.c.b.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1842f + _wgslsmith_f_op_f32(sign(-754f))) - global0.x));
    var var_0 = Struct_2(-1811f);
    var var_1 = _wgslsmith_mult_i32(1i, arg_0.c.a);
    var var_2 = Struct_4(vec4<bool>(true, arg_0.e.x, arg_0.a.x, arg_0.a.x));
    return arg_0.c.b.a;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(Struct_5(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), false), _wgslsmith_mod_u32(func_3(u_input.a), _wgslsmith_add_u32(u_input.d.x, u_input.a.x)), Struct_3(~2147483647i, Struct_1(234f)), i32(-1i) * -5314i, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), 4294967295u)));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(max(_wgslsmith_mult_i32(1i, 0i << (u_input.e.x % 32u)), 34766i), abs(~1i << (u_input.b.x % 32u))), ~(~countOneBits(vec2<i32>(1i, 1i))));
    let var_2 = abs(firstTrailingBit(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_1.x, var_1.x), min(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(var_1.x, -30101i))) >> (_wgslsmith_mod_vec2_u32(reverseBits(u_input.d), vec2<u32>(u_input.b.x, u_input.e.x)) % vec2<u32>(32u))));
    let var_3 = min(_wgslsmith_mult_vec3_i32(-(vec3<i32>(var_1.x, -55177i, 22542i) ^ reverseBits(vec3<i32>(var_2.x, 8746i, var_1.x))), abs(vec3<i32>(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.x, -2147483647i, 56313i), vec4<i32>(var_1.x, var_1.x, 1i, var_2.x)), -12167i))), -(vec3<i32>(var_2.x >> (u_input.d.x % 32u), -var_2.x, _wgslsmith_clamp_i32(0i, var_1.x, var_1.x)) ^ ~(~vec3<i32>(var_2.x, -1i, var_2.x))));
    return u_input.c.x;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_2(-545f);
    global0 = _wgslsmith_f_op_vec4_f32(-arg_1);
    let var_1 = (20245u ^ func_2()) > _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a.x << (arg_0 % 32u), _wgslsmith_mult_u32(1u, u_input.c.x)), arg_0);
    global1 = var_0.a;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), all(select(vec2<bool>(false, false), vec2<bool>(false, var_1), var_1)))))), _wgslsmith_f_op_f32(-global0.x));
    return -(~(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, -2147483647i, -1i, 1i), vec4<i32>(1i, 1i, -1i, 32002i) >> (u_input.c % vec4<u32>(32u))) << (select(abs(vec4<u32>(4294967295u, u_input.e.x, 1u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 50931u, 37419u, 4294967295u), u_input.c), var_1) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs((func_1(0u, vec4<f32>(501f, 1734f, 667f, -1010f)) | -vec4<i32>(18266i, -9944i, -47060i, -2147483647i)) ^ vec4<i32>(_wgslsmith_mod_i32(-18592i, -2525i), -6685i, 2147483647i, countOneBits(-14142i))) | ~min(~max(vec4<i32>(-36270i, 0i, -43030i, 4684i), vec4<i32>(2147483647i, 29484i, 0i, -1i)), ~vec4<i32>(-4201i, 36798i, 0i, -699i));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-565f, global0.x, true)), global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -158f)))), _wgslsmith_f_op_f32(f32(-1f) * -1591f), global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(773f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x)))), -1000f, -1587f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 341f, global0.x, -1000f)))), global0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x)) * global0.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(global0.xz, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2020f - global0.x), global0.x))))));
    var var_2 = ~firstLeadingBit(0u ^ max(32241u, ~u_input.e.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1529f * 814f)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.wwy, vec3<i32>(var_0.x, var_0.x, 21706i)), var_0.x, ~var_0.x) >> (~vec3<u32>(~1u, 55883u ^ u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x), u_input.b.zy)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(global0.xww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, 900f, global0.x), vec3<f32>(var_3.a, var_3.a, -668f), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 109f, global0.x) + vec3<f32>(var_3.a, -1378f, 1396f))))), global0.wxy)));
}


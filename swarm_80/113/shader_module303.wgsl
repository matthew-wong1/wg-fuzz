struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    var var_0 = vec4<i32>(u_input.d.x, i32(-1i) * -u_input.d.x, u_input.e.x, u_input.c.x);
    let var_1 = global0.b.d;
    var_0 = -_wgslsmith_mod_vec4_i32(max(-vec4<i32>(-15600i, -29026i, -1i, u_input.e.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.e.x, u_input.c.x, u_input.d.x), vec4<i32>(21805i, 0i, u_input.c.x, var_0.x))), vec4<i32>(-2147483647i, -2147483647i, _wgslsmith_mod_i32(u_input.c.x, u_input.e.x), var_0.x)) ^ vec4<i32>(u_input.c.x, -1i, u_input.d.x, 1i);
    var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.x, 2147483647i, -3185i, var_0.x), vec4<i32>(u_input.e.x, -10561i, -18040i, -27303i)), ~vec4<i32>(-13996i, 65880i, -1i, -1i)), reverseBits(-var_0.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-6703i, var_0.x, -1i, u_input.c.x), -vec4<i32>(-12413i, u_input.e.x, -66389i, var_0.x)), ~(~var_0.x)), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(46239i, -2147483647i, 8718i, u_input.c.x), vec4<i32>(-2147483647i, var_0.x, 2147483647i, var_0.x), vec4<i32>(var_0.x, 0i, u_input.c.x, 18712i)) | vec4<i32>(u_input.e.x, -561i, -1i, u_input.c.x)));
    let var_2 = 49833u;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(323f, arg_0, -1544f, global0.b.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-283f, -1000f, 1000f, global0.b.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(475f, global0.b.c.x, global0.b.c.x, 619f) - vec4<f32>(-166f, global0.b.c.x, -637f, global0.b.c.x))))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    global0 = Struct_3(global0.a, global0.b);
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(364f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 + 274f), 1961f, _wgslsmith_f_op_f32(max(-1013f, -1857f)), 362f)), select(vec4<bool>(global0.a | global0.a, global0.a, false && global0.a, global0.a | true), !vec4<bool>(true, true, global0.a, global0.a), !any(vec2<bool>(global0.a, false))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(977f, arg_1, -1168f, 1133f))))))));
    let var_1 = !select(!(!vec4<bool>(global0.a, true, global0.a, false)), vec4<bool>(global0.a, true, global0.a, global0.a), false);
    global0 = Struct_3(true, Struct_1(~(arg_0.x | ~global0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(global0.b.b * _wgslsmith_f_op_f32(trunc(global0.b.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 773f), var_0.x), arg_0));
    var var_2 = -u_input.e;
    return reverseBits(arg_0.x);
}

fn func_1() -> f32 {
    let var_0 = func_2(global0.b.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.b.b, -2455f)))));
    let var_1 = select(select(select(!vec3<bool>(true, false, global0.a), select(vec3<bool>(true, global0.a, global0.a), !vec3<bool>(global0.a, global0.a, true), !vec3<bool>(true, false, global0.a)), all(vec2<bool>(true, global0.a))), !(!vec3<bool>(global0.a, false, global0.a)), vec3<bool>(!(!global0.a), !global0.a, true)), select(select(select(vec3<bool>(global0.a, global0.a, true), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, global0.a, false), true), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, true, global0.a), true)), select(!vec3<bool>(global0.a, global0.a, true), select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, false, global0.a), vec3<bool>(true, false, false)), global0.a), true & any(vec4<bool>(true, global0.a, global0.a, false))), vec3<bool>(_wgslsmith_div_f32(global0.b.b, global0.b.b) >= _wgslsmith_f_op_f32(-global0.b.c.x), global0.a, true), !global0.a), !(!vec3<bool>(all(vec3<bool>(true, global0.a, true)), true, true)));
    var var_2 = !(!select(!(!vec4<bool>(var_1.x, global0.a, var_1.x, false)), !select(vec4<bool>(var_1.x, true, true, global0.a), vec4<bool>(global0.a, false, true, global0.a), vec4<bool>(false, global0.a, false, false)), false));
    return _wgslsmith_f_op_f32(f32(-1f) * -349f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = false;
    var_0 = !all(vec2<bool>(all(!vec2<bool>(global0.a, true)), all(vec4<bool>(global0.a, true, global0.a, false))));
    var_0 = !(!((global0.a && global0.a) || !global0.a)) & !global0.a;
    var var_1 = -(countOneBits(vec4<i32>(-42270i, _wgslsmith_mult_i32(-33588i, u_input.c.x), ~25786i, u_input.c.x & u_input.d.x)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 23350u, 4294967295u, 1u), ~vec4<u32>(8544u, u_input.b, global0.b.d.x, 11387u)), vec4<u32>(~global0.b.a, _wgslsmith_mod_u32(u_input.b, global0.b.d.x), global0.b.d.x, u_input.a)) % vec4<u32>(32u)));
    let var_2 = Struct_1(~1u, _wgslsmith_f_op_f32(-676f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec2_f32(trunc(global0.b.c)), countOneBits(firstTrailingBit(global0.b.d)));
    var var_3 = vec3<f32>(517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(select(var_2.c.x, 691f, global0.a)), all(vec4<bool>(true, true, false, global0.a)))) + _wgslsmith_f_op_f32(-var_2.c.x))), -425f);
    let var_4 = firstTrailingBit(~12769u);
    let var_5 = select(-(~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 38623i, 27054i, -86259i), countOneBits(vec4<i32>(u_input.e.x, var_1.x, u_input.e.x, u_input.e.x)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12904i, var_1.x, 20583i), vec3<i32>(-1i, 0i, var_1.x)) ^ min(1i, var_1.x), reverseBits(_wgslsmith_sub_i32(-19184i, -1i)), -(~(~var_1.x)), abs(var_1.x)), all(select(!select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.a), global0.a), !(!vec2<bool>(global0.a, global0.a)), vec2<bool>(global0.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, 10378u, max(min(select(vec3<i32>(-2637i, u_input.d.x, -2147483647i), u_input.c, all(vec2<bool>(true, global0.a))), u_input.c), (vec3<i32>(var_1.x, 2147483647i, -14535i) ^ abs(u_input.d)) ^ (abs(vec3<i32>(18940i, 13731i, 57293i)) ^ u_input.c)));
}


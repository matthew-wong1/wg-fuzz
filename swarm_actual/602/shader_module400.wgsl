struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-50889i, 46304i, -17586i);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    global1 = !select(!(!(!vec2<bool>(global1.x, false))), select(!(!vec2<bool>(true, global1.x)), !(!vec2<bool>(global1.x, global1.x)), select(select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), !vec2<bool>(global1.x, global1.x), !vec2<bool>(true, global1.x))), vec2<bool>(u_input.a.x < (4294967295u | u_input.a.x), any(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, false, global1.x)))));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-362f))))));
    var var_1 = 1i;
    var var_2 = ~select(~reverseBits(~vec2<u32>(28655u, 35348u)), select(vec2<u32>(0u, 4294967295u), reverseBits(u_input.a.zy), any(vec3<bool>(true, true, global1.x))) & min(select(u_input.a.xy, u_input.a.xz, vec2<bool>(global1.x, global1.x)), ~u_input.a.yy), any(select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(true, global1.x, global1.x), !global1.x)));
    var_2 = vec2<u32>(_wgslsmith_mod_u32(~1u, var_2.x), 1u);
    return !vec2<bool>(global1.x, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>) -> u32 {
    global1 = !select(!vec2<bool>(all(vec3<bool>(global1.x, true, global1.x)), global1.x), select(select(func_3(), func_3(), true), vec2<bool>(false, true), !vec2<bool>(false, global1.x)), true);
    let var_0 = ~u_input.a.x;
    global0 = -countOneBits(vec3<i32>(14037i, u_input.b, u_input.b));
    var var_1 = vec3<bool>(global1.x, global1.x, !(!global1.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-769f, -1154f), vec2<f32>(-1380f, 432f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 282f) + vec2<f32>(-143f, 2191f))), vec2<f32>(_wgslsmith_f_op_f32(-1362f * -266f), 1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-418f, -1691f)))));
    return 66810u;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = ~arg_2.x;
    var_0 = 96964u;
    let var_1 = 495f;
    var_0 = abs(6381u);
    let var_2 = Struct_5(4294967295u, u_input.b, Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -19839i), global0.yy) | global0.yy), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, -17679i), ~u_input.b))), arg_0.x, vec2<i32>(~arg_1, 1i));
    return var_2.c;
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f * 1000f) + -834f)), 539f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-867f, -606f)))))), -18289i, vec2<u32>(_wgslsmith_dot_vec2_u32(select(u_input.a.zy, u_input.a.xx, vec2<bool>(true, false)), ~vec2<u32>(u_input.a.x, 48222u)) >> (u_input.a.x % 32u), countOneBits(_wgslsmith_sub_u32(func_2(vec3<u32>(u_input.a.x, 39048u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), 1u))));
    global0 = select(~(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-53028i, -32538i, u_input.b, global0.x), vec4<i32>(-10778i, 5587i, 35285i, var_0.a.x)), i32(-1i) * -27168i, func_4(vec3<f32>(-1000f, -1609f, 1688f), 1i, u_input.a.xz).b)), firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(global0.x, i32(-1i) * -6615i), -(~var_0.a.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global0.x, var_0.a.x, var_0.b), reverseBits(2147483647i), _wgslsmith_sub_i32(20694i, u_input.b)))), select(vec3<bool>(true, !any(vec2<bool>(arg_0, arg_0)), true), select(!select(vec3<bool>(arg_0, arg_0, global1.x), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, false)), !vec3<bool>(arg_0, true, true), true), vec3<bool>(-1i == select(u_input.b, u_input.b, true), !any(vec4<bool>(global1.x, true, false, arg_0)), false)));
    var var_1 = Struct_5(1u, -1i, Struct_1(var_0.a, min(1i, _wgslsmith_add_i32(u_input.b, 1i) << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(239f))), ~select(select(vec2<i32>(var_0.a.x, -2147483647i), var_0.a, global1.x), var_0.a, global1.x & global1.x) >> (~u_input.a.ww % vec2<u32>(32u)));
    var_0 = Struct_1(var_0.a, _wgslsmith_sub_i32(var_0.a.x, func_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-412f, -431f, 548f))), -2147483647i << (_wgslsmith_mod_u32(65602u, u_input.a.x) % 32u), vec2<u32>(52865u, 4294967295u) & select(u_input.a.yz, u_input.a.xz, vec2<bool>(arg_0, true))).a.x));
    var var_2 = var_1.d;
    return Struct_4(_wgslsmith_f_op_f32(var_1.d - 485f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.x);
    global0 = vec3<i32>(18935i, firstLeadingBit(28889i), reverseBits(~(-u_input.b)));
    let var_1 = Struct_5(u_input.a.x, 0i ^ u_input.b, Struct_1(-(_wgslsmith_add_vec2_i32(global0.yz, vec2<i32>(global0.x, 50136i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), global0.zx)), (i32(-1i) * -23999i) >> (_wgslsmith_mod_u32(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.yy)) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1390f + var_0.a), _wgslsmith_f_op_f32(sign(800f))))), all(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, false), global1.x)))), vec2<i32>(-firstTrailingBit(u_input.b), _wgslsmith_mod_i32(firstLeadingBit(~1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.b, u_input.b, global0.x), ~vec4<i32>(-34502i, 2147483647i, global0.x, -23505i)))));
    var var_2 = all(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, var_1.e.x >= 0i, global1.x, global1.x), !select(vec4<bool>(true, false, global1.x, false), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(true, true, global1.x, true)))) && any(!(!(!vec3<bool>(global1.x, global1.x, global1.x))));
    global0 = ~vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-2147483647i), 32342i, -1i), -u_input.b), ~_wgslsmith_mod_i32(~(-22002i), 1i | u_input.b), -8721i);
    let var_3 = var_1.c;
    global0 = reverseBits(-select(countOneBits(vec3<i32>(-8087i, -23377i, -20811i)), reverseBits(~vec3<i32>(u_input.b, u_input.b, var_3.b)), vec3<bool>(!global1.x, true, true)));
    global0 = vec3<i32>(-2147483647i, -6280i, countOneBits(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -23834i, 0i), abs(vec3<i32>(2147483647i, -2474i, global0.x))), i32(-1i) * -53269i)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(38145u) | _wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.a.x, 1u), 1u), vec4<u32>(u_input.a.x, ~u_input.a.x, select(~abs(u_input.a.x), 1u, !(!global1.x)), reverseBits(~var_1.a) & u_input.a.x), u_input.b);
}


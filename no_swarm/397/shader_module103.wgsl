struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-667f, vec3<u32>(30254u, 34794u, 1u), vec2<f32>(599f, 2569f), true, 22209i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) + _wgslsmith_f_op_f32(-2177f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-493f, -1407f))));
    var var_1 = global0.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1514f, -1000f)) * 2411f))) < -662f);
    var var_3 = _wgslsmith_f_op_f32(-794f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), 858f))) + _wgslsmith_f_op_f32(-var_0)));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) + _wgslsmith_f_op_f32(round(1376f))), _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(-global0.a))), global0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-270f))) - var_0), _wgslsmith_f_op_f32(-631f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1397f)))), arg_1, firstLeadingBit(_wgslsmith_dot_vec2_i32(max(arg_0.yx, vec2<i32>(arg_0.x, 58462i)), vec2<i32>(0i, 0i)) ^ _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.e, global0.e), 0i >> (1u % 32u), -arg_2)));
    return ~6979u & _wgslsmith_dot_vec2_u32(~vec2<u32>(~0u, 6753u), vec2<u32>(_wgslsmith_clamp_u32(~1u, 22813u, _wgslsmith_mult_u32(0u, u_input.b)), firstLeadingBit(u_input.b >> (global0.b.x % 32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(~0u);
    return Struct_1(global0.c.x, ~vec3<u32>(~var_0.a | ~u_input.a, countOneBits(func_3(vec3<i32>(arg_0.e, global0.e, 0i), global0.d, global0.e)), ~(u_input.a ^ global0.b.x)), global0.c, select(!all(vec4<bool>(false, arg_0.d, true, global0.d)) || true, !(!(!global0.d)), global0.d), -42932i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    let var_0 = global0.e & -8485i;
    global0 = func_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-839f, arg_0.a, global0.d))))), global0.b ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0.b.x, 23598u), vec3<u32>(arg_0.b.x, 24984u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, arg_0.c.x) * arg_0.c))), true, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e, var_0, var_0), vec3<i32>(arg_0.e, 0i, -2147483647i)))));
    var var_1 = Struct_3(vec2<f32>(502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -143f))))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global0.b.x, arg_0.b.x), _wgslsmith_sub_u32(global0.b.x << (0u % 32u), 87051u), 32449u, _wgslsmith_mult_u32(18711u, ~u_input.a)), ~vec4<u32>(global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(12784u, u_input.b, 45312u, global0.b.x), vec4<u32>(u_input.a, u_input.b, arg_0.b.x, u_input.b)), arg_0.b.x, abs(global0.b.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global0.e, 1i, arg_0.e), abs(vec4<i32>(34533i, global0.e, var_0, -26718i)), vec4<i32>(~(-25595i), var_0, select(var_0, var_0, global0.d), global0.e) & firstLeadingBit(-vec4<i32>(-8311i, -38298i, var_0, 33933i))));
    var var_2 = !select(select(vec3<bool>(arg_0.d, false, true), !(!vec3<bool>(false, global0.d, true)), arg_0.d || true), vec3<bool>(true, all(vec4<bool>(global0.d, true, arg_0.d, arg_0.d)), all(vec2<bool>(false, global0.d))), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, arg_0.d), vec3<bool>(true, arg_0.d, true))));
    return -819f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-1045f + -418f), ~(~vec3<u32>(56171u, u_input.b, u_input.a & 94658u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0.c, vec2<f32>(-890f, -687f)))), !any(!vec4<bool>(global0.d, true, true, global0.d)) | !all(select(vec3<bool>(true, global0.d, global0.d), vec3<bool>(false, true, global0.d), true)), abs(2147483647i));
    let var_0 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(262f * -229f), global0.b, _wgslsmith_f_op_vec2_f32(arg_1.xz + arg_0.wx), global0.d && global0.d, ~arg_2.c.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(var_0).c.x));
    let var_2 = Struct_4(var_0.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_mod_vec3_u32(reverseBits(arg_2.b.yzy), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.b.x, var_0.b.x, 4294967295u), ~var_0.b, ~vec3<u32>(1u, var_0.b.x, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(1213f + 1445f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), !global0.d, arg_2.c.x);
    return min(vec3<u32>(~_wgslsmith_div_u32(90950u, var_0.b.x) | 4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(7376u, 1u, 1u, 4294967295u)), vec4<u32>(~global0.b.x, arg_2.b.x << (arg_2.b.x % 32u), abs(var_0.b.x), ~69259u)), func_2(func_2(func_2(Struct_1(var_1, global0.b, vec2<f32>(var_1, 2444f), global0.d, -1788i)))).b.x), ~vec3<u32>(0u, 37318u, firstLeadingBit(min(4294967295u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(-748f + -500f), ~func_4(vec4<f32>(195f, -1000f, _wgslsmith_f_op_f32(func_1(Struct_1(global0.c.x, global0.b, global0.c, true, -1i))), global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-528f, global0.c.x, global0.a, -187f))) * _wgslsmith_div_vec4_f32(vec4<f32>(449f, -1225f, global0.c.x, global0.c.x), vec4<f32>(208f, global0.a, global0.c.x, global0.c.x))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global0.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 5901u, 55073u, 12337u), vec4<u32>(18697u, 27319u, u_input.a, u_input.b)), countOneBits(vec4<i32>(-66406i, global0.e, -41447i, global0.e)))), global0.c, !any(select(vec2<bool>(global0.d, true), select(vec2<bool>(false, global0.d), vec2<bool>(true, global0.d), vec2<bool>(global0.d, true)), global0.d)), abs(-1i >> (countOneBits(0u) % 32u)));
    var var_0 = Struct_4(firstTrailingBit(_wgslsmith_mod_u32(8628u, global0.b.x)));
    var var_1 = global0.b;
    var_0 = Struct_4(countOneBits(1u));
    let var_2 = Struct_2(global0.d);
    let var_3 = ~u_input.b;
    let var_4 = vec4<bool>(all(vec4<bool>(true, global0.d, var_2.a, global0.d)), true, !global0.d, false);
    let var_5 = min(global0.b, ~select(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(global0.b, global0.b), ~global0.b), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 767f, -442f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 1000f, -365f) * vec4<f32>(-142f, 1020f, global0.a, global0.c.x)), Struct_3(global0.c, vec4<u32>(u_input.a, 0u, 0u, 57890u), vec4<i32>(global0.e, global0.e, -70295i, global0.e))), false));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(832f + global0.a))) + 296f), ~func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(760f, -1000f, global0.a, global0.c.x) + vec4<f32>(-281f, global0.c.x, -908f, 1212f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, 506f, global0.a, global0.c.x))) + vec4<f32>(580f, global0.a, global0.c.x, 1062f)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 328f)), select(vec4<u32>(42261u, 40752u, 46937u, 25650u), vec4<u32>(62954u, var_3, var_3, 0u), vec4<bool>(var_4.x, false, false, true)), vec4<i32>(global0.e, global0.e, 66871i, -1i))), global0.c, var_4.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(47842i, _wgslsmith_sub_vec3_u32(global0.b, ~(vec3<u32>(70947u, 17144u, u_input.b) ^ ~vec3<u32>(1u, var_5.x, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(738f, global0.c.x, global0.c.x, global0.c.x) + vec4<f32>(-2636f, -353f, -248f, global0.c.x)))))), vec2<f32>(global0.a, 1131f), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(397f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}


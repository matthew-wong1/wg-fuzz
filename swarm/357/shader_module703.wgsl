struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1539f, 490f, 1191f);

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<i32>, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<i32>(firstLeadingBit(u_input.b), i32(-1i) * -u_input.c.x, u_input.b, (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), u_input.c.yz), ~u_input.b) << (arg_1.b.x % 32u)) & _wgslsmith_div_i32(u_input.c.x, u_input.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5941u, 14727u, u_input.a.x), vec4<u32>(arg_1.b.x, 0u, u_input.a.x, arg_1.b.x)) % 32u)));
    global2 = array<vec2<i32>, 22>();
    let var_1 = 1u;
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), -755f, _wgslsmith_f_op_f32(select(800f, global0.x, false))), arg_1.a.wwy)))));
    var var_2 = select(vec2<i32>((21714i ^ var_0.x) ^ abs(var_0.x), 2147483647i) >> (reverseBits(abs(arg_1.b)) % vec2<u32>(32u)), vec2<i32>(-select(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-5722i, var_0.x, var_0.x, u_input.b), vec4<i32>(u_input.b, var_0.x, var_0.x, u_input.c.x)), global1.x), -1682i), vec2<bool>(true, global1.x));
    return _wgslsmith_f_op_f32(-203f - 1127f);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1022f)) + global0.x), -105f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1821f, -193f), vec2<f32>(global0.x, 184f)), Struct_1(vec4<f32>(236f, 1032f, -753f, -269f), arg_0, 1096f, global0.x, u_input.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1188f) * vec3<f32>(global0.x, global0.x, global0.x)))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, 2054f) * vec3<f32>(-1786f, global0.x, global0.x)))))));
    let var_1 = false;
    let var_2 = firstTrailingBit(vec2<u32>(13902u, u_input.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1173f, -1539f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(global0.x, global0.x, global0.x)), var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1513f)))))));
    global0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), global0.x);
    return ~(4294967295u >> (var_2.x % 32u));
}

fn func_4(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = 0i;
    global1 = select(vec3<bool>(any(!(!vec3<bool>(false, global1.x, true))), all(vec2<bool>(global1.x, true)), true), select(select(vec3<bool>(368f > global0.x, !global1.x, true), vec3<bool>(false, any(global1.yx), global1.x), _wgslsmith_mod_i32(var_0, -6418i) >= u_input.c.x), vec3<bool>(true, true, true), true), vec3<bool>(all(!vec3<bool>(false, global1.x, true)), global1.x, !global1.x));
    global1 = !vec3<bool>(!(global1.x && false), any(!select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, global1.x))), !any(vec3<bool>(true, true, true)));
    global1 = !(!select(vec3<bool>(any(vec3<bool>(global1.x, global1.x, global1.x)), false | global1.x, -357f == global0.x), vec3<bool>(any(vec3<bool>(global1.x, true, global1.x)), all(vec3<bool>(true, true, global1.x)), all(vec3<bool>(true, global1.x, true))), vec3<bool>(select(global1.x, global1.x, global1.x), true, true)));
    global2 = array<vec2<i32>, 22>();
    return vec3<bool>(global1.x, ~abs(min(5201u, u_input.a.x)) != _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(45661u, u_input.a.x, 1u), arg_0.x), 13334u), !global1.x);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_1 {
    global1 = select(select(vec3<bool>(all(select(global1.yx, global1.yy, arg_0)), arg_1, all(vec4<bool>(false, false, arg_0, false))), vec3<bool>(false, select(global1.x, all(vec4<bool>(arg_1, global1.x, global1.x, true)), u_input.c.x < -26493i), -8353i >= u_input.c.x), !(1i != u_input.c.x)), func_4(~vec4<u32>(u_input.a.x, 15529u, 1u, func_2(u_input.a))), !(!select(vec3<bool>(true, true, arg_1), !vec3<bool>(false, true, global1.x), global0.x == -511f)));
    var var_0 = !(u_input.a.x >= u_input.a.x);
    var_0 = false;
    global2 = array<vec2<i32>, 22>();
    global2 = array<vec2<i32>, 22>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x + 1711f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(862f, 315f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-383f, 1233f)), _wgslsmith_f_op_f32(exp2(global0.x))), global0.x) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1183f, global0.x) - vec4<f32>(-680f, -1040f, 211f, global0.x)))))), countOneBits(min(~u_input.a | abs(vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a)), _wgslsmith_f_op_f32(global0.x - global0.x), global0.x, select(~_wgslsmith_div_vec2_u32(u_input.a, ~vec2<u32>(10065u, 26832u)), vec2<u32>(~firstTrailingBit(u_input.a.x), u_input.a.x), !(!select(global1.xz, global1.xx, vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 22>();
    var var_0 = func_1(false, all(!select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x))), abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x & -4565i, u_input.b), -63097i)));
    global2 = array<vec2<i32>, 22>();
    global2 = array<vec2<i32>, 22>();
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(206f, var_0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1015f)), 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -2757f)), _wgslsmith_f_op_f32(abs(var_0.d))), _wgslsmith_f_op_f32(-var_0.a.x)) + var_0.a.wxx);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, global0.x, 241f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.a.yxx, _wgslsmith_f_op_vec3_f32(-var_0.a.xxw))))) + _wgslsmith_f_op_vec3_f32(-var_0.a.zzw));
    let var_1 = func_1(true, any(vec3<bool>(any(vec3<bool>(global1.x, global1.x, global1.x)), true, true)) && true, reverseBits(-6960i));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.b.x, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 20309u, 0u), vec3<u32>(u_input.a.x, 56894u, u_input.a.x)) >> (~4952u % 32u)), true || global1.x), ~var_0.e, vec2<u32>(var_0.e.x, ~_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(var_0.b.x, 21083u))) ^ var_1.b, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~9389u, var_0.b.x & 1u, u_input.a.x), var_0.e.x) >> (var_1.b.x % 32u));
}


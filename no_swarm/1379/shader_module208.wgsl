struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(154f, -715f) - vec2<f32>(1176f, 3034f))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(809f, -1133f), vec2<f32>(1851f, 1535f), true))) + vec2<f32>(_wgslsmith_f_op_f32(round(-1770f)), -243f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-445f, 922f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(305f, 1139f))) - vec2<f32>(1f, _wgslsmith_f_op_f32(292f - -1875f))))));
    global0 = ((abs(arg_1) >> (vec2<u32>(~arg_1.x, ~global0.x) % vec2<u32>(32u))) & u_input.e.xz) ^ firstLeadingBit(arg_1);
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~arg_1, abs(arg_1)) < global0.x), arg_0, true);
    let var_2 = false;
    var_1 = Struct_2(var_1.a, var_1.a, arg_2 >= arg_2);
    return Struct_1(true);
}

fn func_3() -> vec2<u32> {
    var var_0 = -354f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(min(316f, _wgslsmith_f_op_f32(sign(-950f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(trunc(-180f)), 1i < u_input.b)))), any(vec2<bool>(true, true)) & any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = Struct_5(Struct_2(Struct_1(!any(vec4<bool>(true, true, false, false))), Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), var_1 <= _wgslsmith_f_op_f32(-var_1)), firstLeadingBit(vec2<u32>(1u, ~(u_input.e.x ^ u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1, var_1, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-643f, 281f, var_1, -166f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1 - -1547f), 1160f, 1497f, var_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1283f, 187f, var_1, -765f) + vec4<f32>(-833f, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(448f, var_1, var_1, var_1), vec4<f32>(var_1, var_1, var_1, -206f), vec4<bool>(false, false, true, true)))), all(vec2<bool>(true, false))))), Struct_2(func_2(func_2(Struct_1(false), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 41658u), vec2<u32>(4294967295u, 4294967295u)), -u_input.d), _wgslsmith_add_vec2_u32(u_input.e.xz, u_input.e.zx) ^ vec2<u32>(global0.x, u_input.a), -47565i), Struct_1(all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-633f)), _wgslsmith_f_op_f32(min(var_1, 1140f)))) > _wgslsmith_f_op_f32(round(-227f))));
    var var_3 = vec2<u32>(u_input.e.x, global0.x) >> (var_2.b % vec2<u32>(32u));
    var var_4 = Struct_5(var_2.a, vec2<u32>(_wgslsmith_clamp_u32(abs(33357u << (0u % 32u)), max(~4294967295u, reverseBits(u_input.e.x)), ~(~62708u)), _wgslsmith_mod_u32(global0.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-var_2.c), Struct_2(Struct_1(func_2(func_2(var_2.a.b, u_input.e.zw, u_input.b), abs(var_2.b), -u_input.b).a), func_2(func_2(var_2.a.a, var_2.b, ~(-1i)), ~(var_2.b ^ u_input.e.wx), _wgslsmith_mod_i32(u_input.d, -43223i) & -u_input.c), select(!var_2.a.b.a | func_2(var_2.d.a, var_2.b, u_input.b).a, false, true)));
    return countOneBits(select(min(vec2<u32>(var_4.b.x, 1u), vec2<u32>(~0u, global0.x)), vec2<u32>(reverseBits(var_2.b.x), ~var_2.b.x) & vec2<u32>(0u, 36409u), vec2<bool>(var_2.a.c, var_4.d.c)));
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = func_3();
    global0 = arg_0.c;
    var var_0 = 1u;
    global0 = arg_0.c;
    let var_1 = arg_0.a;
    return (_wgslsmith_add_i32(countOneBits(firstLeadingBit(u_input.b)), -1i) >> (4294967295u % 32u)) >> (u_input.e.x % 32u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = arg_0.ww;
    var var_1 = func_4(Struct_3(func_2(Struct_1(true), u_input.e.yy, 21571i), vec4<bool>(arg_1.a.a || arg_1.c, _wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(u_input.b, var_0.x)) != 14445i, arg_1.c | any(vec4<bool>(true, true, arg_1.a.a, false)), arg_1.a.a), func_3()));
    var var_2 = 0u;
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(select(630f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(134f, 821f))), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1075f, -1000f)) - -797f))), -1000f, _wgslsmith_f_op_f32(ceil(1f))), u_input.e.yy);
    var var_4 = Struct_1(false);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x), 202f, var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1534f, var_3.a.x)), _wgslsmith_f_op_f32(abs(var_3.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x, _wgslsmith_f_op_f32(822f - var_3.a.x), _wgslsmith_div_f32(956f, _wgslsmith_f_op_f32(var_3.a.x - 1426f))) * var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.wxz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -396f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(u_input.c, -1i, u_input.b, u_input.c), Struct_2(Struct_1(false), Struct_1(true), false))), vec4<f32>(-1000f, -579f, 1000f, -270f))))))), -max(u_input.d, _wgslsmith_add_i32(abs(u_input.b), abs(u_input.c))), _wgslsmith_sub_u32(79271u >> ((var_0.x | 1863u) % 32u), var_0.x) ^ ~_wgslsmith_mult_u32(max(var_0.x, var_0.x), u_input.a));
}


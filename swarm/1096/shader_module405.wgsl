struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(vec3<bool>(false | !(!global0.b), true, _wgslsmith_clamp_i32(~0i, -1161i, 7997i) != (-u_input.a & -u_input.c.x)), _wgslsmith_mult_i32(-1i, abs(u_input.d.x)) ^ ~11777i, _wgslsmith_f_op_f32(floor(421f)), false, u_input.c.x);
    var_1 = Struct_1(vec3<bool>(true, true, true), -6489i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(trunc(1461f))), _wgslsmith_f_op_f32(trunc(307f)))), all(select(vec4<bool>(true, any(vec2<bool>(var_0.x, global0.d)), var_1.a.x, var_1.a.x), select(select(vec4<bool>(true, true, false, global0.d), vec4<bool>(false, true, arg_1.d, global0.d), false), vec4<bool>(false, true, var_1.d, false), !var_1.d), vec4<bool>(var_1.d, any(vec4<bool>(false, false, var_0.x, var_0.x)), true, global0.d))), var_1.b);
    global0 = arg_1;
    global0 = arg_1;
    return u_input.a;
}

fn func_2() -> vec2<bool> {
    global0 = Struct_2(global0.a, global0.b, vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1411f, -648f)), global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x - 589f), _wgslsmith_f_op_f32(floor(global0.c.x))))), global0.c.x), true);
    let var_0 = Struct_1(vec3<bool>(global0.b, !all(select(vec2<bool>(global0.d, global0.b), vec2<bool>(true, global0.b), vec2<bool>(global0.b, true))), u_input.c.x < u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -u_input.a, u_input.a, -2147483647i, 1667i), _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(u_input.a, ~u_input.c.x, u_input.a, firstLeadingBit(10509i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - global0.c.x) - _wgslsmith_f_op_f32(global0.c.x - -134f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.x)) * _wgslsmith_f_op_f32(global0.c.x * -1000f)), _wgslsmith_f_op_f32(-global0.c.x))), global0.d, func_3(1u, Struct_2(countOneBits(0u), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), global0.c.x > _wgslsmith_f_op_f32(trunc(global0.c.x)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.c.x))));
    let var_2 = Struct_2(global0.a << (global0.a % 32u), any(!select(select(var_0.a, var_0.a, false), var_0.a, global0.d)), vec4<f32>(var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1044f, var_1))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.x, -1207f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.c.x)), -933f) - -2227f)), var_0.a.x);
    let var_3 = vec3<bool>(var_0.d, all(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(global0.d, var_0.d), true)), all(var_0.a), _wgslsmith_clamp_i32(-2147483647i, var_0.e, u_input.d.x) != firstLeadingBit(var_0.b))), all(!select(vec4<bool>(var_0.d, true, var_0.a.x, false), vec4<bool>(var_2.d, false, global0.b, false), vec4<bool>(false, var_2.b, false, false))) && all(!select(vec4<bool>(global0.b, var_2.d, var_0.a.x, var_2.d), vec4<bool>(global0.d, var_2.d, var_2.d, var_2.b), global0.d)));
    return vec2<bool>(all(!select(select(vec3<bool>(global0.b, var_2.d, false), vec3<bool>(false, false, var_0.d), var_0.a), vec3<bool>(true, var_0.d, false), !vec3<bool>(var_0.d, var_0.d, false))), !(true & (global0.c.x > 357f)) | !all(vec2<bool>(true, true)));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_dot_vec3_u32(abs(u_input.b), ~(~vec3<u32>(1u, abs(u_input.b.x), ~1u)));
    var var_2 = global0.d;
    var var_3 = !select(!vec2<bool>(global0.b, false), select(func_2(), vec2<bool>(u_input.a <= u_input.d.x, true), any(vec3<bool>(true, global0.b, global0.d))), !vec2<bool>(global0.d, !global0.d));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-484f)), 766f, true)), arg_0);
    return 4294967295u;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(1u, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1836f))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c.x + global0.c.x)))) | all(select(select(vec3<bool>(false, false, true), vec3<bool>(global0.d, false, global0.b), vec3<bool>(false, true, arg_0.x)), select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, false, true), global0.d), select(vec3<bool>(global0.b, true, true), vec3<bool>(true, false, true), vec3<bool>(true, global0.b, true)))), global0.c, arg_0.x);
    let var_1 = arg_0.x;
    var var_2 = 1i > (0i << (func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global0.c.x))) % 32u));
    global0 = Struct_2(_wgslsmith_div_u32(countOneBits(func_1(-1994f)), u_input.b.x), true, _wgslsmith_f_op_vec4_f32(round(var_0.c)), !(var_1 || var_1));
    var_2 = true;
    return Struct_1(vec3<bool>((false || select(var_1, global0.d, var_1)) || true, !any(arg_0), var_0.d), ~6969i, global0.c.x, any(!vec3<bool>(global0.d | true, !global0.d, all(vec4<bool>(false, true, true, false)))), ~(-17798i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = _wgslsmith_sub_u32(u_input.b.x, (min(global0.a, select(global0.a, global0.a, global0.b)) & 40673u) >> (u_input.b.x % 32u));
    let var_1 = 1966u;
    var_0 = 1u;
    let var_2 = func_4(!select(vec2<bool>(global0.d, true), !vec2<bool>(false, global0.b), ~var_1 > func_1(global0.c.x)));
    var var_3 = select(vec2<i32>(-47469i, -(var_2.b & _wgslsmith_sub_i32(var_2.e, -1i))), u_input.c.wy ^ vec2<i32>(-(~6574i), var_2.e), all(select(var_2.a.yy, !(!vec2<bool>(global0.d, global0.b)), select(select(var_2.a.xy, vec2<bool>(true, global0.b), vec2<bool>(false, var_2.d)), var_2.a.xx, var_2.a.x))));
    var var_4 = vec4<bool>(!(!(1u > ~u_input.b.x)), any(vec2<bool>(any(!vec3<bool>(false, false, global0.b)), var_2.d)), true, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yz);
}


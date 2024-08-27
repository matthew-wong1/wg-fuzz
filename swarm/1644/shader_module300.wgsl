struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
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

var<private> global0: i32 = 0i;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global1 = select(!(!select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(true, false, global1.x, arg_0.x), false & global1.x)), !vec4<bool>(global1.x, true, !all(vec4<bool>(false, arg_0.x, arg_0.x, global1.x)), arg_0.x), vec4<bool>(false, true, true, any(!(!vec4<bool>(global1.x, false, false, false)))));
    var var_0 = ~_wgslsmith_clamp_u32(17134u, u_input.e.x, reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 17964u, u_input.e.x, 93085u), ~vec4<u32>(u_input.c, u_input.e.x, u_input.e.x, 4294967295u))));
    global0 = ~1i;
    let var_1 = vec4<i32>(u_input.b, 2147483647i, ~2147483647i, u_input.a);
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, countOneBits(var_1.x), min(1i, countOneBits(u_input.b | var_1.x))), -u_input.d);
    return !global1.x;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_1(reverseBits(~u_input.a >> (~34291u % 32u)) << ((~abs(u_input.e.x) | 0u) % 32u), min(countOneBits(_wgslsmith_mult_u32(arg_0.b, _wgslsmith_mod_u32(u_input.c, u_input.e.x))), arg_0.b ^ _wgslsmith_mod_u32(u_input.c, _wgslsmith_div_u32(16264u, 4294967295u))), global1.x, ~_wgslsmith_mod_u32(4294967295u, arg_0.b) >> ((arg_0.d | firstTrailingBit(132853u)) % 32u), select(global1.xz, !arg_0.e, vec2<bool>(1u >= arg_1, 1i != (13971i | arg_0.a))));
    let var_1 = ~arg_1;
    global0 = -_wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(-8495i, ~u_input.b) ^ 13263i);
    let var_2 = !vec4<bool>(-933f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1196f, -413f, global1.x)), -1121f), all(!select(vec4<bool>(true, global1.x, false, false), vec4<bool>(false, false, false, false), vec4<bool>(var_0.e.x, false, true, var_0.e.x))), false, false);
    global1 = !select(var_2, select(var_2, var_2, vec4<bool>(arg_0.a >= var_0.a, var_2.x, false, 1i >= arg_0.a)), select(countOneBits(arg_1) < select(81u, 15350u, false), all(vec4<bool>(false, false, global1.x, global1.x)), false));
    return vec2<u32>(0u | arg_0.d, 0u);
}

fn func_2() -> vec4<bool> {
    var var_0 = ~(~func_3(Struct_1(0i, 4294967295u << (0u % 32u), any(global1.yx), u_input.c, vec2<bool>(false, false)), u_input.c));
    global1 = select(vec4<bool>(all(select(global1.zy, global1.yx, !global1.zx)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1564f + 361f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(911f)))), true & !any(global1.wy), !(any(vec2<bool>(global1.x, true)) | (global1.x || false))), select(!(!(!vec4<bool>(false, true, global1.x, false))), vec4<bool>(global1.x, !(u_input.b < u_input.d.x), true & (global1.x & global1.x), !any(vec4<bool>(true, false, false, false))), !(!(!vec4<bool>(global1.x, false, true, true)))), !(!global1.x));
    global1 = vec4<bool>(any(vec2<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, true)), any(vec2<bool>(false, false)))), !(!all(global1.zxx)), true, !(global1.x || all(vec4<bool>(true, true, global1.x, false))));
    global1 = select(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, global1.x, false, true), true), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true), !select(vec4<bool>(global1.x, false, true, true), vec4<bool>(false, global1.x, true, true), vec4<bool>(false, true, global1.x, global1.x)), !select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, true, true, global1.x))), vec4<bool>(func_1(select(vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), false), global1.xww)), true, false, !all(global1.www)), !vec4<bool>(~0u < var_0.x, false, false, 65886u <= u_input.c));
    global0 = _wgslsmith_clamp_i32(i32(-1i) * -47824i, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), i32(-1i) * -u_input.d.x);
    return vec4<bool>(global1.x, (i32(-1i) * -27299i) == (u_input.b >> (u_input.c % 32u)), any(global1.xz) & true, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = abs(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-16013i, u_input.b, 9474i, u_input.d.x), abs(vec4<i32>(-2147483647i, 12987i, u_input.a, -1036i))), ~(vec4<i32>(1i, -1096i, 0i, -1i) << (vec4<u32>(u_input.e.x, u_input.c, 0u, u_input.e.x) % vec4<u32>(32u))), ~(vec4<i32>(-41096i, u_input.a, -22801i, -1i) | vec4<i32>(-87i, -38602i, 62976i, -38883i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, -335f, 973f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1394f, -557f, -678f), vec3<f32>(-133f, -1071f, -1463f), global1.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1377f, -831f)), _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(-1498f - -1000f)) + vec3<f32>(1f, 1f, 1f)))));
    let var_3 = select(vec4<bool>(false, !all(vec3<bool>(false, false, global1.x)) && (func_1(global1.wxx) && (var_1.x >= var_1.x)), global1.x, any(select(!vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), global1.yy))), func_2(), global1.x);
    var var_4 = var_1;
    let var_5 = vec3<i32>(_wgslsmith_add_i32(-73518i, _wgslsmith_mult_i32(~var_4.x, -34643i)), -1i, ~(~_wgslsmith_dot_vec3_i32(-u_input.d, vec3<i32>(46154i, 0i, 0i))));
    var var_6 = !func_1(vec3<bool>(false, _wgslsmith_div_f32(-400f, var_2.x) >= _wgslsmith_f_op_f32(-var_2.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -155f), var_3.x || global1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1550f, 1264f))))), 1381f), ~(-12677i ^ _wgslsmith_add_i32(_wgslsmith_add_i32(var_4.x, var_5.x), u_input.a | 1i)), _wgslsmith_mod_u32(~u_input.e.x, 105561u));
}


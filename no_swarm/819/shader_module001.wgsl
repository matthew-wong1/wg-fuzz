struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(210f * _wgslsmith_f_op_f32(ceil(-2446f))));
    let var_1 = all(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false), any(vec4<bool>(true, true, true, true))));
    var var_2 = abs(u_input.b.yyw);
    return ~(~((vec2<i32>(var_2.x, u_input.b.x) ^ (vec2<i32>(-1465i, 2147483647i) & vec2<i32>(var_2.x, 0i))) << (~min(vec2<u32>(u_input.e.x, 4294967295u), u_input.e.xy) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec2<f32> {
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    let var_0 = countOneBits(u_input.b.zx);
    global0 = array<vec3<f32>, 10>();
    let var_1 = _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(func_3(), vec2<i32>(u_input.d.x, -u_input.a)), firstLeadingBit(~select(var_0, vec2<i32>(u_input.b.x, var_0.x), false) ^ -vec2<i32>(u_input.b.x, -2471i)));
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1385f))), 762f)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: u32) -> vec2<f32> {
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    var var_0 = ~firstTrailingBit(u_input.e | vec4<u32>(arg_3, countOneBits(1u), arg_3 | 0u, u_input.c));
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-247f, 792f) * vec2<f32>(430f, arg_2)))) - _wgslsmith_f_op_vec2_f32(func_2(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), max(max(u_input.e.yxx, u_input.e.yzz), abs(u_input.e.zxx))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-122f, 1086f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-974f)), 1096f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2, 433f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 10>();
    global0 = array<vec3<f32>, 10>();
    var var_0 = arg_2.a;
    let var_1 = Struct_1(arg_3.c, arg_2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(762f + arg_0.x))))), arg_3.d, !all(vec2<bool>(arg_3.d.x, arg_3.e)));
    let var_2 = u_input.c;
    return arg_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 10>();
    var var_0 = u_input.a;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_sub_i32(-1i, 1i) | _wgslsmith_mult_i32(u_input.d.x, u_input.a), _wgslsmith_f_op_f32(-1574f + -372f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(453f + -1500f) + _wgslsmith_f_op_f32(abs(605f))), 4294967295u)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-783f, 1000f)), -870f, -214f), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-724f)))), -682f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-532f, -1372f)))), Struct_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.a), (2147483647i & u_input.b.x) >> (1u % 32u)), select(true, true, true), Struct_1(-954f, true, 956f, select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), (i32(-1i) * -1i) != u_input.a), u_input.a, Struct_1(157f, true, 104f, !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), true && any(vec4<bool>(false, false, false, true)))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-103f, 274f)) * _wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(true, true), vec2<bool>(true, false), vec3<u32>(u_input.c, u_input.c, 1u))).x))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f - 1095f)) + -416f), vec4<bool>((u_input.e.x <= 4294967295u) | true, -107f > _wgslsmith_f_op_f32(ceil(1680f)), true, false), (reverseBits(1u) << (u_input.c % 32u)) <= _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, 84936u), vec2<u32>(6222u, u_input.e.x)), vec2<u32>(1u, u_input.c))));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(21520i, -24960i), u_input.d.x, ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.b.x), abs(abs(u_input.b)));
    var var_3 = var_1;
    global0 = array<vec3<f32>, 10>();
    var var_4 = !var_1.d.wx;
    var var_5 = -_wgslsmith_mod_vec3_i32(-vec3<i32>(20522i, var_2.x, 1i), max(~u_input.b.xzz, -var_2.yww)) | vec3<i32>(_wgslsmith_sub_i32(abs(1i), 29204i << (~u_input.e.x % 32u)), max(-var_2.x, select(u_input.d.x, var_2.x, var_3.d.x)) | _wgslsmith_dot_vec2_i32(vec2<i32>(12550i, u_input.b.x), vec2<i32>(-2147483647i, var_2.x)), 22015i);
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-608f, var_1.a)) * -400f)), _wgslsmith_f_op_f32(ceil(-1121f)));
    let x = u_input.a;
    s_output = StorageBuffer(572f);
}


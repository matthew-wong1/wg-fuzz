struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_1(select(global0.a, select(select(vec2<bool>(global0.a.x, true), select(vec2<bool>(false, global0.a.x), vec2<bool>(false, global0.a.x), global0.a), select(vec2<bool>(false, false), vec2<bool>(true, global0.a.x), vec2<bool>(false, global0.a.x))), !(!vec2<bool>(global0.a.x, true)), global0.a), global0.a.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 6552u, 81610u, u_input.b.x) ^ vec4<u32>(32488u, arg_1.x, 4294967295u, u_input.b.x), ~vec4<u32>(arg_0, 9496u, global0.d.x, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), arg_1);
    global0 = Struct_1(var_0.a, countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, arg_0 << (u_input.b.x % 32u)), 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1312f), ~(~vec2<u32>(arg_0, _wgslsmith_clamp_u32(global0.d.x, 1u, 0u))));
    let var_1 = select(select(vec2<bool>(false, global0.a.x), !select(vec2<bool>(false, var_0.a.x), global0.a, vec2<bool>(true, false)), !(true == select(global0.a.x, global0.a.x, true))), global0.a, var_0.a);
    var var_2 = arg_1.x < firstLeadingBit(0u);
    var_0 = Struct_1(var_0.a, _wgslsmith_mod_u32(arg_1.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4849u, global0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 94126u), u_input.b.yy)), firstLeadingBit(arg_1.x), select(var_0.d.x, ~global0.d.x, !global0.a.x))), global0.c, var_0.d);
    return countOneBits(1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    global0 = Struct_1(!global0.a, global0.b, 289f, ~vec2<u32>(arg_1.x << (countOneBits(arg_1.x) % 32u), ~func_3(1u, vec2<u32>(4294967295u, arg_2.e.a))));
    global0 = Struct_1(!(!vec2<bool>(!global0.a.x, global0.a.x)), ~8916u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -338f))))), arg_1.wz);
    var var_0 = all(vec4<bool>(all(arg_2.c) && global0.a.x, true, _wgslsmith_f_op_f32(-arg_2.a.d) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c))), all(vec2<bool>(!arg_2.c.x, true))));
    global0 = Struct_1(!vec2<bool>(arg_2.c.x, global0.a.x), 56550u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-909f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c - 990f), _wgslsmith_f_op_f32(abs(global0.c))))))), ~arg_1.zx & (~countOneBits(vec2<u32>(global0.b, global0.d.x)) >> (global0.d % vec2<u32>(32u))));
    let var_1 = arg_2.b.x >> (75461u % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.a.x)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = (vec2<u32>((u_input.b.x | u_input.b.x) | _wgslsmith_mult_u32(140715u, u_input.b.x), 0u) | u_input.b.xz) ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~46383u), vec2<u32>(4294967295u ^ u_input.b.x, u_input.b.x));
    global0 = Struct_1(!select(!vec2<bool>(global0.a.x, global0.a.x), global0.a, _wgslsmith_f_op_f32(func_2(u_input.a.wwz, vec4<u32>(59955u, global0.b, u_input.b.x, u_input.b.x), Struct_4(Struct_3(vec4<f32>(global0.c, -1202f, global0.c, global0.c), u_input.c, global0.d.x, 712f), u_input.a.yxz, vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec4<i32>(-23767i, arg_0, arg_1.x, 0i), Struct_2(var_0.x, -9081i, u_input.a.zy, var_0.x)))) > global0.c), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))) + global0.c), vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(92873u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 51594u, var_0.x), vec4<u32>(global0.b, 69738u, 27154u, 1u)))) >> (vec2<u32>(global0.b, u_input.b.x) % vec2<u32>(32u)));
    var var_1 = abs(-_wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(arg_0), 1i), -28338i));
    var var_2 = Struct_2(var_0.x, 0i >> (func_3(u_input.b.x, firstLeadingBit(u_input.b.yy) >> (u_input.b.xy % vec2<u32>(32u))) % 32u), countOneBits(u_input.a.yy), 0u);
    let var_3 = 48451i;
    return Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c, global0.c, global0.c, global0.c), vec4<f32>(1169f, global0.c, -1391f, global0.c)))))))), 6415i, ~firstLeadingBit(4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.c)), global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c, select(vec2<i32>(-4136i, 40201i), countOneBits(vec2<i32>(1i, ~(-61813i))), vec2<bool>(true, global0.a.x || global0.a.x)));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, 386f, global0.a.x))), 275f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.d, 303f), global0.c, -1303f, _wgslsmith_f_op_f32(258f + -628f)))), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.b, -2147483647i), ~(-26465i), ~u_input.a.x, _wgslsmith_sub_i32(-30776i, -13292i)), select(u_input.a, u_input.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false)) | vec4<i32>(var_0.b, 0i, var_0.b, var_0.b))), 4294967295u, _wgslsmith_div_f32(946f, global0.c));
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~1u, func_3(global0.d.x, vec2<u32>(var_0.c, 23531u))), _wgslsmith_dot_vec3_u32(vec3<u32>(38298u, var_0.c, u_input.b.x), vec3<u32>(0u, 0u, 1u)), _wgslsmith_mult_u32(~1u, ~u_input.b.x)), ~countOneBits(~vec3<u32>(25245u, global0.d.x, global0.b))), var_0.a.x, countOneBits(firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(80628u, 1u), global0.b))));
    var_0 = Struct_3(var_0.a, func_1(-1i, min(u_input.a.yz, u_input.a.yx) & _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.zy, u_input.a.ww), abs(u_input.a.zx))).b, _wgslsmith_add_u32(0u, reverseBits(max(4294967295u, u_input.b.x))), 1485f);
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~59485u, ~select(select(u_input.b.x, var_0.c, false), 1u, all(vec3<bool>(false, global0.a.x, true))), 41344u), vec3<u32>(9211u, 1u & _wgslsmith_div_u32(5220u, countOneBits(global0.b)), global0.d.x));
    let var_2 = 2295f;
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1551f - _wgslsmith_f_op_f32(trunc(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2)))), _wgslsmith_f_op_f32(abs(1605f)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c * 1000f), -470f, !global0.a.x)))), 2147483647i, var_0.c, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, var_0.d)))));
    var var_4 = func_1(firstLeadingBit(57115i), reverseBits(vec2<i32>(var_0.b, func_1(var_3.b, ~u_input.a.xx).b)));
    var var_5 = _wgslsmith_f_op_f32(ceil(var_4.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(~1i), var_3.b, _wgslsmith_div_i32(countOneBits(_wgslsmith_clamp_i32(u_input.c, var_0.b, 0i)), var_4.b), _wgslsmith_dot_vec3_i32(vec3<i32>(31199i, -938i, var_0.b), _wgslsmith_mod_vec3_i32(abs(u_input.a.yww), u_input.a.yzz))), var_3.d, u_input.b);
}


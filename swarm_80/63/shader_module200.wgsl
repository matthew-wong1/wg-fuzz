struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, global0.x, -214f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, -161f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -542f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 203f, global0.x), vec3<bool>(true, true, false)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, 1159f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 397f, global0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-255f, 305f, _wgslsmith_div_f32(-723f, global0.x)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-199f, 478f)) + _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -787f)), global0.x));
    var var_0 = global0.xy;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, global0.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -142f, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.x, 832f)) * vec3<f32>(1835f, 418f, global0.x))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -894f);
    return global0.yz;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(f32(-1f) * -1134f)))), -1078f);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(186f, var_0.x), _wgslsmith_f_op_vec2_f32(-global0.xz)) - global0.yy)) * _wgslsmith_f_op_vec2_f32(global0.zz * _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_3.x, -34903i, -10229i), vec4<i32>(-19939i, 2147483647i, arg_3.x, -1i))))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-319f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-408f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(693f)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-756f * _wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 1000f), var_0.x, _wgslsmith_f_op_f32(select(-2173f, 791f, false))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), var_0.x, 879f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, arg_0, 589f)))))));
    var var_1 = Struct_1(true, vec3<u32>(countOneBits(abs(6210u)) ^ arg_1.x, 0u, arg_1.x), _wgslsmith_f_op_f32(floor(206f)));
    let var_2 = true;
    return Struct_1(false, ~arg_1 >> (vec3<u32>(1u, arg_1.x | arg_1.x, _wgslsmith_mod_u32(4294967295u, arg_1.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(abs(u_input.a))).x * 570f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.c + 2434f), _wgslsmith_f_op_f32(floor(arg_3.c)), _wgslsmith_f_op_f32(327f * 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -1123f, arg_3.c)))));
    let var_0 = arg_1;
    let var_1 = arg_0.b.x;
    var var_2 = func_2(-286f, arg_1.yxx, select(vec3<bool>(arg_3.a, true, (u_input.c == u_input.a.x) | !arg_3.a), select(!select(arg_2, arg_2, arg_2), vec3<bool>(true, false, false), arg_2), any(vec4<bool>(true, false, !arg_2.x, arg_0.a))), select(-select(u_input.a, reverseBits(vec4<i32>(-1i, 15111i, u_input.c, -2147483647i)), arg_2.x), select(u_input.a, u_input.a, true) ^ abs(vec4<i32>(u_input.c, 36018i, -23435i, u_input.a.x)), _wgslsmith_clamp_i32(u_input.c, u_input.c, countOneBits(u_input.c)) <= u_input.a.x));
    var_2 = func_2(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(arg_0.c - arg_0.c)))))), min(select(vec3<u32>(var_0.x, 1u, _wgslsmith_div_u32(var_1, 88015u)), _wgslsmith_mod_vec3_u32(arg_1.zxw ^ vec3<u32>(91289u, var_2.b.x, arg_3.b.x), vec3<u32>(arg_0.b.x, arg_0.b.x, var_1)), all(vec4<bool>(var_2.a, true, arg_0.a, var_2.a))), ~vec3<u32>(_wgslsmith_sub_u32(85859u, 1u), _wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(18716u, arg_3.b.x)), ~arg_3.b.x)), arg_2, -countOneBits(~firstTrailingBit(u_input.a)));
    return ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 56566u), vec2<u32>(49869u, var_1)))) < ~(~firstTrailingBit(var_0.x));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_1(any(vec4<bool>(true, func_4(Struct_1(true, vec3<u32>(0u, u_input.d, 0u), global0.x), ~u_input.b, vec3<bool>(true, false, false), func_2(-1095f, vec3<u32>(4294967295u, u_input.d, 0u), vec3<bool>(true, true, true), vec4<i32>(u_input.c, 24084i, u_input.a.x, arg_0.x))), !(global0.x > 142f), true)), u_input.b.zyx, -671f);
    let var_1 = Struct_1(all(!(!select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false)))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(23309u, 4294967295u, 49800u), u_input.b.xwz) & select(_wgslsmith_mult_vec3_u32(u_input.b.xzz, vec3<u32>(68355u, 50604u, 4294967295u)), u_input.b.wxz, select(vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), false))), global0.x);
    var var_2 = false;
    var var_3 = ~(~(firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(60434u, var_1.b.x, u_input.d))) >> ((~vec3<u32>(u_input.b.x, 1u, u_input.b.x) ^ var_1.b) % vec3<u32>(32u))));
    var var_4 = select(_wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(90858u, 6208u), 33882u), _wgslsmith_mod_vec2_u32(~vec2<u32>(48310u, u_input.d) ^ ~vec2<u32>(u_input.d, 54283u), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, var_0.b.x), vec2<u32>(var_3.x, 48731u))))), abs(var_0.b.yy), select(!(!vec2<bool>(var_0.a, var_0.a)), select(vec2<bool>(false, any(vec3<bool>(false, var_0.a, false))), !(!vec2<bool>(false, var_0.a)), vec2<bool>(true, false)), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(var_0.a, var_1.a), false)), true)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(u_input.a.zyx), select(~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.b.x, u_input.d), vec3<u32>(19187u, u_input.d, u_input.d)), u_input.b.yzw, firstTrailingBit(~0u) == _wgslsmith_dot_vec3_u32(func_2(global0.x, vec3<u32>(u_input.b.x, u_input.d, 1u), vec3<bool>(false, true, false), vec4<i32>(10442i, u_input.c, u_input.a.x, -15140i)).b, vec3<u32>(u_input.b.x, 40669u, 0u))), 936f);
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -401f, var_0.c) - vec3<f32>(536f, 416f, var_0.c)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -2338f, var_0.c)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(304f, var_0.c, 231f) + vec3<f32>(213f, var_0.c, 753f)))), !(!var_0.a)))))));
    var var_1 = 1u;
    var_1 = ~(firstTrailingBit(~4294967295u | var_0.b.x) | 1u);
    let var_2 = func_2(728f, u_input.b.wzx, !select(!vec3<bool>(true, false, var_0.a), !vec3<bool>(true, var_0.a, false), false), abs(abs(countOneBits(vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i)))) >> (~vec4<u32>(0u, ~4294967295u, var_0.b.x, _wgslsmith_div_u32(93955u, var_0.b.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(31220i, -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, u_input.c, u_input.a.x), u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(-1i)), countOneBits(5236i)));
}


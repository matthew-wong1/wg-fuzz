struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1546f, 466f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = countOneBits(min(-abs(-vec4<i32>(arg_0.a, arg_0.a, arg_0.a, -58784i)), ~(-vec4<i32>(-2147483647i, arg_0.a, arg_0.a, 26715i))));
    var_0 = vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_0.a, arg_0.a, -(~(-2147483647i)));
    var_0 = _wgslsmith_div_vec4_i32(-firstTrailingBit(max(vec4<i32>(-26424i, var_0.x, 1i, var_0.x) | vec4<i32>(-1i, -2147483647i, arg_0.a, arg_0.a), abs(vec4<i32>(var_0.x, var_0.x, 12538i, -1i)))), ((vec4<i32>(arg_0.a, 1i, arg_0.a, 24306i) ^ vec4<i32>(-18095i, -2147483647i, 2147483647i, -42275i)) ^ firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, var_0.x, -18202i, -30966i), vec4<i32>(arg_0.a, 2147483647i, var_0.x, var_0.x)))) | _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.x, arg_0.a, ~2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x), vec4<i32>(arg_0.a, var_0.x, var_0.x, 2147483647i) >> (vec4<u32>(4294967295u, 0u, u_input.b.x, 1u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(sign(-1000f));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(0i, -(~arg_0.a)), ~14113i), arg_0.a);
    return firstLeadingBit(i32(-1i) * -2147483647i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = Struct_1(arg_2 | select(arg_1.a, 0i, arg_0 & true), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, arg_1.b.x))), 2486f, -1343f, arg_1.b.x));
    let var_1 = arg_1;
    var var_2 = Struct_1(-24190i, arg_1.b);
    var_0 = var_1;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 353f)) - _wgslsmith_f_op_vec2_f32(exp2(var_1.b.yx))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), arg_1.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.b.xx))))));
    return u_input.c;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec3<f32>) -> vec2<u32> {
    global0 = arg_2.zz;
    return ~vec2<u32>(4294967295u, ~firstLeadingBit(37802u) >> (~u_input.a % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_1(-10579i, vec4<f32>(_wgslsmith_f_op_f32(min(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x))))), -299f, _wgslsmith_f_op_f32(-arg_0.b.x), arg_2.x));
    let var_1 = Struct_1(~1i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))), arg_0.b.x, 229f, -617f))));
    var var_2 = ~vec2<u32>(u_input.c, u_input.a);
    var_2 = ~_wgslsmith_div_vec2_u32(u_input.b.xz, ~u_input.b.xy & ~firstTrailingBit(u_input.b.xz));
    var_2 = select(func_5(func_4(false, arg_0, func_3(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.zyy * vec3<f32>(313f, arg_0.b.x, var_1.b.x))))), ~abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.xx), u_input.b.xy)), !vec2<bool>(!(arg_0.a <= arg_1.a), any(vec4<bool>(true, true, true, true))));
    return select(select(vec3<i32>(abs(-2147483647i), ~(~(-2147483647i)), var_0.a), _wgslsmith_mult_vec3_i32(-vec3<i32>(19122i, arg_0.a, arg_0.a) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a, 27383i, 2147483647i), vec3<i32>(var_1.a, var_1.a, -74737i)), vec3<i32>(1i, arg_1.a, 2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(false, select(true, false, true), true), vec3<bool>(true, true, true))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(-12171i, arg_0.a, -13059i), vec3<i32>(arg_0.a, var_1.a, 22754i) >> (vec3<u32>(69042u, var_2.x, var_2.x) % vec3<u32>(32u))), select(false, !(!all(vec3<bool>(true, false, false))), true && (_wgslsmith_div_f32(1242f, -2217f) == _wgslsmith_f_op_f32(-global0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(-33591i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.b.x, -508f), arg_2))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(489f))))), arg_2));
    var var_1 = func_2(var_0, Struct_1(1i, arg_3.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)));
    let var_2 = arg_3.b.x;
    let var_3 = Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-global0.x), -497f, _wgslsmith_f_op_f32(sign(-1873f))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x)), 1289f, _wgslsmith_f_op_f32(select(-2028f, global0.x, arg_1))), select(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(true, arg_1, true, arg_1), arg_1), select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)), true)))));
    let var_4 = ~_wgslsmith_dot_vec4_i32((vec4<i32>(-1i, arg_3.a, -15242i, arg_0.a) >> (vec4<u32>(u_input.b.x, 1u, 4891u, 39201u) % vec4<u32>(32u))) << (vec4<u32>(u_input.c, ~1u, _wgslsmith_div_u32(1u, u_input.c), 55298u) % vec4<u32>(32u)), abs(~vec4<i32>(4610i, 23522i, var_1.x, arg_3.a)));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -617f, var_2, arg_3.b.x) - arg_3.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -426f, -359f, var_3.b.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1190f, arg_2, -510f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, global0.x, var_3.b.x, arg_3.b.x)), _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> vec2<f32> {
    let var_0 = vec3<i32>(arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-func_2(Struct_1(-54091i, arg_2), Struct_1(arg_1.a, arg_2), vec4<f32>(arg_1.b.x, arg_1.b.x, arg_2.x, arg_0.x)).x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.a), vec2<i32>(2799i, arg_1.a)), arg_1.a, ~func_2(Struct_1(25687i, vec4<f32>(arg_2.x, global0.x, arg_1.b.x, -802f)), arg_1, arg_0).x), countOneBits(vec4<i32>(-1i, arg_1.a, 18685i, arg_1.a) >> (vec4<u32>(u_input.c, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) & -vec4<i32>(arg_1.a, 40884i, -2147483647i, arg_1.a)), 25178i);
    var var_1 = vec4<u32>(1u, 36312u, u_input.a, ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, u_input.c), u_input.c) & select(~u_input.b.x, 0u, true)));
    let var_2 = arg_1;
    var var_3 = countOneBits(-var_0.xz);
    let var_4 = arg_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(519f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_f32(-380f - 214f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1105f, -368f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.ww) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1657f) * var_4.b.yx)), !select(vec2<bool>(false, arg_3), vec2<bool>(true, false), vec2<bool>(arg_3, true))))) - arg_2.wy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_sub_i32(-2147483647i, -1374i), _wgslsmith_div_vec4_f32(vec4<f32>(615f, global0.x, global0.x, -772f), vec4<f32>(global0.x, global0.x, global0.x, -1715f))), false, _wgslsmith_f_op_f32(exp2(global0.x)), Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, global0.x, -1108f, 1454f))))), Struct_1(-(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, -1000f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(global0.x - -1000f), _wgslsmith_f_op_f32(-global0.x), 590f, -1839f), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -321f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, -1478f, global0.x, global0.x))))), true)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(350f, 141f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(43149i, vec4<f32>(global0.x, 1090f, global0.x, -119f)), true, global0.x, Struct_1(1i, vec4<f32>(133f, global0.x, global0.x, 557f)))), Struct_1(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 124f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 393f, -751f, -497f) + vec4<f32>(global0.x, 656f, global0.x, global0.x))), true)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -432f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.x) - vec2<f32>(global0.x, global0.x))), vec2<f32>(710f, global0.x))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false), any(vec3<bool>(true, false, false)))))));
    let var_0 = -func_3(Struct_1(-26442i, vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(min(672f, global0.x)), _wgslsmith_f_op_f32(-147f + global0.x), _wgslsmith_f_op_f32(1569f + global0.x))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(var_0, ~1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 911f, global0.x, global0.x))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -436f) * global0.x), _wgslsmith_div_f32(global0.x, -1679f))));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1370f, 207f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_6(var_1.b, Struct_1(var_1.a, vec4<f32>(1669f, -931f, global0.x, -258f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 285f, -2196f, var_1.b.x))), all(vec3<bool>(true, true, true)))).x));
    var_1 = Struct_1(var_0, var_1.b);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-488f)), var_1.b.x))), 664f, 697f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-140f * global0.x))))));
    var_2 = vec4<f32>(_wgslsmith_div_f32(global0.x, var_1.b.x), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_6(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(var_1.b.x - -136f), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_div_f32(var_2.x, var_2.x)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-68363i, var_1.a, 0i), vec3<i32>(-2147483647i, var_1.a, var_0)), var_1.b), var_1.b, true)).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1033f + var_2.x), var_2.x))), -700f);
    var var_3 = Struct_1(~_wgslsmith_clamp_i32(var_0, ~var_1.a, firstTrailingBit(var_0)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}


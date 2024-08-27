struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-641f)))), Struct_2(firstTrailingBit(arg_0.a << ((vec4<u32>(u_input.a.x, u_input.b.x, 0u, 58804u) >> (vec4<u32>(u_input.c, 52872u, u_input.b.x, 26790u) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec2<f32>(1051f, -318f));
    var var_1 = !vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !(!all(vec4<bool>(false, false, true, true))), any(vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(select(max(var_3.b.a, var_0.b.a), vec4<i32>(44856i, var_3.b.a.x, -1i, -4305i) & var_3.b.a, select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, true, false, false), var_1.x)), abs(arg_0.a)) & -2147483647i, -_wgslsmith_mult_i32(-6940i, var_3.b.a.x) < countOneBits(_wgslsmith_mod_i32(var_0.b.a.x, var_3.b.a.x) >> (u_input.a.x % 32u)), vec4<f32>(-1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.a, true))))), var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.c.x)))), u_input.b.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(var_4.c)))) + var_4.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(min(firstTrailingBit(vec2<i32>(0i, -1i)), vec2<i32>(1i, 1i)) | _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(55397i, -21299i)), ~vec2<i32>(-2147483647i, 1i)), vec2<i32>(1i, 1i)), false, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(select(vec4<i32>(29167i, 5532i, 2225i, 2147483647i) << (vec4<u32>(15570u, arg_2, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(48757i, 88142i, 21022i, -50882i), true)))), select(64918u, _wgslsmith_dot_vec3_u32(vec3<u32>(select(1u, 4294967295u, false), _wgslsmith_mult_u32(arg_2, arg_1), min(arg_0.x, arg_1)), ~countOneBits(vec3<u32>(arg_1, arg_2, arg_1))), u_input.c >= arg_0.x));
    let var_1 = select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, countOneBits(_wgslsmith_mod_i32(var_0.a, 0i)) > 36743i), true);
    var_0 = Struct_1(_wgslsmith_clamp_i32(var_0.a, ~abs(-6694i), 3847i), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-171f)))), -978f, 117f)), min(firstLeadingBit(4294967295u), arg_2));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(1i, var_0.a, -20630i)), ~vec3<i32>(1i, 1i, 1i)) << (8492u % 32u), any(vec4<bool>(false, true | all(vec2<bool>(var_1.x, false)), true, true)), var_0.c, 4294967295u);
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.c.x)))), var_2.c.x), var_3.c.x)));
}

fn func_1(arg_0: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_1(arg_0.x, true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f - -443f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), -1727f, _wgslsmith_f_op_f32(func_2(u_input.b, u_input.b.x, min(u_input.b.x | u_input.a.x, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(max(vec2<u32>(u_input.a.x, u_input.b.x), u_input.b), u_input.b.x ^ u_input.a.x, max(u_input.c, u_input.b.x))) - -318f)), _wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 34811u)) >> (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 56504u) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(1u, 1u))), vec2<u32>(1u, _wgslsmith_clamp_u32(24805u, u_input.a.x, u_input.b.x))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(var_0.c.x - -949f))) * _wgslsmith_f_op_f32(round(var_0.c.x))), Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -53453i), arg_0), 8564i, abs(var_0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-62167i, var_0.a, arg_0.x, 0i) | vec4<i32>(arg_0.x, var_0.a, var_0.a, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-49414i, var_0.a, var_0.a, 0i), vec4<i32>(var_0.a, arg_0.x, var_0.a, var_0.a))), ~countOneBits(vec4<i32>(7042i, -3855i, -50803i, arg_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.xw, var_0.c.zz)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(func_2(firstTrailingBit(~vec2<u32>(var_0.d, u_input.a.x)), var_0.d, var_0.d | ~(~var_0.d))), var_1.b, var_0.c.yy);
    let var_3 = Struct_1(-firstLeadingBit(_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(9916i, 18941i, var_0.a), var_1.b.a.yzw), firstLeadingBit(var_1.b.a.x))), true, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(u_input.a & vec2<u32>(var_0.d, var_0.d), var_0.d, 1u)), _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(min(var_1.a, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -780f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-481f))))), firstLeadingBit(var_0.d));
    var var_4 = !(!vec3<bool>(all(select(vec4<bool>(var_3.b, var_0.b, var_0.b, true), vec4<bool>(false, true, true, false), true)), any(vec2<bool>(true, true)), any(vec2<bool>(var_3.b, var_0.b))));
    return vec4<i32>(1i, abs(_wgslsmith_clamp_i32(42725i, 0i, ~_wgslsmith_clamp_i32(var_3.a, -1i, -2188i))), -min(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-8775i, 13593i), -58621i), 0i), firstTrailingBit(var_0.a));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(arg_2.a);
    let var_1 = select(firstLeadingBit(vec4<u32>(~abs(4294967295u), u_input.a.x, ~u_input.b.x & u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(127365u, 0u, u_input.c), vec3<u32>(u_input.c, 47986u, 87492u)))), ~(~(~firstLeadingBit(vec4<u32>(1u, 0u, 4294967295u, 0u)))), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(all(vec3<bool>(false, false, false)), u_input.c >= 4294967295u, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, true), all(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true)));
    let var_2 = reverseBits(~vec3<u32>(min(~8586u, _wgslsmith_div_u32(var_1.x, 0u)), firstTrailingBit(firstLeadingBit(34458u)), ~u_input.a.x));
    let var_3 = arg_1;
    var var_4 = -312f;
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = func_4(arg_3, Struct_2(arg_1.b.a), func_4(arg_1.c.x, arg_1.b, arg_1.b, Struct_3(arg_3, arg_1.b, arg_1.c)), Struct_3(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(653f, arg_1.a)))), Struct_2(func_1(arg_1.b.a.xx | arg_1.b.a.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(546f, _wgslsmith_div_f32(-365f, arg_3)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1284f, arg_1.a)), _wgslsmith_f_op_vec2_f32(ceil(arg_1.c))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -120f))), arg_1.c)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c + _wgslsmith_f_op_vec2_f32(-arg_1.c)))));
    var_0 = Struct_2(vec4<i32>(abs(2147483647i), var_0.a.x, ~(-_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(69960i, -1i, -2147483647i, -2147483647i))), _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_2 << (0u % 32u), 1i), arg_1.b.a.x)));
    var_0 = Struct_2(arg_1.b.a ^ abs(vec4<i32>(-39768i << (u_input.b.x % 32u), ~var_0.a.x, arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_1.b.a.x, var_0.a.x), vec4<i32>(arg_2, 15259i, arg_1.b.a.x, var_0.a.x)))));
    var var_2 = max(u_input.a, ~vec2<u32>(firstLeadingBit(0u), ~u_input.b.x) | _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(65004u, u_input.a.x)), ~(~vec2<u32>(u_input.a.x, 0u)), u_input.b << (max(u_input.b, vec2<u32>(122689u, 0u)) % vec2<u32>(32u))));
    return Struct_1(18083i, !arg_0 && true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, 170f, arg_1.a, arg_1.c.x) + vec4<f32>(var_1.x, arg_1.a, 1000f, 433f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<i32>(var_0.a.x, 1312i, -38950i, var_0.a.x))))))))), ~var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((-min(-22411i, -2147483647i) << (_wgslsmith_mod_u32(u_input.c, ~4294967295u) % 32u)) <= _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, -2147483647i, -2147483647i) >> (firstTrailingBit(vec4<u32>(u_input.b.x, u_input.a.x, 71262u, u_input.b.x)) % vec4<u32>(32u)), -min(vec4<i32>(13105i, -18277i, -2147483647i, 11470i), vec4<i32>(-93758i, 72612i, 25385i, -2147483647i))), Struct_3(-1000f, func_4(1000f, Struct_2(vec4<i32>(13902i, -26132i, 6143i, 14590i) << (vec4<u32>(u_input.b.x, 8697u, 4294967295u, 34392u) % vec4<u32>(32u))), Struct_2(func_1(vec2<i32>(1i, -1i))), Struct_3(_wgslsmith_f_op_f32(241f * -706f), Struct_2(vec4<i32>(-14288i, 2147483647i, 0i, -2147483647i)), _wgslsmith_div_vec2_f32(vec2<f32>(257f, -312f), vec2<f32>(133f, -747f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(485f, -195f), vec2<f32>(355f, _wgslsmith_f_op_f32(-228f + -1013f)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true))))), ~1i, _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(936f * _wgslsmith_f_op_f32(trunc(-884f)))));
    var_0 = func_5(var_0.b, Struct_3(470f, func_4(var_0.c.x, Struct_2(select(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<i32>(35784i, -27831i, 37977i, 25296i), true)), func_4(1493f, func_4(-809f, Struct_2(vec4<i32>(1i, var_0.a, var_0.a, 38226i)), Struct_2(vec4<i32>(1i, var_0.a, -11197i, var_0.a)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(2147483647i, var_0.a, 6235i, var_0.a)), var_0.c.zy)), func_4(var_0.c.x, Struct_2(vec4<i32>(var_0.a, 21540i, 43430i, 2147483647i)), Struct_2(vec4<i32>(var_0.a, 2147483647i, -32774i, var_0.a)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(var_0.a, 15939i, var_0.a, -32893i)), vec2<f32>(399f, -552f))), Struct_3(var_0.c.x, Struct_2(vec4<i32>(-1i, -2147483647i, 1i, var_0.a)), var_0.c.xy)), Struct_3(-1694f, func_4(var_0.c.x, Struct_2(vec4<i32>(var_0.a, 2147483647i, var_0.a, var_0.a)), Struct_2(vec4<i32>(-2147483647i, var_0.a, -71922i, var_0.a)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(-28474i, 3563i, 35247i, -81310i)), var_0.c.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 364f) - vec2<f32>(-398f, var_0.c.x)))), var_0.c.xz), abs(firstTrailingBit(var_0.a)) << (4294967295u % 32u), 1136f);
    var_0 = func_5((0i < (var_0.a | var_0.a)) & any(vec2<bool>(true, true)), Struct_3(-1838f, func_4(_wgslsmith_f_op_f32(-443f + _wgslsmith_f_op_f32(var_0.c.x + -2377f)), Struct_2(select(vec4<i32>(0i, var_0.a, 42532i, -4927i), vec4<i32>(-17948i, 49537i, var_0.a, var_0.a), vec4<bool>(false, var_0.b, false, true))), func_4(_wgslsmith_f_op_f32(ceil(-1000f)), Struct_2(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), func_4(var_0.c.x, Struct_2(vec4<i32>(-31208i, -20148i, var_0.a, -16510i)), Struct_2(vec4<i32>(var_0.a, var_0.a, -17180i, var_0.a)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(10153i, var_0.a, -30739i, 11219i)), var_0.c.xy)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(12728i, 1i, -51242i, -14386i)), vec2<f32>(-1391f, 1000f))), Struct_3(_wgslsmith_f_op_f32(min(var_0.c.x, -411f)), func_4(-154f, Struct_2(vec4<i32>(-2147483647i, -43692i, var_0.a, 0i)), Struct_2(vec4<i32>(1i, var_0.a, var_0.a, 31075i)), Struct_3(-794f, Struct_2(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -30842i)), vec2<f32>(-1243f, var_0.c.x))), vec2<f32>(var_0.c.x, -935f))), var_0.c.xz), var_0.a, 315f);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-998f * 635f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-239f)), _wgslsmith_f_op_f32(trunc(-1000f))))))), func_4(_wgslsmith_f_op_f32(-var_0.c.x), Struct_2(select(vec4<i32>(var_0.a, var_0.a, var_0.a, -3997i), vec4<i32>(var_0.a, var_0.a, 1i, -1i), vec4<bool>(false, true, true, var_0.b)) >> (~vec4<u32>(0u, 74522u, var_0.d, 48387u) % vec4<u32>(32u))), func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)))), func_4(_wgslsmith_f_op_f32(-var_0.c.x), func_4(var_0.c.x, Struct_2(vec4<i32>(var_0.a, -1i, var_0.a, 30956i)), Struct_2(vec4<i32>(23329i, 1i, 11865i, var_0.a)), Struct_3(-388f, Struct_2(vec4<i32>(var_0.a, 30900i, var_0.a, var_0.a)), var_0.c.xy)), Struct_2(vec4<i32>(var_0.a, var_0.a, var_0.a, 0i)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(0i, -35169i, var_0.a, 2147483647i)), var_0.c.zw)), Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, -25161i, -3378i), vec4<i32>(var_0.a, -10482i, 11749i, var_0.a), vec4<i32>(-11692i, -24191i, 7536i, var_0.a))), Struct_3(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)), func_4(var_0.c.x, Struct_2(vec4<i32>(var_0.a, -33652i, -44410i, 1i)), Struct_2(vec4<i32>(var_0.a, 0i, 2147483647i, 0i)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(2147483647i, -15107i, 1037i, var_0.a)), vec2<f32>(1000f, -319f))), _wgslsmith_f_op_vec2_f32(var_0.c.wz - vec2<f32>(var_0.c.x, var_0.c.x)))), Struct_3(_wgslsmith_f_op_f32(705f - var_0.c.x), func_4(var_0.c.x, Struct_2(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), func_4(var_0.c.x, Struct_2(vec4<i32>(var_0.a, var_0.a, -9948i, 9872i)), Struct_2(vec4<i32>(var_0.a, 0i, -2147483647i, 2147483647i)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(var_0.a, var_0.a, -9679i, var_0.a)), var_0.c.wx)), Struct_3(var_0.c.x, Struct_2(vec4<i32>(var_0.a, 0i, 0i, 1i)), vec2<f32>(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(var_0.c.ww + _wgslsmith_f_op_vec2_f32(-var_0.c.xx)))), var_0.c.yy);
    var var_2 = all(select(select(select(select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b), true), vec2<bool>(var_0.b, false), select(var_0.b, var_0.b, var_0.b)), select(!vec2<bool>(var_0.b, true), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, false)), vec2<bool>(true, var_0.b)), !select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(false, false))), select(vec2<bool>(var_0.b, all(vec2<bool>(var_0.b, var_0.b))), vec2<bool>(true, var_0.d >= var_0.d), select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(false, var_0.b), select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), var_0.b))), all(!vec2<bool>(false, var_0.b))));
    let var_3 = -34627i;
    let var_4 = Struct_3(-1000f, func_4(var_1.c.x, Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(var_1.b.a, var_1.b.a), 1i, 1i, -2147483647i)), func_4(var_0.c.x, var_1.b, func_4(_wgslsmith_div_f32(var_1.c.x, var_1.c.x), Struct_2(var_1.b.a), func_4(var_1.a, Struct_2(vec4<i32>(var_3, -2147483647i, var_3, -65963i)), var_1.b, var_1), var_1), var_1), var_1), vec2<f32>(_wgslsmith_f_op_f32(func_2((u_input.b ^ u_input.a) ^ vec2<u32>(var_0.d, var_0.d), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.d, u_input.c, u_input.c), select(vec4<u32>(u_input.c, u_input.a.x, var_0.d, 0u), vec4<u32>(var_0.d, u_input.c, 1u, 38957u), vec4<bool>(var_0.b, var_0.b, false, var_0.b))))), _wgslsmith_f_op_f32(-902f + var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(var_1.b.a.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_3, var_1.b.a.x), var_1.b.a.wz), min(_wgslsmith_dot_vec2_i32(var_4.b.a.xz, var_1.b.a.xy), 1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(10051i, -36331i, var_3), vec3<i32>(var_3, var_3, var_0.a)), -7870i), vec4<i32>(abs(1i), 1i, var_1.b.a.x, var_1.b.a.x), -vec4<i32>(var_0.a, var_4.b.a.x << (3882u % 32u), abs(0i), _wgslsmith_mult_i32(var_1.b.a.x, -50093i))), 1i, var_3);
}


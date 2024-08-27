struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    var var_0 = 4294967295u;
    var_0 = ~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(min(4294967295u >> (1u % 32u), u_input.a.x), firstLeadingBit(reverseBits(1u))));
    let var_1 = Struct_1(~(-vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(221f, arg_0) - vec2<f32>(arg_0, 598f)))), vec2<f32>(_wgslsmith_f_op_f32(-1003f + arg_0), arg_0), true))), 1080f, firstTrailingBit(firstTrailingBit(~vec4<i32>(32362i, -14071i, 23202i, 1i)) >> (firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 7518u, 4294967295u) ^ vec4<u32>(6684u, u_input.a.x, u_input.a.x, 23478u)) % vec4<u32>(32u))), ~vec3<u32>(65173u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 75844u)) ^ u_input.a.yzw);
    var var_2 = ~(~1u);
    let var_3 = -reverseBits(var_1.d.xz) ^ abs(~(~vec2<i32>(var_1.d.x, var_1.a.x)));
    return var_1.b;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~(-vec4<i32>(-2147483647i, -2147483647i, 63358i, 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(378f + 1777f))) - vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(-1173f)).x, _wgslsmith_f_op_f32(f32(-1f) * -960f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-565f, 1723f)))), -(~select(vec4<i32>(2147483647i, -23066i, -20679i, -77378i), vec4<i32>(-3304i, -2147483647i, -41849i, 0i), false)), u_input.a.wwz), !vec3<bool>(all(vec4<bool>(false, true, true, true)), true, !(u_input.a.x >= arg_0)));
    var var_1 = ~(vec3<u32>(abs(56607u), var_0.a.e.x, var_0.a.e.x) ^ ~vec3<u32>(~u_input.a.x, 4294967295u, u_input.a.x));
    var_1 = ~u_input.a.yxw;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-568f * var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -150f), -1000f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_0.a.b.x, 376f))))))));
    let var_3 = Struct_3(var_0.a.b.x);
    return Struct_1(~vec4<i32>(~(i32(-1i) * -4927i), firstLeadingBit(var_0.a.d.x ^ var_0.a.d.x), -2147483647i, -min(-1i, 15651i)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(119f, var_2.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.b.x, 666f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.b.x, var_2.x))))), var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-869f, var_3.a))))))), var_0.a.a, var_0.a.e);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = vec3<i32>(-1i) * -abs(-vec3<i32>(arg_1.a.a.x, 1i, 13949i) & arg_1.a.d.xwx);
    var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(abs(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), arg_1.a.d.yy)), -2147483647i), var_0.x, -_wgslsmith_mod_i32(42409i, -(arg_0 | arg_1.a.a.x)));
    let var_1 = arg_1;
    var_0 = ~reverseBits(-(-var_1.a.d.wwz ^ _wgslsmith_sub_vec3_i32(var_1.a.a.zxx, vec3<i32>(var_0.x, 48753i, var_1.a.d.x))));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-24212i, ~arg_1.a.d.x, _wgslsmith_dot_vec4_i32(var_1.a.d, var_1.a.d), -arg_1.a.d.x), vec4<i32>(_wgslsmith_clamp_i32(var_1.a.d.x, var_1.a.d.x, -32746i), var_1.a.d.x, arg_0, -67115i), var_1.a.d), var_1.a.a << (vec4<u32>(var_1.a.e.x, 1u, arg_1.a.e.x, 34297u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.c), _wgslsmith_f_op_f32(exp2(var_1.a.b.x))), 1f, arg_1.a.a, var_1.a.e);
    return _wgslsmith_add_u32(var_2.e.x << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(66362u, 31478u, 1u)), arg_1.a.e) % 32u), arg_1.a.e.x);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = u_input.a.wyx;
    var var_1 = vec4<u32>(func_4(-24971i, Struct_2(func_2(~arg_0), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), true, _wgslsmith_f_op_f32(f32(-1f) * -1054f)), ~firstTrailingBit(max(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), 14970u)), u_input.a.x, 79878u);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(4042i, 46036i, -1i, 2147483647i), vec4<i32>(-71829i, -21876i, 0i, 1i), vec4<i32>(2147483647i, 2147483647i, 80368i, 0i)), vec4<i32>(25378i, 2859i, 1i, -2147483647i)), ~vec4<i32>(~(-39338i), abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-11826i, -13511i, 57742i), vec3<i32>(-16557i, -1i, -21409i)), 1i)), -(~1i), _wgslsmith_clamp_i32(-1i, 0i, ~6828i));
    var var_3 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, var_2.x), -vec2<i32>(-2147483647i, var_2.x)), var_2.x, -var_2.x, abs(var_2.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(984f, 1179f)))))), -704f, -vec4<i32>(-1i, reverseBits(var_2.x), 20818i, i32(-1i) * -24257i), vec3<u32>(~var_1.x, max(~arg_0, ~var_1.x), 1152u)), select(!vec3<bool>(all(vec3<bool>(true, false, false)), false, any(vec3<bool>(false, false, true))), vec3<bool>(true, false, all(vec4<bool>(false, false, true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))))));
    var_0 = _wgslsmith_mult_vec3_u32(~firstLeadingBit(u_input.a.zwy), var_3.a.e >> (vec3<u32>(arg_0, _wgslsmith_mod_u32(var_1.x, 32124u) | 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(53827u, var_3.a.e.x), _wgslsmith_dot_vec2_u32(var_1.yz, vec2<u32>(u_input.a.x, var_0.x)))) % vec3<u32>(32u)));
    return select(vec3<bool>(false || !all(vec3<bool>(false, false, var_3.b.x)), var_3.b.x, true), vec3<bool>(15502i > (2147483647i << (countOneBits(u_input.a.x) % 32u)), true, var_3.b.x), !vec3<bool>(_wgslsmith_div_f32(677f, var_3.a.b.x) > _wgslsmith_f_op_vec2_f32(func_3(var_3.a.b.x)).x, func_2(0u).c < _wgslsmith_f_op_f32(abs(-305f)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.x);
    var var_1 = vec2<u32>(~79107u >> (u_input.a.x % 32u), ~u_input.a.x);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-152f)), _wgslsmith_f_op_f32(-872f + -1773f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f + -589f) + _wgslsmith_f_op_f32(f32(-1f) * -1582f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-407f - -520f), _wgslsmith_f_op_f32(f32(-1f) * -622f)))));
    var_1 = _wgslsmith_div_vec2_u32(~u_input.a.wy, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~96859u, firstLeadingBit(4294967295u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x)), select(select(vec2<u32>(var_1.x, var_1.x), vec2<u32>(8693u, 4294967295u), vec2<bool>(var_0.x, true)), vec2<u32>(var_1.x, 70907u), select(var_0.xz, var_0.zx, var_0.xz)))));
    var var_3 = vec4<bool>(true, var_0.x, !var_0.x, func_1(_wgslsmith_mult_u32(var_1.x, ~_wgslsmith_clamp_u32(18035u, 1u, 23234u))).x);
    var var_4 = ~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(~var_1.x, var_1.x, _wgslsmith_sub_u32(func_2(var_1.x).e.x, func_2(var_1.x).e.x), u_input.a.x), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(abs(2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 10775i), select(vec3<i32>(3790i, -1i, 31796i), vec3<i32>(-24907i, 0i, -47385i), vec3<bool>(var_3.x, var_3.x, var_0.x))), 1i));
}


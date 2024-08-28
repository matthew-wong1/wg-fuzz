struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_2(min(arg_3.b.yx, vec2<i32>(u_input.d, u_input.b)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-821f, -823f), vec2<f32>(1000f, -842f), vec2<bool>(arg_1.x, true)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1020f)) + vec2<f32>(1649f, -1603f))), _wgslsmith_f_op_f32(abs(458f))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1360f);
    var var_2 = !arg_1.x;
    var var_3 = var_0.b;
    var_2 = all(arg_1.xx);
    return true;
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = arg_0.b;
    var var_1 = select(vec3<bool>(true != all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), any(vec2<bool>(true, arg_0.b.b < -2480f)), all(vec3<bool>(true, true, false)) | all(vec2<bool>(false, false))), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), vec3<bool>(all(vec2<bool>(u_input.c < 1u, true)), false, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.b.b, arg_0.b.b), _wgslsmith_f_op_f32(724f - arg_0.b.b))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.b)))));
    var_1 = vec3<bool>(firstLeadingBit(~2147483647i) >= (max(min(u_input.a, u_input.d), arg_0.a.x) | u_input.d), false, any(select(vec3<bool>(var_1.x, var_1.x, var_1.x | false), select(!vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, false, true), !var_1.x), false)));
    var_1 = select(!select(vec3<bool>(!var_1.x, !var_1.x, !var_1.x), vec3<bool>(var_1.x, true, false), true), select(vec3<bool>(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 1u)) <= _wgslsmith_div_u32(u_input.c, 24096u), var_1.x), !select(vec3<bool>(false, false, true), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), all(var_1.zz)), !select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, var_1.x)), !vec3<bool>(var_1.x, var_1.x, true), false)), !vec3<bool>(true & (u_input.c != 4294967295u), any(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x));
    var var_2 = arg_0.a.x;
    return -_wgslsmith_add_vec2_i32(arg_0.a, vec2<i32>(arg_0.a.x, _wgslsmith_mod_i32(arg_0.a.x, -6704i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    return arg_3.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> bool {
    let var_0 = Struct_4(arg_1, Struct_3(0u, select(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.a, -32376i, u_input.a), vec3<i32>(5720i, u_input.b, 1681i)), vec3<i32>(2147483647i, u_input.b, 0i) ^ vec3<i32>(-44767i, u_input.b, u_input.a), vec3<i32>(u_input.a, -22801i, 31085i)), vec3<i32>(-1i) * -vec3<i32>(-2015i, 7114i, 2919i), u_input.b > -u_input.b)));
    let var_1 = var_0.b.a;
    var var_2 = Struct_2(vec2<i32>(1i, 1i), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(192f, _wgslsmith_div_f32(-1012f, -1028f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(695f, -1000f) + vec2<f32>(-288f, 1002f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-904f, -516f), vec2<f32>(162f, 339f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f * -340f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1820f * -386f)))));
    let var_3 = select(!vec4<bool>((var_0.b.b.x > var_2.a.x) | var_0.a, false, (0i & var_2.a.x) >= u_input.d, !(var_2.a.x == var_0.b.b.x)), vec4<bool>((var_0.b.b.x ^ _wgslsmith_div_i32(var_0.b.b.x, var_0.b.b.x)) > -1i, func_2(_wgslsmith_mod_vec2_i32(var_2.a, var_0.b.b.zx), !vec3<bool>(arg_1, false, false), vec4<u32>(61160u, ~u_input.c, 1u << (u_input.c % 32u), arg_0.x), var_0.b), true, false), vec4<bool>(true, false, arg_1, all(vec3<bool>(arg_1, var_2.b.b > var_2.b.b, true))));
    var var_4 = arg_1;
    return func_4(~arg_0, var_2.b, _wgslsmith_f_op_f32(var_2.b.a.x - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1927f, var_2.b.a.x)))), abs(func_3(Struct_2(var_0.b.b.zx, var_2.b)))) <= max(-40708i, 0i >> ((~arg_0.x | firstLeadingBit(57878u)) % 32u));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1060f * 824f) * _wgslsmith_f_op_f32(sign(-2284f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1799f, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0.b - 206f), _wgslsmith_f_op_f32(216f - -266f)), vec2<f32>(_wgslsmith_f_op_f32(-130f * 627f), -121f)))), 1293f);
    let var_2 = Struct_4(arg_0.x, Struct_3(~u_input.c, firstTrailingBit(~(~vec3<i32>(-2147483647i, u_input.d, u_input.d)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * var_1.a), -1524f);
    var_1 = var_0;
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -33495i;
    var var_1 = func_5(vec3<bool>((1u >= (u_input.c & 4294967295u)) & (true & func_1(vec3<u32>(u_input.c, u_input.c, 4294967295u), false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !(!select(false, true, true))), !vec3<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), true));
    var var_2 = Struct_3(_wgslsmith_clamp_u32(abs(0u), ~17446u, u_input.c), firstTrailingBit(vec3<i32>(~2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 41430u), vec2<u32>(u_input.c, 1u)) % 32u), -func_4(vec3<u32>(u_input.c, 4294967295u, 0u), Struct_1(var_1.a, var_1.b), var_1.b, vec2<i32>(58760i, -2147483647i)), 5217i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 1203f) - _wgslsmith_f_op_f32(var_1.a.x - 747f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b - var_1.a.x), 1394f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.b, 189f))))))));
    var_2 = Struct_3(select(u_input.c, var_2.a | var_2.a, true), vec3<i32>(_wgslsmith_mod_i32(u_input.b, reverseBits(-u_input.b)), ~4775i, u_input.b));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-550f, var_3, var_1.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131f, 1261f, var_3))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -514f, 1431f) * vec3<f32>(var_3, -223f, _wgslsmith_f_op_f32(-var_1.a.x)))), ~(~firstLeadingBit(vec4<u32>(4294967295u, 35050u, 50256u, var_2.a))) >> (~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, 4294967295u, u_input.c, var_2.a), vec4<u32>(u_input.c, var_2.a, var_2.a, u_input.c)) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, 26578u), vec4<u32>(u_input.c, var_2.a, 1u, 42520u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}


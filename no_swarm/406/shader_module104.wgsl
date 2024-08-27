struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_i32((_wgslsmith_clamp_i32(u_input.e << (u_input.b.x % 32u), ~u_input.e, 1i) & max(u_input.e | u_input.e, u_input.e)) << (1u % 32u), u_input.e);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x >> (21354u % 32u), u_input.a.x), ~u_input.b), 1u);
    var var_2 = ~var_1.x;
    let var_3 = u_input.d;
    var_1 = ~(~vec2<u32>(_wgslsmith_div_u32(89159u, var_3.x), var_3.x ^ 1u)) | (var_3.xy << (_wgslsmith_sub_vec2_u32(~(var_3.wy ^ u_input.d.xy), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(var_3.x, 84775u), ~var_3.xx)) % vec2<u32>(32u)));
    return select(select(!(!(!arg_1)), arg_1, vec3<bool>(_wgslsmith_mod_i32(-1427i, var_0) > -1i, any(vec3<bool>(false, arg_1.x, arg_1.x)), true)), select(!(!select(arg_1, vec3<bool>(arg_0, arg_0, true), arg_1)), arg_1, arg_1), true);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-arg_0.a)))) - -434f), 0u, max(35678u, arg_0.c << (~(~85133u) % 32u)), arg_0.d);
    var var_2 = !func_3(true, vec3<bool>(!(arg_0.a <= var_1.d.x), arg_1 > _wgslsmith_f_op_f32(-1439f - 489f), select(true, false, true) | all(vec3<bool>(true, true, true))));
    var_2 = select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false))), select(vec3<bool>(var_2.x, true, true), select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, true, var_2.x), var_2.x), !vec3<bool>(false, var_2.x, false)), select(func_3(var_2.x & var_2.x, vec3<bool>(true, var_2.x, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(false, true, var_2.x)), -424f <= var_0.d.x)), select(!select(!vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(false, var_2.x, true), var_2.x), vec3<bool>(func_3(true, func_3(var_2.x, vec3<bool>(true, true, var_2.x))).x, _wgslsmith_f_op_f32(arg_1 - -1000f) < _wgslsmith_f_op_f32(136f + -490f), all(var_2.xz) & false), vec3<bool>(false, var_2.x, false)), vec3<bool>(true, all(var_2.zy), var_2.x));
    var_1 = Struct_1(641f, ~1u, 0u, var_1.d);
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.d.x, arg_0.a, !var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1021f)))), 0u, _wgslsmith_mod_u32(var_0.b, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1217f + arg_0.d.x)) * _wgslsmith_f_op_f32(-arg_1)), -644f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<u32>(arg_1.c, countOneBits(~func_2(arg_0, _wgslsmith_f_op_f32(min(1600f, 632f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.a) * vec3<f32>(230f, 1313f, arg_0.a)), max(4294967295u, 7853u)).b), firstTrailingBit(_wgslsmith_sub_u32(u_input.d.x, arg_1.c)), ~(~arg_0.b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f * 926f)), 1677f))), 25512u, arg_0.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, -694f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, 1500f)) * vec2<f32>(1276f, 1000f)), !select(vec2<bool>(false, false), vec2<bool>(true, true), false))))));
    let var_2 = 32996u;
    let var_3 = arg_1;
    return arg_1.d.x;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~(-vec4<i32>(-13142i, -1i, min(u_input.e >> (arg_0.b % 32u), -3874i), u_input.e));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(1000f, u_input.b.x, u_input.c.x, arg_0.d), _wgslsmith_f_op_f32(-var_1.d.x), vec3<f32>(arg_0.d.x, -812f, arg_0.a), 0u), Struct_1(-1183f, select(var_1.c, 1u, true), 42794u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, arg_0.a), vec2<f32>(-1000f, arg_0.d.x), true)))))) - arg_0.d.x);
    let var_3 = true;
    var var_4 = func_2(func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-463f + -901f), _wgslsmith_f_op_f32(arg_0.a + -679f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(34625u, 4294967295u, 4294967295u, 70097u), ~vec4<u32>(arg_0.c, u_input.b.x, 4294967295u, 37698u)), _wgslsmith_sub_u32(~arg_0.b, abs(u_input.b.x)), arg_0.d), _wgslsmith_f_op_f32(trunc(1513f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-188f * arg_0.d.x), arg_0.a, -956f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(386f, var_1.a, -616f) + vec3<f32>(var_1.a, 211f, arg_0.a)))), countOneBits(var_1.c)), _wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(var_2, 4294967295u, 0u, arg_0.d), -780f, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, -994f, var_2), vec3<f32>(-439f, arg_0.d.x, 570f)), 4294967295u | u_input.b.x), func_2(arg_0, -1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1087f, var_2)), _wgslsmith_clamp_u32(arg_0.c, 41953u, 7384u)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x + var_1.a), _wgslsmith_f_op_f32(step(-831f, 332f)), _wgslsmith_f_op_f32(trunc(var_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1153f, var_2, arg_0.d.x))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, var_1.a, var_2)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(202f, var_1.d.x, var_1.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2, var_2))))), reverseBits(80618u));
    return vec4<bool>(var_3, true, all(vec3<bool>(all(!vec2<bool>(true, var_3)), any(!vec4<bool>(false, var_3, true, false)), !var_3 | !var_3)), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false), select(func_1(Struct_1(407f, 1u, u_input.c.x, vec2<f32>(-1062f, -948f))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true)));
    var_0 = true;
    var_0 = true;
    var_0 = select(any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true)) | false)), func_3(any(vec2<bool>(false, false)), select(func_1(func_2(Struct_1(-1091f, 116418u, 0u, vec2<f32>(926f, -525f)), -1278f, vec3<f32>(-133f, 1052f, -1000f), 6024u)).zxw, vec3<bool>(true, true, true), vec3<bool>(true, true, true))).x, true);
    let var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(972f)) + func_2(Struct_1(1047f, u_input.a.x, 1u, vec2<f32>(1896f, -1234f)), -154f, vec3<f32>(141f, 1233f, -536f), 0u).a))));
    var_0 = !(true & (1u >= u_input.a.x));
    var var_2 = select(_wgslsmith_mod_u32(~u_input.d.x, ~reverseBits(0u)), _wgslsmith_dot_vec2_u32(select(u_input.d.zy, u_input.d.zx, vec2<bool>(func_1(Struct_1(-1156f, u_input.c.x, u_input.c.x, vec2<f32>(-1002f, var_1))).x, func_1(Struct_1(var_1, 0u, 4294967295u, vec2<f32>(var_1, 281f))).x)), u_input.a.ww), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 + 749f))), 22120u, ~(-vec3<i32>(u_input.e, u_input.e, ~u_input.e)), u_input.d.x);
}


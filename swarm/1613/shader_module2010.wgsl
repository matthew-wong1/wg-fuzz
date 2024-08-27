struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(!select(vec4<bool>(true, any(vec2<bool>(true, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), true, true, true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1961f, _wgslsmith_f_op_f32(f32(-1f) * -898f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 83614u)), countOneBits(u_input.c)) & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, u_input.c), (~u_input.c ^ _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(1u, u_input.c.x, 86797u))) << ((select(vec3<u32>(53448u, u_input.c.x, 2348u), u_input.c, var_0.b.x) | ~vec3<u32>(1u, u_input.c.x, 4294967295u)) % vec3<u32>(32u)));
    var var_2 = Struct_2(select(vec4<bool>(!(!var_0.b.x), any(select(var_0.a.yw, var_0.b.zx, var_0.a.x)), 1u != ~var_1.x, var_1.x > ~u_input.c.x), select(!var_0.a, !select(vec4<bool>(var_0.a.x, var_0.b.x, var_0.a.x, var_0.b.x), var_0.a, false), var_0.a), var_0.a), Struct_1(!(!(!vec4<bool>(var_0.a.x, true, var_0.b.x, true))), var_0.a.yzx, _wgslsmith_f_op_f32(f32(-1f) * -195f)));
    let var_3 = Struct_1(vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(var_0.b.x, var_2.a.x), var_0.a.wx)), false, !(!var_0.b.x) & all(var_0.a)), select(vec3<bool>(var_0.a.x, select(var_0.b.x, any(vec2<bool>(var_0.b.x, var_2.b.b.x)), all(var_2.b.a.zxw)), true), var_0.a.xxz, all(vec3<bool>(u_input.b > arg_0, var_0.a.x, arg_0 <= arg_0))), _wgslsmith_f_op_f32(-var_0.c));
    var_1 = vec3<u32>(var_1.x, var_1.x, ~u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-563f, -613f)) * _wgslsmith_f_op_f32(f32(-1f) * -370f)))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = ~(~u_input.c.x);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(314f, 131f)))), _wgslsmith_f_op_f32(f32(-1f) * -207f), 246f, -141f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(128f, 481f, -1278f, 694f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(667f, 1117f, 518f, -453f), vec4<f32>(-661f, 1040f, -1439f, 383f), vec4<bool>(true, false, false, true))), true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1049f, 1277f, 562f, -1000f), vec4<f32>(1757f, 1647f, -1071f, 1337f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -1325f, -425f, 685f))))), vec4<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), (u_input.d >= arg_2.x) && any(vec3<bool>(false, false, true)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))))));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.x, 1185f))))));
    let var_4 = Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(!all(vec2<bool>(false, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), 2147483647i < u_input.a.x, -1437f > _wgslsmith_div_f32(var_3.x, 247f)), false), vec3<bool>(false | (var_3.x >= _wgslsmith_div_f32(var_1.x, 450f)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), (_wgslsmith_f_op_f32(step(-1021f, var_3.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1204f)) || !all(vec4<bool>(true, false, false, false))), var_3.x);
    return Struct_2(select(var_4.a, select(vec4<bool>(var_0 != 22078u, all(var_4.a), var_4.a.x, true), vec4<bool>(true, true, true, select(false, true, false)), var_4.a.x), ((var_4.b.x && var_4.b.x) || true) || all(select(vec4<bool>(var_4.a.x, false, var_4.b.x, false), var_4.a, var_4.b.x))), Struct_1(var_4.a, vec3<bool>(!(!var_4.b.x), _wgslsmith_f_op_f32(-1276f * 525f) > _wgslsmith_f_op_f32(-var_3.x), !(var_4.b.x & true)), 892f));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -977f))), -1274f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-739f, _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(203f, 402f)))))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_1(select(vec4<bool>(any(vec2<bool>(true, false)), true, true, true), vec4<bool>(true, true, true, true), false), vec3<bool>(!any(vec4<bool>(false, true, false, true)) | false, any(vec3<bool>(true, true, true)), any(vec3<bool>(any(vec3<bool>(true, false, true)), true, u_input.d != u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(424f, _wgslsmith_f_op_f32(max(1140f, 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(796f, -813f)) + _wgslsmith_f_op_f32(step(307f, 1000f))))));
    let var_2 = func_2(4294967295u, min(firstLeadingBit(select(vec4<u32>(0u, 49384u, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(61261u, 0u, 0u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 51311u)), select(var_1.b.x, var_1.a.x, var_1.b.x))), ~vec4<u32>(35429u & u_input.c.x, _wgslsmith_mod_u32(58464u, u_input.c.x), _wgslsmith_clamp_u32(65923u, u_input.c.x, 1u), _wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x))), firstLeadingBit(u_input.a));
    return !(!var_2.a.x) && false;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)))))))));
    var var_2 = countOneBits(-(~u_input.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_0.c - var_1.x), _wgslsmith_f_op_f32(1162f - arg_0.c))))));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x)))))));
    return vec4<f32>(func_2(73343u, min(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u), vec4<u32>(1u, 59830u, 7250u, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 69525u, 20965u), arg_0.a), vec4<u32>(_wgslsmith_add_u32(53592u, u_input.c.x), _wgslsmith_mult_u32(35581u, 1u), 0u, _wgslsmith_add_u32(u_input.c.x, 4294967295u))), vec4<i32>(-(var_2.x << (72137u % 32u)), _wgslsmith_sub_i32(var_2.x | u_input.a.x, ~u_input.b), -2147483647i, reverseBits(-2147483647i))).b.c, _wgslsmith_f_op_f32(ceil(1000f)), arg_0.c, _wgslsmith_f_op_f32(abs(arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec4<bool>(func_1() && false, ~0u >= u_input.c.x, false, !select(false, false, false)), vec3<bool>(4294967295u <= (u_input.c.x ^ u_input.c.x), true, true), -423f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, 418f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(591f, 441f, var_0.x, 1288f))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, -1090f)), var_0.x, _wgslsmith_f_op_f32(var_0.x + 544f), _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    var var_2 = func_2(~reverseBits(abs(6144u)), reverseBits(~firstTrailingBit(~vec4<u32>(1u, u_input.c.x, 4294967295u, 4294967295u))), u_input.a).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yyy) * var_0.yxx), countOneBits(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c), reverseBits(u_input.c.x))), -609f, 4294967295u);
}


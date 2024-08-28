struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    var var_0 = vec4<bool>(true, true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), any(vec3<bool>((arg_2.x | arg_2.x) == ~u_input.a.x, false, true)));
    var var_1 = Struct_1(select(!var_0.xy, !var_0.xy, all(var_0.ww)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(f32(-1f) * -1033f))), _wgslsmith_f_op_f32(f32(-1f) * -356f)))), countOneBits(~reverseBits(25127i)), vec2<bool>(any(vec2<bool>(!var_0.x, var_0.x)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f * -1000f)), -598f)));
    let var_2 = var_0.zww;
    var_0 = !select(!vec4<bool>(select(false, false, var_1.d.x), !var_2.x, all(vec2<bool>(false, var_0.x)), var_2.x), vec4<bool>(var_0.x, !var_0.x, all(vec3<bool>(true, false, true)), !(-394f < var_1.e)), any(select(!vec3<bool>(var_2.x, var_0.x, false), select(var_0.yxw, vec3<bool>(var_1.d.x, false, true), var_0.x), vec3<bool>(true, false, var_2.x))));
    var var_3 = max(arg_0.x, arg_0.x);
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))) * _wgslsmith_f_op_f32(f32(-1f) * -1175f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1217f)), arg_1.e) - arg_1.b)));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(37840i, arg_0.c, -52722i)), abs(abs(u_input.a))) | 8050i, 0i);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b, 697f, -2355f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1395f, arg_0.e, arg_0.e))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.e - arg_0.e), 2064f, arg_1.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-502f, -632f, 1314f), vec3<f32>(115f, 342f, arg_1.e))), vec3<f32>(arg_0.e, 841f, 1147f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-413f, arg_0.b, arg_0.e))))))));
    var var_4 = -351f;
    return ~49094u;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = false && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(315f, -1178f)))) - _wgslsmith_div_f32(1029f, -1959f)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1f)), 1f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2634f, -385f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -755f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(676f, -924f) * vec2<f32>(-923f, 816f)))))));
    var var_2 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(4294967295u, 19289u)), 15722u), ~vec2<u32>(~58320u, 0u), arg_0), vec2<u32>(1u, func_4(Struct_1(!arg_0, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_add_i32(u_input.a.x, 1i), arg_0, _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, 1u), u_input.a.x, vec4<i32>(u_input.a.x, 1i, u_input.a.x, 85026i)))), Struct_1(arg_0, -1565f, min(u_input.a.x, 1i), !vec2<bool>(arg_0.x, var_0), _wgslsmith_f_op_f32(f32(-1f) * -1342f)), vec2<i32>(u_input.a.x, max(-60599i, -6295i)))));
    var var_3 = abs(_wgslsmith_mod_u32(~(abs(1u) >> (1u % 32u)), ~firstLeadingBit(firstTrailingBit(1u))));
    var_2 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(84020u, 1u), vec2<u32>(12634u, 57527u), vec2<bool>(true, var_0)), select(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u), vec2<bool>(true, all(select(vec3<bool>(var_0, arg_0.x, arg_0.x), vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, arg_0.x))))));
    return var_1.x;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.xx))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -449f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1856f + 1299f))))));
    let var_1 = Struct_1(arg_0.yz, var_0.x, ~u_input.a.x, arg_0.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + -625f));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -119f)), var_1.b, var_0.x));
    var var_2 = select(arg_0.zyx, !vec3<bool>(true, true, arg_0.x), select(!arg_0.ywx, select(arg_0.yxw, select(vec3<bool>(arg_0.x, false, var_1.d.x), select(arg_0.wxw, arg_0.yyz, arg_0.ywx), true), vec3<bool>(-1784f > var_1.b, true, true)), all(select(vec4<bool>(true, var_1.a.x, arg_0.x, arg_0.x), arg_0, var_1.d.x)) & arg_0.x));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false && (-1517f > var_1.b)))), var_0.x, -141f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(reverseBits(select(~vec3<u32>(1u, 4294967295u, 0u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 4389u), vec3<u32>(47634u, 7316u, 1u), vec3<u32>(1u, 28051u, 59586u)), true)));
    let var_1 = vec4<bool>(true, !(any(vec2<bool>(true, true)) & func_1(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), true, true);
    var_0 = vec3<u32>(~min(1u, _wgslsmith_mod_u32(~0u, var_0.x)), 4294967295u, ~1u);
    var var_2 = Struct_1(select(var_1.xy, vec2<bool>(!any(vec2<bool>(false, false)), all(var_1)), select(vec2<bool>(u_input.a.x <= u_input.a.x, var_1.x), select(select(vec2<bool>(var_1.x, true), var_1.wy, var_1.x), vec2<bool>(false, var_1.x), !var_1.zx), true)), 209f, u_input.a.x, var_1.wx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 265f), 1586f))) - -167f));
    let var_3 = 411f;
    var var_4 = vec3<i32>(~_wgslsmith_clamp_i32(0i, -59349i, u_input.a.x | -1i) | firstLeadingBit(var_2.c), min(1i, countOneBits(max(u_input.a.x, u_input.a.x)) << (var_0.x % 32u)), u_input.a.x);
    var_2 = Struct_1(select(vec2<bool>(var_3 <= _wgslsmith_f_op_f32(round(var_3)), true), var_2.d, var_2.a.x), var_2.e, 0i, !vec2<bool>(var_2.a.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) + _wgslsmith_f_op_f32(var_3 * -125f))));
    var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(47363u, var_0.x, var_0.x)) | ~(~vec3<u32>(6387u, 4294967295u, var_0.x)), select(vec3<u32>(var_0.x, 19356u, var_0.x) >> ((vec3<u32>(var_0.x, 0u, var_0.x) | vec3<u32>(28157u, var_0.x, 40411u)) % vec3<u32>(32u)), ~(~vec3<u32>(40055u, var_0.x, 37833u)), !(!vec3<bool>(var_2.a.x, var_1.x, var_1.x)))) >> (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(46045u, 0u, var_0.x) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 57046u), vec3<u32>(4294967295u, var_0.x, var_0.x))), vec3<u32>(var_0.x, firstLeadingBit(min(var_0.x, var_0.x)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(34634u, 4294967295u, 1u, 7742u), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x))))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.xz);
}


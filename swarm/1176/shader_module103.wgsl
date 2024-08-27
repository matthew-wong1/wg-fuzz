struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = select(!select(vec3<bool>(any(vec2<bool>(true, true)), false, select(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), select(!vec3<bool>(false, true, all(vec3<bool>(false, true, true))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), true), true));
    return abs(var_1.b.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, select(0u, 0u, true), 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) | 89769u;
    let var_1 = ~(~var_0);
    let var_2 = arg_0.wzz;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.x, -755f)), vec2<i32>(func_3(Struct_1(_wgslsmith_f_op_f32(1396f * -437f), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-7428i, -32205i), vec2<bool>(false, true)), 1u, _wgslsmith_f_op_vec3_f32(sign(var_2)), arg_0.yz), vec4<i32>(11283i, ~u_input.a, select(u_input.a, 2147483647i, true), u_input.a), ~_wgslsmith_mod_u32(4294967295u, var_0), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(543f * -1001f))), u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(33782u, 4294967295u, var_0, var_1)), vec4<u32>(~1u, var_0, _wgslsmith_mult_u32(52365u, var_1), ~var_0), (vec4<u32>(var_0, var_1, var_0, var_0) ^ vec4<u32>(var_0, 0u, var_0, 65591u)) ^ (vec4<u32>(var_0, 4294967295u, 4294967295u, var_1) >> (vec4<u32>(0u, 0u, var_1, var_1) % vec4<u32>(32u)))), ~(~vec4<u32>(18925u, var_1, var_0, 88489u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-648f, arg_1, -245f), _wgslsmith_f_op_vec3_f32(min(arg_0.ywz, vec3<f32>(arg_1, 663f, var_2.x))))), _wgslsmith_f_op_vec2_f32(-var_2.zz));
    var_3 = Struct_1(arg_1, var_3.b, abs(_wgslsmith_mult_u32(var_0, 1384u)), _wgslsmith_f_op_vec3_f32(var_3.d - _wgslsmith_f_op_vec3_f32(-var_2)), vec2<f32>(_wgslsmith_f_op_f32(round(-1533f)), var_2.x));
    return Struct_2(~var_1);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(461f, -639f)), -289f, !arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f))), vec2<i32>(min(19478i, 1i), firstTrailingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, arg_1)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, arg_1), vec2<i32>(1i, -1i))))), 4294967295u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2841f, 633f, -977f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(405f, 1334f, -1261f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-539f, -531f, -2428f) + vec3<f32>(478f, 1251f, -1000f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-883f, 348f, -1798f), vec3<f32>(836f, 108f, 281f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-766f, 490f) + vec2<f32>(-1000f, -1000f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1403f, -1184f) - vec2<f32>(-111f, 683f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 855f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(331f, 272f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(747f, 1058f) - vec2<f32>(537f, -532f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(-var_0.a)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), -535f) + _wgslsmith_f_op_f32(trunc(var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(514f)), var_0.e.x)) + _wgslsmith_div_f32(1738f, _wgslsmith_f_op_f32(var_0.d.x + -1000f)))));
    var var_2 = arg_2;
    let var_3 = select(!vec3<bool>(arg_0, arg_0, false), !(!vec3<bool>(u_input.a <= u_input.a, true, arg_0)), vec3<bool>(false, all(vec4<bool>(!arg_0, arg_0, true, all(vec2<bool>(arg_0, false)))), arg_0));
    var var_4 = var_0.b;
    return abs(firstTrailingBit(arg_2.a)) ^ 11908u;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(796f + _wgslsmith_f_op_f32(arg_2 * arg_2));
    let var_1 = func_4(!(!any(vec3<bool>(true, true, true))), ~(-1i), func_2(vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 910f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-708f - arg_2), 2202f))));
    let var_2 = ~_wgslsmith_clamp_vec3_u32(min(~vec3<u32>(1u, var_1, 100381u), _wgslsmith_div_vec3_u32(min(vec3<u32>(arg_0.a, arg_0.a, 4294967295u), vec3<u32>(arg_0.a, var_1, 4294967295u)), vec3<u32>(4294967295u, arg_1, 41267u) << (vec3<u32>(var_1, arg_1, 1u) % vec3<u32>(32u)))), abs(firstLeadingBit(~vec3<u32>(arg_1, 64146u, var_1))), (firstLeadingBit(vec3<u32>(arg_1, 30968u, var_1)) & vec3<u32>(arg_1, 21897u, 13145u)) | ~select(vec3<u32>(var_1, 41119u, var_1), vec3<u32>(1u, arg_1, var_1), vec3<bool>(true, false, true)));
    var var_3 = !select(!(arg_0.a > ~0u), true, true);
    var_3 = false;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1150f, _wgslsmith_f_op_f32(func_1(Struct_2(82035u), 0u, 270f))))))));
    var_0 = -2678f;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -331f);
    var_0 = var_1;
    var_0 = -937f;
    var var_2 = 2339u;
    let var_3 = Struct_2(4294967295u);
    let var_4 = func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-209f, 799f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-639f, var_1, -1307f, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 783f, -219f, var_1) - vec4<f32>(var_1, -592f, -319f, 829f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-321f, 918f, -872f, 791f)))))))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_clamp_u32(var_4.a, var_4.a, 4294967295u) << (~24102u % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1042f + var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -478f)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, var_1))))))));
}


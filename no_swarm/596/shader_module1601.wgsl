struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, ~select(0u, 4294967295u, !arg_1)));
    let var_1 = true;
    var var_2 = 1u;
    let var_3 = vec3<u32>(_wgslsmith_add_u32(16773u, var_0.x), var_0.x, _wgslsmith_mod_u32(var_0.x, _wgslsmith_mult_u32(50196u, ~4294967295u)));
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_3.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(arg_0, arg_0))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-821f, -609f, _wgslsmith_f_op_f32(f32(-1f) * -170f), -732f) + _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 912f, arg_3.a.x, 1000f))), arg_3.a))), !select(!vec4<bool>(false, true, false, var_1), vec4<bool>(false, arg_1, true, !arg_1), true)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(485f, -1000f, 1475f, -694f) * vec4<f32>(-1757f, 913f, 590f, -232f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1067f, 1052f, 663f, -595f) - vec4<f32>(512f, -1000f, -1960f, 821f))), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1148f, -1113f, -445f, 861f) * vec4<f32>(1000f, -745f, -932f, -1085f))) + vec4<f32>(-1000f, -1095f, _wgslsmith_div_f32(2078f, 1849f), 1000f))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-139f, var_0.a.x, -120f, var_0.a.x))), true, u_input.a.x, Struct_2(vec4<f32>(var_0.a.x, -719f, var_0.a.x, -927f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -709f, var_0.a.x, 371f) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 561f)))) - var_0.a), var_0.a)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)), var_1.a.x, var_0.a.x), vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-417f + -1155f))), -406f), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(false, true, true), true))), var_1.a.zxw));
    return Struct_2(var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(arg_1.a, arg_1.a, arg_1.a)), arg_1.a));
    let var_1 = ~vec3<u32>(1u, ~_wgslsmith_div_u32(7113u, _wgslsmith_div_u32(1u, var_0.a.x)), ~1u);
    let var_2 = func_2();
    let var_3 = vec2<i32>(_wgslsmith_add_i32(1i, -firstTrailingBit(u_input.a.x)), ~u_input.a.x);
    let var_4 = i32(-1i) * -3227i;
    return 67552u;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = ~(~(vec3<u32>(~arg_0.x, arg_0.x & arg_0.x, 19510u) >> (min(~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), reverseBits(vec3<u32>(arg_0.x, arg_0.x, arg_0.x))) % vec3<u32>(32u))));
    var_0 = min(~((vec3<u32>(944u, var_0.x, var_0.x) & vec3<u32>(13981u, arg_0.x, var_0.x)) & ~vec3<u32>(35809u, 1u, var_0.x)), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, arg_0.x, 82093u), vec3<u32>(4294967295u, var_0.x, 1u)))) >> (~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(118u, var_0.x, 1u), vec3<u32>(var_0.x, var_0.x, var_0.x)))) % vec3<u32>(32u));
    let var_1 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(72954u | arg_0.x, 0u, ~4294967295u, min(var_0.x, 61440u)), vec4<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 57395u, 71514u), vec3<u32>(arg_0.x, var_0.x, 26043u)), _wgslsmith_mult_u32(var_0.x, arg_0.x), arg_0.x)));
    let var_2 = false;
    var var_3 = func_2();
    return u_input.a.x;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(54982i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 47465i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, -11355i, u_input.a.x)) << (~vec4<u32>(4294967295u, 14377u, 1u, 3184u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x))));
    let var_1 = true;
    let var_2 = func_5(vec2<u32>(func_4(func_2(), Struct_1(select(vec4<u32>(4294967295u, 1u, 31117u, 0u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), var_1)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, -1033f, 830f, -316f)), vec4<f32>(-1236f, -705f, -637f, -2058f)), !all(vec4<bool>(true, var_1, var_1, var_1))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(92398u, 13636u))))), Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-973f, -262f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -296f)), vec4<f32>(1f, 1f, 1f, 1f)))));
    var_0 = select(_wgslsmith_mod_i32(min(-_wgslsmith_add_i32(-14841i, var_2), 7290i), 0i), abs(-45026i), all(vec3<bool>(true, var_2 <= _wgslsmith_clamp_i32(10306i, var_2, u_input.a.x), true)));
    let var_3 = _wgslsmith_f_op_f32(max(-2264f, -338f));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(10610u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(8953u, 0u, 1u), vec3<u32>(35714u, 20525u, 62135u)), ~vec3<u32>(1u, 17580u, 1u)) | 0u, func_1()), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 16745u, 29092u), vec3<u32>(1288u, 41726u, 4294967295u)), vec3<u32>(4294967295u, 5807u, 0u)), min(1u, 1u), 1u), vec3<u32>(min(min(0u, 34361u), ~52211u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 38055u), vec4<u32>(0u, 0u, 39814u, 987u)), max(4294967295u, 70316u) & select(66086u, 4294967295u, false))));
    let var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(true, true, false, false))), vec2<bool>(false || select(true, true, false), true & (-56361i > u_input.a.x)), select(vec2<bool>(any(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)))), !select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), !select(vec2<bool>(any(vec4<bool>(true, false, false, true)), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-602f))));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1028f, 308f)), _wgslsmith_div_f32(-645f, 127f))) - -450f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -164f, 2444f, 959f) * vec4<f32>(-813f, -126f, -1128f, -151f)), any(vec3<bool>(false, var_1.x, true)), -u_input.a.x, Struct_2(vec4<f32>(-1000f, -635f, 459f, -1042f)))).x, func_2().a.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-759f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, firstLeadingBit(~(~(~vec4<u32>(40341u, 4294967295u, 4294967295u, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-514f + _wgslsmith_f_op_f32(trunc(-629f))), -656f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(303f - 226f))))));
}


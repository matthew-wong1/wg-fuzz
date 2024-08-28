struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1999f)), -1012f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(trunc(-332f)))))));
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~select(u_input.a, u_input.b, true), ~(~u_input.b), 1u, u_input.a), (countOneBits(vec4<u32>(u_input.b, 45061u, u_input.b, u_input.b)) & ~vec4<u32>(u_input.a, u_input.a, 3514u, 576u)) >> (~min(vec4<u32>(1u, 41218u, 1u, 0u), vec4<u32>(u_input.b, 50050u, 28040u, u_input.b)) % vec4<u32>(32u))), abs(max(~(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) | vec4<u32>(u_input.a, u_input.b, 50500u, 0u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(130788u, u_input.b, 20711u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, 14303u, 70638u), vec4<u32>(40912u, u_input.a, u_input.b, u_input.b)), vec4<u32>(4769u, 1u, 15676u, u_input.a)))));
    var_0 = arg_0.x;
    var var_2 = vec4<bool>(_wgslsmith_sub_i32(-firstTrailingBit(-1i), -2147483647i) > firstLeadingBit(i32(-1i) * -2147483647i), true, true, true & all(vec4<bool>(true, true, true, true)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(-select(vec2<i32>(-12179i, 2147483647i), vec2<i32>(-45712i, 2147483647i), var_2.xx), firstLeadingBit(-vec2<i32>(-1430i, -1i))), abs(max(-vec2<i32>(-4858i, 43450i), vec2<i32>(-16113i, 8167i))), max(_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, 1i), -vec2<i32>(1i, -28372i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-24694i, 2147483647i), abs(vec2<i32>(0i, -24138i))))), _wgslsmith_div_vec2_i32(~select(-vec2<i32>(-78936i, 4895i), vec2<i32>(-44611i, -1i), select(var_2.yy, vec2<bool>(true, var_2.x), var_2.zw)), -reverseBits(-vec2<i32>(-2147483647i, 9259i))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    let var_0 = abs(~reverseBits(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.b, u_input.b)), vec3<u32>(4294967295u, 4294967295u, 4294967295u) << (vec3<u32>(u_input.a, 0u, u_input.b) % vec3<u32>(32u)))));
    var var_1 = func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-727f, arg_0.b, arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2251f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1803f, -142f, 681f, -699f), vec4<f32>(arg_0.c.x, 1013f, arg_0.c.x, 787f)))))));
    let var_2 = vec2<i32>(~_wgslsmith_clamp_i32(select(firstTrailingBit(7484i), arg_0.a, all(vec4<bool>(true, false, true, false))), 1264i, ~(-2147483647i)), firstLeadingBit(var_1.x) >> (var_0.x % 32u));
    var var_3 = arg_0;
    let var_4 = arg_0;
    return vec2<bool>(true, _wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(-357f - -837f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-591f)) + 1391f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    var var_0 = select(vec2<bool>(arg_1.b <= _wgslsmith_f_op_f32(ceil(473f)), all(vec2<bool>(true, any(vec2<bool>(true, false))))), !(!select(func_2(arg_1, 2147483647i), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(min(arg_1.b, 287f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(22503u, Struct_1(-3156i, 455f, vec2<f32>(252f, -179f), vec3<i32>(-42727i, -26070i, 2147483647i)), vec3<f32>(109f, 579f, -371f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2485f * -444f)))), _wgslsmith_f_op_f32(-971f + -282f));
    let var_1 = abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(44677i, ~(-16078i)), ~(70668i << (u_input.b % 32u)), ~(14033i >> (u_input.b % 32u))), max(_wgslsmith_sub_i32(1i, 15934i), abs(firstTrailingBit(10215i)))));
    let var_2 = Struct_1(i32(-1i) * -_wgslsmith_dot_vec4_i32(min(vec4<i32>(var_1, 1i, var_1, 41542i), vec4<i32>(var_1, -2147483647i, var_1, var_1)), countOneBits(vec4<i32>(var_1, var_1, var_1, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), vec2<f32>(var_0.x, -1000f), vec3<i32>(~var_1, -34367i, var_1 ^ (-36367i >> (0u % 32u))) >> ((min(reverseBits(vec3<u32>(0u, 36191u, 0u)), vec3<u32>(15463u, u_input.a, u_input.b)) | ~(~vec3<u32>(69180u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    let var_3 = !vec3<bool>(true, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true))), -15556i > ~var_2.d.x);
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, 1057f)));
    let var_5 = 38411i;
    var var_6 = -1999f;
    var var_7 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(~reverseBits(u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1045f, var_2.c.x), 1723f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-784f - 871f)))), true)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 4294967295u)), ~vec3<u32>(20272u, u_input.b, 65730u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)), 4294967295u)));
}


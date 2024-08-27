struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(~(~(~firstLeadingBit(vec2<u32>(0u, 0u)))));
    let var_1 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(var_0.a.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 53379u, var_0.a.x, 6684u), vec4<u32>(63637u, var_0.a.x, var_0.a.x, 4294967295u)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, var_0.a.x), abs(54978u)), var_0.a.x, ~(~71172u))));
    let var_2 = u_input.b.x;
    let var_3 = u_input.b;
    var var_4 = true;
    return _wgslsmith_f_op_f32(abs(1632f));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-181f * 2127f))), _wgslsmith_f_op_f32(abs(1f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1650f)) - -584f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1816f + -1495f) + _wgslsmith_f_op_f32(-224f - -539f)))));
    let var_1 = (_wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(873f + 2632f)) | (any(!vec4<bool>(true, false, false, arg_0.x)) && any(!(!vec4<bool>(true, arg_0.x, true, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1001f, -217f, -370f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, var_0.a, -708f) + vec3<f32>(437f, var_0.b, 404f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1833f, -1208f, -889f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, var_0.a, var_0.b) * vec3<f32>(var_0.a, var_0.a, 584f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, var_0.a, -1357f))))))));
    var var_3 = 85092u;
    let var_4 = var_0.a;
    return select(select(!vec3<bool>(any(vec3<bool>(false, false, arg_0.x)), true, arg_0.x), select(!vec3<bool>(false, true, arg_0.x), !(!vec3<bool>(var_1, var_1, arg_0.x)), arg_0.x && false), select(vec3<bool>(true, true, true), vec3<bool>(true, var_1, any(vec4<bool>(var_1, arg_0.x, arg_0.x, var_1))), select(vec3<bool>(false, true, var_1), select(vec3<bool>(false, true, var_1), vec3<bool>(arg_0.x, false, false), vec3<bool>(true, arg_0.x, true)), !vec3<bool>(arg_0.x, arg_0.x, false)))), select(!select(vec3<bool>(var_1, true, false), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(var_1, false, true), vec3<bool>(true, arg_0.x, var_1)), true), vec3<bool>(false, any(vec4<bool>(arg_0.x, var_1, var_1, var_1)), var_1), vec3<bool>(any(vec2<bool>(var_1, arg_0.x)), var_1, true)), select(select(select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(false, var_1, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, var_1), false), !(!vec3<bool>(false, var_1, var_1)), arg_0.x), vec3<bool>(!all(vec3<bool>(false, true, true)), true, all(vec3<bool>(arg_0.x, false, arg_0.x)) | true), !(!vec3<bool>(false, arg_0.x, var_1))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) * _wgslsmith_f_op_f32(select(arg_0.d.x, arg_0.d.x, false))) * _wgslsmith_f_op_f32(step(1184f, -243f)));
    var_0 = arg_0.d.x;
    var_0 = 1000f;
    let var_1 = ~1u;
    let var_2 = any(select(func_2(select(select(vec2<bool>(arg_1.x, true), vec2<bool>(false, arg_1.x), false), select(arg_1, arg_1, arg_1.x), -1i == arg_0.a.x), vec2<u32>(var_1, var_1 & var_1), select(vec3<u32>(var_1, var_1, var_1), vec3<u32>(98809u, var_1, 1003u), vec3<bool>(true, true, true)) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 1u, 1u), vec3<u32>(var_1, var_1, var_1))), !vec3<bool>(true || arg_1.x, true, arg_1.x), vec3<bool>((0i | u_input.c) > arg_0.a.x, select(false, arg_1.x, 1i <= u_input.a), arg_1.x)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(16059u, 61468u)), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(33301u, 4294967295u), vec2<u32>(0u, 1u)), vec2<u32>(1u, select(51410u, 1u, true)))));
    var var_1 = vec2<f32>(-509f, _wgslsmith_f_op_f32(max(298f, -1109f)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -123f)));
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(u_input.c, u_input.c)), _wgslsmith_clamp_i32(u_input.a, u_input.c, abs(1i) >> (1u % 32u)), select(abs(1i), u_input.b.x, true));
    let var_3 = ~firstLeadingBit(reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, var_2.x, var_2.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_2.x, u_input.b.x, var_2.x), vec4<i32>(var_2.x, -24549i, 1i, u_input.b.x), vec4<i32>(var_2.x, 2147483647i, u_input.a, var_2.x)))));
    let var_4 = vec4<bool>(true, func_1(Struct_2(var_2.xz, Struct_1(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -2273f))), -(var_3.xzw & var_3.yxz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, 1000f, 1451f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, 1000f, var_1.x, 138f)))), vec2<bool>(any(vec3<bool>(false, true, false)), (var_0.a.x > 42668u) || select(true, true, true))), any(select(vec3<bool>(select(true, false, false), true, true), func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 0u), var_0.a), vec3<u32>(var_0.a.x, 22453u, 1u) ^ vec3<u32>(var_0.a.x, 43483u, var_0.a.x)), true)), func_1(Struct_2(max(var_2.zz, ~var_2.zz), Struct_1(_wgslsmith_f_op_f32(min(var_1.x, -1099f)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, var_3.x), vec3<i32>(-1i, u_input.b.x, -16079i)) | vec3<i32>(var_3.x, -2167i, 25291i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1595f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-779f, 2353f, var_1.x, var_1.x), vec4<f32>(-197f, var_1.x, var_1.x, 598f)))), vec2<bool>(func_2(select(vec2<bool>(false, true), vec2<bool>(true, false), false), var_0.a ^ vec2<u32>(var_0.a.x, 4294967295u), vec3<u32>(var_0.a.x, 1u, 12304u) >> (vec3<u32>(4294967295u, 4294967295u, var_0.a.x) % vec3<u32>(32u))).x, (1u >= var_0.a.x) && false)));
    let var_5 = func_2(!(!var_4.xw), ~var_0.a << (~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), max(vec2<u32>(var_0.a.x, 0u), var_0.a)) % vec2<u32>(32u)), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(76902u, var_0.a.x, var_0.a.x), vec3<u32>(75306u, var_0.a.x, 4294967295u)) & firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(23447u, var_0.a.x, 1u), ~vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), !(!vec3<bool>(var_4.x, true, false)))).zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-193f, var_1.x, var_1.x) - vec3<f32>(-172f, var_1.x, 247f)))))))), min(var_0.a.x, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, var_0.a.x), ~1u)));
}


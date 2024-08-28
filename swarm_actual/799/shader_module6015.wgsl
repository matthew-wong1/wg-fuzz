struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(-289f)), -349f, -122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2377f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 309f, -1198f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 129f))), var_0.x))));
    let var_1 = arg_1.a;
    var var_2 = Struct_1(53834u);
    var var_3 = Struct_2(vec3<bool>(true, false, !arg_0.x), vec4<bool>(true, !(!(var_0.x <= 1524f)), select(arg_0.x, _wgslsmith_div_f32(var_0.x, 209f) <= -1205f, !(true && arg_0.x)), true));
    return false;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> vec4<f32> {
    var var_0 = select(69829u, arg_3, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = -727f;
    var_0 = firstTrailingBit(arg_2 & _wgslsmith_add_u32(arg_2, arg_2));
    var_0 = arg_1.b.a;
    var var_2 = vec3<bool>(all(vec2<bool>(true, !(arg_0 <= 9384i))), true, any(vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(-1206f)) < _wgslsmith_f_op_f32(floor(var_1)), !all(vec4<bool>(false, false, false, true)), func_3(vec3<bool>(true, true, true), arg_1.b, abs(vec4<i32>(arg_0, 0i, 0i, 11318i))))));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-173f, -578f), var_1, _wgslsmith_f_op_f32(min(-924f, var_1)), var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -1589f, var_1) - vec4<f32>(1718f, var_1, var_1, var_1))), select(var_2.x, var_2.x, var_1 != -1562f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_1(~(~select(4294967295u, 0u, arg_2)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(70312u, 18688u), ~14405u, 6869u), vec3<u32>(0u, ~1595u, 15330u)) % 32u));
    let var_1 = abs(~vec4<u32>(abs(var_0.a), var_0.a, _wgslsmith_sub_u32(var_0.a, ~23054u), ~var_0.a));
    let var_2 = firstLeadingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(abs(-41949i), -u_input.a), vec2<i32>(u_input.a, _wgslsmith_sub_i32(-2147483647i, 1i))));
    var var_3 = -1803f;
    var var_4 = var_0;
    return Struct_3(vec4<i32>(_wgslsmith_dot_vec2_i32(var_2, _wgslsmith_clamp_vec2_i32(var_2 ^ var_2, -var_2, countOneBits(var_2))), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(var_2, ~vec2<i32>(-2903i, 1i))), abs(arg_1) ^ countOneBits(-var_2.x), abs(var_2.x) ^ u_input.a), var_0, min(~vec4<i32>(13819i, -var_2.x, var_2.x | var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -1i, 2147483647i), vec3<i32>(u_input.a, -40144i, 0i))), vec4<i32>(var_2.x, ~var_2.x, -2147483647i, -var_2.x) >> (_wgslsmith_mult_vec4_u32(var_1, ~var_1) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yww + _wgslsmith_f_op_vec3_f32(ceil(arg_1.yzw))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))), 812f, 850f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(872f))))), var_0.x));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(trunc(-811f)))));
    var var_2 = var_0.xz;
    var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - -1307f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(ceil(-226f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), var_2.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603f + -352f) - 190f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_1.x)), -693f), arg_1.x, -793f, 1180f), vec4<bool>(true, true, true, true)));
    return ~(10277u >> (arg_0.b.a % 32u));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = 1u << (func_5(func_4(_wgslsmith_f_op_vec4_f32(func_2(1i, Struct_3(vec4<i32>(-27000i, 2147483647i, -2147483647i, -44553i), Struct_1(1u), vec4<i32>(u_input.a, u_input.a, -580i, u_input.a)), 77088u, ~38947u)), -21447i, abs(u_input.a) < 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-987f, 185f, -553f, 689f))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(529f, 1496f, -242f, -419f), vec4<f32>(-1000f, -832f, 921f, -110f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1640f, -1410f, -102f, 1017f) * vec4<f32>(115f, -283f, 1321f, 311f))), _wgslsmith_mod_i32(_wgslsmith_add_i32(-25288i, u_input.a), u_input.a), any(vec3<bool>(true, false, false)))) % 32u);
    var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-494f)) + _wgslsmith_f_op_f32(-199f * -566f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1013f, 1069f) * _wgslsmith_f_op_f32(676f * -741f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1946f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(1250f))))), -457f)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), false))));
    var_0 = _wgslsmith_div_u32(~(~_wgslsmith_div_u32(0u, 32612u)), _wgslsmith_mod_u32(arg_0.x, arg_0.x)) | 77185u;
    let var_2 = vec4<bool>(false, !(!((arg_0.x != 1u) && all(vec2<bool>(false, true)))), false, false);
    return countOneBits(~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u <= func_1(vec4<u32>(4294967295u, 11228u, 4294967295u, 4294967295u));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1982f)));
    var var_3 = u_input.a;
    var var_4 = Struct_2(vec3<bool>(var_0, !(!all(vec2<bool>(var_0, false))), !func_3(vec3<bool>(var_0, var_0, var_0), Struct_1(4294967295u), -vec4<i32>(u_input.a, u_input.a, -32888i, -15549i))), !select(!vec4<bool>(var_0, false, true, false), !vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(false, var_0, var_0, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 46968u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(19147u, 4294967295u, 113768u, 4294967295u), vec4<u32>(4294967295u, 84781u, 4294967295u, 1u)), ~vec4<u32>(4294967295u, 0u, 34543u, 4294967295u))), _wgslsmith_sub_u32(7921u, 1u), vec4<u32>(~4294967295u, func_1(firstTrailingBit(vec4<u32>(31959u, 0u, 1u, 42923u))) ^ countOneBits(1u), 13870u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(806u, 0u, 0u), vec3<u32>(61748u, 28262u, 15856u)) >> (4294967295u % 32u)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-17827i, u_input.a) ^ countOneBits(21373i), firstTrailingBit(-7053i)), u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, 1i, u_input.a)), firstTrailingBit(vec3<i32>(-39196i, -27869i, 1i))), -1i), 39005i));
}


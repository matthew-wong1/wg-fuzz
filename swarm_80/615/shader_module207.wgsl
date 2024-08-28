struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = vec2<bool>(all(!vec4<bool>(false, true, !arg_0.c.x, true)), all(arg_0.b.b.xxz));
    var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(927f)) * -760f) != arg_0.a, var_0.x), vec2<bool>(any(arg_0.b.b), all(!(!arg_0.b.b.zw))), all(arg_0.b.b));
    var var_1 = vec2<u32>(1u, 0u);
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-377f, arg_0.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1097f, arg_0.a) + vec3<f32>(arg_0.a, -1087f, -151f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-669f, arg_0.a, arg_0.a))))), var_0.x))));
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_1(!(!arg_0.zx), arg_1);
    var var_1 = func_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1937f)) + 781f), Struct_1(!vec2<bool>(var_0.b.x, arg_0.x), vec4<bool>(true, arg_0.x, true, !arg_1.x)), vec2<bool>(true, !(!var_0.a.x))));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(max(0u, min(countOneBits(1u), 88506u)), 0u), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(max(vec4<u32>(25546u, 38690u, 0u, 78700u), vec4<u32>(103090u, 1u, 0u, 61133u)), vec4<u32>(26707u, 20323u, 1u, 35054u))), firstTrailingBit(~13716u) | 34888u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(1u, 17620u), 38541u, ~1u), 1u));
    var_1 = false;
    var var_3 = 849f;
    return true;
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = true;
    var_0 = any(!select(!select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, false, false, false)), !vec4<bool>(true, arg_1, arg_1, true), !select(vec4<bool>(true, true, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), arg_1)));
    var_0 = false;
    var_0 = true && (reverseBits(_wgslsmith_mod_u32(~4294967295u, ~68048u)) <= (~(~78717u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(80087u, 0u, 1964u), vec3<u32>(9174u, 1u, 11106u))) % 32u)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1714f)), _wgslsmith_f_op_f32(trunc(-1589f)))), _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0, arg_0) & arg_0, firstLeadingBit(abs(2147483647i)))), -577f, vec4<i32>(u_input.a.x, 19799i, 1i, 2147483647i));
    return Struct_1(select(!(!vec2<bool>(false, arg_1)), vec2<bool>(arg_1 | func_3(Struct_2(612f, Struct_1(vec2<bool>(arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)), vec2<bool>(arg_1, arg_1))), arg_1), (true != arg_1) || arg_1), select(select(vec4<bool>(any(vec4<bool>(arg_1, true, arg_1, arg_1)), any(vec4<bool>(false, arg_1, true, arg_1)), all(vec4<bool>(true, arg_1, arg_1, true)), any(vec4<bool>(false, true, false, arg_1))), select(select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1)), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true)), !all(vec4<bool>(arg_1, false, false, false))), !select(select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, true, false, arg_1), false), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, true, true)), vec4<bool>(true, arg_1, arg_1, true)), select(select(vec4<bool>(true, true, arg_1, arg_1), !vec4<bool>(true, false, true, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false))), vec4<bool>(true, arg_1 | arg_1, true, !arg_1), all(vec2<bool>(false, arg_1)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_5 {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(arg_1.b.x, true)), arg_1.a.x), !vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_1.b.zx, vec2<bool>(true, true)), arg_1.b);
    var var_1 = all(vec3<bool>(false, false, any(select(var_0.b, !vec4<bool>(false, false, arg_1.b.x, var_0.a.x), vec4<bool>(true, arg_1.b.x, var_0.a.x, var_0.a.x)))));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-297f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1555f - -1190f))))), Struct_1(vec2<bool>(true, true), !(!vec4<bool>(arg_1.a.x, false, var_0.a.x, true))), vec2<bool>(arg_1.a.x, var_0.a.x));
    var_1 = var_0.b.x;
    let var_3 = func_4(-3666i, func_2(select(var_2.b.b.zzz, !(!var_0.b.xzx), !(var_2.a >= 1000f)), !vec4<bool>(true, false, var_2.c.x, u_input.a.x >= 5449i), _wgslsmith_clamp_vec2_i32(~(~u_input.a.yz), ~vec2<i32>(125i, -47332i), u_input.a.yz)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1381f, var_2.a, var_2.a) + vec3<f32>(1000f, -1456f, var_2.a)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(716f, var_2.a, 1000f))))))), vec2<bool>(var_0.b.x, false));
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: f32, arg_3: u32) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f - arg_2)))), func_4(_wgslsmith_mult_i32(-10423i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 1i), u_input.a) ^ 1i), false), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, -1247f))) <= func_1(~vec4<u32>(0u, arg_1, 31129u, arg_1), Struct_1(arg_0.b, vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x))).a.x, arg_0.b.x == select(true, true, !arg_0.b.x)));
    var var_1 = u_input.a;
    var var_2 = var_0.b.a.x;
    var_2 = _wgslsmith_add_u32(arg_3, 4294967295u) != (arg_3 << (_wgslsmith_sub_u32(abs(arg_3), arg_3) % 32u));
    var var_3 = Struct_4(countOneBits(vec2<u32>(reverseBits(~84577u), _wgslsmith_mod_u32(arg_1, arg_1) | arg_3)));
    return _wgslsmith_f_op_vec3_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 813f;
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(func_5(func_1(~vec4<u32>(1u, 1u, 1u, 1u), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true))), reverseBits(1u), var_0, 956u)), vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -891f) < _wgslsmith_f_op_f32(860f + var_0)), all(vec3<bool>(true, false, true)) | true));
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(max(var_1.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(456f, -209f, var_1.a.x))), vec3<f32>(var_0, _wgslsmith_f_op_f32(ceil(811f)), func_1(vec4<u32>(98874u, 2745u, 1u, 0u), Struct_1(vec2<bool>(var_1.b.x, false), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x))).a.x))))), vec2<bool>(var_1.b.x, var_1.b.x));
    let var_2 = all(vec3<bool>(true, var_1.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & ~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2679i))), ~firstLeadingBit(0u), firstTrailingBit(~max(vec4<u32>(1u, 1u, 1u, 78742u), ~vec4<u32>(0u, 4366u, 51070u, 10177u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_5(func_1(vec4<u32>(27617u, 0u, 13787u, 4294967295u), Struct_1(var_1.b, vec4<bool>(var_2, false, false, false))), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 14346u))))).x)));
}


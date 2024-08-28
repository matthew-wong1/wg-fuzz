struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), -302f)) + 382f) < _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = Struct_1(~vec3<u32>(~u_input.a, u_input.a, select(u_input.a, select(u_input.a, 26230u, var_0), 36842u <= u_input.a)), _wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = ~_wgslsmith_mod_u32(abs(u_input.a << (4913u % 32u)) ^ u_input.a, ~(~_wgslsmith_clamp_u32(var_1.a.x, 42814u, 1u)));
    var var_3 = reverseBits(_wgslsmith_mult_i32(min(u_input.b.x, ~u_input.b.x >> ((u_input.a | u_input.a) % 32u)), -24361i));
    let var_4 = true;
    return vec4<u32>(~var_1.a.x, countOneBits(var_1.a.x), ~((_wgslsmith_dot_vec2_u32(var_1.a.yy, vec2<u32>(0u, u_input.a)) ^ min(u_input.a, 0u)) >> (~(var_2 ^ var_1.a.x) % 32u)), ~(~var_1.a.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = vec4<u32>(~(~_wgslsmith_mult_u32(1u, ~u_input.a)), ~(~(~(u_input.a >> (arg_1.a.x % 32u)))), 4294967295u, arg_1.a.x);
    var_0 = max(_wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(arg_1.a.zx, vec2<u32>(1u, 30745u)), firstTrailingBit(arg_1.a.x | 5979u), 17635u, 79194u), abs(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(arg_1.a.xy, vec2<u32>(0u, 1u)), u_input.a | 1u, var_0.x)), vec4<u32>(_wgslsmith_add_u32(var_0.x, min(var_0.x, u_input.a)), 1u, reverseBits(arg_1.a.x), abs(39775u) >> (~var_0.x % 32u))), vec4<u32>(arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19922u, arg_1.a.x, 50928u), ~vec4<u32>(14291u, var_0.x, 0u, 1u)), var_0.x, firstLeadingBit(var_0.x & u_input.a)) | ~vec4<u32>(abs(0u), ~64104u, 27548u, ~28206u));
    var_0 = ~func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -186f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2344f, -133f), vec2<f32>(-1000f, -262f)))));
    let var_1 = 0u;
    var var_2 = vec2<i32>(-21607i, ~(-2147483647i));
    return Struct_1(~vec3<u32>(~arg_1.a.x, ~u_input.a | select(7516u, u_input.a, false), 35820u), arg_3);
}

fn func_1() -> vec2<u32> {
    var var_0 = func_2(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 2028u, 0u), ~vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f))), _wgslsmith_f_op_f32(abs(472f)), 574f);
    var_0 = Struct_1(abs(func_2(vec3<bool>(true, true, true), func_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(u_input.a, 59057u, 4294967295u), 223f), _wgslsmith_div_f32(var_0.b, 1562f), var_0.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-1301f + var_0.b))).a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-1716f * -1097f)), -1064f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1797f, var_0.b)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1040f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(455f)), var_0.b, _wgslsmith_f_op_f32(round(-1397f)))))));
    var var_2 = 1000f;
    var var_3 = Struct_1(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(1u, var_0.a.x, 43126u)), var_0.a), _wgslsmith_f_op_f32(step(-725f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.b, var_1.x)), _wgslsmith_f_op_f32(abs(581f))))))));
    return ~var_0.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec4<bool>(_wgslsmith_add_u32(func_3(vec2<f32>(-1716f, 1050f)).x, var_0.x) < _wgslsmith_mult_u32(var_0.x & ~u_input.a, 0u | var_0.x), true, true, !all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, true)))));
    let var_2 = Struct_1(vec3<u32>(4294967295u, u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f), -1202f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b, -215f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 340f) * vec2<f32>(var_2.b, 728f)), var_1.zw))), vec2<f32>(-2423f, -728f), !var_1.xy))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -721f) - vec2<f32>(var_3.x, 498f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(204f, -414f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, var_3.x)), !var_1.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1457f)))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-468f * 237f), -433f) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-846f)), var_2.b)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, -205f)))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(1082f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, 123f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + var_3.x)))))));
    var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f + var_2.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x)) - vec2<f32>(237f, 760f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b, var_4.x))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1571f, var_3.x)))), true))), any(var_1.xx) || (countOneBits(2147483647i << (var_2.a.x % 32u)) < -44353i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~reverseBits(min(0i, u_input.b.x)), 1i), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, -1i), ~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(floor(var_4.x))), _wgslsmith_f_op_f32(867f - var_4.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(521f + _wgslsmith_f_op_f32(216f + 286f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -446f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_4.x)), _wgslsmith_f_op_f32(-var_3.x))));
}


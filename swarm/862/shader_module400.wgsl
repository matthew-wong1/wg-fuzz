struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(arg_0.c.x, 12978i);
    let var_1 = select(select(vec4<bool>(false, true, true, arg_3.x), select(select(select(vec4<bool>(arg_3.x, false, false, true), vec4<bool>(arg_3.x, true, true, false), false), !vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x)), vec4<bool>(!arg_3.x, true, any(vec2<bool>(arg_3.x, arg_3.x)), arg_3.x), !all(vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), arg_3.x), !(!(!select(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), arg_3.x))), vec4<bool>(arg_3.x, all(vec2<bool>(true, arg_3.x)), ~(~(-3175i)) >= select(arg_1.x, -26206i, false), !(!(!arg_3.x))));
    let var_2 = _wgslsmith_f_op_f32(select(arg_2.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c.a * -1386f))), any(!(!select(var_1.wwy, var_1.zxz, arg_3.x)))));
    let var_3 = 436f;
    let var_4 = arg_0;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 - -521f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a - arg_2.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.b.a, arg_0.b.a, -252f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.a, 1302f, -486f) * vec3<f32>(var_2, var_4.b.a, -659f)))))) * vec3<f32>(-774f, _wgslsmith_f_op_f32(ceil(-1454f)), _wgslsmith_f_op_f32(-arg_2.c.a))), var_1.x && arg_3.x));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f * 191f) - _wgslsmith_div_f32(1524f, -1133f)))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(f32(-1f) * -1159f))), 1f, all(arg_0)))), vec2<i32>(1i, abs(max(1i, 0i)) ^ u_input.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_2(-645f), Struct_2(-510f), firstLeadingBit(vec2<i32>(u_input.a, -68423i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(981f, 925f, -3018f)))), -min(vec4<i32>(u_input.a, -1i, u_input.a, 1i), vec4<i32>(-21410i, 1947i, -2147483647i, 49906i)), Struct_3(Struct_1(1399f), Struct_2(115f), Struct_1(288f)), arg_0.xy)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.a))))) + var_0.a.a);
    let var_2 = Struct_3(Struct_1(var_0.b.a), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-367f - var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_0.a.a) + _wgslsmith_f_op_f32(min(218f, var_0.d.x))))), Struct_1(678f));
    let var_3 = ~_wgslsmith_mod_vec2_u32(max(select(~vec2<u32>(1u, 0u), abs(vec2<u32>(1u, 56720u)), select(arg_0.yz, arg_0.yx, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(5001u, 1u), ~vec2<u32>(31223u, 0u))), vec2<u32>(4294967295u, ~_wgslsmith_add_u32(50916u, 0u)));
    var var_4 = _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(var_3.x, 4294967295u, 5893u))), vec3<u32>(79981u >> (var_3.x % 32u), var_3.x, 1u & firstTrailingBit(var_3.x))) ^ ~vec3<u32>(~reverseBits(59506u), _wgslsmith_div_u32(33084u, 4294967295u), var_3.x);
    return !(!any(vec4<bool>(arg_0.x | true, arg_0.x, arg_0.x, any(vec4<bool>(true, arg_0.x, true, arg_0.x)))));
}

fn func_1() -> u32 {
    let var_0 = all(!vec3<bool>(func_2(vec4<bool>(true, false, true, false)), any(vec2<bool>(true, false)) & true, all(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(select(-1483f, -581f, true));
    let var_2 = -1i;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1226f, -590f))))), 589f);
    var_1 = 103f;
    return min(~firstLeadingBit(1u), _wgslsmith_clamp_u32(~48998u, ~18153u, 4793u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 18>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(436f, -389f, 1276f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1823f, -171f, 1675f) + vec3<f32>(1217f, 968f, 1248f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, -219f, -555f))))))), vec3<f32>(_wgslsmith_div_f32(587f, 326f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f))), 1141f));
    global0 = array<vec2<f32>, 18>();
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -648f), _wgslsmith_f_op_f32(1000f * 351f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -784f) + var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -477f, var_0.x), vec3<f32>(794f, var_0.x, -1635f)))))));
    let var_1 = select(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 12002u), ~(~_wgslsmith_mod_u32(4294967295u, 4294967295u)), ~func_1()), ~func_1(), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1638f + var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(ceil(788f))), -792f), var_0.x, var_1, ~(countOneBits(u_input.a) & _wgslsmith_clamp_i32(u_input.a, -u_input.a, reverseBits(-1i))), ~vec3<u32>(firstTrailingBit(~7232u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1, var_1), var_1 & var_1, reverseBits(48669u)), ~reverseBits(var_1)));
}


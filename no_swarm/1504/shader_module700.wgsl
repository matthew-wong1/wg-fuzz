struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-779f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1218f)), _wgslsmith_f_op_f32(113f * 693f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1905f))), _wgslsmith_f_op_f32(-106f - 1092f) >= _wgslsmith_f_op_f32(trunc(-379f))))));
    let var_1 = abs(abs(select(vec3<i32>(-47157i, arg_1.a, 11107i), vec3<i32>(arg_0.x, -2147483647i, -2147483647i), true)) & abs(reverseBits(-vec3<i32>(arg_0.x, -1i, arg_1.a))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(507f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) - 1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1166f)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-109f * -1855f), _wgslsmith_f_op_f32(f32(-1f) * -551f))), 2088f)), 1249f));
    let var_2 = any(select(vec4<bool>(true, false, all(vec4<bool>(true, false, false, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), any(vec3<bool>(true, true, true)))) | true;
    let var_3 = ~_wgslsmith_clamp_vec2_u32(abs(abs(abs(u_input.a.xw))), ~u_input.a.yz, _wgslsmith_mod_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x))), ~u_input.a.xz & vec2<u32>(u_input.a.x, 1u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-299f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-657f)))));
}

fn func_2() -> Struct_2 {
    let var_0 = -1011f;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(-198f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(abs(vec3<i32>(-2147483647i, 2147483647i, 2147483647i)), Struct_1(-1i)))))), 1u, _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-1i) * -select(u_input.e.yy, u_input.b, false)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(var_0, -709f))));
    var var_3 = Struct_1(max(var_1.c.x, firstTrailingBit(-9487i)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(493f, -294f) + vec2<f32>(1000f, 821f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.x, -728f))))) + _wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -748f)))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec2<bool>(false, true)))))), 4294967295u, u_input.b);
    return Struct_2(var_1.a, _wgslsmith_dot_vec3_u32(u_input.a.zxx | u_input.a.zyw, ~_wgslsmith_add_vec3_u32(u_input.a.yzy, ~vec3<u32>(u_input.a.x, 8449u, 36048u))), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -43242i), vec2<i32>(var_1.c.x ^ (var_3.a << (1u % 32u)), 2147483647i)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_i32(-21720i, 32922i);
    var var_1 = arg_2;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, _wgslsmith_f_op_f32(-var_1.a.x))), 1u, _wgslsmith_sub_vec2_i32(arg_2.c, u_input.c.xz)), !vec4<bool>(any(vec3<bool>(false, true, false)) | true, all(vec2<bool>(true, true)), true | any(vec3<bool>(true, false, false)), true), func_2(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, var_1.a.x, _wgslsmith_f_op_f32(abs(var_1.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, -616f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, 1167f, var_1.a.x) - vec3<f32>(var_1.a.x, 547f, 485f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -256f), vec3<f32>(329f, -999f, 1765f))))));
    var_1 = var_2.c;
    var var_3 = Struct_3(arg_2, vec4<bool>(!var_2.b.x, !any(vec3<bool>(true, true, var_2.b.x)), any(vec3<bool>(any(vec4<bool>(var_2.b.x, false, true, var_2.b.x)), false, any(var_2.b))), true), func_2(), _wgslsmith_f_op_vec3_f32(floor(var_2.d)));
    return vec2<bool>(var_2.b.x, var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true || select(true, !select(all(vec4<bool>(false, false, false, false)), false, 0i > u_input.e.x), true);
    let var_1 = select(select(select(select(vec4<bool>(true, true, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, false), false), !vec4<bool>(var_0, false, var_0, var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d, 1i), vec4<i32>(u_input.d, 2147483647i, u_input.e.x, -2147483647i)) > -1i), select(select(!vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, true, var_0, false), !vec4<bool>(false, true, var_0, true)), vec4<bool>(false, any(vec3<bool>(true, true, var_0)), u_input.b.x >= u_input.c.x, u_input.e.x < u_input.c.x), select(!vec4<bool>(true, true, var_0, false), !vec4<bool>(true, var_0, var_0, true), any(vec3<bool>(var_0, false, true)))), all(func_1(u_input.a.x, vec4<i32>(2147483647i, u_input.c.x, -56033i, u_input.d), Struct_2(vec2<f32>(1009f, 146f), 6354u, vec2<i32>(u_input.c.x, u_input.d)), Struct_1(u_input.e.x))) | var_0), vec4<bool>(false, true, var_0, select(var_0, var_0, true)), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-345f, -897f, 129f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(370f, 542f, 217f) + vec3<f32>(-137f, -1000f, -108f)), vec3<bool>(var_0, false, var_0))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(685f + -125f), _wgslsmith_f_op_f32(round(-585f)))), vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-608f, _wgslsmith_f_op_f32(sign(878f)), _wgslsmith_f_op_f32(1000f + 383f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1091f, 1086f, -360f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, -292f, 574f)))))));
    var var_3 = Struct_3(Struct_2(var_2.yx, ~u_input.a.x, select(u_input.b, firstLeadingBit(u_input.e.xx | u_input.c.yx), !vec2<bool>(false, var_0))), select(var_1, select(!(!var_1), select(vec4<bool>(var_0, true, var_0, true), var_1, !var_1.x), select(var_1, var_1, select(var_1, vec4<bool>(false, var_1.x, true, var_0), vec4<bool>(var_1.x, var_1.x, var_0, var_1.x)))), var_1), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 1770f), vec2<f32>(330f, var_2.x), !var_1.xz))), ~(~(29422u | u_input.a.x)), ~vec2<i32>(u_input.c.x, u_input.b.x)), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-419f, _wgslsmith_f_op_f32(-var_2.x)))));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, -1101f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f), var_2.x))), u_input.a.x, u_input.a.x, vec4<i32>(firstTrailingBit(-48193i), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(-12855i, -2147483647i, var_3.c.c.x, -62i)), (vec4<i32>(0i, u_input.c.x, 61426i, -2147483647i) & vec4<i32>(u_input.d, u_input.d, 48843i, var_3.a.c.x)) | firstLeadingBit(vec4<i32>(var_3.c.c.x, 1i, -14471i, var_3.c.c.x))), _wgslsmith_div_i32(-(var_3.a.c.x & u_input.c.x), abs(-1i)), u_input.c.x));
}


struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_mod_vec3_u32(countOneBits(abs(reverseBits(vec3<u32>(0u, 1u, global0.x)))) | ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 18283u), u_input.a), 11440u, global0.x), vec3<u32>(1u, 55819u, global0.x));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(global1.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(floor(global1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1398f)))))));
    var var_0 = u_input.b;
    let var_1 = global1.a;
    var var_2 = Struct_1(global1.a, global1.b);
    return firstTrailingBit(~(~0u));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global1 = arg_2;
    var var_0 = 22192i;
    let var_1 = Struct_1(arg_2.a, -154f);
    global0 = vec3<u32>(global0.x, _wgslsmith_add_u32(max(global0.x, _wgslsmith_mod_u32(1u, ~global0.x)), func_3()), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.a.x, 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30417u, 1u), vec3<u32>(u_input.a.x, global0.x, u_input.a.x)))));
    let var_2 = select(vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), select(true | all(vec4<bool>(true, true, false, false)), select(false, global0.x != 4294967295u, 1u != u_input.b), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), countOneBits(abs(arg_1)) > abs(arg_0 ^ arg_0), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) + _wgslsmith_f_op_f32(-var_1.a.x)) < -2152f, all(vec4<bool>(false, true, any(vec2<bool>(true, true)), var_1.a.x != arg_3.x)), false, false), select(vec4<bool>(false, all(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
    return ~(func_3() | 1u);
}

fn func_1() -> vec4<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, global0.x, u_input.b), vec4<u32>(21410u, 4294967295u, global0.x, global0.x)), _wgslsmith_mult_u32(global0.x, global0.x), ~53084u, 12278u | u_input.a.x), abs(vec4<u32>(22582u, 4294967295u, 1u, u_input.a.x))), select(vec4<u32>(global0.x, u_input.a.x, u_input.a.x, 17857u), ~vec4<u32>(59971u, 0u, 0u, global0.x), vec4<bool>(true, false, true, true)) << (vec4<u32>(69392u, _wgslsmith_mod_u32(u_input.b, 4294967295u), u_input.a.x, func_2(-44994i, -2147483647i, Struct_1(global1.a, global1.b), vec3<f32>(-465f, global1.b, global1.a.x))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-global1.b);
    var var_2 = -(i32(-1i) * -1i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(911f, -669f)), _wgslsmith_f_op_f32(f32(-1f) * -682f));
    var var_4 = abs(vec3<u32>(~(~(~u_input.b)), _wgslsmith_div_u32(reverseBits(reverseBits(0u)), firstLeadingBit(66791u | u_input.a.x)), 32491u));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 4294967295u, 44832u)) | select(vec4<u32>(var_4.x, 4294967295u, 18010u, var_4.x), vec4<u32>(var_4.x, global0.x, var_4.x, global0.x), vec4<bool>(false, false, false, true)), ~(~vec4<u32>(4294967295u, global0.x, u_input.a.x, var_4.x))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 1u, 19077u, var_4.x), vec4<u32>(u_input.b, 1742u, 55536u, 0u) ^ vec4<u32>(var_4.x, 63045u, 1u, u_input.a.x)))) ^ ~abs((vec4<u32>(0u, 0u, 0u, 4294967295u) ^ vec4<u32>(0u, global0.x, global0.x, 1u)) | firstLeadingBit(vec4<u32>(var_4.x, 30417u, global0.x, global0.x)));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global0 = select(~func_1().zwy ^ countOneBits(arg_0.zzy), arg_0.zxz, any(!vec3<bool>(any(vec3<bool>(false, true, false)), global1.b < global1.a.x, true)));
    var var_0 = -1515f;
    let var_1 = vec3<u32>(~(~(~(34410u ^ u_input.a.x))), abs(min(0u, ~countOneBits(48171u))), firstTrailingBit(~88404u));
    var var_2 = Struct_1(global1.a, global1.a.x);
    var var_3 = ~vec3<u32>(abs(firstTrailingBit(arg_0.x)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.x, 1u, 40731u), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 30704u, 76737u), vec3<u32>(u_input.b, 0u, 13582u)), -681f < var_2.b), _wgslsmith_mult_vec3_u32(var_1 & var_1, _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, arg_0.x, 33706u), vec3<u32>(arg_0.x, 1u, arg_0.x)))), 0u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.b, -1545f))) + _wgslsmith_f_op_f32(sign(-752f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(func_1() & abs(~vec4<u32>(4294967295u, 36279u, 55205u, global0.x))));
    var_0 = func_4(((~vec4<u32>(1u, 1u, global0.x, 93858u) & ~vec4<u32>(u_input.a.x, u_input.a.x, 34843u, 4294967295u)) ^ ~vec4<u32>(u_input.a.x, u_input.b, global0.x, 23124u)) << ((~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, 0u), vec4<u32>(global0.x, u_input.b, 4294967295u, u_input.a.x)) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, global0.x), vec3<u32>(u_input.b, u_input.a.x, global0.x)), 1u, ~global0.x, 38319u)) % vec4<u32>(32u)));
    global0 = vec3<u32>(_wgslsmith_add_u32(u_input.b, global0.x), firstTrailingBit(firstLeadingBit(11649u)), u_input.a.x);
    let var_1 = firstLeadingBit(75971u);
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(min(var_1, u_input.a.x), ~u_input.a.x, _wgslsmith_sub_u32(0u, var_1), ~0u), _wgslsmith_add_vec4_u32(vec4<u32>(22568u, 13427u, 18321u, 0u), min(vec4<u32>(4095u, var_1, var_1, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 44384u, 70554u)))) ^ 4294967295u;
    let var_3 = select(!(!any(vec2<bool>(true, true))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(23810i, -57779i), vec2<i32>(10355i, -1i)), ~vec2<i32>(-31143i, 0i)) <= select(_wgslsmith_clamp_i32(max(-2147483647i, -1i), i32(-1i) * -24512i, abs(-2147483647i)), reverseBits(0i), select(true, true, global1.b > var_0.b)), !((any(vec2<bool>(true, true)) | true) & true));
    var var_4 = min(firstTrailingBit(countOneBits(reverseBits(1i))), 0i);
    var var_5 = !select(select(select(vec2<bool>(var_3, var_3), select(vec2<bool>(var_3, var_3), vec2<bool>(true, false), vec2<bool>(var_3, var_3)), !vec2<bool>(var_3, var_3)), !vec2<bool>(var_3, var_3), true), !vec2<bool>(true, !var_3), vec2<bool>(false, !var_3 && (u_input.b < var_1)));
    let var_6 = func_4(vec4<u32>(var_1, ~_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(var_1, global0.x)), ~var_1, ~_wgslsmith_mod_u32(~global0.x, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-316f, global1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_6.b), _wgslsmith_f_op_f32(step(145f, var_6.a.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.b, _wgslsmith_f_op_f32(select(-1219f, var_6.a.x, false)), _wgslsmith_f_op_f32(-108f - var_6.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-277f, var_6.a.x, var_0.b)))))));
}


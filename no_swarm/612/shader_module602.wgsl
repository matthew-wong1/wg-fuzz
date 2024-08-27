struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = vec4<u32>(abs(u_input.a), 4294967295u, abs(u_input.a), min(~u_input.b.x, u_input.b.x));
    var_0 = _wgslsmith_div_vec4_u32(~(~abs(firstTrailingBit(vec4<u32>(u_input.a, 0u, var_0.x, 20572u)))), vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(var_0.x, 1u), firstTrailingBit(0u)), firstLeadingBit(4294967295u), 4294967295u, ~1u));
    var var_1 = _wgslsmith_mod_vec4_i32(-(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_3, arg_3, arg_3), vec4<i32>(1i, arg_3, arg_3, 2147483647i)) | max(vec4<i32>(arg_3, arg_3, 0i, arg_3), vec4<i32>(arg_3, 1i, -17918i, 26989i))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_3, arg_3, arg_3), -1i), firstLeadingBit(arg_3) | 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, -7844i), vec2<i32>(arg_3, arg_3)), ~arg_3), arg_3)) ^ vec4<i32>(-3418i, reverseBits(-3971i), arg_3 | arg_3, 2147483647i);
    let var_2 = arg_3;
    let var_3 = 830f;
    return all(vec3<bool>(arg_2, arg_2, true));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = arg_1.yx;
    var var_1 = select(vec4<bool>(true, true, func_3(Struct_1(true), Struct_1(true), false, -3962i), !arg_0.x), arg_0, select(arg_0, arg_0, !(!arg_0)));
    var var_2 = Struct_2(Struct_1(!arg_0.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -274f)))), 1460f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)));
    var var_4 = var_0.x;
    return Struct_2(Struct_1(false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_add_vec3_i32(~vec3<i32>(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-3144i, 37691i, -32741i), vec3<i32>(32236i, 0i, -1i)), -1i), ~1i), -_wgslsmith_add_vec3_i32(-select(vec3<i32>(15705i, 2147483647i, -75268i), vec3<i32>(-25040i, 9426i, -14548i), vec3<bool>(arg_0.a.a, arg_0.a.a, true)), vec3<i32>(min(38836i, -28837i), 0i, 1i)));
    return arg_1.a.a || all(select(vec4<bool>(false, true, any(vec2<bool>(arg_0.a.a, true)), true), vec4<bool>(true, select(arg_1.a.a, arg_1.a.a, arg_1.a.a), any(vec2<bool>(arg_1.a.a, arg_1.a.a)), !arg_0.a.a), select(!vec4<bool>(arg_1.a.a, arg_1.a.a, arg_0.a.a, arg_1.a.a), !vec4<bool>(false, arg_1.a.a, true, arg_1.a.a), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_sub_i32(50194i, -(~(i32(-1i) * -34541i))) < _wgslsmith_clamp_i32(-71i, _wgslsmith_add_i32(~(-22575i), -select(0i, 19732i, true)), 20590i);
    var var_1 = Struct_1(-623f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) - _wgslsmith_f_op_f32(-arg_1.x)));
    var var_2 = countOneBits(u_input.b.x);
    let var_3 = _wgslsmith_div_vec2_u32(max(_wgslsmith_div_vec2_u32(select(~vec2<u32>(u_input.b.x, 1u), vec2<u32>(59749u, 6006u) & vec2<u32>(u_input.a, u_input.b.x), !vec2<bool>(var_1.a, var_1.a)), vec2<u32>(1u, 0u)), u_input.b.yz), u_input.b.xx);
    var_1 = Struct_1(func_4(Struct_2(arg_0), func_2(!(!vec4<bool>(true, arg_0.a, var_1.a, true)), vec3<i32>(2147483647i, 10214i, ~1i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1606f))))));
    return var_1.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = Struct_2(arg_3);
    var var_2 = ~_wgslsmith_div_vec2_u32(u_input.b.yx, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, arg_2) ^ ~vec2<u32>(4294967295u, u_input.b.x), _wgslsmith_sub_vec2_u32(u_input.b.zz, select(vec2<u32>(arg_2, arg_2), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true)))));
    var_2 = u_input.b.yz;
    var var_3 = var_1.a;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, true))), vec4<bool>(any(vec4<bool>(false, true, false, true)), false, true, true), vec4<bool>(func_1(Struct_1(true), vec2<f32>(-1546f, 1189f)), true, true, u_input.a != u_input.a)), Struct_1(all(vec3<bool>(true, true, true))), ~(u_input.b.x & (11085u & u_input.a)), func_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), false), ~vec3<i32>(_wgslsmith_mod_i32(-1i, -14194i), _wgslsmith_add_i32(2147483647i, -1i), ~(-27920i))).a);
    let var_1 = func_5(!(!select(!vec4<bool>(var_0.a.a, var_0.a.a, false, var_0.a.a), !vec4<bool>(var_0.a.a, false, var_0.a.a, false), select(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, false), vec4<bool>(false, true, false, var_0.a.a), vec4<bool>(var_0.a.a, true, true, true)))), func_2(vec4<bool>(false, var_0.a.a, true, any(vec2<bool>(false, var_0.a.a)) || (var_0.a.a | var_0.a.a)), vec3<i32>(30083i, 37380i, ~max(40509i, 0i))).a, countOneBits(_wgslsmith_mult_u32(~(u_input.a ^ 36252u), u_input.b.x)), var_0.a);
    var var_2 = select(vec3<bool>((u_input.a ^ 25375u) != _wgslsmith_mod_u32(~1u, abs(u_input.a)), true, true), select(select(!vec3<bool>(var_0.a.a, true, var_0.a.a), select(vec3<bool>(true, false, var_0.a.a), select(vec3<bool>(var_0.a.a, var_1.a.a, var_0.a.a), vec3<bool>(false, true, var_1.a.a), vec3<bool>(var_1.a.a, var_1.a.a, true)), !vec3<bool>(false, false, var_0.a.a)), vec3<bool>(true, !var_0.a.a, any(vec3<bool>(var_1.a.a, var_1.a.a, false)))), !(!(!vec3<bool>(false, var_1.a.a, var_0.a.a))), true), (_wgslsmith_clamp_u32(4294967295u, reverseBits(1u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) & u_input.a) >= 59300u);
    let var_3 = firstTrailingBit(_wgslsmith_add_i32(-2147483647i, i32(-1i) * -12651i));
    let var_4 = Struct_2(var_1.a);
    var var_5 = var_1;
    var var_6 = vec3<i32>(-1i) * -vec3<i32>(var_3, _wgslsmith_add_i32(~9155i, _wgslsmith_sub_i32(var_3, var_3)), -16489i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(firstLeadingBit(var_6.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-70233i, var_6.x, var_6.x, -35315i), vec4<i32>(var_3, 76902i, -2147483647i, var_3)), -2147483647i), _wgslsmith_sub_i32(var_3, firstLeadingBit(3318i))));
}


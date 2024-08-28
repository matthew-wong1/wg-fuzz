struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> vec4<i32> {
    var var_0 = Struct_1(1f);
    var var_1 = _wgslsmith_div_u32(arg_0.x, arg_1 & _wgslsmith_sub_u32(_wgslsmith_div_u32(52647u, arg_0.x), _wgslsmith_clamp_u32(firstTrailingBit(arg_1), arg_1, ~arg_1)));
    var var_2 = Struct_1(-244f);
    let var_3 = Struct_1(1043f);
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a)));
    return vec4<i32>(abs(firstLeadingBit(-u_input.b)), ~min(_wgslsmith_add_i32(6679i, u_input.a) >> (~0u % 32u), 20236i), ~(-u_input.a), u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), countOneBits(countOneBits(1i)), ~countOneBits(select(2147483647i, u_input.b, true)));
    var_0 = ~(vec4<i32>(-1i, -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -1i, var_0.x, 2147483647i), func_3(vec2<u32>(66124u, 0u), 88781u)), u_input.a) & (abs(-vec4<i32>(var_0.x, -28315i, u_input.a, 0i)) & (abs(vec4<i32>(u_input.a, var_0.x, 0i, -2147483647i)) & (vec4<i32>(53857i, u_input.b, -9671i, u_input.a) | vec4<i32>(-5792i, var_0.x, u_input.a, -41028i)))));
    var var_1 = select(select(vec3<u32>(~0u, 1u, 4294967295u), vec3<u32>(_wgslsmith_add_u32(~44161u, 1u), 95200u, ~1u), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u)), abs(4294967295u) & _wgslsmith_clamp_u32(74874u, 0u, 15466u), ~(~43189u)), true);
    let var_2 = _wgslsmith_f_op_f32(abs(arg_0.a));
    var_1 = ~(~vec3<u32>(var_1.x, _wgslsmith_add_u32(var_1.x, 13630u), 4294967295u));
    return _wgslsmith_f_op_f32(sign(272f));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = 20561u;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.a, arg_2.a), arg_2.a, _wgslsmith_f_op_f32(-arg_2.a)))) * vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-arg_2.a)), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f)), _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(sign(arg_2.a)))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, 561f))) < -781f;
    let var_3 = (false & !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))) | true;
    return firstTrailingBit(select(vec2<i32>(-1i) * -countOneBits(vec2<i32>(0i, -2147483647i)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(-27769i, -2147483647i), vec2<i32>(33152i, -43450i))) & ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-15414i, 2147483647i)), vec2<bool>(false, var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1096f * _wgslsmith_f_op_f32(select(-1289f, -437f, true))), 1802f)) + -1025f);
    var var_1 = reverseBits(vec2<i32>(u_input.a, firstLeadingBit(-12299i)) & func_1(0u, vec3<u32>(42643u, 4294967295u, 9949u), Struct_1(var_0))) >> (~vec2<u32>(_wgslsmith_add_u32(16829u, 7282u) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5095u, 1u, 80315u), vec4<u32>(53209u, 1u, 0u, 9965u)), ~(~4294967295u)) % vec2<u32>(32u));
    var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(var_1.x >> (4294967295u % 32u), u_input.a << (5516u % 32u)), var_1.x), _wgslsmith_add_vec2_i32(~(-vec2<i32>(-1i, var_1.x)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(16491i, 63363i))) & -select(vec2<i32>(-1992i, 26067i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(-21865i, -3049i), true));
    var var_2 = 2147483647i;
    let var_3 = var_0;
    var_1 = abs(~(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, u_input.b), vec2<i32>(-12951i, -12519i)))));
    let var_4 = Struct_1(var_0);
    var_2 = u_input.b;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~1u))));
}


struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f))), _wgslsmith_f_op_f32(120f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-745f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1973f) * -1308f) != _wgslsmith_f_op_f32(floor(-1796f)), 0i);
    let var_1 = Struct_2(-countOneBits(-12081i));
    let var_2 = Struct_2(~var_1.a);
    var var_3 = Struct_1(325f, true, var_1.a);
    let var_4 = var_0;
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 4294967295u, u_input.a, ~4294967295u), vec4<u32>(~(~67485u), _wgslsmith_mod_u32(u_input.a, 39566u), u_input.a, u_input.a)), firstLeadingBit(max(abs(_wgslsmith_mult_u32(u_input.a, u_input.a)), select(105227u | u_input.a, 4294967295u << (0u % 32u), var_3.b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = ~(~u_input.a) | reverseBits(func_3());
    var var_1 = 0u;
    var var_2 = Struct_2(_wgslsmith_dot_vec2_i32(max(~abs(vec2<i32>(15692i, 36058i)), _wgslsmith_sub_vec2_i32(-arg_0.xz, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), arg_0.yw, vec2<i32>(-22037i, -1i)))), vec2<i32>(1i, 0i)));
    var_1 = u_input.a ^ 1u;
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-816f - _wgslsmith_f_op_f32(trunc(1f))), -154f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, 8039i, u_input.b), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 2147483647i, 60297i)), vec4<i32>(u_input.b, -2147483647i, -16284i, u_input.b), ~vec4<i32>(-2147483647i, u_input.b, 0i, u_input.b)));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(~(-67852i), _wgslsmith_mult_i32(countOneBits(var_0.x), 1i)), reverseBits(-2147483647i), _wgslsmith_dot_vec4_i32(select(var_0, vec4<i32>(max(u_input.b, var_0.x), u_input.b, var_0.x, _wgslsmith_mod_i32(var_0.x, u_input.b)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), _wgslsmith_clamp_vec4_i32(var_0, abs(var_0), _wgslsmith_div_vec4_i32(var_0, vec4<i32>(-11432i, -19540i, -2147483647i, var_0.x))) >> (firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 33210u, u_input.a, u_input.a))) % vec4<u32>(32u))), u_input.b);
    var var_2 = Struct_2(firstTrailingBit(1i));
    var var_3 = _wgslsmith_mult_i32(2147483647i | _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-19492i, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_1.x), vec2<i32>(-1427i, -2147483647i), var_1.wy) ^ -vec2<i32>(-13098i, var_2.a)), firstLeadingBit(2147483647i));
    var var_4 = Struct_2(~var_2.a);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), u_input.a == 22417u, var_4.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    let var_0 = 1332f;
    var var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0), true, arg_1);
    var_2 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(2147483647i, -2147483647i, 1i, var_2.c) << (vec4<u32>(arg_2.x, 7106u, u_input.a, 39538u) % vec4<u32>(32u)), vec2<bool>(var_2.b, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.b, -11673i, -1i, var_2.c), vec2<bool>(var_2.b, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1502f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, _wgslsmith_f_op_f32(var_2.a + 689f), _wgslsmith_div_f32(var_2.a, -1353f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2998f)), _wgslsmith_f_op_f32(exp2(var_0)), var_2.b | true)), var_0, _wgslsmith_f_op_f32(-var_0)))));
    var var_3 = _wgslsmith_f_op_f32(-922f * -363f);
    return u_input.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1606f, arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, 2948f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, 639f), vec3<f32>(682f, arg_0.a, -317f))))), vec3<f32>(180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1974f + -596f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1749f)), arg_0.a))), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1004f, _wgslsmith_f_op_f32(floor(var_0.x)), 1457f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(sign(arg_0.a)))))))));
    let var_2 = -2551f;
    var var_3 = ~(~u_input.a);
    let var_4 = 62277u;
    return any(vec2<bool>(false, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1569f)), 915f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(592f * -1000f), _wgslsmith_f_op_f32(1385f * -1412f))), false, ~1741i), !(!(!(!vec4<bool>(var_0, var_0, false, var_0)))), (_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -27938i, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, 36i))) << (~(vec4<u32>(u_input.a, 196u, 1u, 1u) << (vec4<u32>(u_input.a, u_input.a, 25546u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<i32>(firstLeadingBit(1i), func_1(~vec2<u32>(4294967295u, u_input.a), -2147483647i, vec3<u32>(u_input.a, u_input.a, u_input.a)), 7826i >> (u_input.a % 32u), ~func_1(vec2<u32>(u_input.a, u_input.a), u_input.b, vec3<u32>(1u, 1u, u_input.a))));
    let var_2 = firstTrailingBit(~firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(u_input.a, 202u, u_input.a))));
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(min(45111u, var_2.x), 71397u), vec2<u32>(1u, ~var_2.x)), u_input.a, _wgslsmith_add_u32(u_input.a, abs(~u_input.a) >> (u_input.a % 32u)), u_input.a);
    let var_4 = var_0;
    let var_5 = ~(~var_2.yx);
    let var_6 = Struct_2(u_input.b);
    let var_7 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1318f - -156f) + _wgslsmith_f_op_f32(max(-1225f, 1619f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -409f))))))), var_0, i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(805f * var_7.a), _wgslsmith_f_op_f32(floor(-837f)), var_7.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(592f + var_7.a), _wgslsmith_f_op_f32(-var_7.a), -1236f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-887f, var_7.a, var_7.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-665f, var_7.a, var_7.a) * vec3<f32>(-372f, var_7.a, var_7.a)), !vec3<bool>(var_7.b, true, var_4))))));
}


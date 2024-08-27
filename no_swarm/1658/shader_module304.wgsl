struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = -171f;
    var var_1 = arg_3.d;
    var_1 = arg_2.d;
    var var_2 = ~max(max(~(~vec4<u32>(0u, 0u, 1u, arg_2.e)), ~(~vec4<u32>(arg_3.e, 7204u, arg_3.e, 39191u))), vec4<u32>(reverseBits(abs(u_input.b)), 4294967295u, 4294967295u & firstTrailingBit(arg_3.e), _wgslsmith_mod_u32(u_input.b, abs(35600u))));
    var var_3 = max(countOneBits(1u), _wgslsmith_dot_vec2_u32(var_2.wy, var_2.xx));
    return _wgslsmith_add_i32(firstTrailingBit(var_1.a.x), -u_input.c);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    let var_0 = !any(vec4<bool>(max(arg_0, 1i) > (u_input.c | 19093i), any(select(vec4<bool>(false, false, true, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2), arg_2)), false, any(!vec3<bool>(arg_2, false, arg_2))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1215f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1280f, 1436f) + vec3<f32>(arg_1.x, arg_1.x, -207f)))))), vec2<bool>(!(!arg_2), true), Struct_1(vec4<i32>(_wgslsmith_div_i32(~(-1i), -u_input.c), u_input.a, 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 11469i, arg_3.x, u_input.c), vec4<i32>(0i, 40664i, u_input.a, 2147483647i)))), Struct_1(~(~arg_3)), firstLeadingBit(u_input.b));
    var var_2 = var_1.a.x;
    var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.x)), var_1.a.x, _wgslsmith_f_op_f32(ceil(arg_1.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-121f)), _wgslsmith_f_op_f32(-550f + arg_1.x), _wgslsmith_f_op_f32(max(254f, -461f))) + vec3<f32>(627f, var_1.a.x, 791f)), !vec3<bool>(var_1.b.x, true, arg_2))), var_1.b, var_1.d, Struct_1(abs(arg_3)), var_1.e);
    return _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.b, u_input.b, var_1.e) << (~vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u))), abs(vec3<u32>(var_3.e, u_input.b, ~_wgslsmith_div_u32(var_3.e, 4294967295u))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = ~_wgslsmith_div_u32(~u_input.b, u_input.b);
    var_0 = func_4(_wgslsmith_sub_i32(func_3(arg_0.b.x, ~1u, arg_0, Struct_2(vec3<f32>(323f, arg_0.a.x, 1000f), vec2<bool>(arg_0.b.x, arg_0.b.x), Struct_1(vec4<i32>(2147483647i, arg_0.c.a.x, 1i, arg_0.c.a.x)), arg_0.c, 0u)), -45140i) | _wgslsmith_mod_i32(-1i << (_wgslsmith_add_u32(3365u, u_input.b) % 32u), 4514i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1, 267f)), -1526f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_0.a.x * 1412f)))), all(select(!vec4<bool>(true, arg_0.b.x, false, arg_0.b.x), !vec4<bool>(arg_0.b.x, arg_0.b.x, true, true), ~u_input.c >= -2147483647i)), arg_0.d.a);
    var_0 = 1u;
    var var_1 = arg_0;
    return var_1.d.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(~0i, arg_0.a.x & -u_input.c) | func_2(Struct_2(vec3<f32>(1426f, 2674f, 150f), vec2<bool>(false, true), arg_2, arg_2, firstLeadingBit(arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(2220f, -384f, false))))), 24249i, arg_0.a.x);
    var_0 = arg_2.a.zyx;
    var_0 = vec3<i32>(func_3(true, u_input.b, Struct_2(vec3<f32>(1f, 1f, 1f), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), Struct_1(~vec4<i32>(24063i, arg_0.a.x, 8404i, 18076i)), arg_0, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.x, 14411u), reverseBits(5166u))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(-343f)), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(-580f + 1000f)), select(vec2<bool>(false, false), vec2<bool>(false, true), arg_0.a.x < arg_2.a.x), Struct_1(abs(vec4<i32>(-14829i, 0i, arg_2.a.x, -12919i))), Struct_1(firstLeadingBit(arg_0.a)), min(0u | u_input.b, reverseBits(48469u)))), _wgslsmith_clamp_i32(-1i, arg_0.a.x, firstLeadingBit(-59607i) ^ ~arg_2.a.x) << (_wgslsmith_mult_u32(firstLeadingBit(38640u), _wgslsmith_sub_u32(select(4294967295u, 25159u, true), u_input.b)) % 32u), -var_0.x);
    var_0 = vec3<i32>(u_input.a, ~(i32(-1i) * -arg_2.a.x), arg_0.a.x);
    var_0 = vec3<i32>(arg_2.a.x, -2147483647i, u_input.c);
    return Struct_2(vec3<f32>(1156f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(948f, 589f, false)))), -461f), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), arg_2, Struct_1(~arg_0.a), arg_1.x << (_wgslsmith_div_u32(abs(arg_1.x), ~37007u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec4<u32>(_wgslsmith_clamp_u32(1u | u_input.b, u_input.b, ~44166u), ~(~0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, 5043u), ~vec3<u32>(u_input.b, u_input.b, 80644u)), _wgslsmith_mult_u32(0u, ~u_input.b)) & max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 0u, 4294967295u), vec4<u32>(u_input.b, 1739u, u_input.b, 0u)), ~u_input.b, _wgslsmith_add_u32(9118u, 1u), _wgslsmith_mult_u32(u_input.b, 1u)), vec4<u32>(max(40345u, u_input.b), max(u_input.b, 53737u), u_input.b, _wgslsmith_clamp_u32(45726u, 67634u, u_input.b)))) ^ (~vec4<u32>(1u, ~4294967295u, max(u_input.b, 29826u), u_input.b) ^ vec4<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(0u, u_input.b)), 1u));
    var var_1 = !(_wgslsmith_f_op_f32(select(-297f, -1883f, 14785i <= firstTrailingBit(u_input.c))) >= -981f);
    var_1 = false | any(vec2<bool>(true, any(vec3<bool>(true, true, true))));
    var var_2 = func_1(Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(-49178i, 2147483647i, u_input.c, u_input.a), vec4<i32>(u_input.a, -31786i, u_input.a, u_input.c))), vec3<u32>(var_0.x, var_0.x, min(~(~1u), 0u | (63063u ^ var_0.x))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(u_input.a, i32(-1i) * -1i), -15059i ^ _wgslsmith_sub_i32(-18540i, u_input.a), -15237i, u_input.c << (16464u % 32u))));
    var var_3 = var_2.b.x;
    var_3 = false;
    var var_4 = select(var_0.xw, var_0.yz, vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x & 1u, ~_wgslsmith_dot_vec4_u32(min(var_0, var_0), var_0));
}


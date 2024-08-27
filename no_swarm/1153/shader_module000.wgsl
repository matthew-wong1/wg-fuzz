struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = -firstTrailingBit(var_0.a) | firstLeadingBit(~select(19955i, -arg_0.a, false));
    var_0 = Struct_1(firstLeadingBit(3596i), 2147483647i < var_0.a, 45984u);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1942f, -305f, _wgslsmith_f_op_f32(f32(-1f) * -1127f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(608f, 304f, -414f) - vec3<f32>(2427f, 421f, -824f)) - vec3<f32>(-465f, 427f, -985f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-274f, 441f, 168f), vec3<f32>(-680f, -469f, 1390f))))))));
    let var_3 = ~(-vec3<i32>(min(-1i, u_input.a.x), var_0.a, ~u_input.d));
    return ~(~1u);
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), true, _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>((4294967295u | arg_0.x) ^ 22651u, func_3(Struct_1(-42717i, true, 1u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2321f), 384f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1159f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1681f - 2634f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-484f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1231f, _wgslsmith_f_op_f32(select(-353f, _wgslsmith_f_op_f32(f32(-1f) * -2089f), all(vec3<bool>(false, var_0.b, var_0.b)))))), false));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1468f, 1000f, -1303f)))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-477f, var_1.x, var_1.x), vec3<f32>(var_1.x, 217f, var_1.x)))), vec3<f32>(-2601f, var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(381f)))))), false));
    var_2 = vec3<f32>(-540f, var_1.x, _wgslsmith_f_op_f32(-var_2.x));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(419f, 301f, var_2.x), vec3<f32>(-897f, 162f, var_2.x))))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -445f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = vec2<bool>(true, false);
    var_1 = vec2<bool>(~(~4294967295u) < var_0.c, all(!(!(!vec4<bool>(arg_0.b, true, false, var_1.x)))));
    var var_2 = !vec4<bool>(var_1.x, _wgslsmith_clamp_u32(1u, ~40473u, ~115390u) <= firstTrailingBit(~1u), false, true);
    var_2 = vec4<bool>(false, any(select(vec3<bool>(arg_0.b == var_0.b, true, any(var_2.xw)), vec3<bool>(func_2(vec3<u32>(arg_0.c, 4294967295u, arg_2.x)), 4294967295u <= u_input.e.x, var_0.a <= u_input.d), false)), var_2.x, var_2.x);
    return select(select(vec4<bool>(!any(vec4<bool>(false, false, true, var_0.b)), !var_0.b, !(arg_1.x > 1045f), false), !select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_1.x), !vec4<bool>(var_1.x, var_0.b, true, false), !vec4<bool>(false, var_1.x, false, true)), false), !(!select(vec4<bool>(var_2.x, true, false, var_2.x), !vec4<bool>(false, true, arg_0.b, var_2.x), true)), !all(select(select(vec4<bool>(arg_0.b, false, false, false), vec4<bool>(false, var_0.b, false, false), vec4<bool>(false, var_2.x, true, arg_0.b)), select(vec4<bool>(false, false, arg_0.b, false), vec4<bool>(true, true, var_0.b, true), vec4<bool>(false, var_1.x, false, false)), select(vec4<bool>(true, true, true, var_0.b), vec4<bool>(true, var_1.x, var_0.b, var_2.x), arg_0.b))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(select(~u_input.e.x, 4294967295u, true), arg_3.c, arg_3.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2495f, _wgslsmith_f_op_f32(abs(726f)), _wgslsmith_div_f32(var_1, var_1))), arg_2.xzx)));
    var var_3 = arg_1;
    let var_4 = arg_3;
    return Struct_1(i32(-1i) * -_wgslsmith_clamp_i32(50803i, min(var_4.a, 2147483647i), 1i), func_2(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 0u, 1u), 1u | max(10823u, var_4.c), arg_3.c)), ~select(~var_0.x, ~arg_3.c, all(!vec3<bool>(arg_0.x, arg_0.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((u_input.d ^ u_input.a.x) & 39265i, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true)))), u_input.b);
    var_0 = func_4(select(!(!vec4<bool>(var_0.b, var_0.b, true, false)), !select(!vec4<bool>(var_0.b, false, true, true), !vec4<bool>(var_0.b, false, true, var_0.b), var_0.b || var_0.b), !select(vec4<bool>(true, true, true, true), func_1(Struct_1(5493i, var_0.b, var_0.c), vec3<f32>(-459f, 625f, -1000f), vec2<u32>(var_0.c, 1u)), var_0.b)), u_input.a.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1539f, -1023f)))))), _wgslsmith_f_op_f32(836f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1642f, 925f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-468f, -1043f), 1210f)))), Struct_1(-1i, var_0.b != var_0.b, _wgslsmith_dot_vec3_u32(u_input.e.zxx, u_input.e.ywz)));
    var var_1 = _wgslsmith_f_op_f32(sign(1f)) >= 1f;
    let var_2 = var_0.b;
    var_0 = func_4(vec4<bool>(!var_0.b, (~20387u | u_input.e.x) > ~4294967295u, all(vec3<bool>(!var_0.b, var_0.a == 1i, var_0.b)), select(true, true, any(vec4<bool>(var_0.b, var_0.b, false, false))) || false), firstLeadingBit(-7638i) ^ (_wgslsmith_add_i32(~u_input.a.x, 1i) >> (firstTrailingBit(abs(18753u)) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1501f)), -250f, !var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f) * _wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -35536i, -1i), -vec4<i32>(var_0.a, 18371i, 45293i, var_0.a)), reverseBits(1i) << (~4294967295u % 32u)), true, u_input.b << (u_input.e.x % 32u)));
    var_1 = false;
    var_1 = false;
    var_1 = var_0.a > -abs(-_wgslsmith_clamp_i32(var_0.a, 0i, 1i));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a, u_input.a)) & vec3<i32>(_wgslsmith_clamp_i32(9992i, u_input.d, -24909i), ~0i, func_4(func_1(Struct_1(5395i, true, 1u), vec3<f32>(-1198f, var_3.x, 381f), vec2<u32>(1273u, 4294967295u)), firstLeadingBit(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-522f, var_3.x, var_3.x, var_3.x)), func_4(vec4<bool>(var_0.b, false, true, var_0.b), 2041i, vec4<f32>(var_3.x, -1276f, var_3.x, var_3.x), Struct_1(-38984i, var_0.b, 4294967295u))).a));
}


struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~0i, !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false))), u_input.b.wz, _wgslsmith_div_i32(~((u_input.b.x & u_input.b.x) | 42177i), abs(~(-1i))));
    let var_1 = var_0.b;
    let var_2 = -1056f;
    let var_3 = !vec2<bool>(var_1.x, true);
    var var_4 = any(vec4<bool>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -2147483647i, 8880i, -9314i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_0.d, u_input.b.x, 17435i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 24110i))) != 8561i, select(33726i > (-1i | var_0.d), !(!var_3.x), true), false, true));
    return firstTrailingBit(_wgslsmith_mod_u32(u_input.c, ~u_input.c));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-1937f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - arg_1)))));
    let var_1 = ~(~func_3());
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), 1318f)));
    var var_3 = u_input.b.x;
    var var_4 = false;
    return !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), true), all(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), -3674f > arg_1), max(-46274i, min(u_input.a, 6293i)) == _wgslsmith_clamp_i32(arg_2, _wgslsmith_mult_i32(2147483647i, arg_2), 11935i));
}

fn func_1() -> Struct_1 {
    let var_0 = select(func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-352f, 1064f, 1576f), vec3<f32>(-1000f, -1406f, -798f), vec3<bool>(true, true, false))) - _wgslsmith_div_vec3_f32(vec3<f32>(1344f, 504f, -520f), vec3<f32>(702f, -971f, 1029f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1856f, -1000f))))))), -662f, 0i), vec4<bool>(true, true, true == any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), true), (true || func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1447f, -947f, -621f)), -1775f, u_input.b.x).x) == func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, -1000f, 959f))), _wgslsmith_f_op_f32(2171f + -1159f), _wgslsmith_div_i32(-2147483647i, abs(u_input.a))).x);
    let var_1 = Struct_1(u_input.a, select(vec4<bool>(false, !var_0.x, var_0.x, var_0.x), var_0, vec4<bool>(false, var_0.x, any(var_0), !(!var_0.x))), u_input.b.zz, -2147483647i);
    var var_2 = reverseBits(vec4<u32>(u_input.c, _wgslsmith_add_u32(1u, ~40188u), _wgslsmith_div_u32(~(~34523u), u_input.c | _wgslsmith_add_u32(1u, u_input.c)), u_input.c | 97933u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-196f, 211f)));
    var_2 = ~(~min(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), ~vec4<u32>(var_2.x, 66762u, 0u, 4294967295u))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, u_input.c, u_input.c, var_2.x) & vec4<u32>(24956u, 4294967295u, u_input.c, 4294967295u)), abs(vec4<u32>(1u, u_input.c, var_2.x, 2985u) | vec4<u32>(u_input.c, 0u, 6805u, 20200u))), firstTrailingBit(~vec4<u32>(var_2.x, u_input.c, u_input.c, 1u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(16654u, var_2.x, u_input.c, 20372u), abs(vec4<u32>(u_input.c, var_2.x, var_2.x, u_input.c)), ~vec4<u32>(0u, 9744u, 23711u, u_input.c)), vec4<u32>(0u, 16221u, max(1u, 16379u), max(58969u, u_input.c))));
    return Struct_1(1i, var_1.b, var_1.c, -u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    let var_0 = Struct_1(u_input.b.x, arg_0.b, vec2<i32>(-1i) * -select(select(vec2<i32>(arg_0.d, 2147483647i), vec2<i32>(-2147483647i, u_input.a), arg_0.b.xz), select(vec2<i32>(0i, arg_0.c.x), u_input.b.zz, arg_0.b.x), true), func_1().d);
    let var_1 = countOneBits(vec3<i32>(-_wgslsmith_dot_vec4_i32(u_input.b, max(vec4<i32>(var_0.c.x, 0i, var_0.a, var_0.d), vec4<i32>(24556i, arg_0.c.x, u_input.a, u_input.b.x))), var_0.a, 74057i));
    let var_2 = var_0;
    let var_3 = var_2;
    var var_4 = true;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(~68258u >> (u_input.c % 32u), ~u_input.c) ^ select(_wgslsmith_sub_u32(u_input.c | u_input.c, u_input.c) ^ u_input.c, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.c, u_input.c)) & vec3<u32>(u_input.c, u_input.c, 71519u), ~(~vec3<u32>(u_input.c, u_input.c, 10178u))), false);
    let var_1 = Struct_1(~func_4(func_1(), ~firstTrailingBit(u_input.c), select(func_1().b, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), true)), !vec4<bool>(true, true, all(vec2<bool>(true, true)), false), vec2<i32>(1i ^ _wgslsmith_mod_i32(~(-1i), u_input.a << (4294967295u % 32u)), -_wgslsmith_dot_vec3_i32(u_input.b.wyy, ~vec3<i32>(u_input.a, -8641i, 1i))), _wgslsmith_div_i32(37413i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(53311u, u_input.c, 1u, 0u), vec4<u32>(var_0, 1u, 1u, u_input.c)), ~vec4<u32>(0u, 1u, 4294967295u, u_input.c)) % 32u), ~u_input.b.x));
    var var_2 = func_1();
    var var_3 = vec4<bool>(any(!var_1.b.zyy), max(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 1u), ~vec2<u32>(73699u, 34626u)), abs(14267u) | ~u_input.c) <= var_0, select(false, all(func_2(vec3<f32>(1442f, -787f, -1653f), _wgslsmith_f_op_f32(f32(-1f) * -583f), 88329i)), max(_wgslsmith_mult_u32(u_input.c, 13109u), _wgslsmith_dot_vec4_u32(vec4<u32>(16626u, var_0, 0u, 4294967295u), vec4<u32>(0u, var_0, u_input.c, var_0))) > var_0), false | func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(-382f)), -1000f, _wgslsmith_f_op_f32(floor(248f))), -1135f, _wgslsmith_mod_i32(~u_input.b.x, var_1.d >> (var_0 % 32u))).x);
    var_3 = !select(vec4<bool>(false, false, true, any(func_2(vec3<f32>(-491f, -212f, 1007f), -697f, 1446i).xzx)), var_2.b, func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(-808f)), _wgslsmith_f_op_f32(step(-1000f, -1000f)), 146f), -1802f, -func_4(Struct_1(77779i, vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_1.b.x), vec2<i32>(var_2.a, u_input.a), var_1.c.x), var_0, var_1.b)));
    let var_4 = Struct_1(firstLeadingBit(6337i), vec4<bool>((abs(71035u) << (min(var_0, 4294967295u) % 32u)) >= ~(~u_input.c), ~var_0 < var_0, var_2.b.x, var_3.x), vec2<i32>(var_2.a | var_2.c.x, var_1.d), max(var_2.c.x, -u_input.a));
    var var_5 = ~countOneBits(~(~vec2<u32>(70133u, u_input.c))) & ~firstTrailingBit(vec2<u32>(~22158u, u_input.c));
    var_3 = var_1.b;
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0, 12401u, 1u), var_0)));
}


struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = vec2<u32>(abs(arg_0.x), abs(var_0.d.x));
    var var_2 = arg_1.c.a.wyz;
    var_2 = !select(var_0.c.a.zxx, select(!(!vec3<bool>(true, true, arg_2.a.x)), arg_1.c.a.wxx, (18585u < arg_1.d.x) & true), var_0.c.a.wyz);
    var var_3 = (arg_2.a.x | (abs(64830u) < ~select(52029u, 4521u, false))) | var_0.c.a.x;
    return select(_wgslsmith_div_i32(~(-var_0.c.b), arg_2.b), max(min(arg_2.b, ~(-2147483647i)), abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -56471i, arg_1.c.b, 80925i), vec4<i32>(-26812i, arg_2.b, 2147483647i, var_0.c.b), true), vec4<i32>(2147483647i, var_0.c.b, -5262i, 1i)))), true);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    let var_0 = max(abs(u_input.a), vec4<i32>(arg_1.x, ~2147483647i, min(arg_2, func_3(vec2<u32>(4294967295u, 0u), Struct_2(arg_0, -1020f, Struct_1(vec4<bool>(true, false, true, true), arg_2), vec2<u32>(25003u, 0u)), Struct_1(vec4<bool>(true, false, false, false), 2147483647i))), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(15375i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, arg_1.x, arg_2), true), _wgslsmith_mod_vec3_i32(~vec3<i32>(15670i, arg_2, 31440i), min(arg_1, vec3<i32>(u_input.a.x, -6006i, 0i))))));
    let var_1 = Struct_3(u_input.a.wz, arg_0, Struct_1(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), -7651i));
    let var_2 = var_1.c;
    var var_3 = vec3<u32>(1u, 28026u, 32410u);
    var_3 = ~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_3.x), firstLeadingBit(~(~vec3<u32>(var_3.x, var_3.x, var_3.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_1.b) - 851f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = select(arg_0.a, select(vec4<bool>(true, select(false, arg_0.a.x, arg_0.a.x), arg_0.a.x, true), vec4<bool>(any(!arg_0.a), (arg_1 >= 332f) & all(arg_0.a), true, 1i >= _wgslsmith_mult_i32(arg_2.x, arg_2.x)), all(arg_0.a.yzy)), !arg_0.a);
    var var_1 = ~_wgslsmith_mod_i32(20722i, u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_1, -1936f), -605f, arg_1, arg_1)))))));
    let var_3 = false;
    let var_4 = var_3;
    return arg_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(arg_1, 19699u), arg_2.x, reverseBits(~arg_1));
    var_0 = vec3<u32>(_wgslsmith_sub_u32(~(~(~var_0.x)), ~62736u), abs(_wgslsmith_mod_u32(~var_0.x, firstTrailingBit(arg_2.x))) | var_0.x, abs(1u));
    var var_1 = abs(vec2<u32>(1u, arg_2.x));
    var var_2 = Struct_3(~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -16367i), vec2<i32>(83205i, arg_3.b)), u_input.a.yy), vec2<i32>(_wgslsmith_add_i32(arg_3.b, -851i), ~(-36765i))), -543f, arg_3);
    var var_3 = u_input.a.wzy;
    return func_4(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(step(-667f, var_2.b))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(1613f, u_input.a.yyy, -10189i)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(416f, 1189f)), 163f) < var_2.b)), u_input.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), func_1(vec2<bool>(false, false), 19273u, vec2<u32>(1u, 1u), Struct_1(vec4<bool>(false, true, true, false), u_input.a.x)), false), vec4<bool>(true, true, true, true)), -_wgslsmith_clamp_i32(max(u_input.a.x, u_input.a.x) << (4294967295u % 32u), -2147483647i, abs(2147483647i)));
    var_0 = Struct_1(var_0.a, -var_0.b);
    let var_1 = var_0.a.x;
    var var_2 = -1034f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(640f)))) + -463f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-252f + _wgslsmith_f_op_f32(trunc(-1072f))))));
    var_0 = Struct_1(!(!var_0.a), -_wgslsmith_dot_vec3_i32(-u_input.a.wxy >> (vec3<u32>(19519u, 33041u, 63068u) % vec3<u32>(32u)), vec3<i32>(var_0.b, var_0.b, u_input.a.x)));
    var_0 = Struct_1(!vec4<bool>(var_0.a.x, !func_1(vec2<bool>(var_0.a.x, var_0.a.x), 34165u, vec2<u32>(1u, 17978u), Struct_1(var_0.a, var_0.b)).x, true, any(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-var_0.b, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(70553i, u_input.a.x, u_input.a.x, var_0.b), u_input.a), -68323i)), vec4<i32>(_wgslsmith_div_i32(max(u_input.a.x, -16618i), 1i), u_input.a.x, -var_0.b, i32(-1i) * -u_input.a.x)));
    let var_3 = Struct_3(abs(u_input.a.wx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(786f, -475f)))))), Struct_1(!var_0.a, countOneBits(-873i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1161f, var_3.b, -640f, var_3.b))), vec4<f32>(-127f, var_3.b, -432f, -868f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1133f, var_3.b, var_3.b, var_3.b))))), vec2<u32>(~(~(~45248u)), 105617u), ~abs(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-var_3.b));
}


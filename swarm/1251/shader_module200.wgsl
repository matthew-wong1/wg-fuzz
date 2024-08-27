struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = firstTrailingBit(~(-(i32(-1i) * -2147483647i))) >= _wgslsmith_clamp_i32(max(2147483647i, ~(-3074i)) ^ select(-12348i, -33822i, true), -select(-8555i, countOneBits(2147483647i), true), -49204i);
    let var_1 = !select(!(!select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), var_0)), vec4<bool>((var_0 || false) & !var_0, var_0, var_0, (true & var_0) && true), vec4<bool>((arg_0.x ^ 25857u) <= ~arg_0.x, var_0, var_0, var_0));
    let var_2 = Struct_2(Struct_1(1874i, firstLeadingBit(~(~u_input.c.x)), var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, 466f, -594f, 391f))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), -select(vec3<i32>(84607i, 5936i, 23393i), vec3<i32>(9550i, -32170i, 1i), vec3<bool>(false, false, var_1.x)), firstTrailingBit(vec3<i32>(17772i, 1i, -1i)))), -618f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1330f, -169f, 728f, -1541f) + vec4<f32>(342f, 1692f, 194f, -155f))))));
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_3.c.x, 1643f, var_2.a.d.x)))) - var_2.c));
    return var_3.a.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, 1u, func_3(vec3<u32>(arg_0.a.b, arg_0.a.b, u_input.d)))), u_input.c << (u_input.c % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(f32(-1f) * -372f), arg_0.c.x)) - _wgslsmith_f_op_vec3_f32(-arg_0.c.wyz)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, arg_0.b, arg_0.b), arg_0.c)) - _wgslsmith_f_op_vec4_f32(floor(arg_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_1.x, -1759f, -781f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(arg_0.a.d)))));
    var var_3 = arg_0;
    let var_4 = 71217u;
    return arg_0.a;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~abs(4294967295u >> (abs(0u) % 32u));
    let var_1 = u_input.b;
    var var_2 = arg_0.d.x;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(trunc(1633f));
    return vec4<bool>(true && any(vec3<bool>(select(true, arg_0.c.x, arg_0.c.x), !arg_0.c.x, !arg_0.c.x)), arg_0.c.x, arg_0.c.x, true);
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(52504i, ~(~48536u), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(func_4(func_2(Struct_2(Struct_1(-25980i, 65154u, vec4<bool>(false, true, true, false), vec4<f32>(-596f, 2216f, 494f, -1814f), vec3<i32>(-8563i, -22214i, 26049i)), -567f, vec4<f32>(220f, -587f, 2048f, 453f)))), !func_4(Struct_1(107i, 0u, vec4<bool>(false, true, false, false), vec4<f32>(1311f, 1134f, -1000f, 713f), vec3<i32>(0i, 1i, 7849i))), true)), vec4<f32>(1f, _wgslsmith_f_op_f32(step(147f, _wgslsmith_f_op_f32(f32(-1f) * -750f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(995f)) + _wgslsmith_f_op_f32(1338f * 1533f))), 1000f), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-8450i, 46114i, -32472i, -9755i), vec4<i32>(1i, 1i, 1i, 1i)), min(~(~(-58653i)), firstTrailingBit(2147483647i)), firstTrailingBit(-select(-2147483647i, 1i, false))));
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(0u, var_0.b, ~_wgslsmith_sub_u32(~var_0.b, func_3(u_input.c))), ~u_input.d);
    let var_2 = var_0;
    let var_3 = func_2(Struct_2(var_2, 607f, var_0.d));
    var var_4 = _wgslsmith_add_u32(12001u, 1u) << (select(7698u, _wgslsmith_mult_u32(~var_2.b, 4294967295u), var_2.c.x) % 32u);
    return !vec4<bool>(false, false, all(!func_4(Struct_1(-41524i, u_input.c.x, var_0.c, var_3.d, var_3.e))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-min(-(i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(20027i, -1i), -vec2<i32>(40434i, -2147483647i))), ~max(1u, _wgslsmith_add_u32(u_input.b, u_input.b)) << (~1u % 32u), func_1(), vec4<f32>(357f, _wgslsmith_f_op_f32(min(func_2(Struct_2(Struct_1(-2147483647i, 20127u, vec4<bool>(false, true, false, true), vec4<f32>(683f, -421f, 158f, 1595f), vec3<i32>(-8881i, 1i, -1i)), -536f, vec4<f32>(1283f, 541f, -465f, -504f))).d.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(1583f))))), 200f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1277f + -188f)))), (_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-17464i, 1i, 2147483647i)), ~vec3<i32>(-20212i, 1058i, -1i)) | vec3<i32>(~2147483647i, 28460i, -42064i)) & vec3<i32>(1i, 1i, 1i));
    var_0 = Struct_1(-1i, 37986u, var_0.c, vec4<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), _wgslsmith_f_op_f32(trunc(var_0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, false))))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(-var_0.e, vec3<i32>(0i, 0i, var_0.a)), countOneBits(-24105i), i32(-1i) * -2147483647i));
    var var_1 = vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(~1u, var_0.b)), func_3(_wgslsmith_add_vec3_u32(~select(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), ~(vec3<u32>(u_input.b, var_0.b, 1u) | vec3<u32>(4294967295u, 4294967295u, var_0.b)))), 0u);
    let var_2 = countOneBits(~(max(-vec4<i32>(var_0.a, -2147483647i, 29835i, var_0.a), vec4<i32>(0i, var_0.a, -2147483647i, 2147483647i) << (vec4<u32>(var_0.b, var_0.b, var_1.x, var_1.x) % vec4<u32>(32u))) & vec4<i32>(73506i, func_2(Struct_2(Struct_1(var_0.a, var_1.x, vec4<bool>(false, false, var_0.c.x, true), vec4<f32>(-462f, var_0.d.x, -863f, -109f), vec3<i32>(1i, -2147483647i, 0i)), 128f, var_0.d)).e.x, -164i, 24777i)));
    let var_3 = vec4<bool>(var_0.c.x, true, all(vec2<bool>(true, true)), all(vec3<bool>(func_1().x, !func_2(Struct_2(Struct_1(var_2.x, 1u, vec4<bool>(false, true, false, var_0.c.x), var_0.d, var_2.ywx), var_0.d.x, vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))).c.x, !(var_0.c.x && false))));
    var var_4 = Struct_2(Struct_1(select(-4967i, -min(var_0.a, var_2.x), !var_3.x), var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)))), var_2.wzz), -1010f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(round(var_0.d.x)), var_0.d.x, var_0.d.x) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1412f, var_0.d.x, var_0.d.x, -175f) - var_0.d)))) - var_0.d));
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(ceil(var_4.a.d.x))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.a.d.x), 888f))));
}


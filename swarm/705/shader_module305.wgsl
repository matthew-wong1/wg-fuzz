struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = abs(_wgslsmith_div_vec4_u32(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 62820u, u_input.b)), 13699u, reverseBits(u_input.b), ~8957u)), countOneBits(vec4<u32>(u_input.b & u_input.b, ~u_input.b, 1u, 44219u & u_input.b))));
    let var_1 = all(!select(select(!arg_0, !vec4<bool>(arg_0.x, false, false, arg_0.x), true), !arg_0, false));
    var var_2 = _wgslsmith_add_vec2_i32(abs(vec2<i32>(arg_1.x, 2147483647i) ^ firstTrailingBit(arg_1.xz)) >> (vec2<u32>(firstTrailingBit(firstLeadingBit(1u)), var_0.x) % vec2<u32>(32u)), arg_1.xx);
    let var_3 = -2147483647i;
    var var_4 = max(4294967295u, firstLeadingBit(u_input.b));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-413f)), _wgslsmith_f_op_f32(floor(2529f)), _wgslsmith_f_op_f32(908f + -756f))))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> i32 {
    let var_0 = select(select(!(!(!arg_0.b)), !select(vec2<bool>(arg_0.c, arg_2.a.a), arg_0.b, !arg_2.a.a), true), arg_0.b, select(!select(vec2<bool>(true, false), select(arg_0.b, vec2<bool>(arg_0.b.x, arg_2.a.a), arg_0.b.x), !arg_0.c), select(vec2<bool>(arg_2.a.a, false), select(select(arg_0.b, arg_0.b, vec2<bool>(arg_0.c, arg_0.c)), !arg_0.b, !arg_0.b.x), !(arg_2.a.a || false)), !arg_0.b));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b, arg_0.d.x, 309f, arg_2.a.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, -1588f, arg_0.d.x, -524f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-arg_0.d.x), 1457f, -491f)))) - vec4<f32>(1393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1059f + arg_2.a.b) * _wgslsmith_f_op_f32(arg_2.a.b - _wgslsmith_f_op_f32(step(317f, 156f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f)), -868f));
    var var_3 = Struct_1(any(select(!vec3<bool>(false, false, var_0.x), select(!vec3<bool>(arg_0.b.x, arg_2.a.a, var_0.x), select(vec3<bool>(var_0.x, arg_2.a.a, arg_2.a.a), vec3<bool>(false, false, true), false), select(vec3<bool>(var_0.x, true, true), vec3<bool>(arg_0.c, false, false), arg_2.a.a)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f - arg_0.d.x)))));
    let var_4 = arg_2.a;
    return i32(-1i) * -1i;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(23496u, min(~u_input.b, ~u_input.b) << (0u % 32u)), 1i, Struct_1(true, -920f), Struct_1(any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(abs(-620f))), vec4<i32>(0i, arg_0, func_4(Struct_4(vec4<i32>(1i, 2147483647i, 1i, arg_1.x), vec2<bool>(true, true), true, _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(false, false, false, false), arg_1))), 0i, Struct_3(Struct_1(false, -324f), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, 4513u), vec4<u32>(1u, u_input.b, u_input.b, 8751u)))), arg_1.x));
    let var_1 = 0u;
    var var_2 = var_0.d.a || true;
    let var_3 = _wgslsmith_f_op_f32(-1402f - var_0.d.b);
    var var_4 = abs(~(-(~(~(-20546i)))));
    return Struct_3(Struct_1(!(false | (var_0.d.a || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b * -781f)))), abs(abs(vec4<u32>(u_input.b, 3257u, 0u, var_0.a)) & abs(vec4<u32>(var_0.a, 1u, var_0.a, var_0.a))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = func_2(-15159i, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1, arg_1), arg_1), ~(-arg_1)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 3488i, arg_1.x), vec3<i32>(-18798i, 1i, arg_1.x), vec3<i32>(2147483647i, arg_1.x, u_input.a)) >> (~vec3<u32>(u_input.b, 64998u, 0u) % vec3<u32>(32u)), -vec3<i32>(u_input.a, -40290i, u_input.a)), arg_1));
    var var_1 = _wgslsmith_div_u32(firstLeadingBit(5676u << (_wgslsmith_sub_u32(select(var_0.b.x, u_input.b, var_0.a.a), select(100643u, var_0.b.x, var_0.a.a)) % 32u)), var_0.b.x);
    var_1 = u_input.b;
    var var_2 = func_2(func_4(Struct_4(vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x) >> (var_0.b % vec4<u32>(32u)), vec2<bool>(true, var_0.a.a), true, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-747f, -1828f, arg_0.x), vec3<f32>(arg_0.x, 279f, var_0.a.b)))), firstLeadingBit(arg_1.x), var_0) ^ arg_1.x, vec3<i32>(reverseBits(arg_1.x), u_input.a, arg_1.x));
    var_2 = func_2(i32(-1i) * -20944i, vec3<i32>(arg_1.x, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.x), arg_1.zx), 0i), firstTrailingBit(u_input.a << (0u % 32u)) ^ u_input.a));
    return Struct_4(vec4<i32>(func_4(Struct_4(vec4<i32>(-34854i, 2147483647i, u_input.a, arg_1.x), vec2<bool>(var_0.a.a, false), true, vec3<f32>(869f, -1167f, 554f)), arg_1.x, func_2(arg_1.x, vec3<i32>(arg_1.x, u_input.a, arg_1.x))), -arg_1.x, 32079i, ~(~arg_1.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(1i, i32(-1i) * -1i, arg_1.x, -2147483647i), vec4<i32>(17823i, _wgslsmith_mult_i32(6460i, arg_1.x), arg_1.x & u_input.a, arg_1.x)), vec2<bool>(!var_0.a.a, true), !(~(~var_0.b.x) > ~firstTrailingBit(20026u)), arg_0.xwy);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(func_2(1i, vec3<i32>(countOneBits(arg_1.a.x), countOneBits(2147483647i), min(arg_2.a.x, _wgslsmith_add_i32(2147483647i, arg_2.a.x)))).a, ~(~select(vec4<u32>(4294967295u, 36551u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<bool>(true, arg_0, arg_1.b.x, arg_2.b.x)) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, 30537u, 1u), vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u))) % vec4<u32>(32u))));
    var var_1 = var_0.b.x;
    var var_2 = vec3<bool>((!all(vec2<bool>(true, var_0.a.a)) && false) && true, !any(arg_2.b), arg_0);
    var_1 = 4294967295u;
    var var_3 = var_0;
    return func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(countOneBits(20288i), arg_2.a.x), arg_1.a.x, _wgslsmith_sub_i32(arg_2.a.x, arg_2.a.x)), firstTrailingBit(arg_2.a.zzx)), arg_2.a.xzw).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_add_u32(u_input.b, countOneBits(50659u)), ~1i, Struct_1(!any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-672f + 722f))))), func_5(!(true == all(vec2<bool>(true, false))), Struct_4(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, -27503i, u_input.a, u_input.a)), countOneBits(vec4<i32>(1i, u_input.a, -33748i, -50982i))), vec2<bool>(true, true), -1549f <= _wgslsmith_f_op_f32(sign(181f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1504f, 909f, 2527f), vec3<f32>(-511f, -605f, 1110f), vec3<bool>(false, false, false))))), func_1(vec4<f32>(1f, 1f, 1f, 1f), ~abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))), ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 5889i, u_input.a)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-47640i, 32182i, -1i, u_input.a), vec4<i32>(-38398i, u_input.a, u_input.a, 3469i))));
    let var_1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.d.b, _wgslsmith_f_op_f32(max(var_0.d.b, -918f)))), 1f, _wgslsmith_f_op_f32(trunc(1263f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b))))), ~vec3<i32>(countOneBits(max(-2147483647i, -20637i)), -var_0.b, _wgslsmith_mult_i32(var_0.e.x, ~7319i))).a.ywy;
    let var_2 = true;
    let var_3 = !vec4<bool>(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.b, -192f, var_0.d.b, var_0.c.b), vec4<f32>(-577f, -2419f, -527f, 969f)), _wgslsmith_div_vec4_f32(vec4<f32>(972f, 1959f, 753f, -1000f), vec4<f32>(var_0.d.b, 911f, var_0.c.b, var_0.c.b))), var_0.e.wzx).c, any(select(vec3<bool>(var_0.d.a, var_2, var_2), !vec3<bool>(var_2, false, var_0.c.a), true)), var_0.d.b <= -1220f, any(vec2<bool>(true, true)));
    let var_4 = Struct_3(Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.b, var_0.c.b))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(2438u, 4294967295u, var_0.a, 4294967295u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 49368u)), vec4<u32>(u_input.b, 1u, u_input.b, 2169u)), firstTrailingBit(select(vec4<u32>(var_0.a, 42984u, 24759u, u_input.b), vec4<u32>(var_0.a, var_0.a, u_input.b, u_input.b), var_3)) << (vec4<u32>(~4294967295u, 4294967295u, func_2(var_0.b, var_0.e.ywx).b.x, ~var_0.a) % vec4<u32>(32u)), vec4<u32>(1u, ~abs(var_0.a), 1u, countOneBits(select(76841u, 28830u, false)))));
    let var_5 = _wgslsmith_mod_vec4_u32(vec4<u32>(select(func_2(1i, vec3<i32>(var_0.b, var_0.b, 0i)).b.x, 4294967295u, var_3.x), var_4.b.x | u_input.b, ~_wgslsmith_mult_u32(var_4.b.x, var_4.b.x), max(u_input.b, u_input.b) | reverseBits(u_input.b)), reverseBits(countOneBits(var_4.b))) << (var_4.b % vec4<u32>(32u));
    var var_6 = vec3<i32>(u_input.a, u_input.a, -(~firstLeadingBit(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, -395f, 1264f, var_0.c.b))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -1126f, 152f, 1000f))), select(select(vec4<bool>(false, false, var_4.a.a, var_2), var_3, false), vec4<bool>(var_4.a.a, false, false, false), vec4<bool>(false, true, false, var_3.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, var_4.a.b, 120f, 1171f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_4.a.b, 511f, var_4.a.b)))))), _wgslsmith_f_op_f32(min(-236f, var_4.a.b)), ~u_input.b, 0i);
}


struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = ~(~_wgslsmith_div_u32(4294967295u, u_input.b << (28224u % 32u)));
    let var_1 = max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, abs(u_input.b) & (u_input.b << (u_input.b % 32u))), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.b, 1u, 29465u, u_input.b), vec4<u32>(1u, 1u, u_input.b, 1325u), vec4<bool>(true, false, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.b, 21977u, u_input.b, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 42235u, 23131u, u_input.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), u_input.b, ~u_input.b, ~4294967295u), vec4<u32>(u_input.b, _wgslsmith_mod_u32(13537u, u_input.b), ~u_input.b, reverseBits(u_input.b)))), vec4<u32>(_wgslsmith_clamp_u32(abs(u_input.b), u_input.b, ~1u), u_input.b, u_input.b, u_input.b));
    let var_2 = Struct_1(any(!vec3<bool>(any(vec4<bool>(true, false, false, false)), false, true)));
    var_0 = ~reverseBits(_wgslsmith_mod_u32(~(u_input.b >> (u_input.b % 32u)), var_1.x));
    var var_3 = countOneBits(abs(-15317i));
    return select(!(!select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(true, var_2.a, var_2.a), !vec3<bool>(var_2.a, false, var_2.a))), vec3<bool>(true, var_1.x <= 7190u, 4294967295u != u_input.b), true);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = max(vec4<i32>(-2147483647i, arg_1.c.x, 0i, arg_2.x), arg_1.c);
    var var_1 = var_0.wz >> (_wgslsmith_sub_vec2_u32((~vec2<u32>(12467u, 1u) ^ select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 67373u), arg_0)) >> (~min(vec2<u32>(130059u, 0u), vec2<u32>(35994u, 1u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, ~0u), ~reverseBits(vec2<u32>(32815u, 72206u)))) % vec2<u32>(32u));
    var_1 = vec2<i32>(1i, select(392i, _wgslsmith_dot_vec2_i32(arg_1.c.wx, arg_1.c.xx) ^ arg_1.c.x, true)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u));
    let var_2 = arg_1.d;
    var var_3 = !func_3(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.x, 0i, var_1.x, 2147483647i), arg_1.c), ~abs(-2147483647i)));
    return Struct_1(!(!(false && func_3(vec2<i32>(2147483647i, 1i)).x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    let var_0 = vec2<bool>(func_2(any(!select(vec4<bool>(true, false, arg_1.a.a, false), vec4<bool>(true, arg_0.d.a, arg_1.a.a, true), vec4<bool>(false, arg_0.a.a, arg_0.d.a, arg_0.d.a))), Struct_2(arg_1.d, 948f, _wgslsmith_sub_vec4_i32(~arg_1.c, -vec4<i32>(arg_1.c.x, 0i, arg_0.c.x, 8175i)), func_2(45941i <= arg_1.c.x, arg_1, reverseBits(arg_1.c), 2147483647i)), _wgslsmith_add_vec4_i32(arg_1.c, vec4<i32>(3079i, -14225i, 37415i, -2147483647i)) << ((max(vec4<u32>(u_input.b, 15708u, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 1u)) >> (~vec4<u32>(1u, 4294967295u, 4710u, 19152u) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_1.c.x).a, arg_1.d.a);
    var var_1 = -_wgslsmith_mult_vec3_i32(~(-arg_1.c.zxy), vec3<i32>(-4883i, -17991i, u_input.a)) | ~(~(-max(arg_1.c.xwy, vec3<i32>(-82625i, arg_0.c.x, -1i))));
    var_1 = _wgslsmith_mod_vec3_i32(~(vec3<i32>(arg_0.c.x | var_1.x, ~(-50884i), -1i) >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 49646u)), vec3<u32>(4294967295u, u_input.b, u_input.b), func_3(vec2<i32>(-1i, u_input.a))) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(-1577i, arg_0.c.x), _wgslsmith_add_i32(abs(u_input.a ^ arg_0.c.x), ~_wgslsmith_add_i32(var_1.x, arg_0.c.x)), 2147483647i & arg_1.c.x));
    var var_2 = Struct_1(all(vec2<bool>(any(!vec4<bool>(arg_0.a.a, arg_0.d.a, true, true)), arg_1.d.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, 528f), vec2<f32>(arg_0.b, arg_1.b)) + vec2<f32>(arg_1.b, arg_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(276f, 1000f), vec2<f32>(-267f, arg_0.b), false)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b, arg_0.b))), var_0.x)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -1651f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_2) * vec2<f32>(arg_0.b, 234f)), vec2<f32>(arg_1.b, arg_1.b)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -870f))));
    return _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.c.xzw, -_wgslsmith_div_vec3_i32(arg_0.c.xxy, vec3<i32>(1i, -2147483647i, -10140i)) ^ arg_1.c.zzy), vec3<i32>(i32(-1i) * -var_1.x, _wgslsmith_sub_i32(arg_1.c.x, -24347i), i32(-1i) * -_wgslsmith_div_i32(-43873i, -2147483647i)));
}

fn func_1() -> bool {
    var var_0 = -vec3<i32>(u_input.a, -u_input.a ^ (_wgslsmith_sub_i32(-20452i, u_input.a) << ((u_input.b << (0u % 32u)) % 32u)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-36052i, 7530i, 2493i, -1i)));
    let var_1 = !all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(var_0.x >= var_0.x, any(vec2<bool>(false, true)), true, false)));
    let var_2 = _wgslsmith_f_op_f32(sign(1f));
    let var_3 = !vec4<bool>(all(!vec3<bool>(var_1, var_1, true)), true | all(vec3<bool>(true, true, true)), true, !(-244f == _wgslsmith_f_op_f32(trunc(318f))));
    var_0 = func_4(Struct_2(func_2(var_1, Struct_2(Struct_1(true), _wgslsmith_f_op_f32(-var_2), ~vec4<i32>(u_input.a, -2147483647i, var_0.x, 1i), Struct_1(var_1)), vec4<i32>(_wgslsmith_mod_i32(-1i, var_0.x), u_input.a, ~(-1i), -var_0.x), 1i), -1000f, vec4<i32>(-2147483647i, var_0.x, 0i, -u_input.a >> (28576u % 32u)), func_2(true, Struct_2(Struct_1(var_3.x), _wgslsmith_f_op_f32(floor(-920f)), min(vec4<i32>(u_input.a, u_input.a, -23634i, 2147483647i), vec4<i32>(var_0.x, 17327i, 19519i, var_0.x)), Struct_1(true)), _wgslsmith_add_vec4_i32(vec4<i32>(5856i, -8595i, var_0.x, 35240i), vec4<i32>(u_input.a, 1i, u_input.a, var_0.x) & vec4<i32>(u_input.a, 2147483647i, 2147483647i, -19186i)), -(u_input.a << (u_input.b % 32u)))), Struct_2(func_2(true, Struct_2(Struct_1(true), -1255f, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a, 88201i), vec4<i32>(32000i, var_0.x, u_input.a, u_input.a)), func_2(false, Struct_2(Struct_1(var_1), -995f, vec4<i32>(var_0.x, u_input.a, var_0.x, -1i), Struct_1(false)), vec4<i32>(var_0.x, -2147483647i, u_input.a, u_input.a), var_0.x)), ~vec4<i32>(u_input.a, u_input.a, -15195i, u_input.a), var_0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(-var_2)), 998f), -(~vec4<i32>(u_input.a, 18371i, var_0.x, 2147483647i)), func_2(!(u_input.a < 28990i), Struct_2(Struct_1(false), _wgslsmith_f_op_f32(step(1000f, var_2)), firstLeadingBit(vec4<i32>(1i, var_0.x, -44641i, u_input.a)), Struct_1(var_3.x)), vec4<i32>(-1i) * -vec4<i32>(var_0.x, u_input.a, -2147483647i, -1i), var_0.x)), _wgslsmith_f_op_f32(730f * var_2));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(func_1()), -125f, ~(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, u_input.a, 1i, 1i), min(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a))) >> (firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, 114376u, u_input.b, u_input.b))) % vec4<u32>(32u))), Struct_1(1u == firstLeadingBit(u_input.b)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(-903f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) + -516f))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(select(-1019f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(185f))))), false)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - var_1.x)), var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    var var_2 = func_2(true, Struct_2(var_0.d, var_0.b, -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c << (vec4<u32>(0u, 3067u, 25324u, u_input.b) % vec4<u32>(32u))), Struct_1(!func_2(true, Struct_2(Struct_1(var_0.d.a), var_1.x, var_0.c, var_0.d), vec4<i32>(2147483647i, 0i, 36157i, -13807i), var_0.c.x).a)), vec4<i32>(-32173i, _wgslsmith_mod_i32(u_input.a, -u_input.a), u_input.a, -u_input.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-func_4(var_0, Struct_2(func_2(var_0.d.a, var_0, var_0.c, 0i), var_0.b, countOneBits(vec4<i32>(26671i, u_input.a, 21073i, 2147483647i)), var_0.d), _wgslsmith_f_op_f32(875f + 1f)), select(vec2<u32>(~_wgslsmith_add_u32(1u, 78887u), u_input.b), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 6400u), vec2<u32>(u_input.b, u_input.b)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(15838u, u_input.b), vec2<u32>(u_input.b, 0u)))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), vec3<u32>(~u_input.b, reverseBits(~u_input.b | 52080u), countOneBits((11615u << (u_input.b % 32u)) | max(55067u, u_input.b))));
}


struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = ~2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1555f, -1509f, arg_0, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-726f, -496f, arg_0, arg_0), vec4<f32>(-177f, 1518f, -418f, arg_0)))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(215f)), _wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1844f * 248f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1416f, -592f, 383f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1028f, -335f, 1017f, 472f)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, _wgslsmith_f_op_f32(var_1.x + 887f), _wgslsmith_f_op_f32(618f - var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1714f)), var_1.x, _wgslsmith_f_op_f32(abs(-1484f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1.x, arg_0, 539f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, var_1.x, 728f) * vec4<f32>(arg_0, var_1.x, var_1.x, arg_0)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1192f, 1149f, 410f), vec4<f32>(var_1.x, 886f, arg_0, -1000f)))))));
    var var_2 = Struct_3(Struct_1(var_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), vec4<i32>(1i, i32(-1i) * -2147483647i, var_0, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, var_0 ^ var_0), vec3<i32>(_wgslsmith_div_i32(22787i, u_input.d.x), i32(-1i) * -5245i, var_0))));
    return -1000f;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(246f * 273f)))), _wgslsmith_f_op_f32(f32(-1f) * -736f))), u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, firstLeadingBit(u_input.a), _wgslsmith_mult_i32(u_input.a, -1i) & -43685i), ~u_input.c.yyz));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_f_op_f32(round(598f)), var_0.b))))));
    var_1 = 1780f;
    var_1 = var_0.b;
    return vec3<bool>((any(vec3<bool>(true, true, true)) & any(vec2<bool>(true, true))) | true, -1369f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-2401f - var_2.x)), true);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = 9974i;
    let var_1 = select(!(!func_2()), select(!select(vec3<bool>(arg_1.x, false, true), vec3<bool>(true, true, true), true), vec3<bool>(arg_1.x, arg_1.x, func_2().x), !vec3<bool>(all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !arg_1.x, arg_1.x)), true);
    var var_2 = 2147483647i;
    var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a) | _wgslsmith_clamp_i32(-2147483647i, u_input.d.x, -33729i), var_0, firstTrailingBit(var_0), -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(100354i, var_0, var_0, 2147483647i) | vec4<i32>(u_input.c.x, var_0, -1790i, u_input.c.x), ~vec4<i32>(28202i, -54825i, -10337i, -11209i)) >> (vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b), ~u_input.b, 34270u, ~12101u) % vec4<u32>(32u)));
    var_2 = firstTrailingBit(37925i);
    return Struct_1(~(firstLeadingBit(~u_input.d.x) | _wgslsmith_sub_i32(var_0, u_input.c.x | var_0)), -431f, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, firstTrailingBit(-29846i), -u_input.d.x, u_input.c.x), select(abs(vec4<i32>(-2147483647i, -1i, u_input.d.x, u_input.a)), ~u_input.c, !arg_1.x)), vec4<i32>(-9352i, u_input.c.x, 2147483647i, u_input.a)), vec3<i32>(1i, countOneBits(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 18728i, 0i, -54040i) & u_input.c, ~vec4<i32>(var_0, 18769i, -18696i, var_0))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = 1026f;
    var var_1 = countOneBits(arg_1.a.d.x);
    var_1 = 2147483647i;
    let var_2 = 4294967295u ^ _wgslsmith_add_u32(u_input.b, 53565u);
    let var_3 = u_input.b;
    return arg_1.a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.c.x;
    var_0 = 30145i;
    var var_1 = !vec3<bool>(!(!all(vec2<bool>(true, false))), true, true);
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), func_1(arg_0.b, !var_1.yy).b))), vec2<bool>(var_1.x, true));
    var var_3 = _wgslsmith_f_op_f32(493f - arg_0.b);
    return func_1(660f, !vec2<bool>(var_1.x, var_1.x | !var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(Struct_2(func_1(_wgslsmith_f_op_f32(-1406f * -1511f), vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(round(534f))), func_1(_wgslsmith_f_op_f32(step(106f, 140f)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, 547f)), func_1(_wgslsmith_f_op_f32(309f + 1000f), vec2<bool>(true, false))), Struct_3(Struct_1(_wgslsmith_mult_i32(0i, -2147483647i), 653f, vec4<i32>(u_input.d.x, 1i, u_input.a, 26896i) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) % vec4<u32>(32u)), max(vec3<i32>(-50023i, 1i, u_input.a), u_input.d)))));
    var var_1 = func_2();
    var_1 = vec3<bool>(var_1.x, any(vec3<bool>(var_1.x, true, !(var_1.x | false))), true);
    let var_2 = vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(func_5(var_0).c >> (vec4<u32>(~u_input.b, 1u, abs(u_input.b), 34446u) % vec4<u32>(32u)), ~u_input.c), -1i);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(287f, reverseBits(reverseBits(-(var_0.d.zy & var_0.d.zz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-384f, _wgslsmith_f_op_f32(ceil(-642f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -229f) - vec2<f32>(394f, -578f)))))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), ~vec4<u32>(u_input.b, 13767u, 2728u, u_input.b), vec4<u32>(u_input.b, 6101u, u_input.b, u_input.b)) ^ firstTrailingBit(~vec4<u32>(4294967295u, 4294967295u, u_input.b, 7684u)), abs((vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) & vec4<u32>(u_input.b, 7722u, 1399u, u_input.b)) << (vec4<u32>(0u, u_input.b, 1u, u_input.b) % vec4<u32>(32u)))), -52775i);
}


struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> u32 {
    let var_0 = countOneBits(-vec4<i32>(arg_0.b, arg_1.c.c.x, 0i, _wgslsmith_dot_vec4_i32(arg_1.c.e, _wgslsmith_mod_vec4_i32(arg_1.c.e, arg_1.b.e))));
    var var_1 = ~abs(max(arg_1.c.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, arg_2), select(vec2<i32>(arg_2, 1i), arg_1.c.e.zz, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), arg_0.c.a.x) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.x, 1624f), arg_0.c.a)), _wgslsmith_f_op_vec2_f32(select(arg_0.c.a, vec2<f32>(-1138f, arg_1.b.a), vec2<bool>(false, arg_1.b.d))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.a.x + -296f), _wgslsmith_f_op_f32(abs(arg_1.b.a))))));
    var_1 = arg_0.b;
    var_1 = _wgslsmith_dot_vec3_i32((vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-4634i, 0i, var_0.x), var_0.zyy, vec3<i32>(u_input.e, -32949i, u_input.a))) & _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1.c.b.x, var_0.x, 1i), min(~vec3<i32>(var_0.x, arg_1.c.e.x, arg_2), var_0.wxy)), _wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(-31683i, arg_0.b, var_0.x)), var_0.xxz));
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)) * vec2<f32>(-934f, global0.a.x)))), u_input.b.xx);
    let var_0 = select(vec4<i32>(u_input.e | abs(u_input.a), ~12810i, 2147483647i, 1i), vec4<i32>(1i & _wgslsmith_div_i32(u_input.e, -14093i), u_input.a, u_input.e, u_input.e), true | all(vec4<bool>(true, true, true, false))) >> (~max(~vec4<u32>(u_input.d.x, global0.b.x, global0.b.x, u_input.b.x), firstTrailingBit(vec4<u32>(0u, global0.b.x, global0.b.x, 4294967295u) << (vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), ~global0.b);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), global0.a.x)), global0.b | global0.b);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-890f, -519f)))), vec2<bool>(true, true))) + global0.a), vec2<u32>(global0.b.x, func_3(Struct_3(~vec4<u32>(4294967295u, 0u, 23502u, 4294967295u), u_input.a, Struct_2(vec2<f32>(global0.a.x, 958f), vec2<u32>(global0.b.x, 0u))), Struct_4(~u_input.c, Struct_1(276f, vec3<i32>(var_0.x, 1i, var_0.x), vec3<i32>(u_input.e, 591i, 27976i), true, var_0), Struct_1(global0.a.x, var_0.yzx, var_0.wxz, true, vec4<i32>(2147483647i, u_input.e, -32141i, 0i)), true), ~min(var_0.x, -1i))));
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, 1478f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)), global0.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-532f, global0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, global0.a.x)))))), vec2<u32>(24774u, 4294967295u) << (_wgslsmith_mod_vec2_u32(u_input.b.yx, ~vec2<u32>(4294967295u, 14115u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = -363f;
    let var_1 = var_0;
    global0 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1060f, -535f, arg_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_0, global0.a.x, -103f), vec4<f32>(global0.a.x, var_0, var_0, -1418f))))) * vec4<f32>(-1197f, -116f, _wgslsmith_f_op_f32(-var_1), -220f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1256f, var_1, -1005f, global0.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, 683f, -642f, global0.a.x))), vec4<f32>(739f, -1000f, -1647f, _wgslsmith_f_op_f32(-var_1)))))));
    let var_3 = Struct_4(1u, Struct_1(var_2.x, firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(10884i, -2147483647i, u_input.e) << (vec3<u32>(25951u, 26090u, u_input.c) % vec3<u32>(32u)), vec3<i32>(u_input.e, 2147483647i, u_input.e) >> (u_input.b % vec3<u32>(32u)))), countOneBits(vec3<i32>(u_input.e, 1i, -46800i)), any(vec2<bool>(all(vec3<bool>(true, true, true)), true)), abs(vec4<i32>(50217i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 71501i, u_input.e), vec3<i32>(u_input.a, u_input.a, u_input.e)), -1i, -16208i))), Struct_1(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-global0.a.x)), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-2147483647i, u_input.e, 2147483647i)), vec3<i32>((u_input.e << (33211u % 32u)) | (2147483647i >> (u_input.c % 32u)), _wgslsmith_add_i32(16755i, ~(-1i)), countOneBits(u_input.e)), any(vec2<bool>(true, true)), select(~(~vec4<i32>(u_input.a, 0i, u_input.e, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(42036i, u_input.e, -4827i, u_input.e), vec4<i32>(2147483647i, -1i, -13462i, u_input.e)) << (~vec4<u32>(global0.b.x, 2503u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))), select(all(vec3<bool>(true, true, true)) & any(vec3<bool>(true, true, true)), global0.a.x <= _wgslsmith_f_op_f32(global0.a.x * var_1), !(!select(true, true, true))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.wx)), abs(max(reverseBits(firstTrailingBit(vec2<u32>(1896u, 1u))), func_2().b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - global0.a.x), -873f)))), ~(vec2<u32>(~4294967295u, _wgslsmith_div_u32(global0.b.x, global0.b.x)) ^ countOneBits(~vec2<u32>(37219u, u_input.d.x))));
    global0 = func_1(_wgslsmith_f_op_f32(-global0.a.x));
    global0 = func_2();
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.x, global0.a.x))) - func_1(1f).a))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x | u_input.c, 52551u), reverseBits(~u_input.b.zz))));
    let var_0 = ~u_input.b.x;
    let var_1 = (firstTrailingBit(select(vec3<i32>(-8174i, -48389i, u_input.a), -vec3<i32>(u_input.e, u_input.a, 2147483647i), vec3<bool>(false, false, true))) << (vec3<u32>(4294967295u, 0u, u_input.b.x) % vec3<u32>(32u))) >> (~vec3<u32>(~u_input.b.x << (_wgslsmith_sub_u32(u_input.d.x, global0.b.x) % 32u), ~(~var_0), ~1u) % vec3<u32>(32u));
    let var_2 = abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, 1u, var_0, 1u)), abs(vec4<u32>(0u, 1u, var_0, var_0))), global0.b.x >> (func_2().b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_1);
}


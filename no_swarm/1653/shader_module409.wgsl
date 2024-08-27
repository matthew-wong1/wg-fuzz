struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(34222u, -23176i, vec3<f32>(-1586f, 2473f, -410f), true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b, min(u_input.c.x, abs(global2.b)), ~reverseBits(0i)), vec3<i32>(u_input.c.x, reverseBits(firstTrailingBit(global1.b)), i32(-1i) * -u_input.c.x), vec3<i32>(~global1.b & select(global2.b, -1i, arg_0.x), u_input.c.x, countOneBits(u_input.c.x))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(max(0i, -1i), ~global2.b, -global1.b), ~u_input.c.xyx), abs(u_input.c.zzz)));
    var var_1 = vec4<i32>(-var_0.x, u_input.c.x, abs(firstTrailingBit(firstTrailingBit(1i))), u_input.d);
    var var_2 = -((vec2<i32>(i32(-1i) * -14595i, _wgslsmith_mult_i32(2147483647i, var_1.x)) >> (~max(u_input.a, vec2<u32>(45088u, 9155u)) % vec2<u32>(32u))) >> (countOneBits(vec2<u32>(4294967295u, _wgslsmith_mult_u32(9255u, 26216u))) % vec2<u32>(32u)));
    global0 = false;
    global1 = Struct_2(u_input.b, 1i, global1.c, all(arg_0.wz));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1689f, global2.c.x) - 1136f))) * 477f), _wgslsmith_f_op_f32(-1000f * -1111f));
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(~38741u, -(u_input.c << (~vec4<u32>(4294967295u, 4294967295u, global2.a, global1.a) % vec4<u32>(32u))) & max(u_input.c, -u_input.c));
    global0 = global1.d;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.c.yy), _wgslsmith_f_op_vec2_f32(-global1.c.xx))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.x, -336f)))))));
    global0 = !any(vec3<bool>(false, true, !(var_0.a >= var_0.a)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-271f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -691f))), var_1.x))), global1.c.x, global2.c.x, _wgslsmith_f_op_f32(floor(var_1.x)));
    return 17051u;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(func_4(Struct_2(~abs(u_input.b), global1.b, _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, global2.d, global1.d, true))), true)), ~countOneBits(u_input.d), vec3<f32>(global1.c.x, _wgslsmith_f_op_vec3_f32(func_3(!select(vec4<bool>(true, global1.d, global1.d, global1.d), vec4<bool>(false, true, true, global2.d), vec4<bool>(false, global1.d, true, global1.d)))).x, 1250f), true);
    var var_1 = Struct_2(global1.a, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, 1i, 1i, -1i), u_input.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, global2.c.x, -1134f), var_0.c))))), all(vec3<bool>(var_0.d, true && any(vec4<bool>(global1.d, false, global1.d, false)), all(select(vec2<bool>(true, true), vec2<bool>(global2.d, true), vec2<bool>(var_0.d, true))))));
    var_0 = Struct_2(_wgslsmith_sub_u32(min(86885u, _wgslsmith_sub_u32(u_input.b, 46685u)), 0u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(9908i, max(-12736i, -41108i), _wgslsmith_clamp_i32(global2.b, 2147483647i, 0i), i32(-1i) * -64428i), select(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), -u_input.c, any(vec2<bool>(false, true)))), _wgslsmith_add_vec4_i32(abs(-vec4<i32>(var_1.b, u_input.c.x, 0i, u_input.d)), u_input.c >> (~vec4<u32>(var_1.a, global2.a, 1u, 29814u) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_div_f32(-100f, global2.c.x), 868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)))), 20079u == max(_wgslsmith_sub_u32(max(11468u, var_0.a), ~var_1.a), firstLeadingBit(0u)));
    var var_2 = select(countOneBits(~select(~vec4<u32>(arg_0, var_0.a, arg_0, var_0.a), ~vec4<u32>(1u, 122177u, u_input.b, var_1.a), !vec4<bool>(global1.d, false, global1.d, global1.d))), ~countOneBits(vec4<u32>(var_1.a, arg_0, global1.a, global2.a) ^ vec4<u32>(u_input.a.x, 0u, 51995u, var_0.a)), vec4<bool>(global1.d, true, true, global2.c.x == _wgslsmith_f_op_f32(f32(-1f) * -462f)));
    let var_3 = Struct_2(firstTrailingBit(var_1.a), 0i, var_0.c, false);
    return var_3;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = ~(~reverseBits(vec4<u32>(arg_2.a, _wgslsmith_sub_u32(41698u, global2.a), _wgslsmith_div_u32(arg_2.a, 1u), 76367u)));
    global0 = false;
    var var_1 = func_2(arg_1.a, _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(-global2.c.x))));
    var_1 = arg_2;
    var var_2 = arg_2;
    return all(!(!vec2<bool>(arg_0.x, !arg_0.x)));
}

fn func_1() -> u32 {
    let var_0 = !select(vec4<bool>(true, func_5(!vec4<bool>(global1.d, false, false, false), func_2(global2.a, global1.c.x), Struct_2(4294967295u, u_input.c.x, global2.c, global2.d)), false, global1.d), select(select(vec4<bool>(false, false, global1.d, global2.d), vec4<bool>(global2.d, true, global2.d, false), true), !(!vec4<bool>(false, global1.d, global2.d, global2.d)), max(global2.a, global2.a) > 5551u), func_2(~u_input.a.x, -292f).d && true);
    global1 = Struct_2(global2.a, global2.b, global1.c, false);
    global2 = func_2(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-653f, _wgslsmith_f_op_f32(-582f + -645f))))));
    let var_1 = global2.d;
    var var_2 = global2.a;
    return _wgslsmith_sub_u32(reverseBits(global1.a), _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_clamp_u32(1u, global2.a, 12029u), _wgslsmith_sub_u32(global1.a, u_input.b), var_0.x), 18195u, global2.a, ~(~14266u)), vec4<u32>(global2.a, _wgslsmith_sub_u32(24198u, u_input.b), ~global1.a, max(1u, 25352u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true || global1.d;
    global0 = false;
    var var_0 = select((~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) | func_1()) < ~17695u, false, true);
    global1 = Struct_2(global2.a, -18007i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, 801f, 108f), vec3<f32>(-705f, global2.c.x, -1681f), global1.d)))) - vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(global1.c.x - -1506f), 618f))), true);
    var var_1 = Struct_2(~(select(0u, ~u_input.a.x, any(vec4<bool>(false, global2.d, global1.d, true))) << ((~2788u >> (_wgslsmith_div_u32(global1.a, 6686u) % 32u)) % 32u)), u_input.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -687f, 2490f))))))), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -373f, var_1.c.x, -1066f)), vec4<f32>(var_1.c.x, global2.c.x, var_1.c.x, global2.c.x)), vec4<f32>(global1.c.x, var_1.c.x, -1713f, global2.c.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, var_1.c.x, global2.c.x, 711f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, 153f, global2.c.x, -1064f)))))));
}


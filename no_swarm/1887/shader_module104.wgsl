struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-634f)) - _wgslsmith_f_op_f32(f32(-1f) * -1860f)))), _wgslsmith_f_op_f32(sign(1000f))), global0.a.x, !(!select(select(vec4<bool>(global0.d, global0.d, global0.d, global0.e), vec4<bool>(false, global0.e, global0.d, global0.e), global0.d), select(vec4<bool>(global0.e, true, false, global0.d), vec4<bool>(true, true, false, global0.d), false), true)));
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, 1000f, -963f), global0.a))), global0.a), 26220u, vec2<i32>(-17393i, ~min(_wgslsmith_dot_vec3_i32(u_input.b.xzy, u_input.b.zyx), ~global0.c.x)), false, var_0.c.x);
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(210f, -485f)) - _wgslsmith_f_op_f32(select(-1326f, var_0.b, global0.e))), var_0.b, 1889f), ~max(_wgslsmith_sub_u32(global0.b, arg_0), 20300u), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.x, ~2147483647i), ~vec2<i32>(-30202i, u_input.a.x)), select(global0.e, true, true), 0i >= u_input.a.x), abs(vec4<i32>(reverseBits(_wgslsmith_add_i32(-2147483647i, global0.c.x)), u_input.a.x, -47393i, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a))), ~arg_1, -vec2<i32>(_wgslsmith_sub_i32(-1i, 4409i), 1i), var_0.c.x, !all(vec2<bool>(true, false))));
    let var_2 = any(vec4<bool>(global0.e, select(false, var_0.c.x, var_0.c.x), all(select(select(var_0.c.zx, vec2<bool>(var_0.c.x, true), global0.e), select(var_0.c.xx, vec2<bool>(false, true), vec2<bool>(var_0.c.x, var_0.c.x)), select(vec2<bool>(global0.e, var_1.c.e), var_0.c.xw, var_0.c.zw))), true));
    var var_3 = var_1.a;
    return var_1.a.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - global0.a.x), vec4<bool>(all(!(!vec3<bool>(false, true, arg_0.e))), any(!vec4<bool>(true, true, false, arg_0.e)), _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.b, arg_0.b), 1u) <= global0.b, arg_2));
    var var_1 = vec4<bool>(!all(!vec3<bool>(var_0.c.x, true, true)), false, true, true);
    var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-var_0.b) != _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(func_3(global0.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.b, arg_0.b), arg_0.b)))));
    var_1 = vec4<bool>(!any(vec2<bool>(global0.e, all(vec2<bool>(true, false)))), any(select(vec2<bool>(arg_0.e, global0.e), !var_0.c.zz, !arg_0.e)) || true, !(-(i32(-1i) * -1i) <= (firstLeadingBit(0i) << (_wgslsmith_sub_u32(arg_0.b, arg_0.b) % 32u))), all(var_0.c));
    return Struct_2(arg_0, u_input.b, arg_0);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2(Struct_1(vec3<f32>(-1205f, arg_0.c.a.x, global0.a.x), 42405u ^ arg_0.a.b, _wgslsmith_div_vec2_i32(vec2<i32>(global0.c.x, 73222i), u_input.b.zy), !global0.e, any(vec3<bool>(false, false, arg_0.c.d))), u_input.b.xyy ^ ~arg_0.b.zwy, true).a.a));
    var var_1 = global0.a.x;
    let var_2 = firstTrailingBit(abs(~vec3<u32>(global0.b, 0u, 0u))) << (vec3<u32>(1u, global0.b, countOneBits(firstTrailingBit(max(arg_0.c.b, 1u)))) % vec3<u32>(32u));
    var var_3 = func_2(arg_0.c, u_input.b.yyz, !(_wgslsmith_mult_i32(countOneBits(global0.c.x), ~1i) < 55321i));
    let var_4 = !(!vec4<bool>(u_input.a.x <= _wgslsmith_div_i32(var_3.b.x, global0.c.x), false, !(!var_3.a.e), false));
    return arg_0.a;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = -(~_wgslsmith_add_i32(-arg_2.a.c.x, reverseBits(i32(-1i) * -25174i)));
    var var_2 = func_4(func_2(arg_3.a, abs(vec3<i32>(global0.c.x, arg_2.b.x, firstTrailingBit(u_input.b.x))), arg_2.c.d));
    var_0 = _wgslsmith_mod_u32(global0.b, select(global0.b, arg_2.c.b, true));
    var var_3 = vec3<i32>(arg_3.a.c.x, func_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 216f, 1249f) + vec3<f32>(-979f, arg_3.c.a.x, arg_0)), reverseBits(var_2.b), max(arg_3.b.yw, global0.c), func_4(arg_2).d, select(global0.e, true, false)), vec3<i32>(-23164i & global0.c.x, -arg_2.b.x, u_input.b.x), arg_1.x).c, vec3<i32>(arg_3.b.x, -47440i, 2147483647i), true).a.c.x, -_wgslsmith_clamp_i32(max(arg_3.c.c.x, 2147483647i) ^ arg_3.b.x, _wgslsmith_div_i32(arg_3.a.c.x, 15120i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, arg_3.c.c.x, -1i, 19709i), max(vec4<i32>(arg_3.c.c.x, -29632i, var_2.c.x, -55024i), arg_2.b))));
    return !vec4<bool>(arg_1.x, arg_1.x, true, (660f != arg_0) & false);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_3(arg_0.b, -802f, vec4<bool>(true, !global0.e, arg_2.d, !(_wgslsmith_div_f32(967f, -1235f) <= func_4(Struct_2(Struct_1(arg_2.a, 68034u, vec2<i32>(global0.c.x, 1i), arg_1, global0.d), u_input.b, Struct_1(vec3<f32>(252f, arg_0.a, arg_2.a.x), 67784u, vec2<i32>(global0.c.x, arg_2.c.x), true, true))).a.x)));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(countOneBits(~1u), 4294967295u), ~_wgslsmith_div_u32(arg_2.b, max(global0.b, global0.b)), _wgslsmith_mult_u32(global0.b, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b, global0.b, 33314u, global0.b), vec4<u32>(4294967295u, arg_2.b, global0.b, arg_2.b)), vec4<u32>(global0.b, global0.b, 90147u, arg_2.b)), arg_2.b | 30533u)));
    let var_2 = reverseBits(vec4<u32>(((global0.b ^ 0u) & ~global0.b) ^ abs(_wgslsmith_div_u32(3247u, var_1.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b, 4294967295u, 9700u, var_1.x), vec4<u32>(var_1.x, 4294967295u, 4294967295u, arg_2.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.b, var_1.x, arg_2.b), vec4<u32>(arg_2.b, 1u, 1u, 37788u))), 26898u, arg_2.b));
    return !arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(-1065f, global0.a.x, !select(vec4<bool>(false, true, false, true), func_1(-1000f, vec3<bool>(global0.e, global0.d, global0.d), Struct_2(Struct_1(global0.a, 12863u, u_input.a.zz, false, true), vec4<i32>(u_input.b.x, u_input.b.x, 3998i, 60753i), Struct_1(vec3<f32>(-128f, global0.a.x, global0.a.x), 0u, vec2<i32>(u_input.b.x, global0.c.x), false, global0.d)), Struct_2(Struct_1(global0.a, 0u, vec2<i32>(u_input.b.x, 26943i), true, global0.d), vec4<i32>(u_input.b.x, -3530i, global0.c.x, 2147483647i), Struct_1(global0.a, 47069u, u_input.a.zy, global0.d, true))), vec4<bool>(global0.e, global0.e, false, false))), true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, 195f, 132f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, global0.a.x) * vec3<f32>(global0.a.x, global0.a.x, 409f)), true))), ~global0.b, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, select(u_input.b.x, 16631i, global0.e)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wyw, vec3<i32>(u_input.b.x, 11881i, global0.c.x)), global0.c.x)), true, global0.d), select(vec3<bool>(!(!global0.e), true, !select(true, true, global0.d)), vec3<bool>(global0.d, false && func_1(-1142f, vec3<bool>(global0.e, global0.d, true), Struct_2(Struct_1(vec3<f32>(global0.a.x, 654f, global0.a.x), 4398u, vec2<i32>(11054i, global0.c.x), false, true), u_input.b, Struct_1(global0.a, global0.b, u_input.b.zx, true, global0.e)), Struct_2(Struct_1(vec3<f32>(-719f, global0.a.x, global0.a.x), 1u, vec2<i32>(2147483647i, 2147483647i), global0.d, global0.e), vec4<i32>(40479i, -25339i, 2147483647i, 12428i), Struct_1(global0.a, global0.b, vec2<i32>(25337i, u_input.b.x), global0.e, false))).x, false), !vec3<bool>(false && global0.e, true, true)));
    var var_1 = min(global0.b, _wgslsmith_dot_vec2_u32(countOneBits(~select(vec2<u32>(global0.b, 37556u), vec2<u32>(global0.b, global0.b), var_0)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.b, 48534u), vec2<u32>(45877u, 3202u) >> (vec2<u32>(87022u, global0.b) % vec2<u32>(32u))), min(~vec2<u32>(32558u, 8590u), ~vec2<u32>(4294967295u, global0.b)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(77906u, global0.b), vec2<u32>(global0.b, global0.b)), _wgslsmith_add_vec2_u32(vec2<u32>(11415u, 138194u), vec2<u32>(global0.b, 4294967295u))))));
    var var_2 = vec4<i32>(-51116i, -1i, -_wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_mod_i32(2147483647i, global0.c.x), 26709i), _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(u_input.a, u_input.b.yxy), -56190i)) & u_input.b;
    global0 = func_2(func_2(func_4(func_2(Struct_1(global0.a, global0.b, u_input.a.xx, var_0, true), u_input.b.zwx, false)), var_2.zyz, func_2(func_2(Struct_1(global0.a, global0.b, vec2<i32>(-4330i, 24245i), global0.d, false), min(vec3<i32>(var_2.x, u_input.b.x, 8506i), vec3<i32>(var_2.x, -2147483647i, 2973i)), -12238i > global0.c.x).c, func_2(func_2(Struct_1(vec3<f32>(global0.a.x, -480f, global0.a.x), global0.b, u_input.b.wz, true, false), vec3<i32>(var_2.x, var_2.x, var_2.x), true).c, vec3<i32>(global0.c.x, global0.c.x, u_input.a.x) >> (vec3<u32>(global0.b, global0.b, 14118u) % vec3<u32>(32u)), !var_0).b.wwy, true).a.e).c, -(vec3<i32>(-1i) * -u_input.a), true || global0.d).c;
    var var_3 = func_2(func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(254f, global0.a.x, 1402f)), firstTrailingBit(0u), ~global0.c, -1173f > global0.a.x, false), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(var_2.wxw, u_input.b.wxw), u_input.a.x), var_0)), vec3<i32>(23710i, ~(-(i32(-1i) * -2147483647i)), func_4(func_2(func_2(Struct_1(global0.a, global0.b, global0.c, global0.d, true), vec3<i32>(0i, global0.c.x, 1i), false).c, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 22189i, 2147483647i), var_2.yxw), global0.a.x <= global0.a.x)).c.x), select(global0.b >= ~global0.b, global0.e, !(_wgslsmith_add_i32(u_input.b.x, 0i) == -6823i))).a;
    var var_4 = func_2(Struct_1(vec3<f32>(180f, -1432f, _wgslsmith_div_f32(-1301f, 265f)), var_3.b, ~vec2<i32>(var_2.x, global0.c.x), all(!vec4<bool>(var_0, var_0, true, true)), true), u_input.b.yzz, true);
    var var_5 = abs(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.b, 11202u), vec2<u32>(var_3.b, var_4.a.b)), select(vec2<u32>(44990u, var_3.b), vec2<u32>(var_4.c.b, var_3.b), vec2<bool>(true, true))), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_4.c.b, var_3.b), vec2<u32>(1u, var_4.c.b)))) << (_wgslsmith_sub_vec2_u32(~(vec2<u32>(86560u, 4294967295u) << (vec2<u32>(4294967295u, var_4.a.b) % vec2<u32>(32u))), ~abs(vec2<u32>(1u, global0.b))) % vec2<u32>(32u)));
    var_4 = func_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(~0u, var_5.x & 4294967295u)), _wgslsmith_f_op_f32(-768f - global0.a.x), var_3.a.x), abs(47535u), vec2<i32>(-33654i, 2147483647i), true, var_3.e), vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -var_3.c.x, -_wgslsmith_div_i32(-65082i, global0.c.x)), global0.c.x, reverseBits(-41953i)), false);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-reverseBits(u_input.b) ^ _wgslsmith_div_vec4_i32(-u_input.b, abs(vec4<i32>(8108i, global0.c.x, -1i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f), var_3.a.x), 570f))), vec3<u32>((var_3.b | (var_3.b | var_3.b)) << (~1u % 32u), ~30498u, ~_wgslsmith_mod_u32(1u, 1u)), abs(abs(var_3.c)));
}


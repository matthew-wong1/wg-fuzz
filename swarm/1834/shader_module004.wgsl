struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(-min(u_input.e.x >> (61268u % 32u), u_input.a.x) <= -16937i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 1193f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), all(!vec2<bool>(global0.x, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + 561f), arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = var_0.a;
    var var_2 = vec2<u32>(0u, u_input.b) & (vec2<u32>(~u_input.c, ~1u) >> (firstLeadingBit(reverseBits(firstTrailingBit(vec2<u32>(u_input.c, 36184u)))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_dot_vec2_i32(select(abs(u_input.e), select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(u_input.a.x, 12231i)), !vec2<bool>(global0.x, true)) & -countOneBits(u_input.e), all(vec3<bool>(all(vec4<bool>(false, global0.x, var_0.a, false)), false, false))), u_input.e);
    let var_4 = 1u;
    return !(!vec2<bool>(var_0.a, var_0.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_1(all(select(select(vec2<bool>(true, false), vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, global0.x)), func_3(vec2<f32>(arg_0.c, arg_0.c)), !vec2<bool>(false, global0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - 719f), 1346f, _wgslsmith_f_op_f32(trunc(-931f)), _wgslsmith_f_op_f32(floor(1492f))), arg_2.b))), _wgslsmith_f_op_f32(141f + _wgslsmith_f_op_f32(-414f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-115f + 1058f), -130f))));
    return vec4<i32>(-min(_wgslsmith_clamp_i32(abs(arg_1.x), select(4794i, 18860i, arg_3), ~arg_1.x), ~u_input.a.x), ~(countOneBits(firstTrailingBit(u_input.e.x)) ^ ~(-18026i >> (u_input.b % 32u))), -2147483647i, arg_1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = select(countOneBits(u_input.c), 4443u, arg_2);
    let var_1 = u_input.a;
    var var_2 = arg_1;
    var var_3 = arg_1;
    var_2 = Struct_1(arg_2, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(f32(-1f) * -1030f), var_2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.c, -1843f, global0.x)), _wgslsmith_f_op_f32(max(-990f, -1119f)))))), var_2.b.x);
    return Struct_1(!(!(!var_2.a | (var_3.b.x == arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.b))))), var_3.c);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = global0.x;
    var var_1 = vec3<i32>(arg_3, u_input.e.x | countOneBits(18172i), -arg_3);
    var var_2 = arg_0.b.x;
    let var_3 = vec3<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.d), u_input.b);
    let var_4 = arg_0;
    return ~abs(u_input.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.a.yw;
    global0 = vec2<bool>(true, any(select(vec3<bool>(true, !arg_2.a, false), vec3<bool>(true, select(false, true, false), all(vec4<bool>(false, global0.x, arg_1.a, true))), _wgslsmith_add_i32(-1i, 26124i) != var_0.x)));
    let var_1 = ~vec3<u32>(func_5(Struct_1(select(global0.x, false, false), arg_0.b, _wgslsmith_f_op_f32(arg_2.b.x - arg_2.c)), -1225f, func_4(func_2(arg_1, vec2<i32>(65413i, -2147483647i), arg_1, global0.x), Struct_1(arg_2.a, arg_0.b, -549f), true), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.e.x), vec2<i32>(2147483647i, var_0.x)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(2809u, u_input.d), vec2<u32>(u_input.d, u_input.c))), ~4294967295u), ~func_5(Struct_1(false, arg_2.b, arg_2.b.x), func_4(vec4<i32>(-2147483647i, -1i, 54447i, 1197i), Struct_1(global0.x, arg_2.b, arg_1.b.x), false).c, Struct_1(global0.x, vec4<f32>(arg_1.c, arg_0.b.x, -751f, -326f), -1113f), -var_0.x));
    let var_2 = arg_0;
    var var_3 = ~(u_input.c << (u_input.b % 32u)) < (_wgslsmith_add_u32(var_1.x, u_input.b & ~0u) << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.x, 1u), vec3<u32>(var_1.x, var_1.x, 1u))) % 32u));
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(arg_1.b.x - 1257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - -1304f)), -977f)), arg_1.c);
    global0 = !vec2<bool>(!(!func_3(vec2<f32>(-279f, var_0.c)).x), false);
    let var_1 = func_1(func_4(firstTrailingBit(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.e.x, u_input.a.x, u_input.e.x, 43136i)), _wgslsmith_sub_vec4_i32(vec4<i32>(14261i, 2147483647i, 16380i, u_input.e.x), vec4<i32>(42366i, -49264i, 18965i, u_input.e.x)))), func_4(min(vec4<i32>(u_input.e.x, 34104i, u_input.a.x, -1i) >> (vec4<u32>(u_input.b, 17166u, u_input.d, 1u) % vec4<u32>(32u)), vec4<i32>(0i, u_input.a.x, u_input.a.x, 3834i) ^ vec4<i32>(-25632i, u_input.a.x, 0i, u_input.a.x)), func_1(func_4(vec4<i32>(0i, -19759i, -10382i, -2147483647i), Struct_1(false, arg_1.b, -442f), var_0.a), func_1(var_0, Struct_1(true, vec4<f32>(-551f, 704f, -809f, 1902f), -1089f), Struct_1(false, var_0.b, var_0.b.x)), func_4(u_input.a, Struct_1(false, var_0.b, arg_1.b.x), global0.x)), _wgslsmith_f_op_f32(floor(610f)) != 1535f), false), func_1(Struct_1(!func_4(vec4<i32>(u_input.a.x, 2224i, 38319i, u_input.e.x), arg_1, var_0.a).a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(arg_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-812f, -1290f, 384f, arg_1.b.x)))), _wgslsmith_f_op_f32(-var_0.b.x)), Struct_1(!all(vec4<bool>(var_0.a, arg_1.a, false, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1400f), -428f, 268f, arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2844f, var_0.c) + 711f)), arg_1), var_0);
    global0 = !func_3(var_0.b.ww);
    var var_2 = func_4(u_input.a, var_1, all(select(vec3<bool>(false, !arg_1.a, var_0.a & false), vec3<bool>(var_0.a, func_1(var_1, var_1, Struct_1(global0.x, var_0.b, -1515f)).a, u_input.e.x == u_input.e.x), any(vec3<bool>(var_1.a, true, var_1.a)) | (u_input.e.x > -316i))));
    return !(!(!vec3<bool>(true, 18427i <= u_input.a.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    global0 = select(vec2<bool>(all(func_6(true, func_1(Struct_1(true, vec4<f32>(-900f, 1470f, -1529f, -160f), 2781f), Struct_1(global0.x, vec4<f32>(-810f, -1092f, -169f, -1635f), 1165f), Struct_1(false, vec4<f32>(-1000f, 423f, -405f, -168f), 671f)))), 1i != _wgslsmith_sub_i32(~2147483647i, _wgslsmith_mod_i32(u_input.e.x, -1i))), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(411f, -670f), _wgslsmith_f_op_f32(select(660f, -1751f, global0.x))))), vec2<bool>(true, global0.x));
    var var_1 = func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(max(25558i, 2147483647i), _wgslsmith_sub_i32(u_input.a.x, 1i)), var_0.x, ~min(-55359i, var_0.x), u_input.e.x), select(-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.e.x)), u_input.a, true)), Struct_1(global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(abs(2138f)), _wgslsmith_f_op_f32(ceil(-353f)), _wgslsmith_f_op_f32(step(121f, 238f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, 425f, -593f, 758f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, 1228f, -1326f, 637f)))), -469f), !(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, -69604i) << (vec3<u32>(u_input.d, 19897u, u_input.c) % vec3<u32>(32u)), ~vec3<i32>(-41960i, 0i, -1i)) <= var_0.x));
    var var_2 = Struct_1(func_4(u_input.a, func_4(u_input.a & u_input.a, func_1(Struct_1(true, var_1.b, 132f), Struct_1(true, vec4<f32>(var_1.c, var_1.b.x, 2269f, -205f), -1409f), Struct_1(true, vec4<f32>(var_1.c, -2297f, var_1.b.x, -832f), var_1.c)), false), any(vec2<bool>(false, var_1.a))).a | ((global0.x & var_1.a) != false), vec4<f32>(var_1.c, func_4(-u_input.a, Struct_1(global0.x, vec4<f32>(-280f, var_1.c, var_1.c, var_1.c), -1941f), !func_6(true, Struct_1(true, var_1.b, var_1.b.x)).x).b.x, var_1.b.x, -273f), _wgslsmith_f_op_f32(-var_1.b.x));
    var_2 = func_1(Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f + var_2.c))), Struct_1(!var_2.a && func_3(var_2.b.wx).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, var_1.c, var_1.c, var_1.c))), _wgslsmith_f_op_f32(sign(618f))), func_1(Struct_1(!var_1.a & (global0.x & false), _wgslsmith_f_op_vec4_f32(-var_2.b), var_2.c), Struct_1(any(func_3(vec2<f32>(var_1.b.x, var_2.c))), vec4<f32>(-1349f, _wgslsmith_f_op_f32(var_2.c - var_2.b.x), _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), 275f), _wgslsmith_f_op_f32(-192f + -615f)), func_4(_wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, -15804i, -1i, 0i), reverseBits(vec4<i32>(316i, -1i, var_0.x, 0i))), func_4(max(vec4<i32>(0i, 0i, u_input.e.x, -2147483647i), vec4<i32>(var_0.x, u_input.e.x, -7189i, 0i)), func_4(vec4<i32>(var_0.x, var_0.x, u_input.a.x, 17473i), Struct_1(global0.x, vec4<f32>(var_2.c, -1142f, var_1.b.x, -337f), var_2.b.x), true), true), any(!vec4<bool>(var_2.a, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~2147483647i, -1i, reverseBits(u_input.e.x)), u_input.c | u_input.d, select(-(~u_input.a.wwx), vec3<i32>(var_0.x, _wgslsmith_mod_i32(-1i, -36694i), ~var_0.x), false));
}


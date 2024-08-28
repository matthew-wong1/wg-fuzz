struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
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

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, true, true, true, true, true, true, false, true, false, false, true, false, true, false, false, false, true, true, false, true, false, true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = Struct_1(-1i);
    return firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.c, u_input.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = -vec3<i32>(_wgslsmith_mod_i32(-18052i, u_input.d.x), ~(_wgslsmith_div_i32(-50188i, u_input.d.x) | -38499i), (u_input.d.x >> (u_input.b % 32u)) | u_input.a);
    let var_1 = abs(~((vec3<u32>(4294967295u, u_input.b, u_input.b) | u_input.c) | countOneBits(u_input.c))) >> (u_input.c % vec3<u32>(32u));
    var var_2 = abs(func_3(Struct_1(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -var_0.x)), Struct_1(reverseBits(~var_0.x))));
    var_2 = var_1;
    var var_3 = var_1.x;
    return Struct_1(2147483647i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<bool, 26>();
    var var_0 = arg_3;
    let var_1 = min(~firstTrailingBit(~vec4<u32>(u_input.c.x, 14913u, 87535u, u_input.b)), select(vec4<u32>(~select(u_input.c.x, u_input.b, false), _wgslsmith_mult_u32(1u, ~u_input.b), u_input.c.x, ~(~0u)), select(vec4<u32>(~u_input.c.x, 1u, 8757u, u_input.c.x), vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.c.x) >> (vec4<u32>(u_input.c.x, 9332u, 54202u, 42051u) % vec4<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(0u, 0u, u_input.c.x, 101958u)) < u_input.c.x), !select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], false, global0[_wgslsmith_index_u32(u_input.b, 26u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)], false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)], false)), false)));
    var var_2 = ~var_1.yw;
    let var_3 = Struct_1(_wgslsmith_mult_i32(u_input.d.x, countOneBits(1i)));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), -1000f, _wgslsmith_f_op_f32(sign(-2050f)), _wgslsmith_div_f32(-170f, -116f)))), false | (_wgslsmith_mult_u32(~var_1.x, 0u) < u_input.b));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(vec2<bool>(select(all(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], false)), global0[_wgslsmith_index_u32(73309u, 26u)], select(global0[_wgslsmith_index_u32(~u_input.c.x, 26u)], false, true)), !global0[_wgslsmith_index_u32(~(u_input.c.x << (4294967295u % 32u)), 26u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(firstTrailingBit(66380u >> (u_input.c.x % 32u)), 26u)]), vec2<bool>(false, all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<bool>(true, false), false))), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], !global0[_wgslsmith_index_u32(18504u, 26u)])), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]), global0[_wgslsmith_index_u32(0u, 26u)]))), true));
    global0 = array<bool, 26>();
    var var_1 = abs(firstLeadingBit(~(vec3<i32>(arg_0.a, arg_2.a, 0i) >> (min(vec3<u32>(1u, u_input.c.x, 34682u), u_input.c) % vec3<u32>(32u)))));
    global0 = array<bool, 26>();
    let var_2 = ~u_input.c.x;
    return func_4(_wgslsmith_mod_vec2_i32(max(u_input.d, u_input.d) >> (u_input.c.yy % vec2<u32>(32u)), vec2<i32>(u_input.d.x, arg_1.a)), arg_0, func_4(_wgslsmith_add_vec2_i32(var_1.yz, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a, -6750i), vec2<i32>(0i, arg_2.a)), u_input.d ^ vec2<i32>(u_input.d.x, u_input.d.x))), Struct_1(~arg_0.a), Struct_1(-2147483647i), Struct_1(~(0i >> (1u % 32u)))), Struct_1(arg_1.a));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.a);
    var var_1 = Struct_1(-18540i | var_0.a);
    var_1 = Struct_1(var_1.a);
    let var_2 = u_input.c;
    var_0 = func_5(func_4(u_input.d, func_2(vec4<f32>(_wgslsmith_f_op_f32(floor(732f)), 605f, -373f, _wgslsmith_f_op_f32(f32(-1f) * -1238f)), global0[_wgslsmith_index_u32(1u, 26u)]), Struct_1(-2147483647i), Struct_1(-u_input.a)), Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 28414i, -23143i, 20403i), vec4<i32>(u_input.d.x, u_input.d.x, 32250i, u_input.d.x))) >> (max(~u_input.c.x, u_input.b) % 32u)), func_4(u_input.d, Struct_1(max(firstLeadingBit(var_0.a), _wgslsmith_clamp_i32(var_0.a, var_0.a, 0i))), func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(2147483647i, -61965i)), func_4(-vec2<i32>(var_0.a, var_0.a), func_4(u_input.d, Struct_1(var_0.a), Struct_1(var_1.a), Struct_1(-2147483647i)), func_2(vec4<f32>(-1000f, 1444f, 824f, -1317f), true), Struct_1(-28555i)), Struct_1(-2147483647i | var_0.a), func_2(vec4<f32>(-1272f, 120f, -1000f, -1095f), any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(14651u, 26u)], true)))), Struct_1(1i)));
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, 1000f, 1179f, -551f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1273f, -1003f, -179f)))))), true);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1209f, _wgslsmith_f_op_f32(max(-917f, 613f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -258f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 188f, 2159f) - vec4<f32>(var_0.x, var_0.x, var_0.x, -1377f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, var_0.x, -848f, 1704f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 863f, var_0.x, var_0.x)), vec4<bool>(false, global0[_wgslsmith_index_u32(28726u, 26u)], global0[_wgslsmith_index_u32(37966u, 26u)], global0[_wgslsmith_index_u32(79072u, 26u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1951f, -755f, var_0.x), vec4<f32>(var_0.x, -351f, -311f, -1193f)))), !any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], true)))));
    var var_2 = !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)]);
    var var_3 = Struct_1(max(arg_0.a, (_wgslsmith_clamp_i32(u_input.d.x, arg_2.a, 17590i) & -25325i) & _wgslsmith_dot_vec4_i32(firstLeadingBit(arg_1), ~arg_1)));
    var var_4 = _wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)));
    return func_2(var_1, !var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-41197i, u_input.a, -73824i), ~vec3<i32>(u_input.d.x, 2147483647i, -52957i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-13153i, 1i, u_input.d.x, -29107i), vec4<i32>(0i, u_input.d.x, u_input.a, 39930i), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(64508u, 26u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -54958i, u_input.a, 0i), vec4<i32>(-2147483647i, 24053i, u_input.d.x, u_input.d.x))), -2147483647i), _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(-1i, 344i, 1i, -35539i)), vec4<i32>(-1i, u_input.d.x, u_input.a, -37403i), false), reverseBits(vec4<i32>(-42318i, u_input.d.x, u_input.d.x, u_input.d.x) << (vec4<u32>(u_input.b, 22231u, u_input.c.x, 4192u) % vec4<u32>(32u))))), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2866f, -357f, 176f, -822f), vec4<f32>(570f, -2029f, 271f, 421f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-599f, -1009f, -624f, 350f), vec4<f32>(-2330f, 2408f, -1507f, -1081f))))))), false));
    var var_1 = func_3(func_1(), func_4(u_input.d, func_6(func_4(~vec2<i32>(u_input.d.x, u_input.a), var_0, func_1(), Struct_1(-1i)), select(vec4<i32>(0i, u_input.a, 1i, -254i), vec4<i32>(var_0.a, 0i, u_input.a, u_input.d.x), global0[_wgslsmith_index_u32(4294967295u, 26u)]) >> ((vec4<u32>(1u, 26885u, 1u, u_input.c.x) ^ vec4<u32>(0u, u_input.b, 1u, 29955u)) % vec4<u32>(32u)), var_0), var_0, Struct_1(-var_0.a))).x;
    var var_2 = vec3<bool>(!any(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, global0[_wgslsmith_index_u32(4294967295u, 26u)], false), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], false, true), global0[_wgslsmith_index_u32(0u, 26u)] && global0[_wgslsmith_index_u32(45060u, 26u)])), true, (all(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(399u, 26u)], global0[_wgslsmith_index_u32(2139u, 26u)], false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(3730u, 26u)], false), true)) == (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 15853i, var_0.a), vec3<i32>(var_0.a, 2147483647i, 51127i)) <= _wgslsmith_add_i32(2147483647i, u_input.a))) | !(global0[_wgslsmith_index_u32(u_input.b, 26u)] || all(vec2<bool>(false, false))));
    var var_3 = Struct_1(func_1().a);
    let var_4 = Struct_1(countOneBits(_wgslsmith_clamp_i32(u_input.d.x, var_0.a, var_3.a) >> (u_input.b % 32u)));
    var_1 = u_input.b;
    let var_5 = true;
    var_3 = var_4;
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1603f)))));
}


struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_3, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(908f, min(~(-(vec4<i32>(u_input.b, 0i, u_input.b, -20848i) ^ vec4<i32>(u_input.b, 15943i, u_input.b, u_input.b))), abs(vec4<i32>(~u_input.b, 2147483647i, ~u_input.b, firstTrailingBit(55312i)))), vec4<bool>(true, true, global1.x, true));
    var var_1 = Struct_2(Struct_1(any(select(var_0.c, select(var_0.c, var_0.c, true), !var_0.c)), !(!select(vec2<bool>(var_0.c.x, true), var_0.c.wx, global1.x))), 4294967295u, Struct_1(!var_0.c.x, select(vec2<bool>(all(var_0.c), true), vec2<bool>(global1.x, global1.x), !select(vec2<bool>(true, var_0.c.x), vec2<bool>(false, var_0.c.x), vec2<bool>(false, global1.x)))), -1288f, ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 32615u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 34485u), vec2<u32>(34671u, 11767u)))));
    var_1 = Struct_2(Struct_1(!(!all(var_0.c)), vec2<bool>(any(!var_0.c.yz), true)), 57160u, var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), 619f))))), ~vec2<u32>(24570u, 0u));
    var var_2 = Struct_3(select(all(!(!vec4<bool>(var_0.c.x, false, false, global1.x))), true, !(var_0.b.x < u_input.b)));
    var_1 = Struct_2(var_1.a, _wgslsmith_sub_u32(countOneBits(~u_input.a) << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(26163u, u_input.a, var_1.b), vec3<u32>(6530u, global0[_wgslsmith_index_u32(19206u, 21u)], 34421u), vec3<bool>(false, var_0.c.x, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, var_1.b), vec3<u32>(0u, 0u, 15443u), vec3<u32>(0u, 28642u, var_1.e.x))), 21u)] % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(var_1.b, global0[_wgslsmith_index_u32(u_input.a, 21u)]), ~6328u), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(17388u, 21u)], 1u)), vec3<u32>(var_1.e.x, 43278u, 1u)))), Struct_1(!all(var_0.c.ww), select(var_1.a.b, vec2<bool>(!var_2.a, all(vec3<bool>(var_0.c.x, true, global1.x))), !vec2<bool>(var_0.c.x, true))), _wgslsmith_f_op_f32(-var_1.d), vec2<u32>(_wgslsmith_mult_u32(~(~13575u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.e, var_1.e), reverseBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b, 21u)], 21u)])))), 908u));
    return vec2<bool>(true, var_2.a);
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d)), arg_0.d)) == 1955f;
    var var_2 = vec2<i32>(reverseBits(u_input.b), 0i);
    return global1.x;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> vec2<bool> {
    global0 = array<u32, 21>();
    var var_0 = arg_2.a;
    let var_1 = select(select(vec4<bool>(any(arg_1.c.xyy) && any(arg_1.c), !(arg_2.c.x & arg_1.c.x), true, true), vec4<bool>(select(func_2(Struct_2(Struct_1(arg_1.c.x, arg_1.c.wz), u_input.a, Struct_1(global1.x, vec2<bool>(global1.x, true)), 1298f, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(23267u, 21u)]))), any(vec4<bool>(true, arg_1.c.x, arg_1.c.x, true)), arg_1.a < -1732f), false && !arg_1.c.x, true, all(vec4<bool>(true, false, arg_2.c.x, global1.x))), vec4<bool>(false, true && (global1.x & true), false, false)), arg_1.c, func_3().x);
    var var_2 = abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a, 21u)] & ((45863u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 21u)], 21u)] % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 12540u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 21u)])) % 32u)), 21u)]) & global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(459u, 21u)]), 21u)];
    var_2 = 15391u;
    return !(!vec2<bool>(arg_2.a >= arg_1.a, arg_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!(!func_1(u_input.b, Struct_4(263f, vec4<i32>(-55607i, u_input.b, -2147483647i, u_input.b), vec4<bool>(global1.x, global1.x, false, true)), Struct_4(-597f, vec4<i32>(-75279i, -1i, -31761i, 2147483647i), vec4<bool>(true, true, global1.x, false))))), !vec2<bool>(!all(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x), func_1(abs(103153i) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(-60436i, u_input.b), vec2<i32>(u_input.b, -2917i)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1385f), -vec4<i32>(-23276i, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(16677i, u_input.b, u_input.b, 15156i), !select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, false, true))), Struct_4(411f, ~vec4<i32>(-2147483647i, u_input.b, u_input.b, 2147483647i), vec4<bool>(global1.x, true, false, false))).x);
    var var_0 = -22395i;
    global1 = vec2<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f * -798f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(349f, 371f))), true)) <= 1235f);
    let var_1 = u_input.b;
    var var_2 = Struct_4(_wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(f32(-1f) * -141f)), vec4<i32>(firstTrailingBit(0i), 5723i, _wgslsmith_mod_i32(u_input.b, ~max(var_1, 2147483647i)), 11241i), vec4<bool>(global1.x, global1.x, any(!select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x))), true));
    global0 = array<u32, 21>();
    var var_3 = Struct_2(Struct_1(false, !(!func_1(var_1, Struct_4(-590f, vec4<i32>(var_2.b.x, 2147483647i, u_input.b, -2147483647i), vec4<bool>(false, false, true, true)), Struct_4(var_2.a, var_2.b, var_2.c)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 38357u), 21u)], Struct_1(false, !select(vec2<bool>(false, false), select(var_2.c.zx, vec2<bool>(false, global1.x), var_2.c.x), func_1(u_input.b, Struct_4(var_2.a, vec4<i32>(2147483647i, -88349i, var_2.b.x, 2147483647i), vec4<bool>(true, var_2.c.x, false, false)), Struct_4(-2249f, var_2.b, vec4<bool>(true, var_2.c.x, true, false))))), _wgslsmith_f_op_f32(step(-1000f, -694f)), vec2<u32>(min(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(17987u, 4294967295u, 11762u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 21u)], 4294967295u, 3631u))), max(u_input.a, u_input.a) & u_input.a), ~select(max(u_input.a, 4294967295u), global0[_wgslsmith_index_u32(78552u, 21u)], true)));
    var var_4 = Struct_4(-1494f, ~(~var_2.b), !var_2.c);
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) + _wgslsmith_f_op_f32(-135f + _wgslsmith_div_f32(1302f, -553f)))), vec4<i32>(~0i, ~reverseBits(firstTrailingBit(var_2.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(49300i, var_4.b.x, -1i, var_2.b.x), ~vec4<i32>(var_1, -3917i, 17459i, -2147483647i)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, var_2.b.x, u_input.b)), var_4.b.zww)), vec4<bool>(any(!(!var_2.c.xxy)), func_3().x, all(vec4<bool>(true, false || var_2.c.x, !global1.x, true)), select(var_4.c.x, true, ~u_input.b < abs(10618i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_3.d)), i32(-1i) * -38949i);
}


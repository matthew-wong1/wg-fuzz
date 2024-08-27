struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> vec2<bool> {
    global0 = vec3<u32>(select(60414u, 40971u << (global0.x % 32u), !(_wgslsmith_f_op_f32(min(-985f, arg_2)) <= -173f)), 1u, _wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.xx, vec2<u32>(37446u, 1u)), ~vec2<u32>(global0.x, global0.x))), 0u));
    var var_0 = 7943u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(arg_2, 143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f - arg_2)), any(vec3<bool>(true, arg_1, arg_0.x)))))), Struct_1(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(691f, -165f)), _wgslsmith_f_op_f32(min(-142f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))), global0.zz, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-24018i, -1i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-80611i, u_input.a, 0i), vec3<i32>(u_input.a, 2147483647i, -2147483647i), false))), -47520i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(216f, arg_2)) * 1644f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1242f))))));
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, 45278u, var_1.c.x), ~vec3<u32>(global0.x, global0.x, var_1.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.c.x, global0.x), vec3<u32>(var_1.c.x, 57100u, 9313u))), ~vec3<u32>(var_1.c.x, global0.x, 4294967295u)), ~(~vec3<u32>(~global0.x, 1u, ~var_1.c.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x) >> (countOneBits(vec3<u32>(26326u, 29195u, 24578u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.c.x, 1u, var_1.c.x), vec3<u32>(19233u, var_1.c.x, 30575u) | vec3<u32>(0u, global0.x, global0.x))));
    var var_2 = i32(-1i) * -1i;
    return select(select(vec2<bool>(arg_1, true), select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, !vec2<bool>(var_1.b.a, arg_1)), vec2<bool>(var_1.b.a, false), select(arg_0, vec2<bool>(false, true), !var_1.b.a)), any(vec2<bool>(1u != var_1.c.x, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))), select(arg_0, vec2<bool>(all(vec3<bool>(arg_0.x, false, arg_0.x)) & var_1.b.a, var_1.b.a), !arg_1), !(!(!(arg_2 == -1789f))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(((_wgslsmith_f_op_f32(sign(746f)) >= _wgslsmith_f_op_f32(324f + -692f)) && true) & true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1598f, -1932f) * vec2<f32>(-202f, 1000f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-174f, -299f), vec2<f32>(-1336f, -657f))) * _wgslsmith_div_vec2_f32(vec2<f32>(1061f, 298f), vec2<f32>(-1000f, -728f))))), vec2<bool>(all(func_3(vec2<bool>(false, true), true, -851f)), any(vec2<bool>(false, false)) || true))));
    var var_1 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, abs(u_input.a), u_input.a ^ u_input.a, ~1i), vec4<i32>(u_input.a, -22969i, u_input.a, u_input.a) >> (~vec4<u32>(1u, 0u, global0.x, global0.x) % vec4<u32>(32u))));
    var var_2 = select(select(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(false, true, var_0.a)), vec3<bool>(true, select(global0.x > 4294967295u, true, false), true), var_0.a), vec3<bool>(all(!vec2<bool>(var_0.a, false)), !func_3(vec2<bool>(true, var_0.a), true, 759f).x, var_0.a), select(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.a, false, var_0.a), false & var_0.a), vec3<bool>(false, false, false), var_0.a && true));
    var var_3 = !select(vec3<bool>(all(select(vec3<bool>(var_2.x, false, var_0.a), vec3<bool>(false, true, false), vec3<bool>(true, true, var_2.x))), var_2.x, false), !(!select(vec3<bool>(true, var_2.x, true), vec3<bool>(false, true, var_0.a), vec3<bool>(var_2.x, false, true))), false);
    let var_4 = Struct_1(false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -792f), var_0.b.x))), _wgslsmith_f_op_vec2_f32(-var_0.b))));
    return true;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = vec3<i32>(-70168i, -2147483647i, u_input.a);
    let var_1 = select(vec4<bool>(53187u <= _wgslsmith_mult_u32(global0.x, 14561u), select(func_2() & false, false, false), !select(true, var_0.x != 1i, all(vec4<bool>(true, false, true, true))), firstTrailingBit(max(4294967295u, global0.x)) < ~global0.x), vec4<bool>(all(vec3<bool>(any(vec4<bool>(false, true, false, true)), func_2(), false)), !(false && select(false, false, true)), true, false), !vec4<bool>(!(global0.x == global0.x), (arg_0 != 1000f) & false, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    var_0 = select(-_wgslsmith_mod_vec3_i32(vec3<i32>(63284i, u_input.a, var_0.x) >> (~vec3<u32>(global0.x, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 5708i, u_input.a), vec3<i32>(var_0.x, -29649i, 10637i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 25581i, 46063i), vec4<i32>(var_0.x, u_input.a, -57938i, u_input.a)))), vec3<i32>(~firstTrailingBit(-49579i), ~(~var_0.x), countOneBits(~0i)), !(!var_1.x));
    var var_2 = _wgslsmith_mult_vec2_i32(min(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -15270i), var_0.yy << (global0.xz % vec2<u32>(32u))), var_0.xz), ~(~vec2<i32>(var_0.x, 0i)));
    var var_3 = Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1357f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-211f, _wgslsmith_f_op_f32(-arg_0)))));
    return StorageBuffer(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(global0.x), 1u | global0.x, global0.x, _wgslsmith_add_u32(global0.x, global0.x)), ~(~vec4<u32>(0u, 29014u, global0.x, 0u))), reverseBits(4294967295u), reverseBits(~reverseBits(global0.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.yy, var_0.yx) ^ -553i, var_0.x ^ (u_input.a & -2147483647i)), -abs(_wgslsmith_div_i32(0i, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(global0.x, 80615u, 9412u)) % 32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -269f, var_3.b.x, var_3.b.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1095f, -1953f, var_3.b.x, 1195f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, -460f, -365f, arg_0)))))))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1199f - -1000f))));
}


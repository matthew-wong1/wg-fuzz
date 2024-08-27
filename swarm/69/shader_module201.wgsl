struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global0 = !(!any(vec2<bool>(-71463i <= u_input.b, true)));
    global0 = true;
    let var_0 = _wgslsmith_sub_u32((_wgslsmith_sub_u32(arg_0, u_input.c.x) ^ arg_0) ^ abs(1u), ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, arg_0, arg_0)), vec3<u32>(0u, 12418u, arg_0))) & max(u_input.a, arg_0);
    let var_1 = Struct_4(_wgslsmith_sub_u32(~select(var_0, var_0 ^ 31158u, any(vec3<bool>(true, false, false))), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_0, 9339u))), ~(~u_input.c))), Struct_3(Struct_1(_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c))), Struct_1(abs(_wgslsmith_div_u32(u_input.a, u_input.c.x))), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)))), true, Struct_1(abs(_wgslsmith_sub_u32(1u, min(arg_0, arg_0)))));
    var var_2 = min(u_input.b, _wgslsmith_add_i32(u_input.b, 0i));
    return select(vec4<bool>(var_1.c, true, !var_1.c, true), vec4<bool>(var_1.c, true, true, var_1.b.c & var_1.b.c), all(vec3<bool>(any(!vec4<bool>(false, false, var_1.b.c, var_1.b.c)), var_1.c, true)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(u_input.a), Struct_1(u_input.c.x), all(func_3(3787u)));
    let var_1 = -814f;
    var_0 = Struct_3(var_0.b, Struct_1(_wgslsmith_dot_vec2_u32(u_input.c, ~(~u_input.c))), true);
    global0 = (~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c.x, 0u), vec4<u32>(var_0.b.a, u_input.c.x, 40387u, 16236u)), vec4<u32>(17405u, var_0.b.a, 0u, 11178u)) == _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.b.a, 1u), ~reverseBits(var_0.a.a))) | any(vec2<bool>(var_0.c, firstTrailingBit(63950u) != min(17461u, 19364u)));
    var var_2 = !var_0.c;
    return Struct_4(_wgslsmith_clamp_u32(max(max(17494u, reverseBits(var_0.b.a)), ~var_0.b.a), ~_wgslsmith_sub_u32(~u_input.c.x, ~31702u), 20695u), Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.b.a, u_input.a, 17653u, 63528u), vec4<u32>(1u, u_input.a, 0u, 108807u)), vec4<u32>(18334u, 7514u, u_input.a, 0u))), var_0.b, var_0.c), any(select(vec2<bool>(select(var_0.c, var_0.c, var_0.c), var_0.c), vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, true))), Struct_1(~(~(~var_0.b.a))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = ~(~(~_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), u_input.c))));
    var var_1 = Struct_3(Struct_1(arg_0.b.a.a), arg_0.d, true);
    let var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, select(13534u, u_input.a, true)), ~(vec2<u32>(arg_0.d.a, u_input.a) << (vec2<u32>(79128u, 4294967295u) % vec2<u32>(32u))))), u_input.c.x >> (_wgslsmith_sub_u32(~u_input.c.x, firstLeadingBit(~var_1.b.a)) % 32u));
    let var_3 = ~var_1.b.a;
    global0 = func_3(select(1u << (u_input.c.x % 32u), _wgslsmith_add_u32(abs(var_1.b.a), ~_wgslsmith_add_u32(arg_0.b.a.a, var_3)), arg_1)).x;
    return Struct_3(var_1.a, var_1.b, all(vec3<bool>(-1417f != _wgslsmith_f_op_f32(-arg_2), true, true)));
}

fn func_5(arg_0: Struct_4) -> f32 {
    global0 = false;
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>((u_input.b & u_input.b) << (func_2(-1i, -1i).d.a % 32u), u_input.b, -2147483647i, i32(-1i) * -1i) & select(-vec4<i32>(u_input.b, 8189i, 2147483647i, -2147483647i), firstLeadingBit(~vec4<i32>(u_input.b, -23211i, -31291i, u_input.b)), true), abs(firstLeadingBit(max(vec4<i32>(1i, -9665i, -2147483647i, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.b, 17693i)))) >> (~(~vec4<u32>(0u, 3848u, 51979u, 73115u) & min(vec4<u32>(u_input.c.x, arg_0.b.a.a, arg_0.a, u_input.c.x), vec4<u32>(21743u, u_input.a, 0u, 4294967295u))) % vec4<u32>(32u)));
    global0 = any(vec4<bool>(1u == u_input.a, true, true, any(!func_3(4294967295u).xwz)));
    global0 = !arg_0.c;
    global0 = !(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(4900i, 2147483647i), _wgslsmith_dot_vec4_i32(var_0, var_0), var_0.x & -11333i, u_input.b), -vec4<i32>(var_0.x, var_0.x, u_input.b, 1i)) == var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(622f + -1000f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_4(~613u, func_4(func_2(u_input.b, u_input.b), true, _wgslsmith_f_op_f32(545f * 410f)), true, arg_0))) >= _wgslsmith_f_op_f32(744f - _wgslsmith_f_op_f32(f32(-1f) * -865f));
    let var_1 = func_4(Struct_4(~47633u, func_2(1i, u_input.b).b, min(~4294967295u, func_4(Struct_4(arg_0.a, Struct_3(Struct_1(1247u), arg_0, true), false, arg_0), true, 319f).b.a) >= ~arg_1.x, arg_0), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))))))).b;
    var var_2 = !any(vec2<bool>(0i != (u_input.b | -400i), func_3(~arg_0.a).x));
    var var_3 = vec2<bool>(!(!(max(u_input.b, u_input.b) < -u_input.b)), true);
    let var_4 = u_input.b;
    return func_4(func_2(u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(26395u, arg_1.x), select(u_input.c, arg_1.yw, vec2<bool>(false, true))) % 32u), _wgslsmith_mult_i32((7485i & var_4) >> (u_input.c.x % 32u), ~(-2147483647i))), var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)), 251f))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(Struct_1(_wgslsmith_mod_u32(firstTrailingBit(73583u), 1u)), vec4<u32>(~u_input.a, u_input.a, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.a) | (~vec4<u32>(8402u, u_input.a, u_input.c.x, 24297u) << (reverseBits(vec4<u32>(20177u, 0u, u_input.c.x, u_input.a)) % vec4<u32>(32u)))), func_2(6930i, _wgslsmith_div_i32(-36755i, 24343i)).d, !(true || all(vec3<bool>(false, false, false))));
    var_0 = func_4(func_2(59683i, -abs(u_input.b)), func_4(Struct_4(abs(u_input.c.x | 0u), func_4(Struct_4(1u, Struct_3(Struct_1(27784u), var_0.b, false), false, Struct_1(0u)), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -342f)), func_3(min(var_0.b.a, u_input.c.x)).x, func_4(Struct_4(4294967295u, Struct_3(Struct_1(0u), Struct_1(0u), var_0.c), true, Struct_1(var_0.a.a)), var_0.c | false, -1154f).b), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(987f + -1432f))) * -1000f)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(699f, _wgslsmith_f_op_f32(f32(-1f) * -2947f)))));
    let var_1 = Struct_4(var_0.a.a, func_2((i32(-1i) * -23286i) >> ((min(var_0.b.a, 4294967295u) >> (_wgslsmith_div_u32(u_input.c.x, 97100u) % 32u)) % 32u), ~(-18172i)).b, var_0.c, Struct_1(var_0.a.a & u_input.a));
    let var_2 = _wgslsmith_mult_u32(~1665u, func_1(var_1.d, vec4<u32>(reverseBits(0u), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 63893u), vec3<u32>(var_0.a.a, var_1.a, 63747u))), _wgslsmith_clamp_u32(u_input.a << (var_0.b.a % 32u), var_1.d.a, min(65536u, var_1.a)), select(firstTrailingBit(var_0.a.a), u_input.a, var_1.c))).a);
    global0 = func_3(var_1.b.b.a).x;
    global0 = all(!func_3(13455u | u_input.a));
    var var_3 = Struct_2(!vec3<bool>(var_1.b.c, true, var_1.b.c), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b), -60628i, u_input.b) >> (~vec4<u32>(var_0.b.a, 1u, var_1.b.a.a, 0u) % vec4<u32>(32u)), min(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.b, -2147483647i, -14537i), firstLeadingBit(min(vec4<i32>(1i, 39516i, u_input.b, 24424i), vec4<i32>(2147483647i, 1i, -1i, u_input.b))))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-899f + _wgslsmith_f_op_f32(f32(-1f) * -588f)), all(select(vec3<bool>(var_0.c, false, var_1.b.c), vec3<bool>(var_1.c, true, false), true)) & var_1.c)));
    var_0 = func_4(Struct_4(u_input.a, func_4(var_1, any(var_3.a.yx), 242f), !(1u > u_input.c.x) & false, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.a, var_1.d.a, 0u), vec4<u32>(4294967295u, var_2, 4294967295u, var_1.d.a)))), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_4(var_2, var_1.b, false, var_0.b))) + var_3.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c + -845f) + _wgslsmith_f_op_f32(round(var_3.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, ~(-abs(vec3<i32>(u_input.b, 65638i, 63708i))), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b) | vec2<i32>(1i, var_3.b), -vec2<i32>(var_3.b, u_input.b)), abs(-1i) >> (var_2 % 32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(55860i, 3387i), _wgslsmith_sub_vec2_i32(vec2<i32>(2384i, var_3.b), vec2<i32>(-1i, u_input.b))), ~_wgslsmith_mult_i32(var_3.b, 27864i), -2147483647i)), 2345i ^ ~(-(var_3.b << (var_1.a % 32u))), vec3<i32>(-1i, reverseBits(var_3.b), u_input.b));
}


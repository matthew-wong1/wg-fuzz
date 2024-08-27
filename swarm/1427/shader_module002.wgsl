struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1001f, 1087f, -1654f, -1381f, -1097f, 136f, 376f, 703f, 1420f);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: bool = true;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.xx);
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(u_input.b.x, -3248i), i32(-1i) * -arg_3.d.d.x), ~max(vec2<i32>(0i, u_input.b.x), u_input.b) ^ -vec2<i32>(arg_0.b.a, -2147483647i)), arg_2.x, 1u, vec3<i32>(_wgslsmith_sub_i32(min(~(-17714i), -5213i), -19757i), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-14228i, 1i), 7805i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(24681i, 1i, u_input.b.x, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 20283i, -8570i, 58972i), vec4<i32>(-2147483647i, arg_0.b.a, 2147483647i, arg_0.b.a)))), abs(firstTrailingBit(10804i))));
    let var_2 = Struct_3(vec3<bool>(true, true, true), Struct_1(2147483647i, arg_3.b.b, u_input.a, vec3<i32>(0i, countOneBits(-2147483647i), 2147483647i)));
    global1 = _wgslsmith_div_i32(var_2.b.d.x, ~(~reverseBits(-1i) & ~_wgslsmith_div_i32(arg_3.b.a, 6697i)));
    global0 = array<f32, 9>();
    return vec3<i32>(arg_3.b.a, 61642i, -2147483647i) & (vec3<i32>(countOneBits(-1i), select(var_2.b.a << (arg_1.x % 32u), -2147483647i, true), 2147483647i) >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_3.a.wzz, arg_3.a.zwy), ~vec3<u32>(arg_3.b.c, 0u, arg_0.b.c)) % vec3<u32>(32u)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(countOneBits(vec4<u32>(abs(1u & u_input.a), _wgslsmith_div_u32(68391u, u_input.a), ~countOneBits(27495u), u_input.a)), Struct_1(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(0i, 1i, -2910i), ~max(2147483647i, u_input.b.x)), global0[_wgslsmith_index_u32(48518u, 9u)], _wgslsmith_div_u32(countOneBits(1u), u_input.a), _wgslsmith_mult_vec3_i32(func_3(Struct_3(vec3<bool>(false, true, false), Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, vec3<i32>(u_input.b.x, -11129i, -16495i))), vec3<u32>(1152u, 0u, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], 296f) + vec4<f32>(-798f, 1280f, -581f, 850f)), Struct_2(vec4<u32>(u_input.a, 0u, 66595u, 37828u), Struct_1(-2147483647i, -371f, u_input.a, vec3<i32>(27633i, -19879i, 14563i)), vec2<bool>(false, false), Struct_1(19683i, global0[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, -2659i)))), firstTrailingBit(select(vec3<i32>(25437i, u_input.b.x, u_input.b.x), vec3<i32>(0i, 1i, 1i), vec3<bool>(true, false, false))))), select(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(true, true), true), Struct_1((_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, -9185i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)) ^ (0i << (u_input.a % 32u))) ^ u_input.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3373u, 9u)]) * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 9u)])), ~u_input.a < u_input.a)), 0u, firstTrailingBit(~(-vec3<i32>(u_input.b.x, -1i, 23341i)))));
    var var_1 = Struct_1(4895i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(42183u, u_input.a, 13286u)), max(vec3<u32>(var_0.b.c, 0u, var_0.b.c) << (vec3<u32>(var_0.a.x, u_input.a, var_0.d.c) % vec3<u32>(32u)), vec3<u32>(1u, u_input.a, var_0.d.c))), 27336u, u_input.a), vec3<i32>(~(firstLeadingBit(u_input.b.x) | ~(-34162i)), countOneBits(1i), 12822i));
    let var_2 = var_0.a.xxz;
    var var_3 = !(any(vec2<bool>(var_0.c.x == true, !var_0.c.x)) && true);
    var var_4 = (func_3(Struct_3(vec3<bool>(var_0.c.x, true, var_0.c.x), Struct_1(0i, -536f, u_input.a, vec3<i32>(var_0.b.a, var_1.d.x, -16572i))), ~(~var_2), vec4<f32>(_wgslsmith_f_op_f32(ceil(-152f)), -194f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_0.a.x), 9u)], _wgslsmith_f_op_f32(var_1.b - var_0.d.b)), var_0).xy | var_0.b.d.xy) & (-(-var_1.d.yy ^ (u_input.b >> (vec2<u32>(var_2.x, var_0.b.c) % vec2<u32>(32u)))) << (global2[_wgslsmith_index_u32(abs(1u), 8u)] % vec2<u32>(32u)));
    return vec3<bool>((4294967295u >> (0u % 32u)) >= ~(~var_1.c ^ select(var_2.x, 1u, true)), all(vec3<bool>(true, var_0.c.x, !(var_0.c.x && false))), var_0.c.x);
}

fn func_1(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(_wgslsmith_add_i32(u_input.b.x, 4892i), _wgslsmith_dot_vec4_i32(vec4<i32>(-5845i, -2147483647i, u_input.b.x, 0i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x), vec3<i32>(~u_input.b.x, u_input.b.x, reverseBits(u_input.b.x)), true)), vec3<i32>(-_wgslsmith_mod_i32(firstTrailingBit(0i), abs(u_input.b.x)), 1i, -_wgslsmith_add_i32(~22005i, -23641i)));
    global0 = array<f32, 9>();
    global3 = all(func_2());
    var var_1 = func_2();
    var var_2 = vec4<u32>(~(~20739u), select(40865u << (0u % 32u), u_input.a, all(select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(true, var_1.x, true, false), var_1.x & var_1.x))), 1u, u_input.a);
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x <= u_input.b.x;
    let var_1 = select(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)], -530f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 9u)])))), !(!(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0)))), func_3(Struct_3(!vec3<bool>(var_0, true, var_0), Struct_1(2147483647i, global0[_wgslsmith_index_u32(0u, 9u)], 0u, vec3<i32>(u_input.b.x, -41106i, u_input.b.x))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(54347u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], 443f)))), Struct_2(vec4<u32>(1u, 40264u, u_input.a, 547u), Struct_1(21186i, 485f, u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, 14962i)), !vec2<bool>(var_0, true), Struct_1(-1i, 687f, u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, 1i)))).x >= (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 39289i, 0i), ~vec3<i32>(-22239i, -2147483647i, -7311i)) << (~_wgslsmith_mult_u32(u_input.a, 0u) % 32u)));
    var var_2 = u_input.b.x;
    var var_3 = _wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, 1u ^ select(4294967295u, 0u, var_1.x)), min(reverseBits(u_input.a), ~0u), u_input.a));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1250f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)] * 1916f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)] + global0[_wgslsmith_index_u32(u_input.a, 9u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -2346f)));
    var var_5 = Struct_3(!(!var_1), Struct_1(-26177i, _wgslsmith_f_op_f32(-var_4), u_input.a, ~(func_3(Struct_3(var_1, Struct_1(-1i, global0[_wgslsmith_index_u32(u_input.a, 9u)], 1u, vec3<i32>(2147483647i, u_input.b.x, 1i))), vec3<u32>(16968u, 31195u, 4294967295u), vec4<f32>(var_4, var_4, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(64831u, 9u)]), Struct_2(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 9u)], 16693u, vec3<i32>(u_input.b.x, -16586i, 35837i)), vec2<bool>(var_0, var_0), Struct_1(u_input.b.x, var_4, 1u, vec3<i32>(u_input.b.x, 9832i, 1i)))) | _wgslsmith_sub_vec3_i32(vec3<i32>(50701i, -35277i, 1i), vec3<i32>(2147483647i, -23835i, 2147483647i)))));
    var_5 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(15585u, 9u)], 437f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, var_4) + vec2<f32>(var_5.b.b, global0[_wgslsmith_index_u32(var_5.b.c, 9u)])) + vec2<f32>(var_5.b.b, var_5.b.b)))), var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(794f, var_5.b.b) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1055f, -784f), vec2<f32>(global0[_wgslsmith_index_u32(var_5.b.c, 9u)], var_4)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -136f)))), !var_0))), 91713u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f))) + _wgslsmith_div_f32(-1169f, -1825f)));
}


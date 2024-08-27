struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global0 = vec2<bool>(1i == ~_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, -2147483647i), ~vec3<i32>(0i, -1i, 31819i)), true);
    let var_0 = global0.x;
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, ~0u ^ ((u_input.a.x >> (u_input.a.x % 32u)) >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u))), u_input.a.x);
    var var_2 = vec2<i32>(-1i) * -(firstLeadingBit(vec2<i32>(-24759i, 23089i)) << (firstLeadingBit(u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(833f, -429f))), _wgslsmith_f_op_f32(-732f + -552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(548f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(620f)) - _wgslsmith_f_op_f32(max(-1000f, 1307f)))) - vec4<f32>(_wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(720f * 1820f), -641f, !global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-642f, -464f)), _wgslsmith_f_op_f32(sign(-1502f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-609f + -275f))))));
    return var_2.x;
}

fn func_2() -> u32 {
    let var_0 = vec4<i32>(-38137i, firstLeadingBit(reverseBits(-42626i)), _wgslsmith_add_i32(firstTrailingBit(func_3()), abs(_wgslsmith_mod_i32(11490i, -2147483647i))), 0i) & vec4<i32>(0i, -1i, 12812i, _wgslsmith_add_i32(-34958i, -69452i));
    global0 = !select(vec2<bool>(true, global0.x), !select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, true), vec2<bool>(false, false), global0.x), false), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), global0.x), true), vec2<bool>(true, !global0.x)));
    var var_1 = u_input.a.x;
    var_1 = 27617u & _wgslsmith_mod_u32(u_input.a.x, u_input.a.x >> (~1u % 32u));
    global0 = select(vec2<bool>(!(!any(vec4<bool>(global0.x, global0.x, false, global0.x))), true), vec2<bool>(true, global0.x), vec2<bool>(!(~var_0.x <= ~0i), false));
    return _wgslsmith_mult_u32(0u, reverseBits(u_input.a.x));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    global0 = !vec2<bool>(false, select(global0.x, global0.x, any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x))));
    global0 = vec2<bool>(all(!select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, false, global0.x, global0.x), true)), global0.x);
    global0 = !vec2<bool>(!global0.x, any(!(!vec3<bool>(global0.x, global0.x, true))));
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, ~arg_0.x, 2147483647i, 2147483647i), select(firstLeadingBit(arg_0), ~arg_0, any(vec3<bool>(global0.x, true, global0.x)))), vec4<i32>(_wgslsmith_add_i32(~arg_0.x, arg_0.x), firstTrailingBit(~arg_0.x), -21516i >> (1u % 32u), arg_0.x)) ^ arg_0;
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(48083u, ~u_input.a.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 31991u, 37722u)), func_2())), abs(u_input.a), u_input.a) ^ (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 157560u), ~vec2<u32>(4294967295u, u_input.a.x)) & vec2<u32>(~u_input.a.x, select(_wgslsmith_sub_u32(u_input.a.x, 47107u), 0u, select(true, false, global0.x))));
    return Struct_3(Struct_1(vec3<i32>(75774i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.zyx, vec3<i32>(0i, arg_0.x, var_0.x)), _wgslsmith_sub_vec3_i32(arg_0.wxw, var_0.zzz)), arg_0.x), vec3<bool>(true, global0.x, !any(vec2<bool>(global0.x, global0.x))), var_0.x, ~(4294967295u ^ (1u << (u_input.a.x % 32u))), !(~var_0.x < 1i)), Struct_2(Struct_1(vec3<i32>(-86728i, i32(-1i) * -6414i, min(-69476i, arg_0.x)), vec3<bool>(true, false, false), min(0i, arg_0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 43298u, u_input.a.x), vec3<u32>(0u, 45587u, 4294967295u)), vec3<u32>(4294967295u, u_input.a.x, var_1.x)), global0.x), -36515i, (~var_0.x < func_3()) && !(global0.x || global0.x), Struct_1(-var_0.wzx | var_0.yyx, select(!vec3<bool>(false, true, global0.x), !vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), _wgslsmith_dot_vec2_i32(var_0.wy, ~vec2<i32>(var_0.x, -1869i)), 0u, u_input.a.x < ~var_1.x), 1095f), any(vec2<bool>(false, !any(vec4<bool>(true, false, true, global0.x)))), !vec3<bool>(global0.x, global0.x, !all(vec2<bool>(global0.x, global0.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    var var_0 = !vec4<bool>(any(func_1(countOneBits(vec4<i32>(arg_1.a.c, 2147483647i, arg_1.a.c, arg_2.b.b.a.a.x))).b.d.b.xz), true, select(false, any(vec4<bool>(global0.x, global0.x, arg_1.c, global0.x)), false), arg_1.b.e <= _wgslsmith_f_op_f32(-arg_1.b.e));
    var var_1 = firstLeadingBit(abs(~(~vec3<u32>(arg_2.b.b.a.d, 0u, 18264u)) | firstLeadingBit(~vec3<u32>(arg_1.b.d.d, 867u, arg_2.a))));
    var var_2 = vec2<f32>(arg_2.b.b.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b.b.e * -1249f))));
    var_1 = ~min(~(~vec3<u32>(0u, var_1.x, arg_3)) & firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.d.d, var_1.x, arg_0), vec3<u32>(arg_0, arg_1.a.d, arg_1.a.d))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_2.b.b.a.d, u_input.a.x, arg_0), vec4<u32>(4294967295u, 1u, 4294967295u, arg_2.b.a.d)), arg_0, 0u));
    var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, select(1u, arg_3, true))), u_input.a), arg_1.b.d.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(11795u, 4294967295u), var_1.zz) & arg_0);
    return Struct_1(vec3<i32>(-1i) * -(select(arg_1.a.a, arg_1.b.a.a, arg_2.c) | vec3<i32>(arg_1.a.c, arg_1.b.d.a.x, arg_1.b.d.a.x)), select(vec3<bool>(arg_1.b.d.b.x, arg_2.b.a.e, any(func_1(vec4<i32>(arg_2.b.b.a.a.x, arg_2.b.a.a.x, -2147483647i, 5666i)).d)), vec3<bool>(any(vec4<bool>(arg_2.b.b.d.b.x, arg_2.b.d.x, true, var_0.x)), true, all(select(vec4<bool>(arg_1.b.d.e, arg_2.b.d.x, true, arg_1.c), vec4<bool>(arg_1.c, true, arg_1.c, arg_1.b.c), vec4<bool>(arg_1.a.e, global0.x, global0.x, arg_2.b.c)))), global0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(28997i, arg_2.b.a.a.x, arg_2.b.a.a.x, -1i), firstLeadingBit(vec4<i32>(arg_2.b.b.a.c, arg_1.b.a.a.x, 0i, -1i))) ^ max(vec4<i32>(arg_2.b.b.b, -2147483647i, arg_2.b.b.d.c, arg_1.a.a.x) << (vec4<u32>(20151u, arg_2.a, arg_0, 0u) % vec4<u32>(32u)), vec4<i32>(arg_2.b.a.c, 2147483647i, arg_2.b.a.c, arg_1.a.a.x) << (vec4<u32>(arg_2.b.a.d, 0u, arg_3, 0u) % vec4<u32>(32u))), reverseBits(vec4<i32>(-1i, 0i, 1229i, 63160i) & vec4<i32>(arg_1.b.b, arg_2.b.a.c, 494i, arg_2.b.b.d.a.x)) ^ max(vec4<i32>(arg_1.b.d.a.x, -55840i, arg_1.a.c, 24460i), firstLeadingBit(vec4<i32>(0i, 1i, arg_2.b.a.c, arg_2.b.a.c)))), arg_1.b.a.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(51575u, func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -13778i, 0i, 1i), abs(vec4<i32>(2147483647i, -2147483647i, 30462i, -35767i)))), Struct_4(u_input.a.x, Struct_3(Struct_1(vec3<i32>(51776i, 2147483647i, 0i), vec3<bool>(true, global0.x, global0.x), -31367i, u_input.a.x, true), Struct_2(Struct_1(vec3<i32>(-16906i, 1i, 1i), vec3<bool>(global0.x, global0.x, global0.x), 0i, u_input.a.x, false), -4756i, global0.x, Struct_1(vec3<i32>(-26608i, -12296i, 2147483647i), vec3<bool>(global0.x, false, true), 2147483647i, u_input.a.x, global0.x), 192f), global0.x, select(vec3<bool>(false, true, global0.x), vec3<bool>(true, false, false), vec3<bool>(true, global0.x, global0.x))), !vec3<bool>(global0.x, false, global0.x)), 1u), select(firstTrailingBit(func_3()), abs(-reverseBits(-2147483647i)), true), global0.x, func_1(firstLeadingBit(vec4<i32>(0i, -45815i, 10994i, -48239i) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 39142u) % vec4<u32>(32u)))).a, _wgslsmith_f_op_f32(floor(-1000f)));
    global0 = select(var_0.a.b.xx, select(vec2<bool>(false, global0.x), !func_4(abs(1u), Struct_3(var_0.a, var_0, true, var_0.a.b), Struct_4(32245u, Struct_3(var_0.a, var_0, true, vec3<bool>(true, var_0.a.b.x, false)), vec3<bool>(global0.x, false, global0.x)), var_0.a.d << (98542u % 32u)).b.xx, !(~0u < var_0.a.d)), var_0.a.b.x);
    var var_1 = global0.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1207f)), 444f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1201f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(599f - var_0.e)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.e)), _wgslsmith_f_op_f32(-var_0.e), any(vec3<bool>(var_0.d.b.x, var_0.c, var_0.d.e)))) + 275f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-318f, var_0.e, 824f, -183f), vec4<f32>(-552f, var_0.e, 1000f, var_0.e), var_0.d.e))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, 355f, var_0.e, var_0.e) + vec4<f32>(var_0.e, -748f, -942f, -1000f)) - vec4<f32>(1079f, -660f, var_0.e, var_0.e))))));
    var_1 = all(vec4<bool>(true, true, var_0.d.b.x, func_1(vec4<i32>(_wgslsmith_mult_i32(14867i, var_0.b), 27251i, -2147483647i, -9007i)).d.x));
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}


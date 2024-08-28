struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = array<f32, 18>();
    var var_0 = select(vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(41737u), 18u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13508u, 18u)]) - 1000f), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), false)), true, true), !vec4<bool>(u_input.a.x < u_input.a.x, true, select(true, global0[_wgslsmith_index_u32(35054u, 18u)] != -1459f, true), true), select(vec4<bool>(true, true, select(true, true, false), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false)), true), select(vec4<bool>(true, any(vec2<bool>(false, true)), true, true), vec4<bool>(any(vec2<bool>(true, false)), true, false, true), reverseBits(715u) > _wgslsmith_dot_vec2_u32(vec2<u32>(50101u, 0u), vec2<u32>(14589u, 42418u)))));
    let var_1 = Struct_4(var_0.x, select(select(var_0.ww, !(!var_0.wx), !select(var_0.zx, var_0.yy, var_0.x)), vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(60993u, 1u), vec2<u32>(10226u, 20527u)) > ~4294967295u), !select(vec2<bool>(true, var_0.x), var_0.zx, true)), vec2<i32>(~max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 0i, u_input.a.x))) & vec2<i32>(reverseBits(u_input.a.x), -2147483647i));
    let var_2 = true;
    let var_3 = Struct_4(var_0.x, select(select(vec2<bool>(true, true), var_0.xw, var_1.b), select(select(vec2<bool>(var_2, var_0.x), select(vec2<bool>(true, false), vec2<bool>(false, false), true), all(vec3<bool>(var_2, true, var_2))), select(var_1.b, var_1.b, vec2<bool>(false, false)), var_1.a), vec2<bool>(true, var_1.a)), -select(select(vec2<i32>(1i, 1i), -var_1.c, vec2<bool>(var_0.x, true)), _wgslsmith_clamp_vec2_i32(u_input.a << (vec2<u32>(84690u, 1u) % vec2<u32>(32u)), -var_1.c, select(vec2<i32>(var_1.c.x, var_1.c.x), vec2<i32>(-18372i, 49320i), vec2<bool>(true, var_2))), var_0.x));
    return var_1.b;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_5(Struct_3(func_3(), u_input.a.x, ~_wgslsmith_mod_vec2_i32(vec2<i32>(40860i, u_input.a.x) & vec2<i32>(arg_1, -1i), u_input.a)), global1[_wgslsmith_index_u32(~77762u, 13u)], Struct_2(global0[_wgslsmith_index_u32(4869u, 18u)], vec3<f32>(global0[_wgslsmith_index_u32(3745u, 18u)], global0[_wgslsmith_index_u32(abs(~0u), 18u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 48766u, 7506u) << (_wgslsmith_add_u32(4640u, 25784u) % 32u), 18u)]), Struct_1(true, vec4<u32>(_wgslsmith_add_u32(4301u, 22877u), ~72991u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(6601u, 23426u, 1u, 4294967295u), vec4<u32>(0u, 25572u, 22815u, 0u))))), vec4<bool>(!(true && (arg_2 & false)), !(!(u_input.a.x <= u_input.a.x)), all(vec2<bool>(true, true)), true));
    let var_1 = Struct_4(func_3().x, !vec2<bool>(arg_0, any(select(vec4<bool>(arg_2, false, arg_2, true), var_0.d, var_0.d))), vec2<i32>(-1i) * -(-u_input.a ^ u_input.a));
    var var_2 = _wgslsmith_mult_i32(-var_1.c.x, arg_1);
    var var_3 = _wgslsmith_div_vec4_u32(~var_0.b.b ^ vec4<u32>((var_0.c.c.b.x | var_0.c.c.b.x) ^ 37349u, ~abs(var_0.c.c.b.x), ~_wgslsmith_dot_vec4_u32(var_0.b.b, var_0.b.b), 44447u), vec4<u32>(1u, select(~(~var_0.c.c.b.x), ~(var_0.c.c.b.x >> (var_0.c.c.b.x % 32u)), true), 16383u, var_0.b.b.x));
    let var_4 = Struct_5(Struct_3(select(var_0.a.a, var_0.d.zy, select(func_3(), !vec2<bool>(arg_2, var_1.a), true)), var_0.a.b, vec2<i32>(-1i) * -vec2<i32>(23912i, var_0.a.c.x)), Struct_1(func_3().x, var_0.c.c.b | ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, var_0.c.c.b.x, 0u, var_3.x), vec4<u32>(var_3.x, 1186u, var_0.b.b.x, var_3.x))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(337f))))), var_0.c.b, Struct_1(true, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.c.c.b.x, 4294967295u, 7091u), min(var_0.c.c.b, vec4<u32>(var_3.x, var_3.x, 119434u, 0u))))), vec4<bool>(!any(vec4<bool>(false, var_0.b.a, false, arg_0)), true, 799f == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3.x, 18u)] * -688f), -128f != global0[_wgslsmith_index_u32(var_3.x, 18u)]));
    return Struct_1(true, countOneBits(abs(~vec4<u32>(4294967295u, var_0.c.c.b.x, var_4.b.b.x, 1u) << (max(var_0.c.c.b, var_0.c.c.b) % vec4<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(arg_1.x, u_input.a.x, arg_1.x);
    let var_1 = Struct_4(func_2(false, _wgslsmith_mod_i32(reverseBits(arg_0), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)) << (_wgslsmith_div_u32(11985u, var_0.b.x) % 32u)), true).a, !arg_1.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(min(u_input.a.x, min(2450i, u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 0i, u_input.a.x, u_input.a.x), vec4<i32>(3765i, arg_0, u_input.a.x, -12992i)), arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, firstTrailingBit(u_input.a.x)), vec2<i32>(-830i, ~arg_0))));
    let var_2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 18u)] + _wgslsmith_f_op_f32(f32(-1f) * -1317f)) > _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.b.x << (abs(countOneBits(1u)) % 32u), 18u)]));
    global1 = array<Struct_1, 13>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(var_0.b.x, 18u)], -1326f), vec3<f32>(-1266f, global0[_wgslsmith_index_u32(var_0.b.x, 18u)], -358f), vec3<bool>(false, false, false)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, -488f, -484f))))))));
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(280f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 18u)], 1675f, -1411f), vec3<f32>(1359f, 996f, global0[_wgslsmith_index_u32(var_0.b.x, 18u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 18u)], var_3.x, 137f))), arg_1)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1285f)) - var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, -645f)), global0[_wgslsmith_index_u32(~1u << (var_0.b.x % 32u), 18u)])), Struct_1(all(select(!vec4<bool>(var_2, false, var_0.a, false), !vec4<bool>(var_0.a, var_1.a, false, false), var_0.a)), (reverseBits(vec4<u32>(0u, var_0.b.x, 1u, 0u)) & vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_0.b.x)) & ~_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, 26044u, 47080u, 1049u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    global0 = array<f32, 18>();
    global1 = array<Struct_1, 13>();
    var var_0 = vec4<u32>(abs(arg_1.c.b.x), ~18168u, 92233u, _wgslsmith_mod_u32(51548u, ~firstLeadingBit(func_2(arg_1.c.a, u_input.a.x, false).b.x)));
    return Struct_3(select(select(vec2<bool>(!arg_1.c.a, arg_1.c.a), !select(vec2<bool>(false, arg_1.c.a), arg_0.b, arg_0.b), func_3()), func_3(), any(!select(arg_0.b, arg_0.b, false))), arg_0.c.x, select(u_input.a, ~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c.x, u_input.a.x) & vec2<i32>(arg_0.c.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), !arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global0 = array<f32, 18>();
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = u_input.a.x;
    var var_1 = Struct_5(func_4(Struct_4((u_input.a.x >= var_0) && false, select(vec2<bool>(false, true), vec2<bool>(true, true), select(false, true, true)), vec2<i32>(var_0, countOneBits(-21702i))), func_1(15697i, vec3<bool>(true, true, true)), select(~firstTrailingBit(13192u), _wgslsmith_clamp_u32(10601u, 33745u, ~1u), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)))), func_2(true, var_0, true), Struct_2(-987f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1098f, -606f, global0[_wgslsmith_index_u32(4294967295u, 18u)]) - vec3<f32>(-881f, 379f, global0[_wgslsmith_index_u32(4294967295u, 18u)])))), func_2(func_3().x, min(var_0 | 57992i, firstTrailingBit(var_0)), true)), vec4<bool>(true, _wgslsmith_div_i32(0i, var_0) <= u_input.a.x, true, !all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))));
    var var_2 = Struct_1(!(true && (var_1.b.b.x <= 6242u)) & ((!var_1.c.c.a != true) & true), var_1.c.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(-func_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.b, 33084i), vec2<i32>(-1i, 12705i)), vec3<bool>(true, func_1(var_0, vec3<bool>(var_1.d.x, var_1.a.a.x, false)).c.a, false)).a));
}


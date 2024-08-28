struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = reverseBits(7888i);
    global0 = Struct_3(Struct_2(~global0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.x + -1319f))) * global0.b.x), _wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.b.x)))), global0.e.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-752f)))), global0.d.a, global0.d, global0.e);
    var var_1 = global0.a;
    var var_2 = select(vec4<bool>(4294967295u < _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c, 8291u, global0.a.a.x), vec3<u32>(arg_0.a, var_1.a.x, global0.d.a.x)), false, (i32(-1i) * -u_input.a.x) < abs(u_input.a.x), !(!(61198u > var_1.a.x))), select(select(vec4<bool>(true, arg_0.b <= arg_0.a, true, true), vec4<bool>(30960u <= var_1.a.x, true, true, any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(false, false, false)), true)), vec4<bool>(_wgslsmith_f_op_f32(sign(1677f)) > arg_0.d.x, _wgslsmith_f_op_f32(arg_0.d.x * -676f) >= _wgslsmith_f_op_f32(global0.b.x * -171f), all(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d.x, -796f)) * -338f) > global0.e.x), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.e.x))))))));
    return true;
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.e.x)));
    let var_1 = ~(_wgslsmith_add_i32(u_input.a.x | -2147483647i, u_input.a.x) & select(u_input.a.x, countOneBits(u_input.a.x), func_3(Struct_1(global0.c.x, global0.a.a.x, 0u, vec3<f32>(810f, 628f, 429f)))));
    var var_2 = arg_0 > 776f;
    var var_3 = -452f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) + 130f))));
    return Struct_3(Struct_2(~((global0.c >> (vec3<u32>(global0.a.a.x, global0.c.x, global0.c.x) % vec3<u32>(32u))) >> (global0.c % vec3<u32>(32u)))), global0.e, _wgslsmith_div_vec3_u32(vec3<u32>(min(4294967295u & global0.d.a.x, ~global0.a.a.x), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 0u), vec2<u32>(27263u, global0.a.a.x))), ~0u | _wgslsmith_clamp_u32(global0.a.a.x, 11081u, global0.d.a.x)), ~vec3<u32>(~0u, ~global0.d.a.x, ~10734u)), global0.a, global0.e);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> i32 {
    let var_0 = false;
    let var_1 = countOneBits(u_input.a.x);
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(arg_1), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.e.x, arg_0.b.x)) + _wgslsmith_f_op_f32(abs(641f)))).d.a.x, countOneBits(4294967295u), 65659u), select(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, arg_1, global0.a.a.x, 0u)), vec4<u32>(arg_1, arg_1, arg_0.c.x, arg_1) >> (select(vec4<u32>(56679u, global0.d.a.x, arg_0.d.a.x, global0.d.a.x), vec4<u32>(9396u, 17433u, arg_0.c.x, global0.a.a.x), vec4<bool>(true, var_0, false, true)) % vec4<u32>(32u))), vec4<u32>(106548u, ~(~arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, 9014u), ~vec4<u32>(arg_0.a.a.x, 2960u, 29181u, 4294967295u)), countOneBits(abs(33139u))), true));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e.x))) - global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + global0.b.x) - _wgslsmith_f_op_f32(-arg_0.b.x)), global0.e.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) + -634f)), select(var_0, var_0, global0.e.x < 1f)));
    var_3 = _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(sign(global0.b.x))))));
    return firstLeadingBit(-17733i);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_4 {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x ^ _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, -(u_input.a >> (vec3<u32>(41199u, arg_1.a, 4294967295u) % vec3<u32>(32u)))), arg_0);
    let var_1 = Struct_2(select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(30561u, 0u, 4294967295u), arg_2.a), vec3<u32>(1u, ~32807u, max(global0.a.a.x, arg_1.a))), vec3<u32>(arg_2.a.x, ~arg_2.a.x, ~(~25223u)), false));
    let var_2 = func_2(global0.b.x).a;
    var var_3 = Struct_3(arg_2, _wgslsmith_f_op_vec4_f32(-global0.b), vec3<u32>(_wgslsmith_clamp_u32(31637u, 46757u, arg_1.a & 1u), firstLeadingBit(var_1.a.x), (145665u ^ arg_1.a) | arg_2.a.x) << (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_1.a.x, global0.d.a.x, var_2.a.x)), abs(vec3<u32>(global0.c.x, var_2.a.x, 4294967295u) & var_2.a)) % vec3<u32>(32u)), arg_2, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(829f)), _wgslsmith_div_f32(-1073f, global0.b.x), all(vec3<bool>(true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1434f)), func_2(global0.b.x).b.x), false))).b);
    return arg_1;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_4(global0.a.a.x);
    var var_1 = true;
    var var_2 = func_5(-func_4(func_2(_wgslsmith_f_op_f32(min(global0.e.x, global0.e.x))), ~(var_0.a ^ 18098u)), Struct_4(1u), Struct_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.a.x, global0.d.a.x, 5240u), global0.d.a)));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global0.e.x, -1488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(all(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, false, false, false)))))), global0.e.x);
    var var_1 = any(vec4<bool>(any(vec3<bool>(true, true, true)), true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)), any(vec4<bool>(false, true, false, false)))) || !all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false)));
    var var_2 = ~(~(~vec4<u32>(~global0.c.x, 0u, ~global0.c.x, select(global0.a.a.x, global0.a.a.x, true))));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(ceil(var_0.x)), true, Struct_1(_wgslsmith_sub_u32(global0.d.a.x, ~var_2.x), var_2.x, global0.d.a.x, global0.b.xzz), func_2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + 891f) * 251f))), func_2(_wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(ceil(global0.b.x)))));
    let var_4 = Struct_3(var_3.e.a, var_3.d.b, ~global0.c, global0.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1815f, 299f, 475f, global0.e.x), vec4<f32>(var_0.x, 643f, -1000f, 1871f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_3.d.e.x), vec4<f32>(-770f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -123f, var_3.d.e.x, -1135f))), var_3.b))))));
    let var_5 = global0.a;
    let var_6 = vec4<u32>(_wgslsmith_div_u32(~firstTrailingBit(1u), min(~var_3.c.c, var_5.a.x)), var_5.a.x, var_3.d.a.a.x ^ (~var_5.a.x >> (_wgslsmith_sub_u32(var_3.e.a.a.x, 1u) % 32u)), var_4.d.a.x);
    let var_7 = var_2.xxx;
    var_1 = !any(select(!select(vec4<bool>(false, false, var_3.b, var_3.b), vec4<bool>(var_3.b, false, var_3.b, false), vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b)), vec4<bool>(func_3(Struct_1(49075u, var_7.x, 4294967295u, global0.b.yww)), select(var_3.b, var_3.b, var_3.b), select(true, true, true), true), var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, -1769f)))), var_0.wz)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(global0.d.a, var_2.zzx), ~var_4.a.a) >> (var_4.c % vec3<u32>(32u)), vec3<u32>(global0.c.x, _wgslsmith_add_u32(select(4294967295u, global0.d.a.x, var_3.b), var_3.d.d.a.x), ~(~20954u))), vec3<i32>(countOneBits(~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(17699i, countOneBits(u_input.a.x)), ~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)));
}


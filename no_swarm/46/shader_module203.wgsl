struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32> = vec2<f32>(644f, 1657f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<f32> {
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_1.c.x), any(select(!global0.b, global0.b, global0.b)), _wgslsmith_f_op_vec3_f32(-global0.a.c)), !select(global0.b, vec2<bool>(true, true), select(!arg_1.b, false, !arg_1.b)), global0.c);
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(526f + arg_1.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -693f), _wgslsmith_f_op_f32(-global0.a.c.x)))), true, arg_1.c), vec2<bool>(true, true), Struct_2(0u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-arg_1.c.x))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) * global0.a.a), var_0.a.a);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-1226f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2366f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.c + global0.a.c));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_3(arg_1.a, select(vec2<bool>(!(!arg_1.a.b), !arg_1.a.b), !vec2<bool>(true, arg_1.a.b), arg_1.b), global0.c);
    var_0 = arg_1;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a)) + 1136f), !arg_0.b, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_u32(~4294967295u, 0u), global0.a, ~vec3<u32>(4294967295u, global0.c.a, 0u) & vec3<u32>(4294967295u, 1u, var_0.c.a)))), select(!(!arg_1.b), select(select(!arg_1.b, !vec2<bool>(false, global0.b.x), !vec2<bool>(arg_1.b.x, global0.a.b)), arg_1.b, select(vec2<bool>(arg_1.b.x, false), vec2<bool>(global0.b.x, arg_0.b), arg_1.c.a <= var_0.c.a)), global0.b), Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c.a, 0u, 1u), ~vec3<u32>(u_input.a, 33826u, 24962u)), 1u, 22782u)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(exp2(global0.a.a))), true || (1f == _wgslsmith_f_op_f32(-210f - global1.x)), var_1.a.c), var_0.b, Struct_2(var_0.c.a));
    let var_3 = var_1.c.a;
    return abs(17297i);
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    return _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(~select(vec4<i32>(1i, -21912i, 14847i, -28569i), vec4<i32>(1i, 56991i, -17491i, 10241i), global0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-73289i, -26307i, 39755i, -17188i), vec4<i32>(1i, 24889i, -2147483647i, -23935i))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, 43500i, 0i, -3096i), vec4<i32>(2147483647i, 14051i, 0i, 1i)), vec4<i32>(-1i, -3702i, 0i, 60452i) >> (vec4<u32>(1u, 4294967295u, 8397u, global0.c.a) % vec4<u32>(32u))), func_2(global0.a, Struct_3(Struct_1(-1000f, global0.a.b, vec3<f32>(1000f, -1367f, global0.a.a)), global0.b, Struct_2(76565u))) << (~4294967295u % 32u)), max(reverseBits(abs(0i)), min(_wgslsmith_mod_i32(-14814i, 8360i), _wgslsmith_clamp_i32(15038i, 31955i, -3048i))), 9819i, 1i));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(arg_0, select(vec2<bool>(-49510i > arg_2, arg_3.x <= 0u), select(!global0.b, global0.b, global0.b), select(global0.b, !vec2<bool>(global0.b.x, global0.a.b), global0.b)), global0.c), reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-73698i, -25478i, 4602i, 2147483647i), ~vec4<i32>(arg_2, arg_2, 5113i, -1i))), true || (firstLeadingBit(4294967295u << (global0.c.a % 32u)) < 24314u), global0.a, Struct_2(global0.c.a));
    let var_1 = global0.a.b;
    let var_2 = Struct_4(Struct_3(arg_0, vec2<bool>(true, -589f > _wgslsmith_f_op_f32(global0.a.c.x - 591f)), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(25526u, u_input.a, global0.c.a, 0u), arg_3))), vec4<i32>(func_2(var_0.a.a, var_0.a), _wgslsmith_div_i32(i32(-1i) * -12018i, _wgslsmith_mod_i32(arg_2, var_0.b.x)), arg_2, var_0.b.x) & var_0.b, true, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1535f))), false && all(vec3<bool>(false, arg_0.b, false)), vec3<f32>(_wgslsmith_f_op_f32(abs(-143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 338f)), Struct_2(_wgslsmith_dot_vec3_u32(arg_3.zyz >> (firstLeadingBit(vec3<u32>(global0.c.a, 720u, global0.c.a)) % vec3<u32>(32u)), ~arg_3.xzw)));
    global0 = var_0.a;
    let var_3 = global0.a;
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(-4775i << (_wgslsmith_add_u32(44799u, ~u_input.a) % 32u), ~countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -2147483647i, -8451i, 2147483647i), vec4<i32>(1i, -35320i, -2147483647i, 17060i), vec4<bool>(global0.a.b, global0.b.x, global0.a.b, global0.b.x)), ~vec4<i32>(2147483647i, 0i, 15038i, -745i))), ~(-8398i));
    var var_1 = Struct_1(global1.x, ~13751i == _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0, reverseBits(69529i), var_0 << (global0.c.a % 32u), _wgslsmith_add_i32(var_0, 1i)), select(vec4<i32>(var_0, 13581i, var_0, 2895i) >> (vec4<u32>(global0.c.a, 34121u, 1u, 52376u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-52793i, var_0, var_0, var_0), vec4<i32>(var_0, 19682i, 0i, var_0)), !vec4<bool>(global0.a.b, false, global0.b.x, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f * 2313f))), global0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f - global1.x)))));
    var var_2 = select(vec2<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1i) * -36891i, ~2147483647i), var_0)), vec2<i32>(11422i, var_0), 123255u < abs(43420u << (~u_input.a % 32u)));
    global0 = Struct_3(func_4(Struct_1(_wgslsmith_f_op_f32(-global0.a.c.x), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, var_1.a)), _wgslsmith_f_op_vec3_f32(var_1.c + global0.a.c))), var_1.b | global0.a.b, func_1(vec3<u32>(abs(149091u), 7343u, abs(u_input.a))), ~select(~vec4<u32>(global0.c.a, 35565u, 1u, u_input.a), select(vec4<u32>(0u, u_input.a, global0.c.a, u_input.a), vec4<u32>(65890u, 4294967295u, u_input.a, 1u), vec4<bool>(false, global0.a.b, false, global0.b.x)), false)), vec2<bool>(true, select(var_0, 1i, all(vec3<bool>(var_1.b, true, true))) != -_wgslsmith_clamp_i32(-20892i, -1i, var_2.x)), global0.c);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_div_f32(global0.a.c.x, global0.a.a), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f * 2021f)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(181f)) * global1.x) - -216f) - func_4(Struct_1(global0.a.a, false, global0.a.c), false, ~(-var_0), max(vec4<u32>(43100u, 89319u, u_input.a, 1u) << (vec4<u32>(0u, global0.c.a, global0.c.a, 1u) % vec4<u32>(32u)), ~vec4<u32>(0u, global0.c.a, u_input.a, 13133u))).c.x));
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, -788f)), global0.a.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(abs(global0.c.a), global0.a, vec3<u32>(15294u, 37579u, 20105u))).x - _wgslsmith_f_op_f32(abs(-625f)))));
    var var_5 = select(0u >= _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 0u) ^ vec3<u32>(9294u, global0.c.a, 1u)), ~(~1u)), !(_wgslsmith_div_u32(81386u, _wgslsmith_add_u32(4294967295u, global0.c.a)) != _wgslsmith_mod_u32(global0.c.a, ~32546u)), (true == !global0.a.b) || (true | global0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, 448f, _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_vec3_f32(func_3(~u_input.a, Struct_1(var_1.c.x, true, var_3.yzw), vec3<u32>(0u, global0.c.a, 0u) ^ vec3<u32>(15366u, u_input.a, 36622u))).x)), _wgslsmith_clamp_u32(~(u_input.a << (global0.c.a % 32u)) >> (u_input.a % 32u), global0.c.a, ~4294967295u));
}


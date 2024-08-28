struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, any(vec4<bool>(true, false, false, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), select(false, true, true))), vec2<bool>(true, 2147483647i < abs(u_input.d.x))), select(select(vec2<bool>(false, any(vec4<bool>(false, true, true, true))), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), !(1u <= u_input.b.x)), vec2<bool>(true, true), true), any(vec2<bool>(true, u_input.b.x > 37769u)));
    var var_1 = 2147483647i;
    var_1 = reverseBits(-2147483647i);
    let var_2 = vec3<bool>(!select(var_0.x, !(false & var_0.x), false), var_0.x, true);
    let var_3 = var_0.x;
    return abs(abs(abs(33821u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = 101191u;
    var_0 = 1u;
    var_0 = ~arg_1.a.b;
    var_0 = ~reverseBits(firstTrailingBit(func_3()));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.a.c, vec3<f32>(112f, _wgslsmith_f_op_f32(-arg_1.b.c.x), arg_0.b.c.x))));
    return all(!(!select(select(vec4<bool>(true, arg_0.b.a, arg_0.a.a, true), vec4<bool>(false, arg_0.a.a, arg_0.a.a, arg_1.a.a), vec4<bool>(arg_1.a.a, arg_1.c.a, false, false)), vec4<bool>(arg_1.c.a, true, arg_1.a.a, arg_0.a.a), true)));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = select(vec4<bool>(true, arg_0, true, arg_1.x), vec4<bool>(all(select(!vec3<bool>(arg_1.x, arg_1.x, arg_2.a.a), vec3<bool>(arg_0, arg_2.c.a, true), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_1.x, arg_0, true), true))), select(true, arg_0, !(!arg_3.a.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.b.c.x * 639f))) < arg_3.a.c.x, any(!vec3<bool>(arg_2.c.a, false, true)) == true), true);
    let var_1 = Struct_1(all(vec4<bool>(false, arg_0, all(vec4<bool>(true, true, false, false)), !var_0.x)), ~(~arg_2.b.b & _wgslsmith_add_u32(~48090u, abs(arg_2.a.b))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.c.x), arg_2.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3.c.c.x)), arg_3.b.c.x)) * arg_2.a.c.x)), arg_2.a.d);
    let var_2 = arg_3.c;
    return arg_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(true, 10058u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1617f, -181f, _wgslsmith_f_op_f32(step(244f, -733f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 721f, 1516f))))), 1i);
    var_0 = func_4(true, vec2<bool>(any(vec2<bool>(true, true)) == select(func_2(Struct_2(Struct_1(var_0.a, 0u, var_0.c, u_input.d.x), Struct_1(var_0.a, 73532u, vec3<f32>(1006f, 678f, -989f), var_0.d), Struct_1(true, u_input.b.x, var_0.c, 0i)), Struct_2(Struct_1(true, var_0.b, var_0.c, -11602i), Struct_1(false, u_input.b.x, var_0.c, 0i), Struct_1(var_0.a, 110549u, vec3<f32>(var_0.c.x, -503f, 644f), var_0.d))), var_0.a, !var_0.a), all(vec2<bool>(true, true)) && (u_input.b.x < (u_input.b.x >> (u_input.b.x % 32u)))), Struct_2(Struct_1(var_0.a == func_2(Struct_2(Struct_1(false, 113363u, vec3<f32>(var_0.c.x, var_0.c.x, -602f), u_input.a.x), Struct_1(true, var_0.b, var_0.c, u_input.a.x), Struct_1(true, 68337u, vec3<f32>(503f, 315f, var_0.c.x), var_0.d)), Struct_2(Struct_1(var_0.a, 27281u, var_0.c, -16613i), Struct_1(false, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, -478f), u_input.a.x), Struct_1(true, 4518u, vec3<f32>(-372f, 2163f, -489f), u_input.a.x))), _wgslsmith_clamp_u32(var_0.b, 47028u, var_0.b) >> (_wgslsmith_add_u32(119339u, var_0.b) % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, -1095f, var_0.c.x), vec3<f32>(var_0.c.x, 1190f, var_0.c.x), vec3<bool>(var_0.a, var_0.a, var_0.a))), _wgslsmith_f_op_vec3_f32(sign(var_0.c))), u_input.c.x), Struct_1(all(select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, true, false, true), var_0.a)), ~u_input.b.x | 84745u, var_0.c, -1i), Struct_1(func_2(Struct_2(Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, 409f), u_input.a.x), Struct_1(true, u_input.b.x, var_0.c, u_input.c.x), Struct_1(false, 66431u, var_0.c, var_0.d)), Struct_2(Struct_1(true, 4294967295u, vec3<f32>(var_0.c.x, 1318f, var_0.c.x), var_0.d), Struct_1(true, var_0.b, vec3<f32>(951f, 393f, var_0.c.x), var_0.d), Struct_1(false, u_input.b.x, var_0.c, var_0.d))), _wgslsmith_sub_u32(var_0.b, 4294967295u), var_0.c, u_input.d.x)), Struct_2(Struct_1(false, 66728u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + _wgslsmith_f_op_vec3_f32(-var_0.c)), 2147483647i), Struct_1(false, select(1u, _wgslsmith_mult_u32(101238u, var_0.b), var_0.a), var_0.c, _wgslsmith_add_i32(-2147483647i, max(var_0.d, u_input.d.x))), Struct_1(!(!var_0.a), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.c))), _wgslsmith_dot_vec4_i32(~u_input.c, vec4<i32>(var_0.d, 25578i, u_input.a.x, var_0.d)))));
    var_0 = Struct_1(func_2(Struct_2(Struct_1(!var_0.a, 0u, _wgslsmith_f_op_vec3_f32(trunc(var_0.c)), var_0.d), Struct_1(!var_0.a, ~var_0.b, func_4(var_0.a, vec2<bool>(true, false), Struct_2(Struct_1(false, 0u, vec3<f32>(var_0.c.x, var_0.c.x, 1050f), u_input.a.x), Struct_1(true, u_input.b.x, var_0.c, var_0.d), Struct_1(true, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, 1162f), u_input.c.x)), Struct_2(Struct_1(true, 1u, var_0.c, u_input.c.x), Struct_1(false, var_0.b, var_0.c, 1i), Struct_1(var_0.a, 4294967295u, vec3<f32>(var_0.c.x, var_0.c.x, 1414f), var_0.d))).c, ~84786i), Struct_1(var_0.a && var_0.a, 1u, vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x), 52611i)), Struct_2(func_4(var_0.a, vec2<bool>(true, true), Struct_2(Struct_1(var_0.a, 4294967295u, var_0.c, u_input.c.x), Struct_1(true, 0u, var_0.c, -2147483647i), Struct_1(true, u_input.b.x, var_0.c, var_0.d)), Struct_2(Struct_1(false, var_0.b, var_0.c, -1i), Struct_1(false, u_input.b.x, var_0.c, -2147483647i), Struct_1(true, 547u, var_0.c, 0i))), Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c), -1i), Struct_1(any(vec3<bool>(var_0.a, var_0.a, var_0.a)), 44563u, _wgslsmith_f_op_vec3_f32(-var_0.c), abs(-1i)))), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) - _wgslsmith_f_op_vec3_f32(-var_0.c)), var_0.d);
    var_0 = func_4(var_0.a, vec2<bool>(any(!select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, true), true)), var_0.a == all(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false)))), Struct_2(Struct_1(~var_0.b >= abs(var_0.b), func_4(false, !vec2<bool>(var_0.a, var_0.a), Struct_2(Struct_1(false, var_0.b, vec3<f32>(var_0.c.x, -635f, var_0.c.x), u_input.c.x), Struct_1(true, var_0.b, var_0.c, -1i), Struct_1(false, u_input.b.x, vec3<f32>(var_0.c.x, var_0.c.x, -888f), u_input.c.x)), Struct_2(Struct_1(true, 40540u, vec3<f32>(-1447f, var_0.c.x, var_0.c.x), -62845i), Struct_1(false, 78629u, var_0.c, -53007i), Struct_1(false, var_0.b, vec3<f32>(-1000f, 2410f, -1191f), u_input.c.x))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c)), max(var_0.d, func_4(var_0.a, vec2<bool>(var_0.a, var_0.a), Struct_2(Struct_1(false, var_0.b, vec3<f32>(-516f, -430f, var_0.c.x), u_input.c.x), Struct_1(var_0.a, var_0.b, vec3<f32>(-810f, 111f, 1577f), 0i), Struct_1(var_0.a, 85u, vec3<f32>(-688f, 1000f, 1000f), u_input.a.x)), Struct_2(Struct_1(true, 42315u, vec3<f32>(682f, -106f, 170f), var_0.d), Struct_1(var_0.a, 18905u, vec3<f32>(var_0.c.x, -1045f, var_0.c.x), var_0.d), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, 1097f, -1199f), 31810i))).d)), Struct_1(!var_0.a, u_input.b.x, var_0.c, _wgslsmith_mod_i32(2137i, -43944i | var_0.d)), func_4(_wgslsmith_div_u32(9947u, 4294967295u) <= _wgslsmith_div_u32(var_0.b, var_0.b), vec2<bool>(var_0.a, false), Struct_2(Struct_1(var_0.a, 27518u, vec3<f32>(var_0.c.x, -201f, 398f), var_0.d), func_4(false, vec2<bool>(var_0.a, true), Struct_2(Struct_1(false, u_input.b.x, var_0.c, 3885i), Struct_1(var_0.a, 0u, vec3<f32>(-815f, 662f, 1614f), var_0.d), Struct_1(var_0.a, 9716u, vec3<f32>(var_0.c.x, -1575f, 1337f), u_input.c.x)), Struct_2(Struct_1(false, var_0.b, vec3<f32>(244f, var_0.c.x, -353f), u_input.c.x), Struct_1(false, var_0.b, vec3<f32>(var_0.c.x, -1506f, var_0.c.x), u_input.d.x), Struct_1(var_0.a, 11287u, vec3<f32>(var_0.c.x, 410f, 2706f), -35692i))), func_4(var_0.a, vec2<bool>(var_0.a, var_0.a), Struct_2(Struct_1(var_0.a, 76429u, var_0.c, var_0.d), Struct_1(var_0.a, 73285u, var_0.c, var_0.d), Struct_1(false, 7402u, vec3<f32>(288f, 794f, -322f), 1430i)), Struct_2(Struct_1(false, u_input.b.x, vec3<f32>(var_0.c.x, 1336f, var_0.c.x), var_0.d), Struct_1(false, 10281u, var_0.c, -2147483647i), Struct_1(true, 2044u, var_0.c, -2147483647i)))), Struct_2(Struct_1(var_0.a, 10201u, vec3<f32>(var_0.c.x, -1891f, var_0.c.x), u_input.a.x), Struct_1(var_0.a, var_0.b, vec3<f32>(-1349f, var_0.c.x, var_0.c.x), var_0.d), func_4(true, vec2<bool>(var_0.a, var_0.a), Struct_2(Struct_1(false, 97013u, vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x), u_input.d.x), Struct_1(false, 1u, vec3<f32>(var_0.c.x, -282f, var_0.c.x), var_0.d), Struct_1(var_0.a, 1u, var_0.c, 2147483647i)), Struct_2(Struct_1(var_0.a, 75823u, vec3<f32>(-1038f, -464f, -554f), 2383i), Struct_1(var_0.a, u_input.b.x, var_0.c, 0i), Struct_1(false, var_0.b, vec3<f32>(-663f, 1836f, var_0.c.x), u_input.a.x)))))), Struct_2(Struct_1(~(-18119i) != func_4(false, vec2<bool>(var_0.a, var_0.a), Struct_2(Struct_1(var_0.a, 18329u, vec3<f32>(var_0.c.x, var_0.c.x, 857f), 1i), Struct_1(false, 63884u, var_0.c, -67252i), Struct_1(var_0.a, var_0.b, var_0.c, u_input.d.x)), Struct_2(Struct_1(false, var_0.b, vec3<f32>(1000f, 663f, var_0.c.x), u_input.c.x), Struct_1(var_0.a, u_input.b.x, var_0.c, 2147483647i), Struct_1(var_0.a, 27411u, vec3<f32>(-939f, var_0.c.x, var_0.c.x), -23742i))).d, max(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 11141u), vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)), i32(-1i) * -42274i), Struct_1(any(!vec2<bool>(var_0.a, var_0.a)), min(var_0.b, 14937u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c)), _wgslsmith_sub_i32(-1i, 2213i)), Struct_1(var_0.a, ~u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), var_0.c.x, -423f), abs(-28235i))));
    let var_1 = Struct_2(func_4(!select(false, true, !var_0.a), !vec2<bool>(true, var_0.a), Struct_2(func_4(any(vec4<bool>(true, true, var_0.a, var_0.a)), vec2<bool>(true, false), Struct_2(Struct_1(var_0.a, 41696u, var_0.c, var_0.d), Struct_1(var_0.a, 1u, var_0.c, -2147483647i), Struct_1(false, u_input.b.x, var_0.c, var_0.d)), Struct_2(Struct_1(false, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, 262f), 0i), Struct_1(var_0.a, 4294967295u, vec3<f32>(511f, 1057f, -1432f), var_0.d), Struct_1(var_0.a, 1349u, vec3<f32>(var_0.c.x, var_0.c.x, -1000f), 13722i))), func_4(true, select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)), Struct_2(Struct_1(var_0.a, u_input.b.x, var_0.c, 2147483647i), Struct_1(false, 0u, var_0.c, 22065i), Struct_1(false, 1u, vec3<f32>(-786f, var_0.c.x, var_0.c.x), -2147483647i)), Struct_2(Struct_1(true, 0u, vec3<f32>(-438f, var_0.c.x, var_0.c.x), u_input.d.x), Struct_1(false, 53162u, vec3<f32>(var_0.c.x, 1919f, 1278f), u_input.d.x), Struct_1(var_0.a, 12034u, vec3<f32>(-1263f, var_0.c.x, var_0.c.x), var_0.d))), Struct_1(var_0.a, u_input.b.x, vec3<f32>(677f, -569f, var_0.c.x), ~var_0.d)), Struct_2(Struct_1(var_0.a, min(u_input.b.x, var_0.b), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(var_0.c.x, var_0.c.x, 774f)), u_input.d.x), func_4(-1292f == var_0.c.x, vec2<bool>(var_0.a, true), Struct_2(Struct_1(false, 21174u, var_0.c, var_0.d), Struct_1(var_0.a, 4294967295u, var_0.c, var_0.d), Struct_1(false, var_0.b, vec3<f32>(-1303f, var_0.c.x, -205f), -27610i)), Struct_2(Struct_1(var_0.a, 0u, var_0.c, var_0.d), Struct_1(var_0.a, u_input.b.x, var_0.c, -22914i), Struct_1(false, u_input.b.x, vec3<f32>(368f, var_0.c.x, -290f), -1i))), func_4(var_0.a, vec2<bool>(var_0.a, true), Struct_2(Struct_1(false, u_input.b.x, var_0.c, u_input.c.x), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x), u_input.d.x), Struct_1(var_0.a, 1u, var_0.c, -45340i)), Struct_2(Struct_1(var_0.a, u_input.b.x, vec3<f32>(340f, -733f, 1246f), 1i), Struct_1(var_0.a, 4294967295u, var_0.c, u_input.a.x), Struct_1(false, 37416u, vec3<f32>(var_0.c.x, var_0.c.x, -1226f), u_input.a.x))))), Struct_1(false, u_input.b.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.x, -1000f, 705f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)))), var_0.c)), u_input.d.x), Struct_1(!(true | any(vec4<bool>(false, true, var_0.a, var_0.a))), var_0.b | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.b, u_input.b.x, var_0.b) >> (vec4<u32>(1768u, var_0.b, var_0.b, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 53138u, u_input.b.x), vec4<u32>(1u, var_0.b, 50165u, 0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), func_4(false, !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false)), Struct_2(func_4(true, vec2<bool>(var_0.a, true), Struct_2(Struct_1(var_0.a, var_0.b, vec3<f32>(688f, 2956f, var_0.c.x), var_0.d), Struct_1(true, var_0.b, vec3<f32>(var_0.c.x, -611f, var_0.c.x), var_0.d), Struct_1(false, var_0.b, var_0.c, u_input.d.x)), Struct_2(Struct_1(var_0.a, 68149u, vec3<f32>(616f, var_0.c.x, 1672f), var_0.d), Struct_1(true, u_input.b.x, vec3<f32>(-1493f, var_0.c.x, var_0.c.x), -1i), Struct_1(true, 4294967295u, var_0.c, 0i))), func_4(true, vec2<bool>(var_0.a, true), Struct_2(Struct_1(var_0.a, 1u, var_0.c, 1i), Struct_1(true, u_input.b.x, var_0.c, u_input.a.x), Struct_1(var_0.a, u_input.b.x, var_0.c, u_input.a.x)), Struct_2(Struct_1(var_0.a, u_input.b.x, var_0.c, 0i), Struct_1(var_0.a, var_0.b, var_0.c, 32116i), Struct_1(false, 5127u, var_0.c, -20727i))), func_4(true, vec2<bool>(var_0.a, false), Struct_2(Struct_1(var_0.a, 1u, var_0.c, 0i), Struct_1(true, var_0.b, vec3<f32>(130f, 148f, -771f), -2147483647i), Struct_1(false, u_input.b.x, vec3<f32>(-1223f, -701f, var_0.c.x), 0i)), Struct_2(Struct_1(false, u_input.b.x, vec3<f32>(var_0.c.x, 575f, 166f), var_0.d), Struct_1(true, 1u, vec3<f32>(var_0.c.x, 443f, var_0.c.x), 0i), Struct_1(var_0.a, 50927u, vec3<f32>(-1444f, var_0.c.x, -449f), var_0.d)))), Struct_2(Struct_1(true, 1u, vec3<f32>(568f, -895f, 1084f), 18639i), func_4(var_0.a, vec2<bool>(var_0.a, true), Struct_2(Struct_1(false, u_input.b.x, var_0.c, 0i), Struct_1(true, 1u, var_0.c, var_0.d), Struct_1(false, 61245u, var_0.c, 25141i)), Struct_2(Struct_1(true, var_0.b, var_0.c, u_input.a.x), Struct_1(false, var_0.b, vec3<f32>(776f, var_0.c.x, var_0.c.x), 22962i), Struct_1(var_0.a, 57650u, vec3<f32>(var_0.c.x, -1506f, var_0.c.x), var_0.d))), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x), 1i))).d));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<u32>(42007u, ~71887u & countOneBits(_wgslsmith_mod_u32(~var_0.b, min(var_0.b, 59731u))));
    var_1 = u_input.b.zy;
    let var_2 = Struct_3(var_0, _wgslsmith_f_op_f32(-1054f - 1089f));
    var var_3 = u_input.d;
    var_1 = ~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(var_0.b, var_1.x), u_input.b.yy, vec2<bool>(var_0.a, true)) ^ _wgslsmith_clamp_vec2_u32(u_input.b.yz ^ u_input.b.xy, u_input.b.xz, abs(u_input.b.xy)), u_input.b.yz);
    let var_4 = Struct_2(var_2.a, var_0, func_4(true, vec2<bool>(true | !var_0.a, -var_3.x >= (33696i ^ u_input.d.x)), Struct_2(func_4(true, select(vec2<bool>(var_2.a.a, var_2.a.a), vec2<bool>(false, false), var_2.a.a), Struct_2(var_2.a, var_2.a, var_2.a), Struct_2(Struct_1(true, var_2.a.b, vec3<f32>(541f, var_0.c.x, -470f), 12116i), Struct_1(false, var_1.x, vec3<f32>(2016f, -1294f, var_2.a.c.x), -1i), Struct_1(var_0.a, u_input.b.x, var_2.a.c, 38407i))), var_0, Struct_1(true, abs(71095u), var_0.c, u_input.c.x)), Struct_2(var_0, func_4(true, select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.a), Struct_2(var_2.a, var_2.a, Struct_1(var_2.a.a, 10915u, var_2.a.c, u_input.a.x)), Struct_2(var_0, Struct_1(var_2.a.a, 43077u, vec3<f32>(var_0.c.x, -358f, var_0.c.x), 897i), Struct_1(var_0.a, u_input.b.x, var_0.c, 1i))), func_1())));
    var_3 = u_input.d << (u_input.b % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1150f, -382f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + 777f) - _wgslsmith_div_f32(var_2.b, var_2.a.c.x)))));
}


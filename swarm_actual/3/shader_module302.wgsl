struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(-840f, -928f, -286f);

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(Struct_1(true, 2821f, vec4<i32>(4325i, -76774i, i32(-2147483648), 8459i)), vec2<bool>(true, false), 0u, false, 4212u), Struct_1(true, 1256f, vec4<i32>(-31697i, 0i, -10242i, 1i)), vec2<i32>(-1i, -32487i), vec4<u32>(17555u, 126052u, 0u, 3367u)), Struct_3(Struct_2(Struct_1(true, 497f, vec4<i32>(2147483647i, 1i, -8174i, 52557i)), vec2<bool>(true, true), 0u, true, 4294967295u), Struct_1(false, -116f, vec4<i32>(-33196i, 17545i, 2147483647i, -53284i)), vec2<i32>(30200i, -5676i), vec4<u32>(18351u, 94006u, 20756u, 1u)), Struct_3(Struct_2(Struct_1(false, 915f, vec4<i32>(-23072i, -56683i, -1i, i32(-2147483648))), vec2<bool>(true, true), 104482u, true, 8582u), Struct_1(false, -121f, vec4<i32>(2147483647i, -1i, -7062i, 6622i)), vec2<i32>(-5607i, 2147483647i), vec4<u32>(60904u, 50845u, 26811u, 74684u)), Struct_3(Struct_2(Struct_1(true, 389f, vec4<i32>(-2402i, -19955i, -493i, 0i)), vec2<bool>(true, true), 0u, true, 0u), Struct_1(false, -557f, vec4<i32>(11766i, 2147483647i, 6889i, 1i)), vec2<i32>(2147483647i, -1i), vec4<u32>(16323u, 7653u, 0u, 0u)), Struct_3(Struct_2(Struct_1(false, -2943f, vec4<i32>(-1i, i32(-2147483648), -1i, -1i)), vec2<bool>(false, true), 57897u, true, 85570u), Struct_1(true, -356f, vec4<i32>(-1i, 37864i, 2147483647i, -14576i)), vec2<i32>(2147483647i, -66565i), vec4<u32>(1u, 0u, 54060u, 4294967295u)), Struct_3(Struct_2(Struct_1(false, -403f, vec4<i32>(0i, 0i, -1i, 2147483647i)), vec2<bool>(true, true), 0u, true, 4294967295u), Struct_1(true, -473f, vec4<i32>(18869i, i32(-2147483648), 1i, -1i)), vec2<i32>(-19191i, -25586i), vec4<u32>(62041u, 13030u, 0u, 76622u)), Struct_3(Struct_2(Struct_1(false, -1983f, vec4<i32>(2147483647i, i32(-2147483648), 16318i, 5095i)), vec2<bool>(true, false), 0u, true, 0u), Struct_1(true, -1000f, vec4<i32>(62166i, -1i, 0i, 2147483647i)), vec2<i32>(i32(-2147483648), 9252i), vec4<u32>(4294967295u, 49987u, 4294967295u, 0u)), Struct_3(Struct_2(Struct_1(true, -1510f, vec4<i32>(0i, 22800i, i32(-2147483648), 1i)), vec2<bool>(false, false), 0u, false, 14942u), Struct_1(false, -899f, vec4<i32>(-22960i, i32(-2147483648), -1i, -13613i)), vec2<i32>(2147483647i, -80125i), vec4<u32>(4294967295u, 40010u, 4294967295u, 4000u)), Struct_3(Struct_2(Struct_1(true, 1869f, vec4<i32>(2147483647i, 2147483647i, 1i, -34238i)), vec2<bool>(false, true), 14917u, true, 60036u), Struct_1(false, 1000f, vec4<i32>(11868i, -37498i, -105312i, 57192i)), vec2<i32>(18849i, 37865i), vec4<u32>(1u, 1u, 51026u, 0u)), Struct_3(Struct_2(Struct_1(true, -2995f, vec4<i32>(-44146i, -2575i, 1i, 2147483647i)), vec2<bool>(false, true), 49815u, true, 67282u), Struct_1(false, 954f, vec4<i32>(-22744i, 35889i, 31273i, -1i)), vec2<i32>(1i, 2147483647i), vec4<u32>(3432u, 52961u, 11656u, 4294967295u)), Struct_3(Struct_2(Struct_1(false, 1657f, vec4<i32>(-1i, i32(-2147483648), 2147483647i, 7195i)), vec2<bool>(false, false), 0u, false, 17226u), Struct_1(false, 839f, vec4<i32>(3603i, -51672i, 1i, -6041i)), vec2<i32>(-39711i, 72534i), vec4<u32>(0u, 22163u, 1u, 4294967295u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_mult_u32(select(firstLeadingBit(4294967295u), abs(u_input.c), select(false, all(arg_3.zy), all(vec4<bool>(false, true, false, true)) | true)), _wgslsmith_mult_u32(max(u_input.b, arg_0.e), ~4294967295u));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.yy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(869f - _wgslsmith_f_op_f32(-global1.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.a.b, 324f), -1796f) - _wgslsmith_f_op_vec2_f32(select(global1.yz, vec2<f32>(_wgslsmith_f_op_f32(global1.x + arg_0.a.b), _wgslsmith_f_op_f32(trunc(global1.x))), arg_3.yy))));
    global0 = _wgslsmith_f_op_f32(602f - -1000f);
    let var_3 = arg_0.a;
    return 0i;
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = vec4<bool>((0i | func_3(Struct_2(Struct_1(false, global1.x, arg_0), vec2<bool>(false, false), 0u, false, 4294967295u), 1i, ~u_input.e.x, vec3<bool>(true, true, true))) == arg_0.x, !all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), vec2<bool>(false, true))), !(_wgslsmith_div_f32(global1.x, 1651f) != _wgslsmith_f_op_f32(trunc(global1.x))));
    global1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, 833f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(645f, -263f, 1105f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, global1.x, 500f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(393f - -1372f), _wgslsmith_div_f32(1161f, global1.x), -1430f)))));
    let var_1 = vec2<bool>(true, true);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(round(1f))))), -1212f);
    var var_2 = !vec2<bool>(var_1.x, any(var_0));
    return Struct_4(Struct_1(!select(var_2.x && var_2.x, false, -718f < global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, -1071f)), global1.x) - global1.x), vec4<i32>(u_input.e.x, -11117i, ~_wgslsmith_mod_i32(arg_0.x, -1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(12793i, 55905i), func_3(Struct_2(Struct_1(false, global1.x, arg_0), var_1, u_input.c, var_2.x, 16882u), arg_0.x, -4374i, var_0.yzw)))), true, Struct_2(Struct_1((global1.x == 844f) | !var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(global1.x + 1319f)), -_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(arg_0.x, -1i, 115145i, arg_0.x))), !vec2<bool>(true, !var_1.x), firstLeadingBit(1u), true, select(_wgslsmith_mod_u32(u_input.b ^ 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(3667u, 0u, u_input.a), vec3<u32>(1u, u_input.b, u_input.b))), 75713u, false)), countOneBits(abs(vec4<i32>(_wgslsmith_add_i32(-1i, -1i), arg_0.x, select(2147483647i, -2147483647i, false), ~(-38900i)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = ~arg_1.yz;
    global2 = array<Struct_3, 11>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, 1708f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 942f, global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), -953f, _wgslsmith_f_op_f32(f32(-1f) * -1486f)))));
    var var_2 = func_2(max(firstLeadingBit(~min(vec4<i32>(u_input.e.x, arg_1.x, -1i, -21106i), vec4<i32>(u_input.d, u_input.d, u_input.e.x, u_input.e.x))), vec4<i32>(reverseBits(-arg_1.x), _wgslsmith_sub_i32(firstLeadingBit(50096i), _wgslsmith_add_i32(arg_1.x, u_input.d)), u_input.e.x, -5871i)));
    return func_2(_wgslsmith_sub_vec4_i32((var_2.d ^ vec4<i32>(arg_1.x, -66987i, u_input.d, var_2.c.a.c.x)) >> (vec4<u32>(1u, abs(1u), _wgslsmith_clamp_u32(u_input.a, var_2.c.c, var_2.c.e), 4294967295u) % vec4<u32>(32u)), var_2.c.a.c)).c;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1484f, -2492f, arg_1))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1938f, global1.x, global1.x) - vec3<f32>(-1000f, arg_1, -811f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-689f, global1.x, arg_1)))))));
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1.yy);
    var var_2 = func_2(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i), arg_3.c.a.c.wzz) << (_wgslsmith_div_u32(88226u, arg_3.c.e) % 32u), _wgslsmith_div_i32(0i, arg_3.d.x)), _wgslsmith_clamp_i32(~(-arg_3.c.a.c.x), u_input.d, max(~0i, u_input.d)), -u_input.e.x, _wgslsmith_mod_i32(2147483647i, 1i))).c;
    var var_3 = !(!(!(!(!arg_3.a.a))));
    return Struct_2(Struct_1(arg_3.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), arg_1)), vec4<i32>(select(arg_3.d.x, var_2.a.c.x, false) | 13476i, -u_input.e.x, _wgslsmith_div_i32(~14325i, countOneBits(arg_2.x)), 1i)), vec2<bool>(true, false), ~0u, func_1(arg_3.c.b, select(select(arg_3.a.c.ywz ^ vec3<i32>(arg_2.x, arg_3.d.x, arg_3.c.a.c.x), var_2.a.c.xwz, var_2.b.x | false), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 77293i, -25800i), vec3<i32>(arg_2.x, 0i, 4914i)), vec3<bool>(var_0 <= 0u, all(vec2<bool>(arg_3.c.a.a, arg_3.a.a)), var_1.x > -630f))).a.a, func_2(vec4<i32>(~_wgslsmith_div_i32(-1i, 1i), arg_3.d.x, _wgslsmith_dot_vec2_i32(arg_3.c.a.c.yx, ~u_input.e), ~_wgslsmith_mult_i32(var_2.a.c.x, arg_0))).c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~abs(u_input.e.x) | u_input.d, global1.x, vec3<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 29072i), vec3<i32>(0i, 2147483647i, 2147483647i)) >> (min(20974u, u_input.c) % 32u)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(12304i ^ u_input.d, u_input.e.x ^ u_input.d), (-18590i >> (u_input.c % 32u)) >> (~0u % 32u)), u_input.e.x >> (u_input.b % 32u)), Struct_4(Struct_1(true, _wgslsmith_f_op_f32(global1.x - global1.x), vec4<i32>(_wgslsmith_mult_i32(9689i, u_input.e.x), -2147483647i, ~u_input.e.x, _wgslsmith_sub_i32(0i, 52618i))), true, func_1(vec2<bool>(all(vec4<bool>(false, false, false, true)), true), vec3<i32>(u_input.d ^ 67540i, u_input.e.x, 31800i)), min(_wgslsmith_mult_vec4_i32(~vec4<i32>(-51927i, 32800i, u_input.e.x, -38129i), countOneBits(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d))), ~vec4<i32>(u_input.e.x, u_input.d, u_input.d, u_input.e.x))));
    var var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(-var_0.a.c.x, 0i ^ min(35011i, var_0.a.c.x), u_input.e.x), var_0.a.c.zww);
    let var_2 = reverseBits(~firstLeadingBit(select(~vec2<u32>(u_input.c, 10814u), vec2<u32>(4294967295u, var_0.c), select(false, false, false))));
    var var_3 = ~countOneBits(~var_0.a.c.ww);
    let var_4 = true & any(select(select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.b.x, false, var_0.d), var_0.b.x), vec3<bool>(var_0.a.a, false, false), !select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(true, false, false), vec3<bool>(var_0.b.x, true, false))));
    global2 = array<Struct_3, 11>();
    let var_5 = var_0.a.c.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -508f));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.a.c, ~vec4<i32>(9839i, 29218i, var_0.a.c.x, -2147483647i) << (max(~vec4<u32>(1u, var_2.x, u_input.a, var_2.x), vec4<u32>(var_2.x, u_input.b, u_input.b, 0u)) % vec4<u32>(32u)), false), ((var_1.x | 1i) | var_1.x) << (var_2.x % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_4(~2147483647i, var_0.a.b, _wgslsmith_clamp_vec3_i32(var_0.a.c.xzw, vec3<i32>(-1i, var_3.x, u_input.d), vec3<i32>(-31201i, var_1.x, u_input.d)), Struct_4(var_0.a, true, var_0, var_0.a.c)).a.b), 1000f)));
}


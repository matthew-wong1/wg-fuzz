struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -747f);

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec3<i32>(30798i, 27400i, 0i), vec4<u32>(4294967295u, 1u, 297u, 49046u), Struct_2(vec4<u32>(11280u, 62577u, 0u, 13835u), vec2<i32>(0i, 38248i)), -1i, 1u), Struct_4(vec3<i32>(-41864i, -2871i, 1i), vec4<u32>(98815u, 11268u, 1u, 0u), Struct_2(vec4<u32>(1u, 2861u, 43461u, 13691u), vec2<i32>(22283i, 1i)), 31696i, 4294967295u), Struct_4(vec3<i32>(-1i, -1i, -12746i), vec4<u32>(0u, 6000u, 27505u, 19573u), Struct_2(vec4<u32>(64106u, 1u, 0u, 78427u), vec2<i32>(2147483647i, -13489i)), 10864i, 1u), Struct_4(vec3<i32>(-21936i, 0i, 2147483647i), vec4<u32>(16799u, 1u, 70794u, 4294967295u), Struct_2(vec4<u32>(4294967295u, 0u, 12185u, 29839u), vec2<i32>(2147483647i, -16202i)), 1i, 18033u), Struct_4(vec3<i32>(-9072i, 2147483647i, 0i), vec4<u32>(26118u, 39594u, 110404u, 0u), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 30422u), vec2<i32>(26233i, -1i)), -1i, 4294967295u), Struct_4(vec3<i32>(0i, i32(-2147483648), -34508i), vec4<u32>(1u, 24519u, 74238u, 28020u), Struct_2(vec4<u32>(105554u, 18793u, 0u, 26117u), vec2<i32>(1i, -6697i)), 1i, 44951u), Struct_4(vec3<i32>(-4189i, i32(-2147483648), -32589i), vec4<u32>(1u, 14557u, 4294967295u, 0u), Struct_2(vec4<u32>(34960u, 4294967295u, 0u, 1u), vec2<i32>(-11101i, 1i)), -41101i, 97507u), Struct_4(vec3<i32>(8896i, 1i, -17089i), vec4<u32>(1u, 1u, 59348u, 4294967295u), Struct_2(vec4<u32>(52366u, 90952u, 45637u, 18127u), vec2<i32>(0i, 1i)), -29902i, 78891u), Struct_4(vec3<i32>(31295i, i32(-2147483648), -1i), vec4<u32>(4294967295u, 63641u, 1u, 14520u), Struct_2(vec4<u32>(23501u, 0u, 119876u, 14333u), vec2<i32>(-1i, -11666i)), 50851i, 54555u), Struct_4(vec3<i32>(1126i, 1i, -44907i), vec4<u32>(12410u, 33690u, 14257u, 22817u), Struct_2(vec4<u32>(5339u, 1u, 0u, 4294967295u), vec2<i32>(-26371i, 0i)), -7758i, 4174u), Struct_4(vec3<i32>(-1i, 18915i, 12313i), vec4<u32>(9936u, 0u, 12324u, 0u), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 29421u), vec2<i32>(-30407i, 20444i)), 4996i, 21432u), Struct_4(vec3<i32>(43392i, -1i, -1i), vec4<u32>(4294967295u, 4294967295u, 26147u, 69737u), Struct_2(vec4<u32>(42308u, 28569u, 0u, 10123u), vec2<i32>(27307i, -3276i)), 29371i, 4294967295u), Struct_4(vec3<i32>(22525i, i32(-2147483648), -10310i), vec4<u32>(0u, 40393u, 24489u, 27319u), Struct_2(vec4<u32>(4294967295u, 24468u, 46888u, 4294967295u), vec2<i32>(-100751i, 2147483647i)), -677i, 77635u), Struct_4(vec3<i32>(0i, -4707i, -1i), vec4<u32>(84846u, 26850u, 50865u, 1u), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 1u), vec2<i32>(1i, 21807i)), -30130i, 7780u), Struct_4(vec3<i32>(37402i, 22483i, -26823i), vec4<u32>(32210u, 4294967295u, 1u, 60259u), Struct_2(vec4<u32>(0u, 1u, 1u, 55657u), vec2<i32>(2147483647i, -1i)), 31929i, 4294967295u), Struct_4(vec3<i32>(2147483647i, 0i, 0i), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), Struct_2(vec4<u32>(36227u, 76382u, 4294967295u, 4294967295u), vec2<i32>(69617i, -9984i)), -27801i, 1u), Struct_4(vec3<i32>(-72024i, 1i, 1i), vec4<u32>(1u, 9758u, 54245u, 0u), Struct_2(vec4<u32>(0u, 1u, 1u, 53750u), vec2<i32>(2147483647i, -423i)), 4026i, 1203u), Struct_4(vec3<i32>(1i, -35661i, 33023i), vec4<u32>(4294967295u, 2548u, 31807u, 10079u), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec2<i32>(-12094i, 0i)), -1i, 105114u), Struct_4(vec3<i32>(11236i, -43770i, 44926i), vec4<u32>(43370u, 43769u, 1u, 1u), Struct_2(vec4<u32>(0u, 69378u, 1u, 4294967295u), vec2<i32>(i32(-2147483648), -1i)), 35127i, 1u), Struct_4(vec3<i32>(0i, 16959i, -17472i), vec4<u32>(1u, 39132u, 4294967295u, 1u), Struct_2(vec4<u32>(1u, 16096u, 4294967295u, 4294967295u), vec2<i32>(-15881i, -31895i)), -53146i, 3707u), Struct_4(vec3<i32>(1i, -1i, 0i), vec4<u32>(4294967295u, 49472u, 4294967295u, 0u), Struct_2(vec4<u32>(1u, 0u, 22065u, 0u), vec2<i32>(0i, 1i)), -52353i, 3207u), Struct_4(vec3<i32>(-23081i, 6666i, 33545i), vec4<u32>(12131u, 25196u, 61262u, 0u), Struct_2(vec4<u32>(70649u, 63u, 59540u, 4294967295u), vec2<i32>(0i, 16249i)), 0i, 133536u), Struct_4(vec3<i32>(1i, -10582i, -47603i), vec4<u32>(4294967295u, 7742u, 0u, 0u), Struct_2(vec4<u32>(4294967295u, 27446u, 1u, 29812u), vec2<i32>(-5825i, 27711i)), 0i, 0u), Struct_4(vec3<i32>(38843i, -11435i, -1i), vec4<u32>(0u, 35624u, 13851u, 4294967295u), Struct_2(vec4<u32>(1u, 4294967295u, 48645u, 33643u), vec2<i32>(2147483647i, i32(-2147483648))), -23760i, 0u), Struct_4(vec3<i32>(22708i, 17159i, -27984i), vec4<u32>(4294967295u, 37072u, 84298u, 45320u), Struct_2(vec4<u32>(1u, 81033u, 39158u, 13522u), vec2<i32>(-36997i, 10365i)), -13413i, 23324u), Struct_4(vec3<i32>(2147483647i, -50143i, 2147483647i), vec4<u32>(40343u, 1u, 40318u, 764u), Struct_2(vec4<u32>(67203u, 14286u, 59489u, 0u), vec2<i32>(-50342i, -275i)), 40511i, 49382u), Struct_4(vec3<i32>(-5601i, 1i, -26860i), vec4<u32>(14932u, 1u, 1u, 4294967295u), Struct_2(vec4<u32>(36754u, 1u, 16792u, 145656u), vec2<i32>(-47329i, 10095i)), -19001i, 45497u), Struct_4(vec3<i32>(1i, 2147483647i, -35833i), vec4<u32>(84939u, 136u, 81060u, 29764u), Struct_2(vec4<u32>(22315u, 65702u, 4294967295u, 0u), vec2<i32>(-4558i, -1i)), 1i, 10457u), Struct_4(vec3<i32>(-16447i, 36740i, 0i), vec4<u32>(42870u, 2737u, 27373u, 1u), Struct_2(vec4<u32>(46919u, 4294967295u, 9144u, 9579u), vec2<i32>(-1i, 83803i)), 29564i, 9907u));

var<private> global2: vec4<i32> = vec4<i32>(-52386i, i32(-2147483648), i32(-2147483648), 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = firstTrailingBit(~vec4<i32>(1i, -2147483647i, u_input.a, u_input.c));
    let var_1 = Struct_3(false | !select(true, false, true), firstTrailingBit(select(~reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), ~countOneBits(vec4<u32>(4294967295u, 33460u, 4294967295u, u_input.b.x)), true)));
    let var_2 = !vec3<bool>(any(select(select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, false), vec2<bool>(true, true)), vec2<bool>(var_1.a, var_1.a), select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), true))), !any(select(vec2<bool>(false, var_1.a), vec2<bool>(false, false), true)), !(1i == _wgslsmith_dot_vec4_i32(var_0, var_0)));
    global1 = array<Struct_4, 29>();
    let var_3 = true;
    return global0.x;
}

fn func_2() -> vec4<i32> {
    global1 = array<Struct_4, 29>();
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) <= _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), false, any(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), true, false, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, global0.x, global0.x, -675f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, 510f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(select(global0.x, 485f, true))), _wgslsmith_f_op_f32(round(-265f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -654f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2605f, global0.x, var_0.x))), _wgslsmith_f_op_f32(abs(-439f))))));
    var var_2 = countOneBits(vec2<u32>(~(~u_input.b.x), 1u));
    var var_3 = ~4294967295u;
    return vec4<i32>(11835i, i32(-1i) * -2147483647i, countOneBits(i32(-1i) * -_wgslsmith_mod_i32(global2.x, global2.x)), ~firstLeadingBit(countOneBits(abs(-41838i))));
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-169f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1511f, global0.x) - -904f)))));
    global1 = array<Struct_4, 29>();
    global2 = vec4<i32>(_wgslsmith_mult_i32(-32815i, firstTrailingBit(global2.x)) | -53272i, u_input.a, min(18968i, select(i32(-1i) * -1i, ~global2.x, any(vec2<bool>(false, false)))), u_input.a) & _wgslsmith_mult_vec4_i32(~func_2(), -(~vec4<i32>(u_input.a, 0i, 26694i, 0i)) & vec4<i32>(u_input.c << (0u % 32u), firstTrailingBit(12173i), u_input.c, -22141i));
    global2 = ~(-vec4<i32>(u_input.a, -18867i, 1i, ~_wgslsmith_sub_i32(u_input.a, global2.x)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(923f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(global0.x + -1532f))))), global0.x);
    return ~vec4<u32>(u_input.b.x, 68705u, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(72621u), u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), vec4<u32>(4294967295u, 0u, u_input.b.x, 85414u) << (reverseBits(vec4<u32>(0u, 0u, u_input.b.x, 4294967295u)) % vec4<u32>(32u))), 4294967295u | ~_wgslsmith_div_u32(32807u, u_input.b.x));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = -11231i;
    var var_1 = select(_wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_0.e, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false)), arg_0.c.a.xy), ~u_input.b.xx), reverseBits(vec2<u32>(arg_0.e, _wgslsmith_add_u32(min(u_input.b.x, 29992u), 1u))), true & select(true, !any(vec3<bool>(true, false, true)), select(any(vec4<bool>(true, true, true, true)), true, true)));
    global1 = array<Struct_4, 29>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_f_op_f32(1543f - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f - global0.x)), !(!(var_0 < global2.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.x - var_2), _wgslsmith_f_op_f32(var_2 + -739f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-756f, 1081f) - vec2<f32>(global0.x, 1229f))))));
    return Struct_4(~func_2().wxz, arg_0.b | abs(vec4<u32>(u_input.b.x, 40152u, u_input.b.x, 4294967295u) << (vec4<u32>(var_1.x, 2866u, 30961u, u_input.b.x) % vec4<u32>(32u))), arg_0.c, -25324i, 4294967295u & (max(~arg_0.e, 1u) >> (_wgslsmith_sub_u32(~0u, select(4294967295u, 1u, false)) % 32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_3(all(vec3<bool>(true, true, true)), _wgslsmith_mod_vec4_u32(select(~reverseBits(arg_1.c.a), ~(~arg_1.b), all(vec2<bool>(true, true))), _wgslsmith_clamp_vec4_u32(arg_1.b, ~(~vec4<u32>(arg_1.b.x, 90441u, u_input.b.x, arg_1.b.x)), ~(~vec4<u32>(19244u, arg_1.e, 50690u, 8557u)))));
    let var_1 = arg_1.c;
    var var_2 = !(!(!(!select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a)))));
    let var_3 = arg_1.c;
    global0 = vec2<f32>(491f, 240f);
    return Struct_3(max(0u, select(~arg_2.e, countOneBits(55110u), false)) < var_1.a.x, ~(_wgslsmith_add_vec4_u32(max(vec4<u32>(81524u, 16007u, 1u, 4294967295u), vec4<u32>(19060u, arg_2.b.x, 0u, 61029u)), var_1.a) & firstTrailingBit(~vec4<u32>(var_1.a.x, arg_2.e, var_1.a.x, var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, vec4<u32>(~25786u, u_input.b.x, u_input.b.x, u_input.b.x));
    var var_1 = reverseBits(u_input.b.zy);
    var_0 = func_5(~(-1i), func_4(Struct_4(firstTrailingBit(vec3<i32>(u_input.a, global2.x, u_input.a)) >> ((vec3<u32>(u_input.b.x, var_0.b.x, u_input.b.x) ^ vec3<u32>(4294967295u, 44261u, 4294967295u)) % vec3<u32>(32u)), func_1(true), Struct_2(var_0.b | var_0.b, global2.yz), -1i, ~(~var_0.b.x))), func_4(func_4(Struct_4(vec3<i32>(21202i, u_input.a, 51576i), var_0.b, Struct_2(var_0.b, global2.yz), _wgslsmith_clamp_i32(global2.x, -17479i, 28520i), ~var_0.b.x))), 26899i);
    var var_2 = vec4<i32>(8374i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(22059i, i32(-1i) * -56918i), select(~select(2147483647i, 23831i, false), ~28373i, 66562i >= (-18463i ^ global2.x)), u_input.a), 5059i, global2.x);
    var var_3 = firstLeadingBit(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.b.x, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(f32(-1f) * -2157f))));
}


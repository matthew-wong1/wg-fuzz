struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, true, false, false, true, true, true, true, true, true, true, true, true, false, false, false, false, false);

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 0u, 54018u), vec3<u32>(15365u, 1u, 46740u), vec3<u32>(4294967295u, 4294967295u, 65698u), vec3<u32>(1u, 64145u, 4294967295u), vec3<u32>(92174u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(7005u, 36517u, 0u), vec3<u32>(7325u, 36272u, 26653u), vec3<u32>(57499u, 9123u, 33112u), vec3<u32>(33227u, 60019u, 4294967295u), vec3<u32>(1u, 26096u, 1u), vec3<u32>(1u, 4294967295u, 32704u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 0u, 69405u), vec3<u32>(75258u, 1u, 0u), vec3<u32>(89099u, 33328u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 1u, 1u));

var<private> global3: array<u32, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> bool {
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global1.x, 21u)] >> (((vec3<u32>(0u, 0u, global3[_wgslsmith_index_u32(33417u, 31u)]) >> (global2[_wgslsmith_index_u32(0u, 21u)] % vec3<u32>(32u))) << (~vec3<u32>(3557u, 1u, 53295u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(23539u, 31u)], 0u, 65143u) ^ vec3<u32>(1u, 1u, 4294967295u), global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.b, 31u)], 21u)])), 20u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(global1.x, 0u), 31u)], 20u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(951f, _wgslsmith_f_op_f32(arg_3.x * 172f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a * -1451f)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_2.x))), _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.c))))), select(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -31685i, arg_0.d.x, u_input.a), vec4<i32>(-1i, arg_0.d.x, arg_0.d.x, 1671i)), min(u_input.a ^ -1i, -2147483647i), 2147483647i), arg_0.d & (_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d.x, u_input.c.x, -48308i), u_input.d) & -vec3<i32>(2147483647i, u_input.c.x, arg_1.x)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1413f), !vec3<bool>(true, global0[_wgslsmith_index_u32(12354u, 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(86062u, 31u)], 20u)]), global0[_wgslsmith_index_u32(~12665u, 20u)])));
    var var_2 = _wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * -357f) - var_1.c.x), 1439f), 588f, -511f));
    let var_3 = Struct_5(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)] < global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23423u, 31u)], 31u)], 31u)], 31u)], u_input.a > 22270i, true), select(vec4<bool>(global0[_wgslsmith_index_u32(5536u, 20u)], false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], false, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(31715u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17770u, 31u)], 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 31u)], 31u)], 20u)]), global0[_wgslsmith_index_u32(global1.x, 20u)])), !global0[_wgslsmith_index_u32(u_input.b, 20u)]), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 31u)], 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], false, false), false), vec4<bool>(true, true | global0[_wgslsmith_index_u32(81948u, 20u)], true, true), global0[_wgslsmith_index_u32(global1.x ^ global3[_wgslsmith_index_u32(u_input.e, 31u)], 20u)] || true), global0[_wgslsmith_index_u32(max(29044u, 27506u), 20u)]));
    var var_4 = _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.d.x, abs(-13363i), arg_0.d.x, ~(-1i)), min(vec4<i32>(arg_1.x, 0i, arg_1.x, 40016i) | vec4<i32>(u_input.d.x, -29509i, var_1.d.x, -1i), vec4<i32>(-8333i, 1i, 0i, 13313i) & vec4<i32>(20735i, arg_0.d.x, u_input.a, 0i))), u_input.a));
    return var_1.a;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec3<u32> {
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1839f));
    var var_1 = Struct_3(arg_1.x >= 30006i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -362f, -1585f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1000f) + vec3<f32>(-1000f, 354f, 2562f))), vec3<f32>(244f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_2(Struct_1(-671f, vec3<f32>(-1000f, var_0, var_0), vec4<f32>(var_0, var_0, var_0, var_0), arg_1), arg_1.yx, vec2<f32>(var_0, -466f), vec2<f32>(-343f, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f - -1252f)), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1436f)) + _wgslsmith_f_op_f32(exp2(var_0)))))), Struct_1(var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 * 1175f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(756f, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), -870f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-690f, -1419f, var_0, var_0), vec4<f32>(726f, var_0, 457f, -605f)))), vec3<i32>(arg_1.x, -2147483647i, ~arg_1.x >> (~18215u % 32u))), Struct_2(!func_3(_wgslsmith_f_op_f32(trunc(var_0)), !vec3<bool>(global0[_wgslsmith_index_u32(14733u, 20u)], false, global0[_wgslsmith_index_u32(31102u, 20u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, 41982u), 20u)]), 2147483647i, Struct_1(142f, vec3<f32>(-1402f, _wgslsmith_div_f32(251f, -146f), -653f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(sign(-521f)), var_0, -203f), ~(u_input.c & vec3<i32>(u_input.c.x, u_input.c.x, arg_1.x))), !(!vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 31u)], 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(89806u, 31u)], 20u)], global0[_wgslsmith_index_u32(65017u, 20u)], false))), Struct_2(false, _wgslsmith_mult_i32(27587i, firstLeadingBit(-arg_1.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(-125f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 3266f, var_0) + vec3<f32>(var_0, var_0, -325f)))), vec4<f32>(_wgslsmith_div_f32(-713f, 993f), -293f, var_0, _wgslsmith_f_op_f32(var_0 + var_0)), vec3<i32>(u_input.a & 2147483647i, 2147483647i, i32(-1i) * -2147483647i)), select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(66526u, 20u)], false), !vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51802u, 31u)], 20u)]), !vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(118791u, 20u)], true, true))));
    var var_2 = _wgslsmith_div_vec3_i32(-(vec3<i32>(1i, var_1.c.d.x | u_input.a, ~u_input.a) ^ vec3<i32>(-1i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.c.d.x, -34353i, -14725i, 3874i), vec4<i32>(u_input.a, arg_1.x, var_1.e.b, -12331i)))), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(u_input.d.x, 16197i), arg_1.x), vec3<i32>(var_1.c.d.x << (arg_0 % 32u), countOneBits(14202i), abs(arg_1.x)))));
    var var_3 = reverseBits(~_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, arg_0, u_input.e, global3[_wgslsmith_index_u32(arg_0, 31u)]), vec4<u32>(31785u, 4294967295u, 50079u, 4294967295u))), vec4<u32>(u_input.b, ~u_input.e, global1.x, 4294967295u)));
    return var_3.xww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(~(global2[_wgslsmith_index_u32(1u, 21u)] >> (vec3<u32>(_wgslsmith_add_u32(u_input.e, 4294967295u), min(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 31u)], 31u)]), ~u_input.e) % vec3<u32>(32u))), func_1(~(0u ^ global1.x) >> (0u % 32u), _wgslsmith_mod_vec3_i32(max(vec3<i32>(-31134i, 0i, u_input.a) | u_input.c, vec3<i32>(u_input.c.x, 1i, 0i)), select(vec3<i32>(u_input.d.x, -2147483647i, u_input.a), vec3<i32>(2147483647i, 0i, -5931i), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], false, false)))));
    global3 = array<u32, 31>();
    var var_1 = max(~vec4<u32>(abs(~global3[_wgslsmith_index_u32(var_0.x, 31u)]), 4294967295u << ((u_input.e & 56501u) % 32u), global3[_wgslsmith_index_u32(0u, 31u)], max(~u_input.b, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 31u)], 31u)], global1.x))), firstTrailingBit(countOneBits(~vec4<u32>(1u, 102189u, 38030u, global1.x) & ~vec4<u32>(u_input.b, u_input.b, u_input.e, 8268u))));
    let var_2 = Struct_3(true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-595f + 220f), _wgslsmith_f_op_f32(floor(-1000f)), 1787f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-369f, 1000f, -1609f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, -1000f, -395f) * vec3<f32>(-329f, -994f, -584f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f - -520f) + _wgslsmith_f_op_f32(floor(-1723f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-368f, 914f, 1007f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1555f, 285f, -788f) + vec3<f32>(793f, -859f, -948f)))), vec4<f32>(-2000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1146f - 470f))), _wgslsmith_f_op_f32(-495f - _wgslsmith_f_op_f32(-2567f - 789f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-221f)))), ~(~min(vec3<i32>(u_input.a, u_input.d.x, u_input.a), vec3<i32>(-26243i, -2147483647i, -2147483647i)))), Struct_2(true, u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-481f, 647f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-763f, -1952f, -142f))), vec4<f32>(_wgslsmith_f_op_f32(max(423f, 877f)), -967f, _wgslsmith_f_op_f32(step(256f, -1000f)), _wgslsmith_f_op_f32(func_2(Struct_1(437f, vec3<f32>(-429f, -574f, 1000f), vec4<f32>(1275f, -333f, -113f, 950f), vec3<i32>(u_input.c.x, 9095i, 19032i)), u_input.c.zz, vec2<f32>(655f, 640f), vec2<f32>(565f, 942f)))), _wgslsmith_clamp_vec3_i32(-u_input.d, _wgslsmith_add_vec3_i32(u_input.d, u_input.c), max(vec3<i32>(-2147483647i, 18021i, u_input.d.x), vec3<i32>(-7595i, u_input.c.x, 11419i)))), vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(max(u_input.e, global1.x)), 20u)], global0[_wgslsmith_index_u32(0u, 20u)], true, true)), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(0u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)], countOneBits(u_input.c)).x, 1u), 20u)], -70i, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1281f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1016f, -180f, 518f) * vec3<f32>(-448f, 684f, 723f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1510f, 1237f, -1585f, -2943f), vec4<f32>(-836f, 1000f, -1000f, -1844f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, -598f, -513f, -1786f)))), -(~u_input.c)), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(88001u, 20u)])), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(1u, 20u)], true), all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 20u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 20u)]), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 20u)])))));
    global2 = array<vec3<u32>, 21>();
    global1 = var_1.xy & (vec2<u32>(27907u, abs(u_input.e)) & var_1.zw);
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(52426u, 20u)], -28062i, var_2.d.c, !(!(!(!vec4<bool>(var_2.a, global0[_wgslsmith_index_u32(79533u, 20u)], false, var_2.d.d.x)))));
    global1 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(36595u, 1u, 85826u, var_0.x)), max(vec4<u32>(32355u, 1943u, 33847u, 44458u), vec4<u32>(38748u, 24599u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)], 31777u) | vec4<u32>(98305u, 50345u, 51839u, u_input.e)))), var_1.x);
    var_0 = ~global2[_wgslsmith_index_u32(global1.x, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-37242i, -var_2.e.b), var_3.c.d.zy)));
}


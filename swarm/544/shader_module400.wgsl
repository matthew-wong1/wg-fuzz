struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-503f, -1000f), vec2<i32>(0i, -227i), vec2<f32>(373f, 449f), -1i), Struct_1(vec2<f32>(-1423f, 443f), vec2<i32>(-21352i, 19913i), vec2<f32>(-313f, -515f), -19907i));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: f32 = 866f;

var<private> global4: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(263f, 515f, 108f), vec3<f32>(1154f, 289f, 619f), vec3<f32>(-1000f, 668f, 1488f), vec3<f32>(-382f, 1122f, -941f), vec3<f32>(181f, -697f, -1342f), vec3<f32>(-236f, 855f, -556f), vec3<f32>(-372f, -646f, -785f), vec3<f32>(707f, 1000f, 1541f), vec3<f32>(-1346f, -722f, 639f), vec3<f32>(-874f, 969f, -1506f), vec3<f32>(-1052f, 685f, -340f), vec3<f32>(621f, 953f, -204f), vec3<f32>(372f, 1000f, -981f), vec3<f32>(887f, 666f, -556f), vec3<f32>(-1334f, 876f, -650f), vec3<f32>(136f, 1000f, 1614f), vec3<f32>(708f, -430f, 266f), vec3<f32>(463f, 132f, -580f), vec3<f32>(-2119f, 316f, -678f), vec3<f32>(-461f, 1448f, 1501f), vec3<f32>(561f, -890f, 1241f), vec3<f32>(1729f, 232f, -985f), vec3<f32>(1230f, 728f, 865f), vec3<f32>(1000f, -1408f, 415f), vec3<f32>(-1040f, 478f, 1232f), vec3<f32>(-470f, 281f, -488f), vec3<f32>(-1243f, 161f, 997f), vec3<f32>(-365f, 1000f, -538f), vec3<f32>(687f, 998f, -433f), vec3<f32>(580f, 701f, 413f), vec3<f32>(-620f, -612f, -121f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.c.x), -1000f)))) - -1273f);
    global3 = _wgslsmith_f_op_f32(min(182f, global1.a.x));
    global4 = array<vec3<f32>, 31>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>((1i | global2.d) << (~4294967295u % 32u), global0.a.d, global2.b.x, -66544i) & vec4<i32>(1i, global2.d, _wgslsmith_mult_i32(-14177i << (arg_0 % 32u), ~(-3043i)), _wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(0i, -18314i))), vec4<i32>(~global2.b.x, -2147483647i, 30860i, -max(_wgslsmith_mult_i32(1i, -2147483647i), ~(-1701i))), vec4<i32>(-14189i, _wgslsmith_mult_i32(global1.b.x << ((4294967295u | arg_1.x) % 32u), 1i), _wgslsmith_mult_i32(~(-2147483647i) & global2.b.x, i32(-1i) * -3475i), firstTrailingBit(-15294i)));
    let var_2 = ~arg_1;
    return _wgslsmith_mult_vec2_u32(arg_1, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, ~4294967295u), vec2<u32>(26622u << (var_2.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.x, 98980u, 0u), vec4<u32>(u_input.a, 33879u, arg_1.x, arg_0)))) >> (firstLeadingBit(~var_2) % vec2<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> f32 {
    global1 = Struct_1(global2.c, global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, global2.c.x)) * _wgslsmith_f_op_vec2_f32(arg_2.xy * vec2<f32>(arg_2.x, global0.b.a.x))), global0.b.c)), -29056i >> (arg_3.x % 32u));
    var var_0 = !select(vec2<bool>(false, 12617i > (global1.b.x >> (0u % 32u))), select(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), !select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0)), true), false);
    var var_1 = arg_0;
    var_1 = any(!(!(!vec3<bool>(true, arg_0, false))));
    let var_2 = select(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, var_0.x))), vec3<bool>(all(vec4<bool>(true, arg_0, true, arg_0)) || (global1.a.x >= global1.c.x), any(!vec3<bool>(arg_0, arg_0, false)), true), var_0.x), select(select(vec3<bool>(true, true, false), !select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, false)), vec3<bool>(true, arg_3.x < arg_1.x, arg_0)), select(!select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, arg_0, var_0.x), vec3<bool>(false, true, var_0.x)), !vec3<bool>(var_0.x, false, arg_0), arg_0), false), select(!(!(!vec3<bool>(arg_0, true, arg_0))), vec3<bool>(true, false, var_0.x), vec3<bool>(true, true, !(true | var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(487f - _wgslsmith_f_op_f32(global2.a.x * -1068f)))))) * 498f);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1322f) - _wgslsmith_f_op_f32(-global1.a.x)), 1318f);
    global3 = global1.a.x;
    global4 = array<vec3<f32>, 31>();
    let var_1 = all(vec3<bool>(!(33147u >= u_input.a) & any(vec2<bool>(true, true)), false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))));
    var var_2 = -264f;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(func_4(any(select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), vec2<bool>(var_1, var_1))), func_3(~u_input.a, countOneBits(arg_0), vec2<bool>(var_1, false)), vec3<f32>(_wgslsmith_f_op_f32(max(var_0, 1246f)), _wgslsmith_f_op_f32(-969f - global0.b.a.x), _wgslsmith_f_op_f32(max(global1.a.x, var_0))), ~vec4<u32>(u_input.a, 4294967295u, arg_2, arg_2))), -1453f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_div_f32(464f, 643f)), -(~global0.b.b & max(vec2<i32>(global1.b.x, 1i), global2.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-695f, -198f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -489f))), global2.d), true, abs(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, u_input.a), arg_0))), -_wgslsmith_mod_i32(reverseBits(~(-2319i)), abs(_wgslsmith_sub_i32(arg_3, global1.d))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> vec2<u32> {
    global3 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_0 = Struct_2(global0.b, global0.b);
    var var_1 = func_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a), ~u_input.a), vec2<u32>(31940u, _wgslsmith_sub_u32(u_input.a, u_input.a)), max(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(37392u, u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))), -738f, u_input.a | u_input.a, -1i);
    let var_2 = func_2(~(vec2<u32>(~27743u, func_2(vec2<u32>(var_1.d, var_1.d), -161f, var_1.d, -1i).d) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, u_input.a, var_1.d), vec3<u32>(4294967295u, 0u, u_input.a)), _wgslsmith_div_u32(var_1.d, u_input.a))), 1000f, 62311u, var_0.b.b.x).b;
    global0 = Struct_2(Struct_1(global1.c, vec2<i32>(-_wgslsmith_div_i32(-46517i, -10488i), func_2(min(vec2<u32>(44219u, 6542u), vec2<u32>(43441u, 0u)), _wgslsmith_div_f32(-202f, -1058f), 1u, -2147483647i).b.d), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1516f, -173f) + _wgslsmith_f_op_vec2_f32(arg_2 * global1.a)))), _wgslsmith_add_i32(2147483647i, var_2.b.x)), Struct_1(var_0.a.a, vec2<i32>(var_2.d << (u_input.a % 32u), 2147483647i) >> (select(~vec2<u32>(1u, var_1.d), vec2<u32>(var_1.d, u_input.a), false) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_2.c)), vec2<f32>(-1205f, -736f), true)) * vec2<f32>(-2169f, _wgslsmith_div_f32(global1.c.x, var_1.a.x))), 0i));
    return ~(~vec2<u32>(firstTrailingBit(u_input.a), 6209u >> (u_input.a % 32u))) << (func_3(~var_1.d, _wgslsmith_mod_vec2_u32(~vec2<u32>(27812u, var_1.d), countOneBits(countOneBits(vec2<u32>(2239u, u_input.a)))), select(vec2<bool>(!var_1.c, arg_0 || arg_0), !vec2<bool>(var_1.c, arg_0), arg_0)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(117f, _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1296f)), _wgslsmith_f_op_f32(global2.a.x * -301f)))), global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f + global2.c.x))), global0.b.c.x));
    var var_1 = Struct_4(global2.a, global0.a, true, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a & 4294967295u, u_input.a), abs(1u)) << (_wgslsmith_sub_u32(u_input.a, ~u_input.a) % 32u), _wgslsmith_mult_i32(~global0.b.b.x, 20248i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.c.x, global0.a.a.x))), max(func_1(var_1.c, 996f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.a.x)))), ~(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d, u_input.a), vec2<u32>(1u, 34458u)) ^ ~vec2<u32>(6651u, var_1.d))), ~(~vec2<u32>(u_input.a, abs(21857u))), 26141u);
}


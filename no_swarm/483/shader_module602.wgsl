struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(4294967295u, Struct_1(2147483647i, 453f, -65394i), false, Struct_1(0i, -897f, 1i), Struct_1(-21592i, -137f, -1i)), Struct_2(38255u, Struct_1(-7626i, -935f, -31881i), false, Struct_1(1i, -1518f, 1i), Struct_1(i32(-2147483648), -1400f, 1i)), Struct_2(4294967295u, Struct_1(-29279i, 154f, 1i), false, Struct_1(-30990i, 1189f, -34176i), Struct_1(40505i, 313f, 19447i)), Struct_2(22765u, Struct_1(-1i, -703f, 91271i), true, Struct_1(i32(-2147483648), 149f, 25459i), Struct_1(-5676i, 459f, -36252i)), Struct_2(28577u, Struct_1(1i, -153f, 43882i), false, Struct_1(13158i, -2445f, -1i), Struct_1(i32(-2147483648), 1213f, 42072i)), Struct_2(1u, Struct_1(0i, -229f, 1i), true, Struct_1(-2770i, 971f, -11924i), Struct_1(-15452i, -1005f, -47074i)), Struct_2(1u, Struct_1(33595i, 117f, 1i), true, Struct_1(-1i, -1000f, -1i), Struct_1(2147483647i, 574f, 107942i)), Struct_2(20641u, Struct_1(0i, 1431f, i32(-2147483648)), false, Struct_1(i32(-2147483648), 286f, 2147483647i), Struct_1(1i, -323f, -23539i)), Struct_2(4294967295u, Struct_1(2147483647i, 319f, 1i), true, Struct_1(-33714i, -741f, i32(-2147483648)), Struct_1(2147483647i, 916f, -1521i)), Struct_2(24612u, Struct_1(2147483647i, -1000f, 1i), true, Struct_1(1i, -882f, 64642i), Struct_1(-1i, -1000f, -39147i)), Struct_2(0u, Struct_1(i32(-2147483648), 709f, 57180i), true, Struct_1(-1i, -587f, 2147483647i), Struct_1(8178i, 411f, 3801i)), Struct_2(0u, Struct_1(-9485i, 1031f, -1257i), false, Struct_1(-9181i, 128f, -1i), Struct_1(-1i, 701f, 1i)), Struct_2(4294967295u, Struct_1(-1i, 1000f, -1i), false, Struct_1(i32(-2147483648), -1178f, 4682i), Struct_1(-1i, -866f, 2147483647i)), Struct_2(52417u, Struct_1(33009i, 140f, -19120i), false, Struct_1(2566i, -2026f, 0i), Struct_1(-44933i, 349f, -33660i)), Struct_2(0u, Struct_1(-8585i, -164f, -18796i), false, Struct_1(5452i, 987f, 0i), Struct_1(0i, 274f, -23939i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = -((~(~vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) >> (~vec4<u32>(1u, arg_1.x, 13747u, 55099u) % vec4<u32>(32u)))) | vec4<i32>(-_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, -14233i), vec2<i32>(2147483647i, u_input.a)), vec2<i32>(0i, 1i) & vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(-1i << (1u % 32u)), u_input.a));
    let var_1 = _wgslsmith_mult_i32(select(-18575i, _wgslsmith_mod_i32(-11442i, 0i | u_input.a), !(!(!arg_3))), 35075i);
    var var_2 = vec2<f32>(554f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f), _wgslsmith_f_op_f32(abs(-490f)))));
    var var_3 = var_2.x;
    var_0 = select(countOneBits(~vec4<i32>(u_input.a, ~var_0.x, 13497i, -1i)), ~(~(~vec4<i32>(var_1, var_1, -2540i, u_input.a)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, -8299i, -29273i, var_1), vec4<i32>(var_1, 5335i, u_input.a, u_input.a) & vec4<i32>(1i, 9501i, u_input.a, var_1))), !(!(!(!vec4<bool>(false, arg_3, true, arg_3)))));
    return -(~_wgslsmith_div_i32(u_input.a, var_1) & _wgslsmith_mult_i32(var_1, ~u_input.a)) & 1i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_clamp_vec4_i32(-select(_wgslsmith_div_vec4_i32(vec4<i32>(-79588i, arg_3, arg_3, -49360i), vec4<i32>(var_0.c, arg_3, -1i, var_0.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2146i, u_input.a, 0i), vec4<i32>(arg_0.a, -913i, 55040i, -2147483647i)), true) ^ select(vec4<i32>(arg_0.c, arg_1 | var_0.c, max(-1i, arg_0.a), 1i), vec4<i32>(~arg_1, _wgslsmith_add_i32(arg_1, arg_1), ~arg_1, arg_3), true), vec4<i32>(~reverseBits(arg_1), reverseBits(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_3), vec2<i32>(1i, 263i)))), -_wgslsmith_mod_i32(-2147483647i, firstTrailingBit(42921i)), -1i), abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-1556i, 24867i, arg_1, -12334i), vec4<i32>(var_0.c, arg_1, u_input.a, var_0.c), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, u_input.a, 1i, var_0.a), vec4<i32>(-34570i, 49559i, -25686i, arg_3), vec4<i32>(u_input.a, -23470i, arg_0.c, -13461i))), ~vec4<i32>(u_input.a, arg_0.c, arg_3, arg_1))));
    var var_2 = var_0;
    var var_3 = Struct_2(1u, Struct_1(_wgslsmith_sub_i32(arg_0.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(-664f - var_2.b), select(false, false, false)))), (-var_0.a & 1i) >> (~min(68422u, 57348u) % 32u)), false, var_0, Struct_1(countOneBits(-2147483647i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(243f))), _wgslsmith_f_op_f32(sign(arg_2.x)))), _wgslsmith_dot_vec2_i32(var_1.zy, ~vec2<i32>(0i, arg_1))));
    return 1i;
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 15>();
    let var_0 = false;
    var var_1 = select(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(countOneBits(u_input.a), -1i), -2147483647i), u_input.a, i32(-1i) * -20801i), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(~36694i, u_input.a), func_4(Struct_1(1i, 1544f, u_input.a), -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-244f, -198f, 1144f, 462f) * vec4<f32>(1000f, 430f, 897f, 1368f)), func_3(vec2<u32>(4294967295u, 76425u), vec4<u32>(8282u, 66260u, 59147u, 36303u), 4294967295u, var_0))), false);
    var_1 = _wgslsmith_add_i32(-1i, 0i);
    var_1 = ~u_input.a;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(~85489u, ~29785u, ~1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, firstLeadingBit(4294967295u), 99842u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) ^ vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 56075u, 4294967295u), vec3<u32>(1u, 55779u, 38414u)), _wgslsmith_mod_u32(17108u, 65711u)), firstTrailingBit(1u), 61600u));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = ~(~countOneBits(abs(vec2<u32>(0u, arg_0.a))) ^ vec2<u32>(~arg_0.a, func_2()));
    var var_1 = 25760u;
    let var_2 = !arg_0.c;
    global0 = array<Struct_2, 15>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, abs(arg_0.a), reverseBits(45776u), arg_0.a) & ~(vec4<u32>(8720u, arg_0.a, arg_0.a, 0u) & vec4<u32>(arg_0.a, 4294967295u, var_0.x, arg_0.a)), ~reverseBits(firstLeadingBit(vec4<u32>(var_0.x, 11027u, arg_0.a, 20692u)))), ~vec4<u32>(var_0.x, firstLeadingBit(func_2()), 1u, 19415u)), 15u)];
    return _wgslsmith_f_op_f32(sign(-309f));
}

fn func_5(arg_0: f32) -> f32 {
    var var_0 = ~countOneBits(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 16198u, 4294967295u, 31914u))));
    var_0 = min(firstTrailingBit(~(_wgslsmith_mod_vec4_u32(vec4<u32>(134596u, var_0.x, 15655u, var_0.x), vec4<u32>(49418u, var_0.x, 110082u, var_0.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 4294967295u), vec4<u32>(var_0.x, var_0.x, 1u, 26381u), vec4<u32>(var_0.x, var_0.x, 38116u, var_0.x)) % vec4<u32>(32u)))), ~vec4<u32>(func_2(), var_0.x, 39237u | (72569u | var_0.x), 1u));
    global0 = array<Struct_2, 15>();
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(745f + 234f), 115f, arg_0);
    var var_2 = vec4<bool>(true, true, any(vec4<bool>(false, 1f != _wgslsmith_f_op_f32(sign(-1106f)), true, true)), select(all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true)), true, true));
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(53587u, Struct_1(u_input.a, -108f, -2794i), true, Struct_1(9701i, -1154f, u_input.a), Struct_1(58807i, -1648f, -64863i)), -517f, vec3<bool>(true, true, false), vec3<i32>(8334i, u_input.a, -2147483647i))), _wgslsmith_f_op_f32(min(-1239f, 906f))))))));
    let var_1 = select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i) * -reverseBits(vec2<i32>(u_input.a, u_input.a)), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), false), vec2<bool>(true, true), !all(vec4<bool>(true, false, false, true))));
    global0 = array<Struct_2, 15>();
    var var_2 = !(!(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), true)));
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, reverseBits(~1u), abs(1u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(78701u, 1u), 1u), ~(~0u), 1u)), Struct_1(u_input.a, 716f, -1i), var_2.x | false, Struct_1(0i, -514f, _wgslsmith_div_i32(var_1.x, _wgslsmith_add_i32(var_1.x | var_1.x, 1i))), Struct_1(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-482f)), _wgslsmith_f_op_f32(-329f * 2125f))), _wgslsmith_f_op_f32(-1946f + -156f)), abs(_wgslsmith_clamp_i32(~(-1i), firstTrailingBit(u_input.a), 1i))));
    let var_4 = var_3.a;
    let var_5 = vec3<bool>(true, var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(1486f, reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(0i, 54841i, -1i) >> (vec3<u32>(0u, 29609u, var_3.a) % vec3<u32>(32u)))) ^ vec3<i32>(abs(2147483647i), _wgslsmith_mult_i32(1i, u_input.a), 2147483647i), reverseBits(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 20621u, 4294967295u, 26365u), vec4<u32>(var_4, var_3.a, 1u, 4294967295u) & vec4<u32>(var_4, 4294967295u, var_4, var_4), min(vec4<u32>(4294967295u, 25217u, var_4, var_4), vec4<u32>(var_4, 19628u, 45010u, 4587u)))), vec4<u32>(abs(var_4), abs(var_4), ~var_3.a, _wgslsmith_mod_u32(max(~41720u, ~4294967295u), 10476u)));
}


struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-289f, vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 74792u, 1u, 3538u), 1141f), Struct_1(1000f, vec2<u32>(63596u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 76139u), 361f), Struct_1(2032f, vec2<u32>(114554u, 1089u), vec4<u32>(46427u, 1u, 78862u, 44395u), 1472f), Struct_1(-1000f, vec2<u32>(0u, 4294967295u), vec4<u32>(0u, 92114u, 1u, 1u), -833f), Struct_1(-162f, vec2<u32>(0u, 64064u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -739f), Struct_1(-830f, vec2<u32>(78360u, 36530u), vec4<u32>(4282u, 18651u, 1u, 1u), 305f), Struct_1(1000f, vec2<u32>(40368u, 40769u), vec4<u32>(77054u, 111066u, 1u, 1805u), -1268f), Struct_1(797f, vec2<u32>(0u, 4294967295u), vec4<u32>(1u, 40785u, 16905u, 0u), 1000f), Struct_1(-497f, vec2<u32>(10494u, 17013u), vec4<u32>(4294967295u, 0u, 1u, 104002u), -1170f), Struct_1(-493f, vec2<u32>(45324u, 71916u), vec4<u32>(0u, 33398u, 67122u, 1u), -187f), Struct_1(965f, vec2<u32>(35964u, 21690u), vec4<u32>(0u, 14675u, 4294967295u, 22178u), -275f), Struct_1(743f, vec2<u32>(42786u, 0u), vec4<u32>(40298u, 0u, 7754u, 4294967295u), 2710f), Struct_1(-1669f, vec2<u32>(49388u, 48498u), vec4<u32>(21293u, 4294967295u, 0u, 1u), 658f), Struct_1(-896f, vec2<u32>(4294967295u, 4294967295u), vec4<u32>(76698u, 76123u, 26512u, 19731u), -1000f), Struct_1(998f, vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 28746u, 56035u, 4294967295u), 974f), Struct_1(-1226f, vec2<u32>(4294967295u, 24686u), vec4<u32>(52596u, 14266u, 29911u, 36996u), -1430f), Struct_1(1000f, vec2<u32>(1u, 34445u), vec4<u32>(1u, 4294967295u, 0u, 49427u), 1071f), Struct_1(-2663f, vec2<u32>(4294967295u, 41012u), vec4<u32>(1u, 35190u, 66094u, 4294967295u), -600f), Struct_1(-815f, vec2<u32>(21712u, 1u), vec4<u32>(19169u, 49806u, 22118u, 12109u), 2080f), Struct_1(-2050f, vec2<u32>(1u, 23352u), vec4<u32>(0u, 0u, 0u, 4294967295u), -1388f), Struct_1(922f, vec2<u32>(37923u, 28540u), vec4<u32>(17481u, 14861u, 4294967295u, 43367u), -773f), Struct_1(379f, vec2<u32>(33760u, 60777u), vec4<u32>(0u, 126935u, 58673u, 64985u), -651f), Struct_1(-356f, vec2<u32>(10176u, 1u), vec4<u32>(33800u, 1u, 4294967295u, 1u), 1401f), Struct_1(784f, vec2<u32>(1u, 50437u), vec4<u32>(0u, 0u, 1u, 1u), 188f), Struct_1(-529f, vec2<u32>(0u, 4107u), vec4<u32>(4294967295u, 7913u, 13258u, 1u), -166f), Struct_1(-458f, vec2<u32>(58230u, 4512u), vec4<u32>(93523u, 4294967295u, 0u, 1u), -1635f), Struct_1(-444f, vec2<u32>(22013u, 38545u), vec4<u32>(11279u, 61816u, 97273u, 35684u), -1760f), Struct_1(-267f, vec2<u32>(61761u, 1u), vec4<u32>(4294967295u, 32851u, 18037u, 36083u), 752f), Struct_1(1392f, vec2<u32>(1u, 26684u), vec4<u32>(30867u, 62760u, 0u, 1u), -298f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    global1 = array<Struct_1, 29>();
    var var_0 = ~(i32(-1i) * -1i);
    let var_1 = !vec2<bool>(all(vec4<bool>(true, true, true, true)), true);
    var_0 = -2147483647i;
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(firstTrailingBit(u_input.b), u_input.d, -49820i), 1i), _wgslsmith_mod_i32(firstLeadingBit(1i), select(u_input.d, ~(-1i), any(vec3<bool>(var_1.x, false, var_1.x)))) >> (_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(~global0.c, ~vec4<u32>(u_input.c, u_input.c, u_input.c, global0.b.x))) % 32u), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.a.x), vec3<i32>(-27851i, 1i, 2147483647i)) >> (select(1u, _wgslsmith_mod_u32(u_input.c, 29272u), var_1.x) % 32u), _wgslsmith_div_i32(u_input.a.x, -2147483647i)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(global0.b.x), ~global0.b.x, max(1u, 0u)), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, 43537u), firstTrailingBit(global0.c.x))), firstLeadingBit(1u), ~(~(25943u & u_input.c))), ~global0.c);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(select(546f, -388f, _wgslsmith_f_op_f32(-global0.d) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<u32>(_wgslsmith_div_u32(min(_wgslsmith_add_u32(1u, 26770u), 4294967295u), ~u_input.c), 4294967295u), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + global0.a), _wgslsmith_f_op_f32(-global0.a))));
    global0 = global1[_wgslsmith_index_u32(func_3(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1624f, 472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d)))), 29u)];
    global0 = Struct_1(-414f, global0.b, _wgslsmith_clamp_vec4_u32(countOneBits(global0.c), _wgslsmith_add_vec4_u32(~min(vec4<u32>(4294967295u, u_input.c, 8760u, global0.c.x), vec4<u32>(global0.c.x, global0.b.x, global0.b.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, 20534u, global0.b.x, u_input.c), abs(vec4<u32>(91053u, u_input.c, global0.c.x, 4294967295u)))), vec4<u32>(global0.b.x, _wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_sub_u32(u_input.c, 43635u), global0.c.x) ^ (max(global0.c, vec4<u32>(1u, 13358u, u_input.c, global0.c.x)) ^ (vec4<u32>(u_input.c, 1u, u_input.c, global0.b.x) & global0.c))), _wgslsmith_f_op_f32(916f - _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(337f * -1000f))));
    let var_0 = ~global0.c.yyw;
    global0 = global1[_wgslsmith_index_u32(0u & _wgslsmith_mult_u32(4294967295u, global0.b.x), 29u)];
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -446f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 1765f)), _wgslsmith_f_op_f32(sign(900f))))), abs(var_0.xx) ^ vec2<u32>(_wgslsmith_mod_u32(countOneBits(var_0.x), ~global0.c.x), u_input.c), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(func_3(-825f, _wgslsmith_div_f32(global0.a, 553f)), func_3(global0.a, global0.a) >> (u_input.c % 32u), _wgslsmith_dot_vec3_u32(countOneBits(var_0), var_0)), _wgslsmith_dot_vec3_u32(var_0, firstLeadingBit(max(vec3<u32>(var_0.x, 4294967295u, 71895u), global0.c.wyy))), ~(global0.c.x & reverseBits(global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.c | _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, global0.b.x), arg_0);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * arg_1.d) * _wgslsmith_f_op_f32(-global0.d)))), reverseBits(select(~(~arg_1.b), _wgslsmith_sub_vec2_u32(~global0.c.zw, ~arg_1.b), !(u_input.b > -29921i))), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + arg_1.a) * -1464f))));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d))), -294f), max(~0u, ~max(_wgslsmith_dot_vec4_u32(arg_1.c, global0.c), 1u)));
    var var_4 = vec3<i32>(u_input.b, u_input.b, -_wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_2, -2147483647i, arg_2))), ~(-2147483647i)));
    return func_2();
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_1, 29>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -159f))), min(_wgslsmith_mod_vec2_u32(func_4(~u_input.c, func_2(), u_input.d ^ u_input.b, vec3<bool>(true, true, false)).b, ~(~arg_2.c.yx)), _wgslsmith_add_vec2_u32(global0.c.yw << (~arg_2.b % vec2<u32>(32u)), firstLeadingBit(global0.b))), arg_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-653f))))));
    var_0 = func_4(20037u, arg_1, firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.b, arg_0.x), -vec3<i32>(u_input.b, 1i, u_input.d))) ^ _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_mult_i32(u_input.b, 50960i))), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), select(vec3<bool>(all(vec4<bool>(false, false, true, false)), true, all(vec4<bool>(true, true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), !(4294967295u <= func_2().b.x)));
    var var_1 = any(!select(vec2<bool>(true, true), vec2<bool>(arg_0.x <= 10882i, true), vec2<bool>(any(vec3<bool>(true, false, true)), false)));
    let var_2 = func_4(abs(63060u), Struct_1(-756f, ~countOneBits(vec2<u32>(global0.c.x, 1u)), vec4<u32>(_wgslsmith_sub_u32(min(arg_1.b.x, u_input.c), _wgslsmith_sub_u32(arg_2.b.x, 4294967295u)), countOneBits(global0.c.x), ~var_0.b.x, arg_1.b.x ^ 1u), arg_1.a), 24052i, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f - arg_0.a) + -3036f) * _wgslsmith_f_op_f32(abs(global0.d))), -129f));
    let var_1 = ~vec4<u32>(~_wgslsmith_mod_u32(1u, u_input.c) << (global0.b.x % 32u), arg_0.b.x, ~min(global0.c.x, arg_0.b.x), ~select(arg_0.c.x, global0.c.x >> (u_input.c % 32u), true));
    var var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + -2336f)) - var_0.x));
    var var_4 = (firstLeadingBit((global0.c.x >> (2018u % 32u)) | max(4294967295u, global0.c.x)) > ~4294967295u) & true;
    return ~(-firstLeadingBit(-20264i));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec4<i32>(u_input.b, u_input.b, _wgslsmith_sub_i32(abs(~(-37729i)), ~(~(-13931i))), func_6(func_5(vec3<i32>(-1i) * -u_input.a, func_4(firstLeadingBit(global0.c.x), func_2(), u_input.a.x, vec3<bool>(true, true, true)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1460f))), vec4<i32>(-1i) * -(~vec4<i32>(0i, 100645i, 2094i, 41978i)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, 2147483647i, -2147483647i), vec4<i32>(2147483647i, u_input.d, -39619i, u_input.b)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 23176i, u_input.a.x, 2147483647i), vec4<i32>(-1i, -2147483647i, -785i, 2147483647i)))));
    var_0 = -(-(vec4<i32>(var_0.x, 3356i, u_input.b, u_input.a.x) | (vec4<i32>(var_0.x, var_0.x, u_input.b, u_input.b) ^ vec4<i32>(1i, u_input.a.x, u_input.d, var_0.x))) ^ reverseBits(select(abs(vec4<i32>(u_input.b, u_input.b, 0i, 10462i)), ~vec4<i32>(2147483647i, -2147483647i, -16991i, var_0.x), u_input.c <= 1u)));
    var var_1 = global1[_wgslsmith_index_u32(~firstTrailingBit(arg_0.b.x), 29u)];
    var var_2 = true;
    let var_3 = arg_0;
    return vec4<u32>(global0.b.x, ~global0.b.x, min(arg_0.c.x, var_1.c.x), 4539u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1093f, -151f), _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_f32(-global0.d)), global0.b, _wgslsmith_clamp_vec4_u32(global0.c, _wgslsmith_clamp_vec4_u32(~func_1(Struct_1(-1105f, global0.c.yw, global0.c, -351f)), vec4<u32>(1u, select(4294967295u, 24478u, true), 1u, 7503u), global0.c), ~(~global0.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a, -1602f)), -696f)) * -142f), -705f)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1701f)), global0.b, vec4<u32>(35553u, u_input.c, abs(u_input.c), 4610u), _wgslsmith_f_op_f32(round(-1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-335f - global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(global0.d + global0.d))), _wgslsmith_f_op_f32(305f * global0.d)))), abs(min(min(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(u_input.d, 14957i)) & vec2<i32>(-24128i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 7708i), u_input.a.yy))), vec4<f32>(-1620f, global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(588f - 551f) - global0.d) * -508f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) + _wgslsmith_f_op_f32(f32(-1f) * -566f))));
}


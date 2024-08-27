struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(0u, 14393u, 13473u, 1u), vec4<f32>(-1085f, -2534f, -894f, -751f), 1220u, 2703u), Struct_1(vec4<u32>(46600u, 22017u, 4294967295u, 392u), vec4<f32>(1249f, -2273f, -2086f, -227f), 0u, 4294967295u), Struct_1(vec4<u32>(30783u, 1u, 0u, 0u), vec4<f32>(935f, -583f, 1548f, 1532f), 4294967295u, 98110u), Struct_1(vec4<u32>(1u, 29766u, 4294967295u, 1u), vec4<f32>(396f, 667f, 860f, -421f), 39395u, 4294967295u), Struct_1(vec4<u32>(83238u, 26768u, 8380u, 0u), vec4<f32>(-1936f, 384f, -617f, 438f), 31558u, 18360u), Struct_1(vec4<u32>(4294967295u, 0u, 55215u, 39396u), vec4<f32>(339f, 212f, -371f, 2237f), 28817u, 0u), Struct_1(vec4<u32>(43285u, 4294967295u, 83576u, 29501u), vec4<f32>(1247f, 2488f, 1252f, 230f), 4294967295u, 0u), Struct_1(vec4<u32>(7113u, 1u, 0u, 61527u), vec4<f32>(-1234f, -2321f, -849f, 1544f), 29706u, 0u), Struct_1(vec4<u32>(87744u, 0u, 13283u, 0u), vec4<f32>(1186f, 572f, -648f, 1174f), 84676u, 0u), Struct_1(vec4<u32>(70319u, 1u, 1u, 0u), vec4<f32>(657f, 211f, -1000f, -1088f), 1u, 87160u), Struct_1(vec4<u32>(79879u, 0u, 1u, 4294967295u), vec4<f32>(1787f, 2122f, 1000f, -975f), 36075u, 76099u), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 19756u), vec4<f32>(449f, 121f, 784f, -494f), 100800u, 100183u), Struct_1(vec4<u32>(36123u, 36429u, 43146u, 4294967295u), vec4<f32>(1000f, -1868f, 838f, -839f), 8016u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 1u, 11327u, 49089u), vec4<f32>(-1559f, 1178f, 1621f, -1543f), 4294967295u, 1u), Struct_1(vec4<u32>(1u, 14328u, 0u, 1u), vec4<f32>(262f, -597f, 489f, 319f), 0u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a.d, u_input.b, u_input.b), max(arg_1.a.a.xzx << (vec3<u32>(0u, arg_0.a.c, arg_0.a.a.x) % vec3<u32>(32u)), ~u_input.a)));
    var var_1 = arg_2.xxw;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, arg_0.a.b.x)));
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(reverseBits(41311u), 15u)], arg_1.a.b.zzz, arg_0.c);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1662f, _wgslsmith_f_op_f32(-arg_1.a.b.x))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    global0 = reverseBits(vec4<i32>(-u_input.c.x, u_input.c.x, global0.x & -_wgslsmith_sub_i32(global0.x, arg_1.c.x), arg_1.c.x));
    var var_0 = ~0i;
    global0 = u_input.c;
    let var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1, Struct_2(arg_0, vec3<f32>(-1000f, arg_1.b.x, -773f), u_input.c.yz), vec4<bool>(false, false, false, false), vec4<f32>(arg_0.b.x, -1779f, 176f, arg_0.b.x))), arg_1.b.yx))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(abs(arg_1.a.b.wxw)), ~u_input.c.zz), Struct_2(arg_1.a, vec3<f32>(arg_0.b.x, 470f, 614f), vec2<i32>(0i, u_input.c.x) ^ global0.yz), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, -1000f, arg_2.x, arg_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2158f - -2484f)), arg_1.a.b.x))));
    return arg_2.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(465f)) + _wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec4<f32>(796f, -2156f, -1119f, -1351f), 0u, u_input.a.x), Struct_2(Struct_1(vec4<u32>(u_input.a.x, 20757u, u_input.b, 46718u), vec4<f32>(902f, -627f, 1224f, -1000f), u_input.b, 4294967295u), vec3<f32>(586f, 528f, 122f), vec2<i32>(-39901i, global0.x)), vec4<f32>(-1190f, -855f, 1203f, 1124f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1964f))))), 313f));
    global0 = -u_input.c ^ _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global0.x, 2147483647i), global0.xxx), _wgslsmith_add_i32(-1i, u_input.c.x), arg_0.x, firstTrailingBit(global0.x)) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.x, u_input.c.x, arg_0.x), -u_input.c), _wgslsmith_mult_vec4_i32(u_input.c, ~u_input.c & -vec4<i32>(arg_0.x, 2147483647i, 1i, -30561i)));
    global0 = -vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_i32(global0.zxx, u_input.c.wzy), abs(1i));
    let var_1 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)), ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) > ~_wgslsmith_sub_u32(1u, u_input.a.x));
    var var_2 = Struct_3(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), u_input.a.zy), ~vec2<u32>(1u, u_input.b), vec2<u32>(59474u, u_input.a.x)), ~(~u_input.a.yz) | ~(~u_input.a.zz)), ~(-2147483647i), ~abs(vec3<u32>(57304u, 14360u, u_input.a.x) ^ vec3<u32>(u_input.b, 41883u, 33187u)) ^ reverseBits(u_input.a), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x) & firstTrailingBit(u_input.b), u_input.b, _wgslsmith_add_u32(~(~u_input.b), ~(~u_input.b))), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(1232f - -1518f), _wgslsmith_f_op_f32(select(333f, var_0, var_1.x)))), abs(countOneBits(global0.yw))));
    return var_2.e;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = 10560i;
    let var_1 = ~min(arg_0.wz, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(arg_1.a.a.zz, vec2<u32>(u_input.b, arg_0.x))), ~reverseBits(arg_1.a.a.zy)));
    var var_2 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), (select(7428u, 0u, false) >> (~arg_1.a.c % 32u)) == var_1.x), vec4<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))) && any(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true)), true), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), true, false, false));
    let var_3 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 15u)], vec3<f32>(var_3, arg_2.x, -1742f), vec2<i32>(global0.x, 23718i)), arg_1, vec4<bool>(var_2.x, var_2.x, true, false), vec4<f32>(181f, 646f, var_3, arg_2.x))).x, _wgslsmith_div_f32(2305f, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f) - arg_2.x))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(63770u, arg_1.a.c, _wgslsmith_div_u32(~arg_0.x, _wgslsmith_mod_u32(abs(var_1.x), min(arg_0.x, 76249u)))), arg_1.a.a.zyw), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<u32>(13635u, 10654u, ~1u, 4294967295u), func_1(-vec2<i32>(-1i, 36529i ^ u_input.c.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-412f)) * _wgslsmith_f_op_f32(abs(1394f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1210f)) - _wgslsmith_f_op_f32(f32(-1f) * -624f))))));
    let var_1 = Struct_3(~(~(max(var_0.a.zy, var_0.a.yy) ^ u_input.a.yz)), ~_wgslsmith_div_i32(-2147483647i, min(u_input.c.x, -21837i)), abs(vec3<u32>(~u_input.b, abs(4294967295u), 6059u)), var_0.a.x, Struct_2(global1[_wgslsmith_index_u32(var_0.d, 15u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.wyx)), vec2<i32>(-1i) * -(~global0.xw)));
    global0 = max(min(vec4<i32>(firstLeadingBit(~54533i), 0i, -1i, var_1.b), ~vec4<i32>(u_input.c.x, var_1.e.c.x, global0.x, -14764i) | u_input.c), vec4<i32>(i32(-1i) * -34627i, func_1(_wgslsmith_div_vec2_i32(global0.wy ^ vec2<i32>(var_1.e.c.x, -24517i), global0.yx)).c.x, 1i, ~func_1(vec2<i32>(u_input.c.x, 1i)).c.x));
    var var_2 = var_1.e;
    global0 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(11213i, var_1.e.c.x, 11119i, u_input.c.x) << (vec4<u32>(10350u, var_0.a.x, 20054u, 0u) % vec4<u32>(32u))), vec4<i32>(global0.x, -21127i, u_input.c.x & 2147483647i, -3786i));
    var_2 = Struct_2(Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(var_1.e.a.a, var_1.e.a.a), ~0u, var_0.a.x, _wgslsmith_div_u32(4294967295u, ~var_2.a.c)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * _wgslsmith_f_op_f32(select(361f, var_0.b.x, false))), -563f, _wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(-var_0.b.x))), var_2.a.d, _wgslsmith_sub_u32(countOneBits(firstLeadingBit(var_1.c.x)), var_0.a.x)), _wgslsmith_f_op_vec3_f32(-var_0.b.yxz), vec2<i32>(-1i, _wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(-6410i, 2147483647i)), 1i)));
    var var_3 = select(!vec2<bool>(!(var_0.c < var_2.a.c), true), !select(vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(false, false, false))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, false), vec2<bool>(true, true)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3(var_1.e, Struct_2(Struct_1(vec4<u32>(u_input.a.x, var_2.a.a.x, var_1.e.a.d, 33177u), var_2.a.b, 50773u, 4294967295u), var_1.e.a.b.zzy, vec2<i32>(var_1.e.c.x, var_2.c.x)), vec4<bool>(var_3.x, false, true, var_3.x), vec4<f32>(var_2.a.b.x, var_1.e.a.b.x, 550f, 1000f))).x, _wgslsmith_f_op_f32(1470f + -930f), select(false, true, true)))) + -702f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(513f, var_0.b.x, false)))), _wgslsmith_f_op_f32(-var_0.b.x), 649f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.b.x))) - var_4.x), select(reverseBits(vec4<i32>(-59213i, 0i, -44218i, global0.x) & vec4<i32>(u_input.c.x, var_2.c.x, -10906i, -2819i)), u_input.c, true), firstLeadingBit((global0.x | ~u_input.c.x) ^ func_1(vec2<i32>(-2147483647i, -31711i)).c.x), ~func_4(~var_1.e.a.a, var_1.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.yy))).a.x, var_2.a.b.wzz);
}


struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 0u, 55489u, 19826u, 32476u, 83799u, 0u, 1u, 22304u, 12134u, 57411u, 45817u, 31989u);

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: i32 = 37644i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global3 = ~_wgslsmith_dot_vec3_i32(~abs(-vec3<i32>(-15556i, -2147483647i, 2147483647i)), vec3<i32>(~(-76643i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(0i, -2147483647i))));
    return vec3<i32>(190i, 0i, _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(77682i, -1i, -30i, 2147483647i)), firstTrailingBit(vec4<i32>(2147483647i, 36418i, 2147483647i, 2147483647i)) << (~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], u_input.a, global1.c, 24136u) % vec4<u32>(32u)))) & firstLeadingBit(vec3<i32>(54572i, 55620i, -59891i));
}

fn func_2() -> Struct_1 {
    let var_0 = global1.b;
    let var_1 = _wgslsmith_clamp_vec3_i32(~(~func_3(Struct_1(global1.a, global1.a.yz, 1u, global1.d))), vec3<i32>(_wgslsmith_clamp_i32(max(_wgslsmith_mod_i32(-1i, -1i), -1i), _wgslsmith_mult_i32(1i, -14327i), 5922i), -_wgslsmith_mod_i32(1i, i32(-1i) * -1i), 1i), vec3<i32>(select(-1i, _wgslsmith_mult_i32(~(-6805i), 1i), true), abs(firstTrailingBit(firstLeadingBit(-43817i))), abs(_wgslsmith_clamp_i32(0i, 30430i, 7698i)) >> (var_0.x % 32u)));
    global1 = Struct_1(vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a.x, global0[_wgslsmith_index_u32(18740u, 13u)], 2737u), ~vec4<u32>(92445u, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 13u)], 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(20330u, 0u, 21124u, _wgslsmith_div_u32(0u, global1.b.x)), ~(vec4<u32>(1231u, 4294967295u, global1.c, global1.a.x) ^ vec4<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 0u, u_input.b, var_0.x))), ~countOneBits(~var_0.x)), select(~global1.b, global1.a.xy, !all(select(vec3<bool>(global1.d.x, false, global1.d.x), vec3<bool>(global1.d.x, false, global1.d.x), vec3<bool>(global1.d.x, false, false)))), select(global0[_wgslsmith_index_u32(5232u ^ var_0.x, 13u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~global1.a.zz, vec2<u32>(4294967295u, var_0.x)), 1u, _wgslsmith_dot_vec2_u32(abs(global1.b), abs(global1.b))), countOneBits(_wgslsmith_clamp_i32(var_1.x, var_1.x, 2147483647i)) < 32495i), global1.d);
    var var_2 = vec3<u32>(14486u << (u_input.a % 32u), 0u, firstLeadingBit(4294967295u));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, _wgslsmith_f_op_f32(round(728f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-536f, -126f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1873f, 1689f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -637f), vec2<f32>(1175f, -873f), global1.d))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-544f)), _wgslsmith_f_op_f32(1174f - 1085f)) + _wgslsmith_f_op_f32(ceil(2663f))), _wgslsmith_f_op_f32(f32(-1f) * -605f)));
    return Struct_1(global1.a, vec2<u32>(var_0.x, ~1u), max(4294967295u, ~(~global1.b.x)), !vec2<bool>(global1.d.x, any(vec2<bool>(true, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_2(func_3(Struct_1(~(~vec3<u32>(50294u, u_input.b, global1.c)), ~(~vec2<u32>(42026u, 34485u)), var_0.b.x, select(global1.d, vec2<bool>(true, arg_1), global1.d.x))).zy, select(select(max(~u_input.b, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 13u)], var_0.c)), ~(~27035u), false), ~_wgslsmith_clamp_u32(global1.a.x, firstTrailingBit(62856u), global1.a.x), var_0.d.x), global1.a, vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-2592i, -1i)) >> (~_wgslsmith_dot_vec2_u32(global1.b, global1.b) % 32u), select(3757i, 1i, any(vec2<bool>(true, true)))), ~_wgslsmith_mult_u32(1u, max(countOneBits(u_input.a), u_input.a)));
    let var_2 = _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~(~(~23450u)), 13u)], _wgslsmith_mult_u32(func_2().a.x, func_2().a.x));
    var var_3 = ~52024i;
    global3 = var_1.a.x;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = false;
    global1 = Struct_1(arg_0.a >> (countOneBits(firstLeadingBit(vec3<u32>(4294967295u, 17294u, 1u))) % vec3<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.b >> (16642u % 32u), 4294967295u)) & _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, arg_1.e)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(959f, 162f, 1846f) * vec3<f32>(630f, 1199f, -518f)), !var_0).b, func_2().a.zy), global1.b.x, arg_0.d);
    global2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, ~u_input.b << (u_input.b % 32u), _wgslsmith_mod_u32(u_input.b, ~arg_1.b), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a.yz, global1.b), 13u)]), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(3853u, 79818u, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 13u)]), reverseBits(vec4<u32>(4294967295u, u_input.a, arg_1.c.x, 1u))))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, arg_1.e, 4669u), vec3<u32>(21370u, arg_0.c, global1.b.x)), firstTrailingBit(global1.a.x), ~4294967295u), 13u)] ^ 4294967295u, 13u)] >> (min(_wgslsmith_add_u32(~4294967295u, 70374u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.e, global0[_wgslsmith_index_u32(u_input.b, 13u)], arg_1.c.x, global1.a.x), vec4<u32>(u_input.b, arg_1.b, u_input.a, global0[_wgslsmith_index_u32(arg_0.c, 13u)]))) % 32u));
    let var_1 = !vec3<bool>(global0[_wgslsmith_index_u32(func_2().b.x ^ u_input.b, 13u)] >= reverseBits(17586u), arg_0.d.x, var_0);
    var var_2 = arg_1;
    return Struct_2(abs(vec2<i32>(-849i, 1i)), u_input.b, reverseBits(~_wgslsmith_add_vec3_u32(arg_0.a, vec3<u32>(1u, 14390u, arg_1.b))), var_2.a, 27164u);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    global1 = func_1(vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(702f)), arg_0.x)) - arg_0.x)), !(false | any(vec2<bool>(false, false))) == any(select(vec3<bool>(global1.d.x, false, true), vec3<bool>(true, true, global1.d.x), vec3<bool>(false, global1.d.x, global1.d.x))));
    var var_0 = Struct_1(global1.a, vec2<u32>(u_input.b, 1u), 0u, vec2<bool>(all(vec2<bool>(global1.d.x, func_2().d.x)), func_3(Struct_1(global1.a, arg_1.c.xy, 0u, vec2<bool>(false, global1.d.x))).x <= 47943i));
    var var_1 = func_4(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_0.x, 1000f))))), _wgslsmith_f_op_vec3_f32(abs(arg_0.zwz))), 9821i <= arg_1.a.x), Struct_2(~(arg_1.d >> (vec2<u32>(arg_1.c.x, 1u) % vec2<u32>(32u))), min(1u, 0u), ~(abs(arg_1.c) << (func_2().a % vec3<u32>(32u))), arg_1.a, firstTrailingBit(~global1.a.x)));
    var var_2 = ~min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, 3347i, i32(-1i) * -1934i), ~vec4<i32>(arg_1.a.x, var_1.d.x, 0i, -1i)), -vec4<i32>(18080i, 25153i, 0i, arg_1.d.x));
    let var_3 = ~var_1.c.zy;
    return vec4<bool>(!func_2().d.x & false, 51372i >= max(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, arg_1.a.x, 0i, -1i), vec4<i32>(arg_1.a.x, -1i, arg_1.a.x, -19430i)), var_1.d.x), -arg_2 | min(var_1.d.x, 2147483647i)), !var_0.d.x, (_wgslsmith_mult_u32(_wgslsmith_div_u32(var_3.x, 45143u), ~79686u) | abs(global0[_wgslsmith_index_u32(u_input.a, 13u)])) <= countOneBits(~_wgslsmith_clamp_u32(var_0.a.x, arg_1.c.x, var_0.a.x)));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1231f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-126f, 694f))), _wgslsmith_f_op_f32(arg_1 + 1321f), arg_1), !(-1653f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * arg_1)))));
    var var_1 = ~(~var_0.a);
    let var_2 = arg_2;
    let var_3 = 1427f;
    var var_4 = vec4<u32>(_wgslsmith_clamp_u32(func_4(func_2(), arg_0).e, 1u, 4294967295u), ~arg_3.b.x, min(u_input.b, global0[_wgslsmith_index_u32(global1.c, 13u)]), ~_wgslsmith_add_u32(49870u, 60334u));
    return Struct_1(vec3<u32>(firstLeadingBit(select(u_input.a, global1.a.x, global1.d.x) | _wgslsmith_mod_u32(27400u, var_1.x)), _wgslsmith_clamp_u32(4294967295u, abs(1u), 8225u), ~(~abs(0u))), abs(global1.b), firstLeadingBit(_wgslsmith_add_u32(~(~global0[_wgslsmith_index_u32(u_input.b, 13u)]), 4294967295u)), var_2.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -(~(~(-2147483647i)));
    global3 = select(0i, 29299i, true) >> (_wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, 442u, 1u) >> (global1.a % vec3<u32>(32u))), select(global1.a, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], ~16613u, 1u), vec3<bool>(!global1.d.x, select(false, false, global1.d.x), global1.d.x))) % 32u);
    let var_0 = func_6(Struct_2(vec2<i32>(abs(22467i) >> (~global1.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 2400i, -32130i), abs(vec4<i32>(-22704i, 4492i, -15343i, 2147483647i)))), 1u, ~vec3<u32>(_wgslsmith_clamp_u32(global1.c, u_input.b, 0u), _wgslsmith_div_u32(49133u, global0[_wgslsmith_index_u32(16086u, 13u)]), u_input.a), min(abs(~vec2<i32>(-33973i, 37199i)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 10268i), vec2<i32>(14767i, -2147483647i)), -vec2<i32>(10983i, -1i), select(global1.d, vec2<bool>(false, global1.d.x), global1.d.x))), 18947u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f + -851f) + _wgslsmith_f_op_f32(ceil(-1147f))), 198f), func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - -498f)), -750f, _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(457f)))), func_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 2261f, -534f)), true), Struct_2(countOneBits(vec2<i32>(-35896i, 0i)), 41557u, ~vec3<u32>(61937u, 62879u, 4294967295u), vec2<i32>(25538i, -1i), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]), vec4<u32>(0u, 35087u, 15068u, global1.a.x)))), max(0i, -44833i)), Struct_1(~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], global1.a.x)), func_4(Struct_1(global1.a, global1.a.zx, 1u, global1.d), func_4(Struct_1(vec3<u32>(u_input.a, 0u, 0u), vec2<u32>(global1.b.x, 1u), 0u, global1.d), Struct_2(vec2<i32>(0i, 2796i), u_input.b, global1.a, vec2<i32>(-1i, 0i), u_input.b))).c.zy, global1.b.x, global1.d));
    var var_1 = true;
    global3 = -33556i;
    let var_2 = global1.d.x;
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(26533u, global0[_wgslsmith_index_u32(var_0.b.x, 13u)], global1.c, 0u), vec4<u32>(2519u, global1.a.x, u_input.a, 46624u), vec4<u32>(global1.b.x, u_input.b, u_input.b, var_0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(9404u, u_input.a, 22288u, 5494u), vec4<u32>(var_0.c, 30061u, 47585u, 1u)))) & vec4<u32>(u_input.a, ~func_6(Struct_2(vec2<i32>(3067i, -28753i), 30640u, vec3<u32>(4294967295u, 0u, 0u), vec2<i32>(48306i, -48448i), 1u), 925f, vec4<bool>(global1.d.x, true, global1.d.x, false), Struct_1(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 13u)], 13u)], 23250u), vec2<u32>(37808u, 16623u), 41983u, vec2<bool>(true, false))).b.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(u_input.b, var_0.c)), 0u), _wgslsmith_add_u32(min(25650u, firstTrailingBit(0u)), 4755u) << (18412u % 32u));
}


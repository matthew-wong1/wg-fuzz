struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-15223i, 2147483647i, 1i), vec3<i32>(-4479i, -19126i, -24204i), vec3<i32>(1i, i32(-2147483648), -29098i), vec3<i32>(1i, 1i, -15749i), vec3<i32>(-1i, 33650i, i32(-2147483648)), vec3<i32>(-16609i, 18846i, 55797i), vec3<i32>(i32(-2147483648), 1i, 6427i), vec3<i32>(10119i, -5428i, -43685i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-9215i, 51399i, 2147483647i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, 0i));

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: vec3<i32> = vec3<i32>(-8758i, i32(-2147483648), 1i);

var<private> global4: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    global4 = array<vec4<bool>, 5>();
    global2 = array<vec3<bool>, 1>();
    var var_0 = Struct_4(Struct_3(Struct_1(false, -1328f, _wgslsmith_mod_i32(global3.x, -21110i) << (~24571u % 32u), ~(~vec4<u32>(u_input.c, u_input.c, 35416u, u_input.c))), _wgslsmith_clamp_u32(0u, u_input.c, (u_input.c ^ u_input.d.x) & select(84114u, 25628u, true)), false, _wgslsmith_add_vec2_u32(~(u_input.d.xy << (u_input.d.xx % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(u_input.d.yy, u_input.d.yz))), vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(select(global3.x, u_input.a.x, true), global3.x)), Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(-703f, -244f)), -1000f, -697f, -1000f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-872f, 135f, 626f, -188f) * vec4<f32>(2048f, -1856f, 1311f, 1000f)))))), Struct_1(any(vec3<bool>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -311f), 30949i, vec4<u32>(u_input.d.x, max(1u, u_input.c), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, u_input.d.x), u_input.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-1504f - -635f), 16189i, vec4<u32>(4294967295u | u_input.c, ~39301u, 1u, 64152u))));
    let var_1 = global0.xzy;
    let var_2 = Struct_5(Struct_4(Struct_3(Struct_1(var_0.c.a.x > var_0.a.a.b, -985f, 13206i, var_0.c.d.d), u_input.d.x, true, countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(35497u, 4435u), vec2<u32>(var_0.c.d.d.x, 1u)))), reverseBits(~vec2<i32>(u_input.e.x, u_input.a.x)) >> (var_0.a.d % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1998f, -262f, var_0.c.d.b, -341f), _wgslsmith_f_op_vec4_f32(floor(var_0.c.a)), select(vec4<bool>(true, false, true, var_0.c.b.a), vec4<bool>(global0.x, arg_0, false, false), global4[_wgslsmith_index_u32(43890u, 5u)]))), Struct_1(true, _wgslsmith_f_op_f32(-var_0.a.a.b), i32(-1i) * -62572i, var_0.c.d.d), _wgslsmith_f_op_f32(-var_0.a.a.b), Struct_1(true, _wgslsmith_f_op_f32(-var_0.c.c), -global3.x, vec4<u32>(8913u, 8909u, 1u, var_0.a.a.d.x)))), var_0.c.b);
    return abs(i32(-1i) * -var_2.b.c);
}

fn func_4(arg_0: i32, arg_1: f32) -> vec4<bool> {
    let var_0 = ~(~(~1637u));
    let var_1 = Struct_1(all(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(var_0) << (u_input.d.x % 32u), ~1u), 5u)]), 550f, 0i, ~(~vec4<u32>(1u, 1u, var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(36743u, 23865u, 1u, var_0)))));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(var_1.d, var_1.d), u_input.d.x << (firstTrailingBit(30218u) % 32u)) >> (u_input.d.yx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, var_1.d.x), ~var_1.d.x, var_0), 0u, _wgslsmith_add_u32(var_1.d.x, u_input.d.x) >> (1u % 32u)), 22851u));
    return global4[_wgslsmith_index_u32(~1u, 5u)];
}

fn func_2() -> Struct_2 {
    global0 = func_4(select(~(-func_3(true)), ~20202i, !any(vec4<bool>(global0.x, global0.x, true, global0.x)) != any(global4[_wgslsmith_index_u32(select(u_input.d.x, 33787u, global0.x), 5u)])), -134f);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, -1390f, -844f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1242f, 1305f, -2234f) + vec3<f32>(375f, 983f, 1685f)), vec3<f32>(-481f, 1295f, 345f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(386f, 780f)), _wgslsmith_div_f32(-727f, 845f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f) - _wgslsmith_f_op_f32(min(103f, 133f))), _wgslsmith_div_f32(2665f, _wgslsmith_f_op_f32(step(964f, 1273f))))));
    var var_1 = vec4<bool>(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 514f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(424f, -871f)), _wgslsmith_f_op_f32(-1524f - var_0.x) > _wgslsmith_f_op_f32(floor(-778f)))) > -264f, global0.x, global0.x);
    var var_2 = Struct_5(Struct_4(Struct_3(Struct_1(all(global4[_wgslsmith_index_u32(u_input.c, 5u)]), _wgslsmith_f_op_f32(floor(var_0.x)), i32(-1i) * -76525i, ~vec4<u32>(u_input.c, u_input.c, 24941u, 1u)), u_input.c, any(vec4<bool>(true, global0.x, false, true)), vec2<u32>(58400u, u_input.d.x)), _wgslsmith_add_vec2_i32(u_input.a, min(u_input.e.yz, global3.xx)) | global3.zy, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -563f)), Struct_1(true, _wgslsmith_f_op_f32(round(-1955f)), firstLeadingBit(u_input.e.x), ~vec4<u32>(4294967295u, u_input.c, 1u, 1u)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1226f)), Struct_1(all(vec3<bool>(true, true, global0.x)), _wgslsmith_f_op_f32(floor(906f)), _wgslsmith_sub_i32(-2147483647i, global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1535u, u_input.d.x, 79208u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 86959u))))), Struct_1(false, 348f, 2795i, abs(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, 0u) | vec4<u32>(u_input.c, u_input.c, 17366u, u_input.d.x))));
    global0 = vec4<bool>(var_1.x, false, any(select(vec2<bool>(var_2.a.c.d.a, any(global0.zzx)), !vec2<bool>(var_2.b.a, true), vec2<bool>(var_1.x, all(vec3<bool>(false, var_2.b.a, var_1.x))))), select(!(!global0.x), true, false));
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-854f, -531f, 296f, var_0.x)))), Struct_1(u_input.e.x > u_input.e.x, 2132f, var_2.b.c, ~(~select(vec4<u32>(var_2.b.d.x, u_input.c, var_2.b.d.x, 0u), vec4<u32>(var_2.a.a.d.x, 68823u, u_input.d.x, u_input.d.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1079f - var_0.x)), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_2.a.a.a.b + var_0.x))), abs(var_2.b.c & -2147483647i), ~(~vec4<u32>(var_2.b.d.x, 22118u, 4294967295u, 57341u)) ^ var_2.b.d));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_3(arg_1.b, ~(~max(_wgslsmith_add_u32(77812u, 24746u), arg_1.b.d.x)), !(!select(arg_0.x, arg_2, any(vec2<bool>(arg_0.x, global0.x)))), firstTrailingBit(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xz, arg_1.d.d.yw), _wgslsmith_div_vec2_u32(vec2<u32>(58u, 5424u), vec2<u32>(1u, 10436u)))));
    global4 = array<vec4<bool>, 5>();
    let var_1 = var_0.a;
    let var_2 = Struct_3(Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) - var_1.b), _wgslsmith_dot_vec2_i32(reverseBits(max(u_input.e.yz, vec2<i32>(-45451i, var_0.a.c))), u_input.a), var_1.d), abs(64075u), true, u_input.d.xy);
    var_0 = var_2;
    return Struct_4(var_2, min(vec2<i32>(var_0.a.c, var_0.a.c), ~u_input.a), arg_1);
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = func_5(vec2<bool>(any(global0.xw), global0.x), func_2(), true, ~(~(reverseBits(vec4<i32>(arg_0.b.x, global3.x, global3.x, -11199i)) << ((arg_0.c.d.d | vec4<u32>(1u, 2402u, u_input.c, arg_0.a.b)) % vec4<u32>(32u)))));
    global1 = array<vec3<i32>, 13>();
    let var_1 = var_0.c.b.c;
    let var_2 = min(arg_0.a.d.x, _wgslsmith_add_u32(u_input.d.x, firstTrailingBit(u_input.c)));
    let var_3 = _wgslsmith_f_op_f32(-var_0.c.b.b);
    return select(vec4<bool>(!all(!global0.zy), all(!global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), 1i != (i32(-1i) * -var_0.b.x), var_0.a.a.a), select(global4[_wgslsmith_index_u32(abs(func_5(select(vec2<bool>(true, arg_0.c.b.a), vec2<bool>(arg_0.c.d.a, true), vec2<bool>(true, true)), Struct_2(vec4<f32>(-713f, arg_0.c.b.b, arg_0.a.a.b, var_3), Struct_1(false, -216f, -49141i, var_0.a.a.d), var_3, Struct_1(arg_0.c.d.a, var_3, 2147483647i, arg_0.a.a.d)), true, vec4<i32>(2147483647i, u_input.a.x, var_1, -9687i)).c.b.d.x), 5u)], global4[_wgslsmith_index_u32(var_0.c.b.d.x, 5u)], vec4<bool>(!global0.x, !arg_0.c.b.a, true, var_0.c.b.a)), global0.x);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>) -> u32 {
    global4 = array<vec4<bool>, 5>();
    var var_0 = u_input.d;
    var_0 = reverseBits(arg_0.a.d.xyw);
    let var_1 = func_5(vec2<bool>(false, true), func_5(global0.xz, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), 1398f, _wgslsmith_f_op_f32(round(274f)), _wgslsmith_div_f32(1816f, arg_0.a.b)), arg_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(988f - 733f))), Struct_1(true, -2893f, arg_0.a.c, arg_0.a.d)), true, vec4<i32>(func_3(true), -39282i, 1214i, 55638i << ((arg_0.b << (var_0.x % 32u)) % 32u))).c, !(!select(func_5(global0.yx, Struct_2(vec4<f32>(-588f, -1678f, arg_0.a.b, arg_0.a.b), arg_0.a, arg_0.a.b, arg_0.a), false, vec4<i32>(arg_0.a.c, u_input.a.x, arg_0.a.c, arg_0.a.c)).c.b.a, global0.x, 4294967295u == var_0.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -38974i) << (u_input.d.zy % vec2<u32>(32u)), vec2<i32>(global3.x, arg_0.a.c)), 32672i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 1i), -28233i), ~_wgslsmith_mod_i32(-56446i, -2147483647i)) ^ firstTrailingBit(-(vec4<i32>(arg_0.a.c, -31445i, 12546i, 0i) << (arg_0.a.d % vec4<u32>(32u)))));
    var var_2 = ~var_1.a.d.x;
    return select(~abs(firstLeadingBit(17306u)), 4294967295u, func_1(var_1).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 13>();
    global0 = global4[_wgslsmith_index_u32(u_input.c, 5u)];
    global0 = vec4<bool>(!any(!global0.yww), true, true, any(global4[_wgslsmith_index_u32(15385u, 5u)]) & (global0.x && false));
    global2 = array<vec3<bool>, 1>();
    let var_0 = abs(vec4<u32>(0u, func_6(Struct_3(Struct_1(true, 125f, global3.x, vec4<u32>(u_input.d.x, 4294967295u, 30974u, u_input.d.x)), u_input.d.x, global0.x, vec2<u32>(1u, u_input.c)), select(func_1(Struct_4(Struct_3(Struct_1(global0.x, 249f, 14639i, vec4<u32>(1u, u_input.d.x, u_input.c, 0u)), u_input.d.x, global0.x, u_input.d.xx), vec2<i32>(-9274i, global3.x), Struct_2(vec4<f32>(-349f, 2631f, -227f, 141f), Struct_1(false, -294f, 2147483647i, vec4<u32>(1u, u_input.c, 1u, 1u)), 519f, Struct_1(true, -792f, 48743i, vec4<u32>(1u, 80864u, 18181u, u_input.c))))), global4[_wgslsmith_index_u32(u_input.d.x, 5u)], vec4<bool>(true, global0.x, global0.x, true))), ~reverseBits(u_input.d.x), ~4294967295u));
    var var_1 = global3.x & -32856i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(704f - -586f), 1147f, true)) * _wgslsmith_f_op_f32(-1497f + _wgslsmith_f_op_f32(f32(-1f) * -1496f)))));
}


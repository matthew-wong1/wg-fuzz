struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(false, 0i, vec4<bool>(true, true, true, false), vec3<bool>(false, true, true)), vec2<i32>(i32(-2147483648), 7991i), vec2<bool>(true, false), vec3<u32>(4294967295u, 10390u, 0u), Struct_1(false, -1i, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false))), Struct_2(Struct_1(false, 10484i, vec4<bool>(false, true, true, false), vec3<bool>(false, false, false)), vec2<i32>(1i, 48744i), vec2<bool>(true, false), vec3<u32>(21829u, 1u, 62785u), Struct_1(true, 16745i, vec4<bool>(false, true, false, true), vec3<bool>(true, true, false))), Struct_2(Struct_1(true, -54566i, vec4<bool>(true, true, false, false), vec3<bool>(true, false, true)), vec2<i32>(i32(-2147483648), -18173i), vec2<bool>(true, true), vec3<u32>(104911u, 30275u, 0u), Struct_1(true, -33876i, vec4<bool>(false, true, true, true), vec3<bool>(false, false, true))), Struct_2(Struct_1(false, 1i, vec4<bool>(true, true, true, true), vec3<bool>(true, true, true)), vec2<i32>(49987i, 66295i), vec2<bool>(false, false), vec3<u32>(21096u, 0u, 44464u), Struct_1(false, 1i, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false))), Struct_2(Struct_1(false, -9445i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true)), vec2<i32>(-7572i, i32(-2147483648)), vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 1u), Struct_1(false, 1i, vec4<bool>(false, false, false, true), vec3<bool>(true, true, true))), Struct_2(Struct_1(false, 2147483647i, vec4<bool>(false, false, true, true), vec3<bool>(false, false, false)), vec2<i32>(24455i, 2147483647i), vec2<bool>(true, true), vec3<u32>(55436u, 10986u, 9779u), Struct_1(true, -2974i, vec4<bool>(true, true, true, false), vec3<bool>(false, false, true))), Struct_2(Struct_1(false, -19125i, vec4<bool>(false, true, true, false), vec3<bool>(true, false, true)), vec2<i32>(2147483647i, 1i), vec2<bool>(false, false), vec3<u32>(62594u, 4294967295u, 75156u), Struct_1(true, -43384i, vec4<bool>(true, true, false, true), vec3<bool>(false, true, true))), Struct_2(Struct_1(false, 1i, vec4<bool>(true, false, true, false), vec3<bool>(true, false, false)), vec2<i32>(2147483647i, -30677i), vec2<bool>(false, false), vec3<u32>(0u, 22091u, 1u), Struct_1(false, 12276i, vec4<bool>(true, false, true, false), vec3<bool>(false, false, true))), Struct_2(Struct_1(false, 13891i, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false)), vec2<i32>(-28151i, 2147483647i), vec2<bool>(true, false), vec3<u32>(31318u, 48958u, 4294967295u), Struct_1(true, 24031i, vec4<bool>(false, false, true, false), vec3<bool>(true, true, true))), Struct_2(Struct_1(false, i32(-2147483648), vec4<bool>(false, false, false, true), vec3<bool>(true, true, true)), vec2<i32>(36079i, 2147483647i), vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(false, 0i, vec4<bool>(false, true, false, true), vec3<bool>(false, false, false))), Struct_2(Struct_1(true, -1i, vec4<bool>(true, true, false, true), vec3<bool>(false, true, false)), vec2<i32>(-1383i, -1i), vec2<bool>(false, false), vec3<u32>(69988u, 49390u, 4867u), Struct_1(false, -1i, vec4<bool>(true, true, true, false), vec3<bool>(true, true, true))), Struct_2(Struct_1(true, 2147483647i, vec4<bool>(false, false, false, false), vec3<bool>(false, true, false)), vec2<i32>(-1i, 0i), vec2<bool>(false, false), vec3<u32>(1u, 21538u, 67499u), Struct_1(false, 1i, vec4<bool>(false, true, false, false), vec3<bool>(true, true, true))), Struct_2(Struct_1(true, 6077i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true)), vec2<i32>(i32(-2147483648), 40228i), vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 30374u), Struct_1(false, 21427i, vec4<bool>(false, false, true, false), vec3<bool>(true, true, true))), Struct_2(Struct_1(true, -46895i, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(true, false), vec3<u32>(4294967295u, 18808u, 4294967295u), Struct_1(true, -15293i, vec4<bool>(true, false, false, false), vec3<bool>(true, true, true))), Struct_2(Struct_1(true, 0i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, false)), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true), vec3<u32>(27153u, 0u, 21713u), Struct_1(true, 39848i, vec4<bool>(false, true, true, true), vec3<bool>(true, false, false))), Struct_2(Struct_1(true, -25816i, vec4<bool>(true, false, true, true), vec3<bool>(false, false, true)), vec2<i32>(2147483647i, -6627i), vec2<bool>(false, true), vec3<u32>(45689u, 38139u, 24972u), Struct_1(true, 59613i, vec4<bool>(false, false, false, true), vec3<bool>(false, false, false))), Struct_2(Struct_1(false, -13381i, vec4<bool>(true, true, true, false), vec3<bool>(true, false, true)), vec2<i32>(74010i, 1i), vec2<bool>(true, true), vec3<u32>(54721u, 0u, 1u), Struct_1(false, -19060i, vec4<bool>(false, false, false, false), vec3<bool>(true, true, false))), Struct_2(Struct_1(false, -17081i, vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)), vec2<i32>(i32(-2147483648), -22184i), vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 27772u), Struct_1(false, -38846i, vec4<bool>(true, false, true, false), vec3<bool>(false, true, true))), Struct_2(Struct_1(true, i32(-2147483648), vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), vec2<i32>(2147483647i, 20975i), vec2<bool>(false, true), vec3<u32>(79047u, 4294967295u, 1u), Struct_1(true, 1i, vec4<bool>(true, false, true, false), vec3<bool>(true, true, true))), Struct_2(Struct_1(true, -1i, vec4<bool>(false, false, false, true), vec3<bool>(false, false, true)), vec2<i32>(-58816i, -4691i), vec2<bool>(false, false), vec3<u32>(92141u, 1u, 25863u), Struct_1(true, i32(-2147483648), vec4<bool>(false, true, true, false), vec3<bool>(true, true, false))), Struct_2(Struct_1(true, -29891i, vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)), vec2<i32>(10651i, 33047i), vec2<bool>(true, false), vec3<u32>(34666u, 11663u, 0u), Struct_1(true, i32(-2147483648), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true))));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<bool>) -> bool {
    var var_0 = 881f;
    var var_1 = vec2<bool>(arg_2.x, true | arg_2.x);
    let var_2 = global0[_wgslsmith_index_u32(0u, 21u)];
    var var_3 = 0u;
    global1 = !vec2<bool>(all(select(!var_2.a.c.wyy, select(vec3<bool>(global1.x, var_1.x, false), vec3<bool>(false, true, arg_2.x), false), any(vec4<bool>(false, true, arg_2.x, arg_2.x)))), arg_0.x >= -831f);
    return -2147483647i != (-2147483647i >> (~(u_input.a.x >> ((0u | u_input.a.x) % 32u)) % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(any(vec3<bool>(true, false, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1019f, -662f), vec2<f32>(-356f, 699f)), -2147483647i, vec2<bool>(false, false)))), -(abs(max(25305i, -41186i)) << (arg_1.x % 32u)), select(!(!(!vec4<bool>(true, false, global1.x, global1.x))), vec4<bool>(!all(vec3<bool>(true, global1.x, true)), true, !(!global1.x), global1.x != true), true), !select(select(!vec3<bool>(true, global1.x, true), select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, false)), global1.x), vec3<bool>(any(vec3<bool>(global1.x, false, global1.x)), true, global1.x), any(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, false), global1.x))));
    let var_1 = firstTrailingBit(4294967295u);
    var var_2 = Struct_1(!global1.x, ~var_0.b, select(vec4<bool>(false, !global1.x, false, !func_3(vec2<f32>(-518f, -553f), -24377i, var_0.c.wx)), !(!select(var_0.c, var_0.c, false)), select(!global1.x, true, any(select(var_0.d, var_0.d, var_0.c.zzy)))), var_0.d);
    global1 = vec2<bool>(all(!var_0.c.zy), false);
    global0 = array<Struct_2, 21>();
    return Struct_2(Struct_1(true, ~_wgslsmith_div_i32(arg_0.x, firstTrailingBit(-67465i)), vec4<bool>(any(vec4<bool>(true, false, global1.x, global1.x)), true, global1.x, any(select(var_0.c, var_0.c, vec4<bool>(false, var_0.d.x, true, true)))), select(select(!var_2.d, select(vec3<bool>(global1.x, var_2.d.x, global1.x), vec3<bool>(var_0.a, true, var_2.c.x), var_0.d.x), var_2.d), var_2.c.xxz, var_2.d)), abs(vec2<i32>(-2147483647i, i32(-1i) * -51268i)), !select(!var_2.d.zx, vec2<bool>(!var_0.c.x, var_0.d.x), !(!vec2<bool>(var_2.d.x, false))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1, var_1, var_1 ^ var_1), abs(arg_1)), Struct_1(!(!any(vec4<bool>(false, true, var_2.d.x, false))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-29050i, -1i), abs(arg_0.yx)), vec4<bool>(abs(arg_1.x) >= arg_1.x, -7642i >= arg_0.x, var_2.d.x, any(select(vec3<bool>(global1.x, var_0.a, var_0.c.x), var_0.c.zwz, var_2.d.x))), select(!var_0.c.yyx, vec3<bool>(true, !var_2.c.x, true), all(var_2.c))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(global1.x, countOneBits(select(_wgslsmith_mult_i32(-arg_0.b.x, arg_0.b.x), arg_0.e.b, true)), !vec4<bool>(!any(arg_0.e.c.xw), global1.x, false, any(arg_0.e.c)), !select(arg_0.e.d, arg_0.e.d, false));
    var_0 = func_2(vec3<i32>(firstTrailingBit(var_0.b), 2147483647i, max(func_2(arg_1, firstTrailingBit(arg_0.d)).a.b, -1i)), ~vec3<u32>(u_input.a.x, arg_0.d.x, u_input.a.x)).e;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = arg_0.a;
    return func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, ~0i, 3226i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -8267i, firstTrailingBit(0i)), arg_1)), arg_0.d >> (u_input.a % vec3<u32>(32u))).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = arg_1.e;
    global1 = !select(!func_2(arg_2.xyw, vec3<u32>(47059u, arg_1.d.x, 35211u) ^ vec3<u32>(1u, 100578u, 1u)).c, select(arg_0.c.zw, var_0.d.xy, arg_0.d.x & true), !var_0.c.wy);
    return func_2(vec3<i32>(abs(i32(-1i) * -arg_2.x), -(~(-2280i)), -(~_wgslsmith_div_i32(-2147483647i, u_input.d))), ~firstTrailingBit(~(~arg_1.d))).a.c.zz;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_2, 21>();
    global1 = select(func_5(func_4(func_2(reverseBits(vec3<i32>(27585i, u_input.b, 23468i)), ~arg_1), vec3<i32>(reverseBits(4760i), u_input.d, u_input.d)), global0[_wgslsmith_index_u32(countOneBits(~countOneBits(arg_0.x)), 21u)], vec4<i32>(-1i) * -(~vec4<i32>(-18025i, -2147483647i, -2147483647i, -1i)), vec3<i32>(max(_wgslsmith_add_i32(-26734i, -14630i), _wgslsmith_sub_i32(19250i, 5608i)), ~1i, _wgslsmith_mod_i32(u_input.d, _wgslsmith_sub_i32(arg_2.b, u_input.d)))), !vec2<bool>(global1.x, global1.x), arg_2.c.wz);
    var var_0 = _wgslsmith_mult_i32(u_input.d, arg_2.b);
    global1 = !select(arg_2.d.zz, !vec2<bool>(any(arg_2.c), true), arg_2.d.zz);
    var_0 = countOneBits(-2147483647i);
    return !select(func_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11138u, abs(u_input.a.x)), 21u)], -max(vec3<i32>(arg_2.b, -2147483647i, -1i), vec3<i32>(2727i, u_input.c, -2147483647i))).c.xx, func_5(arg_2, global0[_wgslsmith_index_u32(~arg_0.x << (~u_input.a.x % 32u), 21u)], -(vec4<i32>(46477i, u_input.b, 0i, 0i) & vec4<i32>(9656i, -2147483647i, arg_2.b, u_input.d)), vec3<i32>(_wgslsmith_add_i32(0i, -26853i), arg_2.b, u_input.c)), !all(vec3<bool>(false, global1.x, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)), select(!vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x)), select(func_1(vec2<u32>(108425u, u_input.a.x), vec3<u32>(49531u, 0u, u_input.a.x), Struct_1(true, 0i, vec4<bool>(global1.x, true, false, false), vec3<bool>(false, global1.x, global1.x))), !vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x))));
    var var_0 = Struct_1(false, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-14810i, _wgslsmith_clamp_i32(u_input.c, -7397i, -9639i), u_input.c), min(~vec3<i32>(-18260i, 1i, u_input.b), ~vec3<i32>(u_input.b, u_input.c, u_input.c))), vec4<bool>(-11963i >= u_input.b, any(vec2<bool>(true, any(vec3<bool>(true, false, true)))), _wgslsmith_div_f32(959f, _wgslsmith_f_op_f32(abs(-1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1185f))), !global1.x), vec3<bool>(!any(vec2<bool>(global1.x, false)), global1.x, func_5(func_2(~vec3<i32>(u_input.d, -1i, 1i), vec3<u32>(1u, 0u, u_input.a.x)).a, func_2(select(vec3<i32>(-9526i, u_input.c, u_input.b), vec3<i32>(-1i, u_input.d, u_input.d), vec3<bool>(global1.x, global1.x, true)), firstLeadingBit(vec3<u32>(48852u, 32771u, u_input.a.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(1i, 5733i, 48117i, u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, -1i), vec4<i32>(0i, -2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.c, u_input.b, u_input.d, u_input.c))), vec3<i32>(u_input.d, func_2(vec3<i32>(15816i, u_input.b, 16524i), u_input.a).b.x, u_input.c)).x));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(-1353f, 1354f, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -879f))) * -678f), _wgslsmith_f_op_f32(-947f - _wgslsmith_f_op_f32(-2006f - -1000f)))));
    var var_2 = Struct_1(true, ~(~(_wgslsmith_dot_vec4_i32(vec4<i32>(42783i, var_0.b, -139i, 1i), vec4<i32>(35773i, -13600i, -45463i, var_0.b)) & u_input.d)), func_2(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.c), vec3<i32>(2147483647i, 1i, var_0.b)), ~vec3<i32>(10229i, u_input.b, u_input.c) ^ vec3<i32>(-1i, var_0.b, -20885i), select(var_0.c.x || global1.x, global1.x, true)), ~_wgslsmith_add_vec3_u32(max(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(u_input.a, vec3<u32>(1u, 1u, u_input.a.x), var_0.d))).e.c, func_2(max(firstLeadingBit(abs(vec3<i32>(1i, -1i, var_0.b))), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b, var_0.b, u_input.c)), vec3<i32>(var_0.b, u_input.c, 1i))), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u), u_input.a.x))).e.d);
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec2<i32>(5534i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 32624i, var_2.b, var_3.a.b), vec4<i32>(-1i, -2147483647i, 1i, u_input.c))))), u_input.a.zy | select(~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 57045u), u_input.a.yy), max(vec2<u32>(22599u, 36413u), vec2<u32>(var_3.d.x, 4294967295u)), var_3.e.c.wx), vec2<bool>(all(var_0.c), var_0.d.x)));
}


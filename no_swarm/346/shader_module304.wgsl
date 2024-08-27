struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<f32>(111f, 539f, -1374f), -2272f, vec2<u32>(1u, 1u), 0u, false), Struct_1(vec3<f32>(-676f, 867f, 1088f), 252f, vec2<u32>(0u, 4294967295u), 0u, false), Struct_1(vec3<f32>(-879f, 830f, -770f), 869f, vec2<u32>(33659u, 28483u), 1u, false), Struct_1(vec3<f32>(309f, -351f, 581f), 1461f, vec2<u32>(1u, 4496u), 1u, false), Struct_1(vec3<f32>(-350f, -1829f, 123f), 427f, vec2<u32>(4294967295u, 4294967295u), 61834u, true), Struct_1(vec3<f32>(1870f, 199f, -497f), -1168f, vec2<u32>(72617u, 4294967295u), 1u, true), Struct_1(vec3<f32>(-326f, 1000f, -1074f), 449f, vec2<u32>(1u, 10580u), 115052u, false), Struct_1(vec3<f32>(-400f, 1000f, 2332f), 1968f, vec2<u32>(41216u, 1u), 2838u, false), Struct_1(vec3<f32>(1752f, -705f, 1028f), -127f, vec2<u32>(4294967295u, 32260u), 46932u, false), Struct_1(vec3<f32>(761f, -1108f, 135f), -793f, vec2<u32>(0u, 1u), 1u, true), Struct_1(vec3<f32>(235f, 369f, -1374f), -541f, vec2<u32>(26037u, 1u), 3738u, true), Struct_1(vec3<f32>(842f, 363f, 1010f), 1331f, vec2<u32>(0u, 72505u), 49436u, true), Struct_1(vec3<f32>(330f, 655f, 163f), 1079f, vec2<u32>(4294967295u, 4294967295u), 4294967295u, true), Struct_1(vec3<f32>(-491f, 365f, 436f), 1000f, vec2<u32>(61018u, 0u), 4294967295u, false), Struct_1(vec3<f32>(457f, -121f, 483f), 1000f, vec2<u32>(0u, 4294967295u), 0u, false), Struct_1(vec3<f32>(-431f, 159f, 463f), -127f, vec2<u32>(29182u, 1u), 4591u, false), Struct_1(vec3<f32>(-1000f, -1000f, 594f), 213f, vec2<u32>(88068u, 0u), 25320u, true), Struct_1(vec3<f32>(-229f, 150f, 615f), -673f, vec2<u32>(7114u, 54013u), 56813u, false), Struct_1(vec3<f32>(473f, 825f, 1140f), 257f, vec2<u32>(0u, 0u), 31260u, true), Struct_1(vec3<f32>(461f, -564f, 951f), 907f, vec2<u32>(0u, 1u), 51921u, true), Struct_1(vec3<f32>(1204f, -156f, 928f), -1017f, vec2<u32>(4294967295u, 17061u), 22368u, false), Struct_1(vec3<f32>(759f, 1000f, -597f), 369f, vec2<u32>(1u, 0u), 0u, true), Struct_1(vec3<f32>(690f, 561f, -108f), 910f, vec2<u32>(0u, 21693u), 18751u, false), Struct_1(vec3<f32>(932f, 280f, 251f), -588f, vec2<u32>(0u, 4294967295u), 1u, false), Struct_1(vec3<f32>(482f, 830f, -1933f), -142f, vec2<u32>(71176u, 16515u), 42949u, true), Struct_1(vec3<f32>(-1000f, -1739f, 2041f), 1513f, vec2<u32>(0u, 0u), 0u, false), Struct_1(vec3<f32>(-2102f, 262f, -1467f), 1000f, vec2<u32>(0u, 67574u), 8789u, true), Struct_1(vec3<f32>(-723f, 1860f, -1236f), 817f, vec2<u32>(1u, 1u), 4294967295u, false), Struct_1(vec3<f32>(123f, -302f, -265f), 824f, vec2<u32>(46657u, 9289u), 107u, false), Struct_1(vec3<f32>(-1766f, 1107f, 374f), 872f, vec2<u32>(4294967295u, 25372u), 1u, false), Struct_1(vec3<f32>(-1059f, 1352f, -415f), 884f, vec2<u32>(0u, 0u), 64324u, false), Struct_1(vec3<f32>(-289f, -271f, 1000f), -2720f, vec2<u32>(1u, 36165u), 4294967295u, true));

var<private> global1: bool = false;

var<private> global2: vec2<bool>;

var<private> global3: vec3<f32> = vec3<f32>(724f, 882f, -1149f);

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_div_f32(-670f, -339f), select(!select(select(vec2<bool>(true, false), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), vec2<bool>(global2.x, true), true), select(vec2<bool>(true, true), vec2<bool>(!global2.x, global2.x), !global2.x), vec2<bool>(true, all(vec4<bool>(false, true, global2.x, true)))), Struct_1(vec3<f32>(global3.x, -494f, -1599f), 773f, _wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, 1u), ~vec2<u32>(u_input.a, u_input.a), true), ~arg_0.ww), ~4294967295u, true && !(!global2.x)), _wgslsmith_add_i32(~(-u_input.b.x << (_wgslsmith_dot_vec2_u32(arg_0.yx, arg_0.xz) % 32u)), _wgslsmith_mod_i32(1i, u_input.b.x)), select(u_input.b.x, 1i, !any(select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), global2.x))));
    global2 = var_0.b;
    var var_1 = true || !((_wgslsmith_sub_i32(var_0.d, 71907i) << (firstLeadingBit(arg_0.x) % 32u)) > -var_0.e);
    global0 = array<Struct_1, 32>();
    var_1 = true;
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global3.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(846f * 639f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), global3.x, _wgslsmith_f_op_f32(select(363f, -1067f, select(arg_0.x, any(vec2<bool>(arg_0.x, false)), any(vec4<bool>(arg_0.x, arg_0.x, true, true)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(45417u, u_input.a, 0u, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 281f, -127f))), select(arg_0, select(vec3<bool>(false, true, arg_0.x), arg_0, arg_0.x), arg_0.x)))));
    var var_0 = Struct_2(u_input.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1469f - -1312f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x * global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) + _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x)))), vec2<u32>(1u, ~1u | min(u_input.a, 0u)), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a, u_input.a)), u_input.a), true), any(arg_0), vec2<f32>(_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2130f - global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    global1 = true;
    global4 = ~(~(~(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.b.d, var_0.a, 62203u), vec4<u32>(4294967295u, u_input.a, 18217u, 4294967295u)) % 32u))));
    global2 = arg_0.yx;
    return arg_0.xy;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = vec4<u32>(26446u, ~(~4294967295u), min(min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, 79213u) >> (vec4<u32>(u_input.a, 17920u, 0u, u_input.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a, 42584u, u_input.a)), 1u), u_input.a), 4294967295u);
    let var_1 = 38448i;
    global2 = select(select(vec2<bool>(any(vec2<bool>(global2.x, arg_0)), !any(vec2<bool>(false, arg_0))), vec2<bool>(_wgslsmith_add_u32(var_0.x, var_0.x) > 53608u, arg_0 && true), select(select(!vec2<bool>(arg_0, false), vec2<bool>(false, false), func_2(vec3<bool>(global2.x, true, true), vec4<f32>(-397f, -1000f, global3.x, -384f), global3.zy)), vec2<bool>(var_1 != -1i, arg_0), !vec2<bool>(arg_0, true))), vec2<bool>(false, any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, global2.x, false), vec3<bool>(false, false, global2.x), global2.x), !vec3<bool>(arg_0, false, false)))), -var_1 < (abs(1i) | ~(-22145i << (u_input.a % 32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(645f + global3.x))) + _wgslsmith_div_f32(425f, _wgslsmith_f_op_f32(min(global3.x, global3.x))))) != _wgslsmith_f_op_f32(global3.x - -1000f);
    let var_3 = max(firstLeadingBit(_wgslsmith_add_u32(~u_input.a, ~24660u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(15894u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 106678u, 24982u), vec4<u32>(20593u, 1u, u_input.a, 0u)), u_input.a)), 1u));
    return global3.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> Struct_3 {
    global1 = true;
    var var_0 = arg_0.c.x;
    let var_1 = -1308f;
    var var_2 = arg_2;
    var var_3 = _wgslsmith_clamp_i32(min(1i, ~(~(arg_3 >> (83809u % 32u)))), ~arg_3, -13785i);
    return Struct_3(-1219f, vec2<bool>(true, false), arg_0, -u_input.b.x, abs(10324i & arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1366f - _wgslsmith_div_f32(-1165f, global3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(228f, var_0)), _wgslsmith_div_f32(global3.x, -606f))))), vec2<bool>(!global2.x, true), global0[_wgslsmith_index_u32(30789u, 32u)], u_input.b.x, ~20041i);
    var_1 = func_4(Struct_1(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(1000f * -1447f), _wgslsmith_f_op_f32(func_1(global2.x || true))), -275f, vec2<u32>(24390u, 77758u), ~abs(0u), select(false, true, true)), Struct_2(_wgslsmith_sub_u32(u_input.a, u_input.a | 4294967295u), global0[_wgslsmith_index_u32(~0u, 32u)], true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1161f, var_1.a) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_1.c.a.x), global3.zy)) + global3.zx)), ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.c.c, vec2<u32>(31629u, 1u)), 1u), (var_1.c.c.x ^ 27895u) << (var_1.c.d % 32u), 0u), 0i);
    var var_2 = -2147483647i;
    let var_3 = vec2<bool>(global2.x, true);
    var var_4 = func_4(Struct_1(vec3<f32>(var_1.a, 861f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 179f), ~countOneBits(vec2<u32>(var_1.c.d, 99434u)), 0u, true), Struct_2(4294967295u, func_4(func_4(global0[_wgslsmith_index_u32(~26756u, 32u)], Struct_2(var_1.c.d, global0[_wgslsmith_index_u32(u_input.a, 32u)], true, vec2<f32>(var_0, global3.x)), vec3<u32>(1u, var_1.c.d, var_1.c.d) >> (vec3<u32>(53961u, 69111u, 7921u) % vec3<u32>(32u)), min(65888i, var_1.e)).c, Struct_2(~4294967295u, func_4(var_1.c, Struct_2(u_input.a, Struct_1(vec3<f32>(global3.x, global3.x, 747f), global3.x, var_1.c.c, u_input.a, var_3.x), true, vec2<f32>(156f, var_0)), vec3<u32>(35957u, u_input.a, 68792u), 33175i).c, !var_3.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 248f)))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.d, var_1.c.d, 0u), vec3<u32>(u_input.a, 1u, 0u))), var_1.d).c, var_3.x, global3.xx), reverseBits(~vec3<u32>(u_input.a, var_1.c.c.x, 1u)) & min(~(~vec3<u32>(var_1.c.c.x, 4294967295u, var_1.c.c.x)), firstLeadingBit(select(vec3<u32>(u_input.a, u_input.a, var_1.c.c.x), vec3<u32>(4294967295u, u_input.a, 23775u), false))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-53144i, 85867i, 11864i), vec3<i32>(var_1.e, var_1.d, u_input.b.x)), vec3<i32>(var_1.d, 1i, u_input.b.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, u_input.b.x, var_1.e), -vec3<i32>(-1i, -25567i, u_input.b.x), vec3<i32>(-1i, 1i, u_input.b.x) | vec3<i32>(var_1.e, 1i, 46876i))) | (firstLeadingBit(u_input.b.x) >> (~_wgslsmith_dot_vec2_u32(var_1.c.c, var_1.c.c) % 32u)));
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), vec3<i32>(var_1.e, 2639i, var_1.e) << (vec3<u32>(20167u, u_input.a, var_1.c.d) % vec3<u32>(32u))), vec3<i32>(var_4.e, u_input.b.x, 2147483647i) << (max(vec3<u32>(var_1.c.c.x, var_1.c.c.x, u_input.a), vec3<u32>(0u, 52663u, 1u)) % vec3<u32>(32u)), select(!vec3<bool>(global2.x, true, global2.x), !vec3<bool>(var_4.b.x, global2.x, global2.x), true)) & select(vec3<i32>(-1i) * -vec3<i32>(-33155i, 2147483647i, 1i), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, 3491i), vec3<i32>(17242i, var_1.d, u_input.b.x))), false), ~(~min(vec4<i32>(u_input.b.x, u_input.b.x, var_1.d, -1i) ^ vec4<i32>(-5681i, var_1.e, u_input.b.x, var_1.e), _wgslsmith_div_vec4_i32(vec4<i32>(-18169i, -4712i, 18010i, 0i), vec4<i32>(u_input.b.x, -54602i, var_1.e, -1i)))), ~vec4<u32>(min(var_1.c.d & 1u, var_4.c.d), var_1.c.d, ~u_input.a >> (_wgslsmith_div_u32(77754u, 14330u) % 32u), var_4.c.d), select(~vec3<i32>(~var_1.e, -1i, abs(u_input.b.x)), firstTrailingBit(-vec3<i32>(u_input.b.x, -2147483647i, 80417i)) << (~min(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, 4294967295u, var_4.c.d)) % vec3<u32>(32u)), any(var_1.b)), _wgslsmith_f_op_f32(-115f - var_0));
}


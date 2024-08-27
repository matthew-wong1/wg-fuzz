struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(3402i, -498f), Struct_3(2147483647i, -1000f), Struct_3(59524i, 580f), Struct_3(-34117i, 391f), Struct_3(36432i, -463f), Struct_3(25136i, 195f), Struct_3(1i, 770f), Struct_3(1i, -413f), Struct_3(-675i, -1000f), Struct_3(14662i, -1072f), Struct_3(-29791i, -1012f));

var<private> global1: i32;

var<private> global2: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 524f), Struct_4(vec4<u32>(4294967295u, 0u, 20000u, 20671u), 730f), Struct_4(vec4<u32>(1u, 25270u, 4294967295u, 47600u), -534f), Struct_4(vec4<u32>(12394u, 0u, 149u, 29265u), 1501f), Struct_4(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), -210f), Struct_4(vec4<u32>(28490u, 0u, 24950u, 48941u), 1146f), Struct_4(vec4<u32>(41601u, 0u, 109733u, 36731u), 877f), Struct_4(vec4<u32>(2544u, 57315u, 4294967295u, 1u), 1203f), Struct_4(vec4<u32>(0u, 77505u, 21894u, 0u), -156f), Struct_4(vec4<u32>(4294967295u, 1799u, 7279u, 955u), -1000f), Struct_4(vec4<u32>(0u, 59188u, 0u, 4294967295u), -488f), Struct_4(vec4<u32>(82256u, 9994u, 1u, 40809u), -1403f), Struct_4(vec4<u32>(21386u, 15966u, 1u, 97507u), 1000f), Struct_4(vec4<u32>(0u, 31651u, 1u, 4294967295u), -353f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    global2 = array<Struct_4, 14>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~u_input.a), 4294967295u), 11u)];
    global1 = _wgslsmith_sub_i32(-1i, -2147483647i);
    global1 = -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(i32(-1i) * -10131i, var_0.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, 1i, -1136i), vec3<i32>(var_0.a, var_0.a, var_0.a))), var_0.a));
    var var_1 = u_input.a;
    return !vec3<bool>(var_0.a == _wgslsmith_mod_i32(var_0.a, firstLeadingBit(0i)), true, any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(arg_3.c + arg_0))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_3.e, _wgslsmith_f_op_f32(step(arg_3.c, arg_0))))))));
    return select(vec4<bool>(reverseBits(firstTrailingBit(15715u)) > 0u, true, true, arg_2.x), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_3.b)) + _wgslsmith_div_f32(-1527f, 1736f)) < -122f, arg_2.x, !any(arg_2) != all(!arg_2), arg_2.x), -2147483647i > _wgslsmith_mod_i32(reverseBits(max(arg_3.a, 25054i)), _wgslsmith_mod_i32(arg_3.d.x, arg_3.d.x)));
}

fn func_2() -> bool {
    global2 = array<Struct_4, 14>();
    global0 = array<Struct_3, 11>();
    let var_0 = select(!func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f) + _wgslsmith_f_op_f32(min(829f, 749f))), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 5904u), firstTrailingBit(u_input.a), _wgslsmith_add_u32(0u, 40485u), ~5048u), select(func_3(), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), true), Struct_1(~27058i, _wgslsmith_div_f32(370f, -478f), -492f, vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(sign(-1179f)))), select(vec4<bool>(all(vec3<bool>(true, true, true)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 8038u, 0u, 25418u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true), Struct_1(-11383i, -471f, -367f, vec4<i32>(-915i, -51458i, -20015i, -5715i), -340f)).x, false, all(func_4(484f, vec4<u32>(u_input.a, u_input.a, u_input.a, 5367u), vec3<bool>(false, false, false), Struct_1(-1i, -508f, 1251f, vec4<i32>(67522i, 0i, 0i, -35719i), 796f)))), vec4<bool>(true, false, true, true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), false);
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5, arg_3: i32) -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1091f, arg_1.b)), -812f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_2.a.e.c)) - _wgslsmith_f_op_f32(sign(-679f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1126f - arg_1.b))))), _wgslsmith_f_op_f32(-arg_1.b));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(106674u, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, ~u_input.a), u_input.a), 7123u), _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 1u)), ~(~vec3<u32>(42622u, 1u, 12864u))));
    var var_2 = vec2<f32>(-580f, 976f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    global2 = array<Struct_4, 14>();
    return vec3<bool>(true, !func_2(), arg_2.a.c);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_3, 11>();
    global1 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(reverseBits(1i)), _wgslsmith_div_i32(-2147483647i, ~(-42622i)), ~(-21712i)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -29656i, 1i), vec3<i32>(1i, -2147483647i, 3039i)), -17650i << (0u % 32u), _wgslsmith_add_i32(-43064i, -65686i))));
    global2 = array<Struct_4, 14>();
    global0 = array<Struct_3, 11>();
    var var_0 = _wgslsmith_sub_vec4_i32(max(~(~vec4<i32>(-1i, 24767i, 2283i, -7203i)) >> (vec4<u32>(1u >> (0u % 32u), _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, u_input.a) % vec4<u32>(32u)), -(~vec4<i32>(62529i, 1i, 1i, 0i))), vec4<i32>(-1i, -1i, countOneBits(~max(1i, -2147483647i)), i32(-1i) * -1i));
    return Struct_1(countOneBits(2147483647i), 126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) + _wgslsmith_f_op_f32(-169f + 1507f))))), -min(-vec4<i32>(var_0.x, var_0.x, -7433i, var_0.x) << (~vec4<u32>(u_input.a, u_input.a, 1u, 49567u) % vec4<u32>(32u)), select(vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -36807i, 2147483647i, 9423i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(810f, 593f, arg_0.x)))))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4) -> StorageBuffer {
    global2 = array<Struct_4, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, arg_0.b.c) * vec2<f32>(arg_1.b, arg_0.a))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b, arg_0.e.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(163f, arg_1.b), vec2<f32>(arg_0.e.b, 1612f), vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, arg_1.b) * vec2<f32>(-1575f, 391f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 1666f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(339f, -540f))), vec2<bool>(arg_0.c, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-173f, -576f), _wgslsmith_f_op_vec2_f32(vec2<f32>(782f, arg_0.a) + vec2<f32>(-1993f, 529f)))), !any(vec2<bool>(arg_0.c, true)))));
    let var_1 = arg_0.c;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.e.b, -710f, arg_0.a)))))), abs(arg_0.d), -400f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-213f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1743f))))));
    let x = u_input.a;
    s_output = func_6(Struct_2(_wgslsmith_f_op_f32(trunc(-522f)), func_5(!func_1(true, Struct_3(9794i, -1000f), Struct_5(Struct_2(var_0, Struct_1(-4520i, var_0, 507f, vec4<i32>(2147483647i, -20976i, 1330i, 0i), 1000f), true, 2147483647i, Struct_1(-1i, var_0, var_0, vec4<i32>(-2147483647i, 2147483647i, -22936i, -1i), var_0))), 0i)), true, max(75442i, _wgslsmith_div_i32(~(-2147483647i), 2147483647i)), func_5(func_4(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, 4294967295u, 1u, 225u), vec4<u32>(u_input.a, 49023u, u_input.a, 20876u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), func_5(vec3<bool>(false, true, true))).wyy)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(25115u, u_input.a), _wgslsmith_add_u32(~(36253u >> (u_input.a % 32u)), 1u)), 14u)]);
}


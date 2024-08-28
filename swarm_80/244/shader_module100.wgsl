struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<i32>(0i, 6799i, 32527i, -37265i), 4294967295u, vec3<bool>(true, false, false), vec3<i32>(-6363i, 17816i, i32(-2147483648))), Struct_1(vec4<i32>(-20308i, -1i, -1i, 1i), 55294u, vec3<bool>(true, false, false), vec3<i32>(-1i, 25334i, 22078i)), Struct_1(vec4<i32>(2147483647i, -8405i, 25529i, 2147483647i), 0u, vec3<bool>(false, false, false), vec3<i32>(-14337i, 671i, 16627i)), Struct_1(vec4<i32>(2147483647i, 45839i, -1i, 1i), 1u, vec3<bool>(false, true, true), vec3<i32>(-1i, -61851i, -59410i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -64003i), 1u, vec3<bool>(true, false, true), vec3<i32>(1i, 2147483647i, -1i)), Struct_1(vec4<i32>(-17115i, 1i, 2849i, 1i), 1u, vec3<bool>(true, true, false), vec3<i32>(26186i, 1997i, -1i)), Struct_1(vec4<i32>(-36817i, 11419i, -59730i, 32276i), 0u, vec3<bool>(false, true, true), vec3<i32>(44773i, -11338i, 2641i)), Struct_1(vec4<i32>(1i, -1i, 1i, 38092i), 35136u, vec3<bool>(false, true, false), vec3<i32>(-15765i, -43745i, -48515i)), Struct_1(vec4<i32>(2640i, -41091i, 23530i, 55686i), 28738u, vec3<bool>(true, false, true), vec3<i32>(2147483647i, 2147483647i, -1i)), Struct_1(vec4<i32>(2147483647i, 26975i, -8443i, 31815i), 2196u, vec3<bool>(false, true, true), vec3<i32>(-167i, -1i, -33594i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 1i), 1u, vec3<bool>(true, true, false), vec3<i32>(-7565i, 0i, 22560i)), Struct_1(vec4<i32>(35367i, i32(-2147483648), 2147483647i, -27318i), 0u, vec3<bool>(true, false, false), vec3<i32>(64491i, 1i, 32113i)), Struct_1(vec4<i32>(-30821i, 16237i, -18718i, 1i), 2002u, vec3<bool>(false, false, true), vec3<i32>(16379i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 30463i), 0u, vec3<bool>(false, true, false), vec3<i32>(-37310i, 82517i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), -35224i, 1i, -11275i), 1u, vec3<bool>(true, false, true), vec3<i32>(9356i, 1i, -48950i)), Struct_1(vec4<i32>(36291i, i32(-2147483648), 2568i, 2147483647i), 1u, vec3<bool>(true, false, true), vec3<i32>(-17322i, 21925i, -25541i)), Struct_1(vec4<i32>(1i, -1i, 40002i, -24511i), 44789u, vec3<bool>(true, false, false), vec3<i32>(0i, 1i, 5024i)), Struct_1(vec4<i32>(57938i, -49927i, 15769i, 8433i), 4294967295u, vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), -27502i, 5600i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = ~60420u;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return ~var_0;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-837i, -16097i)), vec2<i32>(897i, -16383i) & arg_0.d.zz)), u_input.a.x, -abs(_wgslsmith_mult_i32(arg_0.d.x, 1i) & u_input.b));
    var var_1 = arg_0;
    var_1 = Struct_1(~(~vec4<i32>(1i, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(27885i, -2147483647i)), abs(-46264i))), 1u, !arg_0.c, min(min(abs(select(vec3<i32>(arg_0.a.x, var_0.x, -10645i), var_0, var_1.c.x)), vec3<i32>(-1i) * -vec3<i32>(-28045i, var_1.a.x, 0i)), vec3<i32>(i32(-1i) * -44632i, _wgslsmith_add_i32(-2147483647i, 3788i), var_0.x)));
    var var_2 = Struct_1(vec4<i32>(u_input.a.x, 40525i, 24066i, _wgslsmith_div_i32(reverseBits(-15177i), -76717i)) & -vec4<i32>(~(-25615i), 1i, 1i, ~40568i), _wgslsmith_div_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, 641f)), global0[_wgslsmith_index_u32(arg_0.b, 18u)]), arg_0.b), select(select(select(!arg_0.c, vec3<bool>(var_1.c.x, var_1.c.x, true), true), var_1.c, vec3<bool>(any(vec4<bool>(true, var_1.c.x, false, arg_0.c.x)), arg_0.c.x, true)), !select(select(var_1.c, arg_0.c, true), vec3<bool>(arg_0.c.x, var_1.c.x, arg_0.c.x), !vec3<bool>(var_1.c.x, true, var_1.c.x)), vec3<bool>((u_input.b << (var_1.b % 32u)) >= 5672i, true, true)), ~(~reverseBits(u_input.a)));
    global0 = array<Struct_1, 18>();
    return Struct_1(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -7589i, -61719i) | -43464i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, arg_0.d), ~arg_0.a.x), ~(-50753i), ~select(arg_0.a.x, var_2.a.x, false))), ~(~(~4294967295u) >> (min(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(35692u, 1u, var_2.b), vec3<u32>(0u, var_2.b, 65988u))) % 32u)), var_1.c, _wgslsmith_clamp_vec3_i32(countOneBits(arg_0.d), ~var_0, vec3<i32>(-select(1i, 1i, arg_0.c.x), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, countOneBits(var_0.x)), -arg_0.d.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(arg_0.a);
    let var_1 = func_3(Struct_1(firstLeadingBit(vec4<i32>(2147483647i, 36097i, 1i, -30557i) << (firstLeadingBit(vec4<u32>(1u, arg_0.b, 1u, arg_1.b)) % vec4<u32>(32u))), countOneBits(~(u_input.c.x & u_input.c.x)), arg_1.c, -vec3<i32>(arg_1.a.x, var_0.x, -2147483647i)));
    let var_2 = !(!(arg_1.b > ~max(4294967295u, arg_0.b)));
    let var_3 = vec4<i32>(-(~(~(-740i))), u_input.b, min(min(reverseBits(56068i), arg_1.d.x), -16571i), abs(var_0.x));
    var_0 = select((reverseBits(vec4<i32>(-1i, 15149i, arg_0.d.x, arg_1.a.x)) >> (max(max(vec4<u32>(u_input.c.x, var_1.b, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, arg_1.b, 1u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(34460u, 1u, arg_0.b, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, 33214u))) % vec4<u32>(32u))) | select(countOneBits(vec4<i32>(u_input.a.x, 26676i, u_input.a.x, -58022i) ^ vec4<i32>(1i, arg_0.d.x, 1i, -20605i)), vec4<i32>(2147483647i, arg_0.a.x << (4294967295u % 32u), 1i, max(u_input.a.x, 1i)), vec4<bool>(true, all(vec4<bool>(true, var_2, false, false)), false, select(arg_0.c.x, true, false))), arg_0.a, !(!vec4<bool>(false, arg_0.c.x, var_2, false)));
    return arg_0.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_1, 18>();
    var var_0 = func_4(func_3(global0[_wgslsmith_index_u32(18752u ^ func_2(vec2<f32>(-1100f, -649f), Struct_1(vec4<i32>(arg_0, u_input.b, u_input.b, 0i), 4294967295u, vec3<bool>(false, false, true), u_input.a)), 18u)]), func_3(Struct_1(min(vec4<i32>(-1i, -2147483647i, -21466i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, -9596i, 0i)), _wgslsmith_add_u32(u_input.c.x, 27596u), vec3<bool>(true, true, true), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 27985i, u_input.b), u_input.a)))) ^ 23941u;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1030f - _wgslsmith_f_op_f32(-2592f - _wgslsmith_f_op_f32(max(-748f, 302f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1227f, 1119f))))), false))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1148f, _wgslsmith_f_op_f32(-1125f - 256f))), _wgslsmith_f_op_f32(f32(-1f) * -1584f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(591f, 520f)) + _wgslsmith_div_f32(-748f, -1339f))));
    let var_2 = select(max(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x)) <= countOneBits(30492u), (_wgslsmith_add_u32(~1u, 0u) << (_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(0u, u_input.c.x, 8863u, 83441u))) % 32u)) > (u_input.c.x ^ 4294967295u), -868f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1293f * 1093f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(921f)))), any(vec4<bool>(true, true, true, true)))));
    return func_3(func_3(Struct_1(-vec4<i32>(-2147483647i, arg_0, u_input.b, -19229i), 1u, vec3<bool>(true, true, true), ~(u_input.a | vec3<i32>(-15287i, arg_0, -3551i)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = vec2<f32>(arg_1, arg_1);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1219f, arg_1) * vec2<f32>(-454f, var_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -633f), vec2<f32>(456f, -791f)), arg_2.x))) * vec2<f32>(arg_1, arg_1)));
    let var_1 = func_3(func_3(Struct_1(abs(firstTrailingBit(arg_3.a)), func_4(Struct_1(arg_0.a, 0u, arg_0.c, vec3<i32>(-78201i, -47431i, u_input.a.x)), arg_0) << (41307u % 32u), vec3<bool>(arg_3.c.x, arg_0.c.x && true, any(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x))), u_input.a << (firstLeadingBit(vec3<u32>(20377u, arg_0.b, 60572u)) % vec3<u32>(32u)))));
    let var_2 = arg_3;
    global0 = array<Struct_1, 18>();
    return _wgslsmith_div_i32(2147483647i, 13934i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    var var_0 = !(-1i >= func_5(func_1(u_input.a.x << (15017u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-941f))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), global0[_wgslsmith_index_u32(min(72384u, u_input.c.x) & abs(56642u), 18u)]));
    var_0 = false;
    let var_1 = ~(~vec4<u32>(~(~1u), _wgslsmith_mult_u32(~u_input.c.x, ~u_input.c.x), 1u, u_input.c.x));
    var var_2 = vec3<i32>(abs(u_input.b), max(-1i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(u_input.b, u_input.a.x))), _wgslsmith_clamp_i32(~(-2147483647i), -u_input.b, 1i)) ^ _wgslsmith_mod_vec3_i32(u_input.a, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, countOneBits(u_input.b), u_input.b), _wgslsmith_div_vec3_i32(u_input.a << (var_1.xyy % vec3<u32>(32u)), ~u_input.a))), u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(864f, 1768f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, 352f)), false)))))));
}


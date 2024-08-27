struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(i32(-2147483648), -53165i, 42309i, -42777i), vec4<i32>(-1i, -46431i, -35755i, -4056i), vec4<i32>(18572i, 11180i, 22350i, 8299i), vec4<i32>(5004i, 2274i, 27048i, i32(-2147483648)), vec4<i32>(2147483647i, -41434i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), -19916i, 0i, i32(-2147483648)), vec4<i32>(-3477i, 196i, -1i, -7762i));

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = 1532f;
    let var_1 = Struct_2(Struct_1(false, ~(~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(35523u, 1u, 42477u, global1.x))), arg_1, !(!select(vec4<bool>(arg_1, true, false, false), vec4<bool>(true, false, true, false), false)), var_0), vec2<bool>(arg_1, true), arg_1);
    var var_2 = _wgslsmith_dot_vec2_i32(countOneBits(-abs(vec2<i32>(-6172i, 15652i))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-18107i, 8792i, 25476i), vec3<i32>(-3903i, -98888i, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 19849i, 3137i), vec3<i32>(36749i, -29247i, 2147483647i))), firstTrailingBit(_wgslsmith_add_i32(-29114i, 22499i))));
    let var_3 = var_1.a;
    let var_4 = var_3.b.xx;
    return 49321u;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = select(vec4<bool>(true, true, all(vec2<bool>(true, true)), true), vec4<bool>(false, select(true, all(vec2<bool>(true, true)), false), true, select(true, true, ~63197i >= (8308i ^ arg_0))), true);
    global2 = 26251u;
    global1 = vec2<u32>(u_input.b.x, min(~(~u_input.d.x ^ ~21091u), u_input.b.x));
    let var_1 = Struct_2(Struct_1(!var_0.x, ~reverseBits(~vec4<u32>(17455u, global1.x, global1.x, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1291f), _wgslsmith_f_op_f32(max(-1000f, -317f))) >= _wgslsmith_f_op_f32(ceil(-842f)), var_0, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(1f))))), !select(vec2<bool>(true, true), var_0.xz, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true))), false);
    let var_2 = 20975i;
    return var_1.a.b.x >= _wgslsmith_mod_u32(firstLeadingBit(4294967295u), 38036u);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_1(arg_3.x, _wgslsmith_mod_vec4_u32(~vec4<u32>(~38095u, 52708u, global1.x, ~14400u), arg_2), true, select(!(!(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false))), select(vec4<bool>(!arg_3.x, select(arg_3.x, false, arg_3.x), arg_3.x, any(arg_3)), !(!vec4<bool>(arg_3.x, arg_3.x, true, false)), !vec4<bool>(true, false, arg_3.x, false)), (arg_2.x ^ 71226u) >= abs(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)));
    global3 = array<Struct_3, 12>();
    global3 = array<Struct_3, 12>();
    var var_1 = Struct_1(func_4(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 28751i, -19i, 5909i), global0[_wgslsmith_index_u32(0u, 7u)]), global0[_wgslsmith_index_u32(func_3(vec2<f32>(196f, -1000f), var_0.a, 0u, false), 7u)]), countOneBits(vec2<i32>(5639i, 44124i) >> (firstTrailingBit(arg_2.zz) % vec2<u32>(32u))), vec3<i32>(-1i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(9788i, 19350i, 0i), vec3<i32>(-2147483647i, -16277i, 1i)), 0i), 21986i)), var_0.b, select(true, false, true), select(select(select(select(vec4<bool>(var_0.d.x, arg_3.x, true, true), var_0.d, vec4<bool>(arg_3.x, true, var_0.a, true)), var_0.d, var_0.c), !var_0.d, true), var_0.d, select(!select(var_0.d, var_0.d, vec4<bool>(false, arg_3.x, arg_3.x, var_0.d.x)), !(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)), !var_0.d)), arg_1);
    let var_2 = var_0.b.yy;
    return Struct_4(global3[_wgslsmith_index_u32(firstLeadingBit(select(~(~var_0.b.x), 1u >> (reverseBits(0u) % 32u), any(!vec3<bool>(true, var_1.a, var_0.a)))), 12u)], vec2<i32>(firstTrailingBit(29394i) | ~1i, 1i) >> (~vec2<u32>(~global1.x, select(17098u, arg_2.x, true)) % vec2<u32>(32u)), Struct_2(Struct_1(false, vec4<u32>(66937u, abs(35849u), 4294967295u, 4294967295u), func_4(min(3780i, 2147483647i), min(vec2<i32>(0i, 22373i), vec2<i32>(15346i, -13955i)), vec3<i32>(-20461i, 5496i, -46649i)), !(!vec4<bool>(arg_3.x, true, false, true)), 1075f), var_1.d.yz, var_1.d.x), false, ~1i);
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, reverseBits(u_input.a.x), abs(~31598u), 1u), _wgslsmith_sub_vec4_u32(~(~u_input.b), vec4<u32>(0u, ~1u, u_input.d.x >> (24132u % 32u), u_input.a.x))), _wgslsmith_f_op_f32(select(356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 599f) - -225f)), !(!(!arg_2.c.a.a)))), func_2(arg_2.c.a.b, arg_3, arg_2.c.a.b, select(vec2<bool>(arg_2.c.a.d.x, any(arg_2.c.b)), arg_2.a.a.a.d.zz, any(func_2(vec4<u32>(arg_1.x, 1u, arg_2.a.a.a.b.x, global1.x), arg_2.a.a.a.e, vec4<u32>(0u, 81870u, u_input.a.x, global1.x), vec2<bool>(arg_2.a.a.b.x, arg_2.d)).a.a.a.d.ww))).a.a.a.b, vec2<bool>(true, true));
    var var_1 = func_4(-_wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_2.b.x), -17986i, countOneBits(0i), _wgslsmith_mod_i32(-11450i, arg_2.b.x)), global0[_wgslsmith_index_u32(1u, 7u)]), var_0.b, vec3<i32>(1i, _wgslsmith_div_i32(firstLeadingBit(select(var_0.e, -2147483647i, arg_2.c.c)), ~(-arg_2.e)), -1i));
    var var_2 = 1u;
    return Struct_1(false, _wgslsmith_mult_vec4_u32(firstTrailingBit(~(~var_0.a.a.a.b)), vec4<u32>(_wgslsmith_mult_u32(arg_1.x, arg_2.c.a.b.x) ^ ~arg_1.x, abs(firstTrailingBit(global1.x)), abs(countOneBits(global1.x)), ~global1.x)), (any(vec2<bool>(true, true)) && ((var_0.b.x <= -5756i) & false)) || !select(var_0.c.a.b.x < u_input.d.x, arg_2.c.c, var_0.b.x < -9749i), select(select(var_0.c.a.d, vec4<bool>(var_0.d, true, any(arg_2.a.a.a.d), var_0.e <= arg_2.b.x), var_0.c.c), !arg_2.c.a.d, true), _wgslsmith_f_op_f32(arg_0 * arg_3));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    let var_0 = arg_0.c;
    let var_1 = func_2(_wgslsmith_clamp_vec4_u32(~(arg_0.b | _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 50982u, 25906u, arg_1))), max(firstLeadingBit(countOneBits(arg_0.b)), ~func_5(arg_0.e, vec3<u32>(1u, 17815u, 64678u), Struct_4(Struct_3(Struct_2(Struct_1(var_0, arg_0.b, true, arg_0.d, arg_0.e), arg_0.d.xw, arg_0.a)), vec2<i32>(-2518i, -31755i), Struct_2(arg_0, arg_0.d.yw, arg_0.d.x), arg_0.c, -31136i), arg_0.e).b), u_input.d), 900f, ~abs(~vec4<u32>(0u, arg_0.b.x, arg_0.b.x, arg_0.b.x)) & arg_0.b, arg_0.d.yz);
    global0 = array<vec4<i32>, 7>();
    global1 = ~(~firstLeadingBit(~vec2<u32>(39358u, 58005u)));
    var var_2 = -1000f;
    return ~(select(global0[_wgslsmith_index_u32(~(~291u), 7u)], global0[_wgslsmith_index_u32(func_2(abs(vec4<u32>(arg_1, 1u, 1u, 58696u)), _wgslsmith_f_op_f32(floor(-1373f)), arg_0.b >> (vec4<u32>(11875u, 1u, 0u, arg_0.b.x) % vec4<u32>(32u)), vec2<bool>(arg_0.c, false)).c.a.b.x, 7u)], select(vec4<bool>(true, var_0, true, var_1.a.a.a.c), arg_0.d, true | var_1.c.c)) ^ vec4<i32>(~(-47423i) | var_1.b.x, -24967i, var_1.b.x, -(~var_1.e)));
}

fn func_1() -> vec2<u32> {
    global0 = array<vec4<i32>, 7>();
    global3 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_dot_vec4_i32(abs(func_6(func_5(_wgslsmith_f_op_f32(-531f + -1187f), ~vec3<u32>(0u, 18857u, 1u), func_2(u_input.b, 528f, vec4<u32>(global1.x, 4294967295u, 12320u, u_input.a.x), vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(-376f))), ~_wgslsmith_mult_u32(global1.x, global1.x))), reverseBits(global0[_wgslsmith_index_u32(14540u, 7u)]));
    var var_1 = all(select(!func_2(vec4<u32>(4294967295u, u_input.b.x, u_input.c, 36610u), -678f, u_input.b, vec2<bool>(false, true)).a.a.b, select(vec2<bool>(false, false), vec2<bool>(true, true), func_5(836f, vec3<u32>(30095u, 76363u, 0u), Struct_4(Struct_3(Struct_2(Struct_1(false, vec4<u32>(0u, 4294967295u, u_input.b.x, 1u), false, vec4<bool>(false, false, false, true), -989f), vec2<bool>(true, true), false)), vec2<i32>(-11232i, 21443i), Struct_2(Struct_1(true, u_input.a, true, vec4<bool>(false, true, false, true), 160f), vec2<bool>(false, false), false), false, -2147483647i), 140f).d.wx), vec2<bool>(true, true))) && select(false, func_5(-632f, min(u_input.d.zxw | vec3<u32>(global1.x, 9602u, u_input.c), ~vec3<u32>(global1.x, u_input.c, global1.x)), func_2(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), 1365f, ~vec4<u32>(6754u, 4294967295u, 1u, 23865u), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(639f - -1641f) - _wgslsmith_f_op_f32(459f - 649f))).d.x, !(any(vec4<bool>(false, true, false, true)) && true));
    var var_2 = true;
    return vec2<u32>(~global1.x, _wgslsmith_div_u32(53680u, 10970u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 7>();
    global2 = global1.x;
    global1 = func_1();
    global3 = array<Struct_3, 12>();
    global1 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(~u_input.b.wx), firstLeadingBit(abs(u_input.a.yx))), func_1()) >> (u_input.b.yz % vec2<u32>(32u));
    global1 = ~vec2<u32>(global1.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global1.x, 97966u, global1.x), _wgslsmith_sub_u32(14265u, _wgslsmith_div_u32(0u, u_input.c)));
}


struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec2<i32> = vec2<i32>(-1i, 25506i);

var<private> global2: array<bool, 22> = array<bool, 22>(false, true, false, false, true, false, true, false, true, true, true, false, true, false, false, true, false, false, false, true, false, false);

var<private> global3: u32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    let var_0 = firstLeadingBit(~countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0, 1u), vec2<u32>(101739u, arg_1.a.c) | vec2<u32>(arg_2.c, 26471u))));
    var var_1 = -arg_2.b.a.a;
    var var_2 = true;
    global2 = array<bool, 22>();
    var var_3 = Struct_4(Struct_3(select(vec3<bool>(!arg_2.a.x, arg_2.a.x, select(global0.x, true, true)), arg_2.a, select(!arg_1.a.a, !arg_1.a.a, arg_1.a.a)), arg_1.a.b, 8346u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-913f, arg_1.a.e.b, arg_2.b.a.b)))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.e.b))), _wgslsmith_mult_i32(arg_1.a.e.a, -1442i))), true);
    return min(abs(var_0.x), _wgslsmith_sub_u32(var_3.a.c, arg_1.a.c) & (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.c, arg_1.a.c, arg_0, 0u), vec4<u32>(17684u, var_3.a.c, 51583u, 11761u)), abs(vec4<u32>(4294967295u, 22049u, 4294967295u, 4294967295u))) ^ reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_2.c, var_0.x), vec3<u32>(arg_0, arg_0, 1u)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec3<i32> {
    global1 = abs(u_input.a);
    var var_0 = Struct_2(Struct_1(global1.x, arg_0.a.e.b, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-1i, arg_1.a, 2147483647i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 0i, 0i, -1i), vec4<i32>(62935i, global1.x, 6025i, arg_0.a.e.a), vec4<i32>(arg_0.a.b.a.a, u_input.a.x, u_input.a.x, u_input.a.x)), !global2[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.a.e.c, -2147483647i, arg_1.c, -11027i)), _wgslsmith_mult_vec4_i32(vec4<i32>(34963i, arg_1.c, arg_1.a, arg_1.a), vec4<i32>(-25152i, -4696i, arg_1.a, arg_0.a.e.c))))));
    let var_1 = vec4<u32>(arg_0.a.c, func_3(_wgslsmith_clamp_u32(max(1u, 0u), max(1u, ~arg_0.a.c), 0u), arg_0, Struct_3(!select(vec3<bool>(global0.x, global0.x, arg_0.a.a.x), global0.yzy, vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.b, true)), Struct_2(arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 71895u, 4294967295u), vec3<u32>(arg_0.a.c, 4294967295u, arg_0.a.c)), arg_0.a.d, Struct_1(var_0.a.a, -1000f, -6021i))), firstLeadingBit(_wgslsmith_add_u32(9254u | arg_0.a.c, func_3(arg_0.a.c, Struct_4(Struct_3(arg_0.a.a, Struct_2(arg_0.a.b.a), 32521u, arg_0.a.d, arg_1), true), arg_0.a)) & min(32453u, 1u)), _wgslsmith_mod_u32(arg_0.a.c, 71624u));
    let var_2 = Struct_2(arg_1);
    let var_3 = -1i;
    return max(vec3<i32>(arg_1.c, _wgslsmith_add_i32(arg_1.c, 1i), arg_1.c >> (4057u % 32u)), max(-vec3<i32>(-7639i, arg_1.c, _wgslsmith_add_i32(2147483647i, arg_0.a.e.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-13102i, _wgslsmith_div_i32(global1.x, var_2.a.a), 2147483647i), -vec3<i32>(arg_1.c, arg_1.c, -1873i))));
}

fn func_2() -> vec3<i32> {
    var var_0 = func_4(Struct_4(Struct_3(!select(global0.xxz, vec3<bool>(global0.x, false, global0.x), false), Struct_2(Struct_1(u_input.a.x, -716f, -18137i)), func_3(25099u, Struct_4(Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(19466u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], true), Struct_2(Struct_1(22202i, 528f, -58613i)), 80853u, vec3<f32>(-1671f, 973f, 1000f), Struct_1(global1.x, 1000f, -1i)), global0.x), Struct_3(global0.zwz, Struct_2(Struct_1(64162i, 274f, u_input.a.x)), 43721u, vec3<f32>(-1394f, 114f, -1266f), Struct_1(16466i, -252f, 0i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(909f, 340f, 1487f), vec3<f32>(1779f, 1900f, -383f))), vec3<f32>(-1178f, -756f, 660f)), Struct_1(global1.x, _wgslsmith_f_op_f32(round(-800f)), u_input.a.x)), global0.x), Struct_1(_wgslsmith_mult_i32(0i, -43153i), 560f, ~(-1i & _wgslsmith_add_i32(u_input.a.x, global1.x))));
    var var_1 = select(global0.wxx, global0.zyw, global2[_wgslsmith_index_u32(abs(~(firstTrailingBit(0u) | func_3(29735u, Struct_4(Struct_3(global0.zww, Struct_2(Struct_1(3950i, -312f, -1i)), 0u, vec3<f32>(1000f, -346f, 1424f), Struct_1(1i, -653f, var_0.x)), global2[_wgslsmith_index_u32(46300u, 22u)]), Struct_3(vec3<bool>(true, global0.x, global2[_wgslsmith_index_u32(6581u, 22u)]), Struct_2(Struct_1(-19788i, -596f, u_input.a.x)), 13620u, vec3<f32>(-481f, 1180f, 372f), Struct_1(2147483647i, 1071f, 0i))))), 22u)]);
    var var_2 = 1i;
    let var_3 = Struct_4(Struct_3(select(vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(~1u, 22u)]), select(!global0.xwx, vec3<bool>(global2[_wgslsmith_index_u32(239u, 22u)], false, global0.x), global0.zxw), select(select(global0.xzx, global0.wzx, true), global0.wyy, select(global0.zzz, vec3<bool>(false, global2[_wgslsmith_index_u32(13973u, 22u)], global0.x), vec3<bool>(var_1.x, true, true)))), Struct_2(Struct_1(u_input.a.x, 359f, global1.x)), ~(~(~40285u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(623f, -136f, -474f))))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f)), ~func_4(Struct_4(Struct_3(vec3<bool>(var_1.x, global2[_wgslsmith_index_u32(25389u, 22u)], true), Struct_2(Struct_1(global1.x, 1000f, u_input.a.x)), 17652u, vec3<f32>(-621f, -393f, -1000f), Struct_1(-1i, 129f, 22527i)), true), Struct_1(0i, 406f, u_input.a.x)).x)), any(select(!vec4<bool>(true, var_1.x, false, global2[_wgslsmith_index_u32(4294967295u, 22u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global0.x, false, var_1.x), true), select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true, global2[_wgslsmith_index_u32(70533u, 22u)], false), vec4<bool>(true, false, true, false), global0.x), !vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(0u, 22u)]), !global0.x))));
    let var_4 = Struct_1(abs(1i), -267f, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -32584i, 2147483647i), firstLeadingBit(vec4<i32>(var_3.a.e.c, var_3.a.b.a.a, u_input.a.x, -5879i))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.c, var_3.a.c, var_3.a.c, var_3.a.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.a.c, 2530u, var_3.a.c, var_3.a.c), vec4<u32>(var_3.a.c, var_3.a.c, var_3.a.c, 1u), vec4<u32>(var_3.a.c, var_3.a.c, 1u, var_3.a.c))) % 32u), 1i));
    return -vec3<i32>(firstTrailingBit(-(~(-1i))), 4300i, countOneBits(abs(var_0.x << (1u % 32u))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = select(vec3<i32>(~2147483647i, 0i, _wgslsmith_dot_vec3_i32(func_2(), vec3<i32>(~u_input.a.x, 2147483647i, 2147483647i))), ~(abs(reverseBits(vec3<i32>(-11697i, u_input.a.x, 55902i))) ^ select(firstTrailingBit(vec3<i32>(global1.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, -50155i, -1i) | vec3<i32>(-376i, 2147483647i, u_input.a.x), vec3<bool>(true, global2[_wgslsmith_index_u32(36609u, 22u)], global2[_wgslsmith_index_u32(3900u, 22u)]))), vec3<bool>(!(!global2[_wgslsmith_index_u32(firstTrailingBit(16589u), 22u)]), any(vec2<bool>(true, true)), any(global0.xyx)));
    var_0 = -select(firstLeadingBit(firstLeadingBit(func_4(Struct_4(Struct_3(global0.yzx, Struct_2(Struct_1(u_input.a.x, 1000f, 40724i)), 97382u, vec3<f32>(arg_0.x, arg_0.x, -307f), Struct_1(25i, 452f, global1.x)), global2[_wgslsmith_index_u32(0u, 22u)]), Struct_1(var_0.x, arg_0.x, global1.x)))), firstLeadingBit((vec3<i32>(-2147483647i, u_input.a.x, var_0.x) >> (vec3<u32>(84484u, 53814u, 0u) % vec3<u32>(32u))) >> (vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u))), vec3<bool>(global0.x, !(!global2[_wgslsmith_index_u32(4294967295u, 22u)]), select(!global0.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(41120u, 32028u), 22u)], true)));
    let var_1 = Struct_1(1i, arg_0.x, countOneBits(var_0.x));
    let var_2 = var_1;
    let var_3 = Struct_2(Struct_1(9130i, arg_0.x, 1i));
    return Struct_3(select(vec3<bool>(true, true, (var_1.a << (4294967295u % 32u)) == var_1.c), select(select(select(global0.zxw, global0.xzx, true), global0.xww, global2[_wgslsmith_index_u32(abs(4294967295u), 22u)]), !global0.wwy, true), !select(global0.wxx, vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], true), !global2[_wgslsmith_index_u32(58345u, 22u)])), var_3, 1u << (abs(~func_3(38502u, Struct_4(Struct_3(global0.zww, var_3, 0u, arg_0, var_1), false), Struct_3(global0.xwz, var_3, 33149u, arg_0, var_2))) % 32u), arg_0, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(1145i);
    var var_1 = Struct_4(func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, 345f, 341f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f), 444f))) <= -1229f);
    let var_2 = _wgslsmith_f_op_f32(trunc(var_1.a.d.x));
    var_1 = Struct_4(var_1.a, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(select(-592f, _wgslsmith_f_op_f32(-var_2), var_0 == global1.x))) + _wgslsmith_f_op_vec2_f32(-var_1.a.d.yz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, -320f)));
    var var_4 = Struct_1(9201i ^ var_0, -1227f, abs(max(0i, var_0)));
    let var_5 = _wgslsmith_mod_u32(4294967295u, ~var_1.a.c);
    var var_6 = vec3<i32>(10079i, _wgslsmith_mult_i32(func_4(Struct_4(var_1.a, global0.x), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e.b, -477f, 1000f))).e).x, 12587i), ~abs(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-793f * -808f))), vec2<u32>(var_1.a.c, _wgslsmith_mult_u32(~(~var_1.a.c), _wgslsmith_add_u32(select(1u, 67571u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5, var_5), vec2<u32>(var_5, 1u))))));
}


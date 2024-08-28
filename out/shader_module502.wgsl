struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 1i);

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 2>;

var<private> global3: Struct_2 = Struct_2(-103f, true, vec4<bool>(true, true, false, true), 4294967295u, vec3<u32>(19729u, 0u, 672u));

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(220f, false, vec4<bool>(false, true, false, false), 19180u, vec3<u32>(1u, 21170u, 1u)), Struct_2(-751f, true, vec4<bool>(false, false, false, false), 70475u, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_2(-2278f, false, vec4<bool>(false, false, true, false), 6337u, vec3<u32>(0u, 20387u, 0u)), Struct_2(-882f, true, vec4<bool>(false, true, true, false), 0u, vec3<u32>(0u, 27622u, 0u)), Struct_2(-1079f, true, vec4<bool>(false, false, false, false), 1u, vec3<u32>(41062u, 4294967295u, 0u)), Struct_2(-1244f, false, vec4<bool>(false, true, true, false), 4294967295u, vec3<u32>(71446u, 0u, 3003u)), Struct_2(-303f, true, vec4<bool>(false, false, false, true), 19367u, vec3<u32>(14078u, 38924u, 1u)), Struct_2(1329f, true, vec4<bool>(false, false, false, false), 21632u, vec3<u32>(0u, 1u, 0u)), Struct_2(-866f, false, vec4<bool>(true, false, true, false), 1576u, vec3<u32>(62606u, 18560u, 1u)), Struct_2(-142f, false, vec4<bool>(true, true, true, true), 0u, vec3<u32>(5856u, 1u, 136607u)), Struct_2(1577f, true, vec4<bool>(true, false, true, true), 4294967295u, vec3<u32>(11509u, 36967u, 0u)), Struct_2(-1470f, false, vec4<bool>(false, true, true, false), 4294967295u, vec3<u32>(1u, 25361u, 40304u)), Struct_2(537f, false, vec4<bool>(false, false, false, true), 2454u, vec3<u32>(1u, 15451u, 4294967295u)), Struct_2(1605f, true, vec4<bool>(true, true, false, true), 65391u, vec3<u32>(0u, 43250u, 4294967295u)), Struct_2(752f, false, vec4<bool>(true, false, true, true), 21351u, vec3<u32>(4294967295u, 1164u, 29877u)), Struct_2(1565f, false, vec4<bool>(true, true, false, true), 4294967295u, vec3<u32>(0u, 79779u, 0u)), Struct_2(1136f, true, vec4<bool>(true, true, true, false), 0u, vec3<u32>(0u, 1u, 17300u)), Struct_2(543f, false, vec4<bool>(false, false, false, true), 0u, vec3<u32>(0u, 51804u, 21787u)), Struct_2(-692f, true, vec4<bool>(false, true, true, false), 0u, vec3<u32>(15739u, 51637u, 50527u)), Struct_2(664f, false, vec4<bool>(false, true, true, false), 0u, vec3<u32>(0u, 0u, 4294967295u)), Struct_2(1000f, true, vec4<bool>(false, true, true, true), 4294967295u, vec3<u32>(35714u, 19846u, 38598u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<i32>) -> vec4<u32> {
    global4 = array<Struct_2, 21>();
    global1 = global3.c;
    var var_0 = max(_wgslsmith_mult_vec2_i32(max(select(global0.zy, arg_2.zz, true), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global0.xx, vec2<i32>(u_input.a, -1i)), global0.yz)), firstLeadingBit(_wgslsmith_add_vec2_i32(arg_2.yx, vec2<i32>(-1i, -12493i)) & vec2<i32>(-1422i, -1i))), _wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), _wgslsmith_sub_i32(-42808i, arg_2.x))), u_input.b));
    global4 = array<Struct_2, 21>();
    var var_1 = Struct_2(-1382f, all(!(!select(global1.zzx, global3.c.www, false))), vec4<bool>(any(select(!vec3<bool>(false, false, global3.c.x), select(vec3<bool>(true, false, true), global1.xzy, true), !global3.b)), global3.b, true, all(select(vec3<bool>(global3.c.x, false, global3.c.x), !vec3<bool>(global1.x, false, true), vec3<bool>(true, global3.b, false)))), 23246u | ~(global3.d ^ ~global3.e.x), global3.e);
    return vec4<u32>(global3.d, 1u << (global3.e.x % 32u), global3.e.x, _wgslsmith_add_u32(45482u ^ firstLeadingBit(countOneBits(var_1.e.x)), select(_wgslsmith_mult_u32(global3.d, _wgslsmith_add_u32(1u, global3.e.x)), min(~global3.e.x, _wgslsmith_add_u32(var_1.e.x, var_1.e.x)), !arg_0.x)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    var var_0 = vec2<i32>(min((0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, 0u, 7539u, arg_3), vec4<u32>(arg_3, 0u, arg_2.d, 1u)) % 32u)) | ~u_input.b.x, ~15805i), abs(-26392i));
    var_0 = _wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, u_input.b.x), -global0.yx) >> ((~(~arg_2.e.zx) | global3.e.xx) % vec2<u32>(32u)), vec2<i32>(global0.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(1i, var_0.x)), 0i, 2147483647i)));
    global1 = arg_2.c;
    let var_1 = Struct_3(Struct_1(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, var_0.x) >> (arg_2.e % vec3<u32>(32u)), vec3<i32>(2147483647i, 1i, 41410i)), ~(var_0.x | global0.x), !any(vec2<bool>(global1.x, global3.c.x))), vec3<bool>(any(arg_2.c.ywx) & !global1.x, all(arg_2.c.wyw), true), any(!global3.c.wxz), arg_2.c.x), arg_2.a, _wgslsmith_sub_vec4_u32(select(~vec4<u32>(1u, 0u, 1u, arg_2.d), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 61356u, 4294967295u, 1u), vec4<u32>(arg_2.d, 0u, arg_3, 25163u)), global1.x), firstTrailingBit(~vec4<u32>(arg_2.e.x, arg_2.d, 0u, 6184u))) | ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.e.x, global3.e.x, 22173u, 22690u), vec4<u32>(1u, 13401u, arg_0, 0u)), func_3(vec4<bool>(global3.c.x, global3.b, false, false), arg_2.a, vec3<i32>(-1i, global0.x, 30108i))));
    var var_2 = _wgslsmith_mod_u32(global3.d & countOneBits(4294967295u), ~var_1.c.x);
    return vec4<u32>(~0u, arg_3, abs(0u), 1u);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_1(u_input.b.x | 1i, arg_0.c.wzy, false & !any(select(vec4<bool>(global1.x, true, true, false), global3.c, global3.b)), global3.b);
    var var_1 = ~(~func_2(1u, true, global4[_wgslsmith_index_u32(global3.d, 21u)], arg_0.e.x));
    var var_2 = select(select(select(global1.xx, vec2<bool>(any(vec2<bool>(true, true)), true), u_input.a != var_0.a), vec2<bool>(global1.x, global3.b), vec2<bool>((global3.a >= arg_0.a) == (arg_0.a != -777f), true)), !select(var_0.b.zy, vec2<bool>(true, global3.b), false), (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)]), 1264f)) >= -942f) | any(arg_0.c));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1041f + global3.a) - -896f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1140f, -1986f, 2537f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global3.e.x, 2u)], global3.a, global3.a))), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -250f), -2092f))));
    return Struct_3(var_3, -1123f, ~vec4<u32>(~(~arg_0.d), arg_0.e.x, 72968u, ~(0u << (0u % 32u))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    global0 = vec3<i32>(-abs(-global0.x), global0.x >> (0u % 32u), u_input.a);
    let var_0 = arg_2.c.x;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1136f))), !(u_input.a <= ~global0.x), vec4<bool>(all(!vec2<bool>(true, global3.b)), true, all(global3.c) || arg_2.a.b.x, global3.b), ~global3.e.x, ~(_wgslsmith_mult_vec3_u32(~vec3<u32>(global3.d, 0u, 49247u), _wgslsmith_div_vec3_u32(arg_2.c.xxz, vec3<u32>(55510u, 20982u, var_0))) >> (((vec3<u32>(23485u, global3.d, 1u) ^ global3.e) | global3.e) % vec3<u32>(32u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = -vec3<i32>(global0.x, -25712i ^ (-28028i ^ u_input.b.x), 0i);
    let var_1 = min(min(vec3<i32>(1i, -2147483647i, u_input.b.x) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, var_0.x), vec3<i32>(-1i, var_0.x, var_0.x)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(10316i, 1i, var_0.x), vec3<i32>(2147483647i, -21027i, -55276i), vec3<i32>(8379i, global0.x, global0.x)))), vec3<i32>(u_input.b.x, -37536i, 2147483647i)) & vec3<i32>(-15755i, _wgslsmith_add_i32(global0.x, global0.x), 21405i);
    let var_2 = firstLeadingBit(~vec2<u32>(_wgslsmith_div_u32(~75946u, firstLeadingBit(22488u)), arg_1.d));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.a, -387f))));
    let var_4 = global0.x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!global3.c);
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) * -1173f), 323f, _wgslsmith_f_op_f32(-1395f + -404f)), vec3<f32>(_wgslsmith_f_op_f32(func_5(vec4<u32>(~2106u, 1u, global3.d, 19026u), func_4(-1081f, _wgslsmith_div_vec4_f32(vec4<f32>(global3.a, global3.a, global3.a, global2[_wgslsmith_index_u32(global3.d, 2u)]), vec4<f32>(-1580f, -1742f, 1951f, 1210f)), func_1(global4[_wgslsmith_index_u32(87685u, 21u)], vec2<u32>(4294967295u, global3.e.x), global1.x)))), _wgslsmith_div_f32(-482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1630f) - -1349f)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(func_2(_wgslsmith_add_u32(global3.d, 1u), global3.c.x, global4[_wgslsmith_index_u32(global3.d, 21u)], global3.e.x).x, 2u)]))));
    var var_1 = vec2<bool>(!any(func_4(_wgslsmith_f_op_f32(var_0.x * global3.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a, global3.a, global2[_wgslsmith_index_u32(global3.d, 2u)], 1065f))), Struct_3(Struct_1(u_input.a, vec3<bool>(global3.c.x, global3.c.x, false), global1.x, true), global3.a, vec4<u32>(global3.d, 101693u, global3.d, global3.d))).c), !(-983i == (2147483647i >> (~global3.e.x % 32u))));
    let var_2 = Struct_3(Struct_1(2147483647i, global1.xwy, func_1(global4[_wgslsmith_index_u32(global3.d, 21u)], _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global3.e.x), global3.e.xz | vec2<u32>(1u, 4294967295u)), !all(global3.c)).a.d, _wgslsmith_f_op_f32(max(global3.a, global3.a)) != -716f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.x, 686f, var_1.x)))), ~vec4<u32>(func_2(12815u, global1.x, global4[_wgslsmith_index_u32(25728u, 21u)], global3.d).x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.d, global3.e.x, global3.d), vec3<u32>(global3.e.x, 32212u, global3.e.x)), 14936u, 26218u) ^ vec4<u32>(~_wgslsmith_clamp_u32(67312u, 1u, global3.e.x), ~(~1u), firstTrailingBit(global3.e.x ^ global3.e.x), _wgslsmith_mod_u32(global3.d, 94653u)));
    var var_3 = func_1(global4[_wgslsmith_index_u32(var_2.c.x, 21u)], vec2<u32>(~global3.d, var_2.c.x), all(select(select(global3.c, !vec4<bool>(var_1.x, true, var_1.x, var_2.a.d), !global3.b), !global3.c, var_1.x))).a;
    let var_4 = func_4(global2[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_clamp_u32(var_2.c.x, 1u, var_2.c.x))), 2u)], vec4<f32>(-214f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(-1169f, vec4<f32>(var_2.b, 395f, global3.a, var_2.b), var_2).a - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global3.d, 2u)], var_0.x)), var_0.x), var_2.b, var_0.x), var_2).c.yw;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(4294967295u, func_4(var_2.b, vec4<f32>(182f, 960f, var_2.b, global3.a), Struct_3(Struct_1(0i, var_3.b, true, false), 208f, var_2.c)).d) >> (_wgslsmith_div_vec2_u32(~vec2<u32>(global3.d, 6245u), _wgslsmith_div_vec2_u32(vec2<u32>(global3.d, var_2.c.x), vec2<u32>(global3.d, 41872u))) % vec2<u32>(32u))), reverseBits(var_2.a.a ^ u_input.b.x));
}


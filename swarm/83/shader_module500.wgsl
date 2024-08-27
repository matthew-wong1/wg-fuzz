struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(42595i, i32(-2147483648), 5896i, i32(-2147483648), -51416i, -28728i);

var<private> global1: i32;

var<private> global2: vec3<i32> = vec3<i32>(1i, 17920i, -31180i);

var<private> global3: Struct_2;

var<private> global4: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(false, Struct_1(30260i), 1244f, vec2<bool>(true, false)), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_2(false, Struct_1(295i), 524f, vec2<bool>(false, false)), vec3<i32>(i32(-2147483648), 1i, 0i), false), Struct_4(Struct_2(true, Struct_1(2147483647i), 673f, vec2<bool>(false, true)), vec3<u32>(104687u, 4294967295u, 48306u), Struct_2(true, Struct_1(2147483647i), 345f, vec2<bool>(false, true)), vec3<i32>(2147483647i, 0i, 39555i), false), Struct_4(Struct_2(false, Struct_1(15239i), -147f, vec2<bool>(true, false)), vec3<u32>(1063u, 0u, 25363u), Struct_2(false, Struct_1(i32(-2147483648)), -1131f, vec2<bool>(false, false)), vec3<i32>(-17797i, -32976i, 20803i), true), Struct_4(Struct_2(true, Struct_1(1i), -863f, vec2<bool>(true, true)), vec3<u32>(5133u, 18233u, 0u), Struct_2(true, Struct_1(i32(-2147483648)), -809f, vec2<bool>(true, false)), vec3<i32>(-35332i, 1i, -6949i), false), Struct_4(Struct_2(true, Struct_1(i32(-2147483648)), 1000f, vec2<bool>(true, true)), vec3<u32>(3217u, 2531u, 0u), Struct_2(false, Struct_1(22023i), -1000f, vec2<bool>(true, true)), vec3<i32>(1i, 0i, -43360i), false), Struct_4(Struct_2(false, Struct_1(-24212i), -1414f, vec2<bool>(true, true)), vec3<u32>(4294967295u, 68242u, 28497u), Struct_2(false, Struct_1(-51971i), -559f, vec2<bool>(false, true)), vec3<i32>(-9389i, 1i, 1i), true), Struct_4(Struct_2(false, Struct_1(-1i), -129f, vec2<bool>(false, false)), vec3<u32>(0u, 33677u, 70759u), Struct_2(false, Struct_1(-1i), -793f, vec2<bool>(false, false)), vec3<i32>(3430i, 0i, -1i), false), Struct_4(Struct_2(false, Struct_1(-1i), 1000f, vec2<bool>(true, true)), vec3<u32>(0u, 1u, 4294967295u), Struct_2(true, Struct_1(1i), -1140f, vec2<bool>(false, true)), vec3<i32>(i32(-2147483648), -27380i, 2147483647i), false), Struct_4(Struct_2(true, Struct_1(0i), 830f, vec2<bool>(true, false)), vec3<u32>(14600u, 4294967295u, 4294967295u), Struct_2(true, Struct_1(20826i), 1417f, vec2<bool>(false, false)), vec3<i32>(0i, -16716i, 0i), false), Struct_4(Struct_2(true, Struct_1(18575i), 1000f, vec2<bool>(false, true)), vec3<u32>(36566u, 44181u, 4294967295u), Struct_2(false, Struct_1(1i), 357f, vec2<bool>(true, true)), vec3<i32>(2147483647i, 1i, -13873i), true), Struct_4(Struct_2(false, Struct_1(4031i), -1333f, vec2<bool>(false, true)), vec3<u32>(117676u, 85160u, 0u), Struct_2(false, Struct_1(-2784i), 1000f, vec2<bool>(true, true)), vec3<i32>(-1i, 16409i, -41817i), false), Struct_4(Struct_2(true, Struct_1(1i), -340f, vec2<bool>(true, false)), vec3<u32>(4294967295u, 16634u, 56950u), Struct_2(false, Struct_1(2147483647i), -924f, vec2<bool>(true, false)), vec3<i32>(0i, 29802i, 1i), false), Struct_4(Struct_2(true, Struct_1(i32(-2147483648)), 650f, vec2<bool>(true, false)), vec3<u32>(12957u, 12188u, 10593u), Struct_2(true, Struct_1(2147483647i), -1262f, vec2<bool>(true, true)), vec3<i32>(2147483647i, -15995i, 13607i), true), Struct_4(Struct_2(true, Struct_1(-32247i), -1204f, vec2<bool>(true, false)), vec3<u32>(1u, 4294967295u, 0u), Struct_2(false, Struct_1(-1i), -578f, vec2<bool>(true, true)), vec3<i32>(27609i, 14799i, 21721i), false), Struct_4(Struct_2(true, Struct_1(2147483647i), -512f, vec2<bool>(true, false)), vec3<u32>(27726u, 1u, 0u), Struct_2(true, Struct_1(-109i), -1089f, vec2<bool>(true, false)), vec3<i32>(-1i, i32(-2147483648), 0i), false), Struct_4(Struct_2(true, Struct_1(i32(-2147483648)), 1000f, vec2<bool>(false, false)), vec3<u32>(1u, 1u, 98503u), Struct_2(true, Struct_1(9717i), 1000f, vec2<bool>(true, true)), vec3<i32>(-27648i, 1i, 18553i), false), Struct_4(Struct_2(false, Struct_1(29456i), 1000f, vec2<bool>(true, true)), vec3<u32>(71725u, 29968u, 4294967295u), Struct_2(true, Struct_1(-6067i), 909f, vec2<bool>(true, false)), vec3<i32>(2147483647i, 13647i, 38094i), true), Struct_4(Struct_2(false, Struct_1(2147483647i), -1684f, vec2<bool>(false, true)), vec3<u32>(126847u, 4294967295u, 88367u), Struct_2(true, Struct_1(2147483647i), 706f, vec2<bool>(true, true)), vec3<i32>(32383i, 14755i, i32(-2147483648)), false), Struct_4(Struct_2(false, Struct_1(0i), -1131f, vec2<bool>(false, false)), vec3<u32>(45398u, 8365u, 59269u), Struct_2(false, Struct_1(0i), -469f, vec2<bool>(false, true)), vec3<i32>(1i, -1i, i32(-2147483648)), false), Struct_4(Struct_2(false, Struct_1(-1i), 1000f, vec2<bool>(false, false)), vec3<u32>(4294967295u, 50212u, 15711u), Struct_2(false, Struct_1(-19434i), 1351f, vec2<bool>(true, false)), vec3<i32>(i32(-2147483648), -5135i, -14365i), false), Struct_4(Struct_2(true, Struct_1(2147483647i), -190f, vec2<bool>(true, true)), vec3<u32>(106482u, 4294967295u, 27357u), Struct_2(false, Struct_1(2147483647i), -884f, vec2<bool>(false, false)), vec3<i32>(i32(-2147483648), 0i, -1i), true), Struct_4(Struct_2(false, Struct_1(-1i), -773f, vec2<bool>(false, true)), vec3<u32>(0u, 0u, 4294967295u), Struct_2(false, Struct_1(1i), -1667f, vec2<bool>(false, false)), vec3<i32>(i32(-2147483648), 0i, -1i), true), Struct_4(Struct_2(true, Struct_1(i32(-2147483648)), -1247f, vec2<bool>(false, false)), vec3<u32>(66129u, 1u, 41071u), Struct_2(false, Struct_1(1669i), 2178f, vec2<bool>(false, true)), vec3<i32>(1i, 2147483647i, -10480i), true), Struct_4(Struct_2(true, Struct_1(1i), 263f, vec2<bool>(true, false)), vec3<u32>(1u, 51749u, 4294967295u), Struct_2(true, Struct_1(-26197i), -289f, vec2<bool>(false, false)), vec3<i32>(-1i, 36786i, 0i), false), Struct_4(Struct_2(false, Struct_1(i32(-2147483648)), 150f, vec2<bool>(false, false)), vec3<u32>(48405u, 16409u, 1u), Struct_2(false, Struct_1(-9894i), 2938f, vec2<bool>(true, false)), vec3<i32>(2147483647i, 12001i, 0i), true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = -countOneBits(global2.yz);
    let var_1 = global2.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(808f)) - 270f), _wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), -1249f), global3.c, true)))));
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-(global3.b.a ^ var_0.x)), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yw)), 6u)]), ~max(~1i, 1560i), _wgslsmith_mod_i32(global2.x, firstLeadingBit(1i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    global4 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1447f, 938f, global3.c)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c, arg_1.a.c.c, global3.c))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1943f, arg_1.a.a.c, arg_1.a.c.c), vec3<f32>(global3.c, global3.c, global3.c), false))))), vec3<f32>(-360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3.c)), 1663f))), -445f));
    return !arg_0;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> i32 {
    global2 = -vec3<i32>(-global0[_wgslsmith_index_u32(countOneBits(~arg_3), 6u)], 395i ^ arg_2, ~(_wgslsmith_mult_i32(arg_1.x, 30012i) & -2147483647i));
    let var_0 = ~14299u;
    let var_1 = all(select(select(vec2<bool>(false, any(vec3<bool>(false, global3.a, global3.a))), !select(arg_0.zz, vec2<bool>(global3.a, arg_0.x), global3.d), vec2<bool>(true, true)), func_4(select(!global3.d, select(vec2<bool>(true, true), arg_0.yy, true), !arg_0.zy), Struct_5(global4[_wgslsmith_index_u32(arg_3 ^ arg_3, 25u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), u_input.a.xz), ~66363u), Struct_1(func_3(vec4<f32>(-710f, global3.c, 1402f, global3.c), vec2<f32>(725f, global3.c), arg_0, 760f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3 ^ 48556u, 52123u), 6u)]), true));
    global1 = 24065i;
    global1 = global3.b.a;
    return ~6139i ^ global2.x;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(24229i, -1i, arg_0.b.b.a), vec3<i32>(-2147483647i, arg_2.d.x, arg_0.b.b.a)) | -1i, -1i), 19118i));
    var var_1 = countOneBits(_wgslsmith_mult_i32(abs(~2147483647i ^ (global3.b.a >> (arg_2.b.x % 32u))), func_2(!vec3<bool>(global3.d.x, false, true), vec4<i32>(2147483647i, -13178i, 0i, 1i), _wgslsmith_sub_i32(arg_0.b.b.a, global2.x), abs(u_input.a.x)) ^ 7391i));
    let var_2 = all(!vec3<bool>(true, _wgslsmith_f_op_f32(-global3.c) <= -666f, true));
    global2 = select(vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.b.b.a, 0i, 0i)), vec3<i32>(28553i, global0[_wgslsmith_index_u32(arg_3.x, 6u)], global3.b.a)) | reverseBits(min(12196i, 2147483647i)), ~_wgslsmith_mult_i32(select(arg_2.a.b.a, 0i, false), ~var_0.a), _wgslsmith_mod_i32(func_2(vec3<bool>(arg_0.b.a, false, true), vec4<i32>(arg_0.b.b.a, global0[_wgslsmith_index_u32(arg_0.a.x, 6u)], var_0.a, 1i), 8429i, arg_1), 5472i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(63298u, 1u, 0u) << (arg_2.b % vec3<u32>(32u)), ~arg_2.b) % 32u)), arg_2.d, true);
    var var_3 = vec2<u32>(4294967295u, ~_wgslsmith_mult_u32(~90u, _wgslsmith_div_u32(56083u, 55428u))) & reverseBits(vec2<u32>(arg_1, countOneBits(12156u)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_2(global3.a, Struct_1(global3.b.a), global3.c, global3.d));
    let var_1 = ~vec3<i32>(global3.b.a, global2.x, global2.x) >> (_wgslsmith_div_vec3_u32(u_input.a.wzw, vec3<u32>(u_input.a.x, var_0.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) % vec3<u32>(32u));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.a), ~vec4<u32>(var_0.a.x, 4294967295u, 1u, var_0.a.x), vec4<u32>(39993u, 4294967295u, u_input.a.x, 0u))), _wgslsmith_div_vec4_u32(u_input.a, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 625u, 32208u, u_input.a.x), u_input.a)))), _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(var_0.a.x, u_input.a.x)), u_input.a.x, ~0u);
    global0 = array<i32, 6>();
    let var_3 = _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-1i, max(-19834i, var_0.b.b.a), ~(-(~global2.x))));
    var var_4 = ~(-(vec3<i32>(i32(-1i) * -2399i, var_0.b.b.a, func_1(Struct_3(var_0.a, Struct_2(global3.d.x, global3.b, 455f, vec2<bool>(var_0.b.d.x, false))), var_2.x, Struct_4(Struct_2(true, Struct_1(-41964i), -751f, global3.d), vec3<u32>(var_0.a.x, 4294967295u, u_input.a.x), var_0.b, var_1, false), u_input.a)) >> (~(~var_2.yzy) % vec3<u32>(32u))));
    let var_5 = var_0.b.d.x;
    let var_6 = var_0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(-2147483647i, 99117i, -1i)), ~var_1)), 0u, var_0.a.x, abs(i32(-1i) * -2147483647i));
}


struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), 12u, vec4<bool>(false, false, false, false), vec3<i32>(-1i, -9817i, 2147483647i)), Struct_1(vec3<i32>(-77014i, -8277i, -56204i), 1u, vec4<bool>(false, true, true, false), vec3<i32>(8116i, 1i, 0i)), Struct_1(vec3<i32>(-13209i, 1i, 0i), 52742u, vec4<bool>(false, true, false, false), vec3<i32>(0i, 2147483647i, 1i)), Struct_1(vec3<i32>(-57134i, -35608i, 1i), 6047u, vec4<bool>(true, true, false, true), vec3<i32>(-1i, -32215i, -2621i)), Struct_1(vec3<i32>(-1i, 0i, -15373i), 4294967295u, vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), -25699i, 0i)), Struct_1(vec3<i32>(2147483647i, 1i, -1i), 13719u, vec4<bool>(false, true, false, false), vec3<i32>(-18596i, 16046i, -83669i)), Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), 76856u, vec4<bool>(false, true, true, true), vec3<i32>(i32(-2147483648), -59158i, -22076i)), Struct_1(vec3<i32>(i32(-2147483648), 59832i, 24508i), 0u, vec4<bool>(true, true, true, true), vec3<i32>(37490i, -19118i, 1i)), Struct_1(vec3<i32>(-1i, -21338i, 5445i), 49517u, vec4<bool>(true, true, true, false), vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(vec3<i32>(24920i, -1i, -1i), 50094u, vec4<bool>(true, false, true, true), vec3<i32>(48575i, 0i, 22552i)), Struct_1(vec3<i32>(1i, 1i, i32(-2147483648)), 12065u, vec4<bool>(false, true, false, false), vec3<i32>(-20754i, 1i, -19962i)), Struct_1(vec3<i32>(26359i, 15289i, 0i), 1u, vec4<bool>(false, false, true, true), vec3<i32>(17452i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(-50870i, i32(-2147483648), 14564i), 29785u, vec4<bool>(false, true, true, true), vec3<i32>(-1i, 33461i, -1i)), Struct_1(vec3<i32>(0i, -375i, 1i), 4294967295u, vec4<bool>(true, true, false, false), vec3<i32>(1i, 1i, -3818i)), Struct_1(vec3<i32>(44066i, 55306i, 44734i), 1u, vec4<bool>(true, false, true, false), vec3<i32>(-9118i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(1i, 11227i, -35811i), 4294967295u, vec4<bool>(false, false, false, true), vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(-42881i, 0i, 2147483647i), 1u, vec4<bool>(false, false, true, false), vec3<i32>(-44581i, -1i, 33655i)), Struct_1(vec3<i32>(-16902i, 2147483647i, 46316i), 0u, vec4<bool>(true, true, true, true), vec3<i32>(-41211i, 0i, 69829i)), Struct_1(vec3<i32>(-1i, 39847i, 1i), 56850u, vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), 2147483647i, 2385i)), Struct_1(vec3<i32>(8231i, -14586i, -19910i), 0u, vec4<bool>(false, true, true, false), vec3<i32>(0i, -1i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 1i), 1u, vec4<bool>(false, false, true, true), vec3<i32>(2147483647i, 6155i, 1i)), Struct_1(vec3<i32>(-24991i, -9039i, 2147483647i), 31335u, vec4<bool>(false, true, false, false), vec3<i32>(-35838i, 17086i, 4768i)), Struct_1(vec3<i32>(0i, 1i, -1i), 0u, vec4<bool>(false, true, true, false), vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(vec3<i32>(22678i, 2147483647i, -259i), 4294967295u, vec4<bool>(false, true, true, true), vec3<i32>(21671i, 1i, -8359i)), Struct_1(vec3<i32>(1i, 32280i, 32770i), 36136u, vec4<bool>(true, false, true, true), vec3<i32>(1i, 0i, -40029i)), Struct_1(vec3<i32>(0i, 0i, 2147483647i), 78176u, vec4<bool>(false, true, true, false), vec3<i32>(1530i, -20360i, 16322i)));

var<private> global2: array<vec3<f32>, 15>;

var<private> global3: array<i32, 21> = array<i32, 21>(1i, 43781i, -1i, -23958i, 2147483647i, 0i, -25016i, 2147483647i, -1i, -5066i, 2147483647i, i32(-2147483648), 1i, 47354i, 36052i, 0i, 2147483647i, -780i, 6463i, 7406i, 1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_3(arg_1.b);
    global0 = array<Struct_2, 19>();
    let var_1 = -1000f;
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(59685u, 26u)]);
    var var_3 = ~u_input.c.x;
    return var_0.a.c;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(i32(-1i) * -2147483647i, u_input.a, 2147483647i << (u_input.b % 32u)), ~(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, u_input.c.x)) << (~24598u % 32u)) & 1u, !func_3(-countOneBits(vec3<i32>(-30384i, u_input.d, -2147483647i)), global0[_wgslsmith_index_u32(~u_input.b, 19u)], -_wgslsmith_mod_i32(-44522i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(~(-17448i << (u_input.c.x % 32u)), global3[_wgslsmith_index_u32(u_input.c.x, 21u)], 0i | (global3[_wgslsmith_index_u32(1u, 21u)] & u_input.a)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(29693u, 21u)], -17532i), _wgslsmith_mod_vec3_i32(vec3<i32>(-15508i, global3[_wgslsmith_index_u32(u_input.c.x, 21u)], global3[_wgslsmith_index_u32(u_input.b, 21u)]), vec3<i32>(global3[_wgslsmith_index_u32(27780u, 21u)], -2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 21u)]))), u_input.d, global3[_wgslsmith_index_u32(~abs(u_input.c.x), 21u)])));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u | ((u_input.b >> (var_0.b % 32u)) << (54798u % 32u)), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, var_0.b), 0u)), 19u)], global1[_wgslsmith_index_u32(select(firstLeadingBit(~abs(1u)), _wgslsmith_add_u32(reverseBits(~3854u), u_input.c.x), !var_0.c.x), 26u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1014f, -125f, var_0.c.x)), _wgslsmith_f_op_f32(-679f + -1279f)))), -179f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1391f, 258f), vec2<f32>(1505f, -1329f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, -1093f) * vec2<f32>(-1637f, 906f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, -1089f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1620f, 286f) + vec2<f32>(715f, 1265f))))));
    var var_3 = firstLeadingBit(vec3<i32>(-12561i, i32(-1i) * -29912i, _wgslsmith_div_i32(28515i, 43507i)));
    let var_4 = _wgslsmith_f_op_f32(round(1155f));
    return var_0;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    var var_0 = abs(~vec2<u32>(_wgslsmith_div_u32(0u, 1u) & select(arg_0.b.b, 106379u, false), 0u));
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_2.x));
    var_0 = _wgslsmith_mod_vec2_u32(~countOneBits(_wgslsmith_add_vec2_u32(arg_1.d, ~vec2<u32>(90759u, var_0.x))), u_input.c);
    var var_2 = arg_0;
    return var_2.b;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = -651f;
    let var_1 = 1u;
    let var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(115f * -1231f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 1070f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - 972f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -270f), arg_0.x)));
    var var_4 = Struct_3(global1[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(~select(var_1, 17192u, true), abs(30098u)), !select(false, false, true)), 26u)]);
    return func_4(Struct_5(Struct_2(var_1, func_2(), -u_input.d >> (~60301u % 32u), vec2<u32>(1u, ~u_input.c.x)), Struct_1(~abs(vec3<i32>(-1i, u_input.d, 5943i)), 4294967295u, vec4<bool>(true, func_3(vec3<i32>(var_2, global3[_wgslsmith_index_u32(26963u, 21u)], -17490i), global0[_wgslsmith_index_u32(u_input.b, 19u)], var_4.a.d.x).x, var_2 < 1i, var_4.a.c.x), vec3<i32>(0i, var_2, global3[_wgslsmith_index_u32(var_1, 21u)]) ^ min(var_4.a.a, vec3<i32>(var_2, global3[_wgslsmith_index_u32(var_4.a.b, 21u)], -2147483647i)))), Struct_2(1u, func_2(), global3[_wgslsmith_index_u32(var_1, 21u)], _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(u_input.c.x, var_4.a.b)), u_input.c & vec2<u32>(u_input.c.x, var_1)) ^ u_input.c), var_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1347f, _wgslsmith_f_op_f32(min(1000f, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1290f, 1000f, -1536f, -1478f) + vec4<f32>(-171f, 688f, -316f, -505f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-995f, 330f, -862f, -812f)))))));
    var var_1 = u_input.c.x << (var_0.a.b % 32u);
    let var_2 = Struct_4(Struct_1(min(-var_0.a.a, firstLeadingBit(var_0.a.a >> (vec3<u32>(u_input.c.x, 34277u, var_0.a.b) % vec3<u32>(32u)))), 26205u, var_0.a.c, select(firstTrailingBit(func_1(vec4<f32>(299f, 214f, 327f, -100f)).d), -(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 1163i, global3[_wgslsmith_index_u32(51861u, 21u)]) << (vec3<u32>(var_0.a.b, 1u, 1u) % vec3<u32>(32u))), !vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x))));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1335f * 729f) - _wgslsmith_f_op_f32(floor(-259f))) + 342f), 774f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f - _wgslsmith_div_f32(-572f, -731f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(270f + -316f), _wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(249f - -1045f))))), 970f);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_f32(trunc(244f)));
    var var_5 = Struct_4(global1[_wgslsmith_index_u32(min(~(~u_input.b), _wgslsmith_mod_u32(1u, var_2.a.b)), 26u)]);
    var_5 = var_2;
    let var_6 = Struct_5(global0[_wgslsmith_index_u32(~abs(firstTrailingBit(max(50011u, u_input.c.x))), 19u)], Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.d.x, -1i, var_2.a.d.x), -var_0.a.a), func_2().a), var_5.a.b, !func_2().c, -var_2.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(21052u, u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(506f - -958f), _wgslsmith_f_op_f32(-var_4))))));
}


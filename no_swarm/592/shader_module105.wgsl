struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_4,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-16220i, i32(-2147483648), -14370i, 42512i), vec4<i32>(43572i, 40323i, -1i, 1i), vec4<i32>(3953i, i32(-2147483648), 0i, 0i), vec4<i32>(i32(-2147483648), -1i, -29923i, -22434i), vec4<i32>(-1i, i32(-2147483648), -1i, -8975i), vec4<i32>(-51966i, 14442i, 2147483647i, 1i), vec4<i32>(35052i, 0i, i32(-2147483648), 38642i), vec4<i32>(-25419i, -4001i, 88477i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 31839i, 9946i, 47791i), vec4<i32>(0i, 67220i, -52837i, 0i), vec4<i32>(-69052i, -1i, 2147483647i, -16921i), vec4<i32>(11296i, i32(-2147483648), -34107i, -30074i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 52341i), vec4<i32>(-15915i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-1i, -1i, 0i, -28060i), vec4<i32>(1i, 1i, 19579i, -1i), vec4<i32>(1i, 1i, 2147483647i, 10984i), vec4<i32>(1i, -1i, -12891i, -3156i), vec4<i32>(1i, i32(-2147483648), -14802i, -15030i), vec4<i32>(65590i, 19825i, i32(-2147483648), -8036i), vec4<i32>(142i, 21450i, i32(-2147483648), 0i), vec4<i32>(-34042i, i32(-2147483648), 23661i, 52913i), vec4<i32>(-14692i, 1i, 12595i, 40790i), vec4<i32>(i32(-2147483648), 41285i, 0i, 2147483647i), vec4<i32>(-44477i, -1071i, 11640i, 1i), vec4<i32>(-28295i, 51489i, -26535i, -1i), vec4<i32>(1692i, -15518i, 69946i, 0i), vec4<i32>(0i, i32(-2147483648), -15284i, -1i), vec4<i32>(10907i, -1i, -32612i, i32(-2147483648)), vec4<i32>(13834i, 9501i, -40210i, 10087i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 18756i));

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(0u, 10256u, 93038u, 26519u), vec4<u32>(0u, 53654u, 99981u, 4294967295u), vec4<u32>(50879u, 1832u, 0u, 0u), vec4<u32>(56219u, 1u, 40370u, 48676u), vec4<u32>(111124u, 1u, 4294967295u, 26150u), vec4<u32>(9578u, 4294967295u, 0u, 91600u), vec4<u32>(24447u, 1u, 1u, 46692u), vec4<u32>(108u, 35161u, 4294967295u, 14026u), vec4<u32>(4294967295u, 18328u, 15916u, 0u), vec4<u32>(0u, 16932u, 44316u, 45695u), vec4<u32>(1u, 39351u, 36043u, 50010u), vec4<u32>(45167u, 46325u, 67608u, 1u), vec4<u32>(1u, 10421u, 0u, 53408u), vec4<u32>(4294967295u, 0u, 1u, 56669u), vec4<u32>(1u, 17570u, 0u, 12786u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(83017u, 4294967295u, 4294967295u, 1u), vec4<u32>(69296u, 4294967295u, 30167u, 14537u), vec4<u32>(14832u, 0u, 1u, 15297u), vec4<u32>(0u, 24510u, 18154u, 43180u), vec4<u32>(37942u, 4294967295u, 1u, 15366u), vec4<u32>(25925u, 33033u, 9950u, 17896u), vec4<u32>(10239u, 51951u, 1155u, 4294967295u), vec4<u32>(146064u, 72556u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(38878u, 0u, 45962u, 39062u), vec4<u32>(0u, 4294967295u, 61802u, 1u), vec4<u32>(10131u, 25967u, 4294967295u, 4294967295u), vec4<u32>(3514u, 4294967295u, 67191u, 42885u), vec4<u32>(77549u, 4294967295u, 0u, 943u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> i32 {
    return u_input.e.x;
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<f32> {
    global2 = array<vec4<u32>, 30>();
    global2 = array<vec4<u32>, 30>();
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.e.x, 1i, -46295i), firstTrailingBit(vec3<i32>(u_input.c.x, 2147483647i, -1871i)) ^ vec3<i32>(u_input.e.x, u_input.e.x, u_input.c.x)) >> (u_input.b % vec3<u32>(32u)));
    var_0 = -vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, -10192i, u_input.c.x), global0[_wgslsmith_index_u32(arg_1, 31u)]), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))), -_wgslsmith_clamp_i32(var_0.x, 16928i, u_input.c.x), ~(-64174i) << (min(1u, 96580u) % 32u));
    let var_1 = Struct_5(-1677f, Struct_3(_wgslsmith_sub_i32(var_0.x, ~_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(13209u, 31u)], vec4<i32>(2147483647i, var_0.x, 15044i, -2147483647i)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-158f, -187f) * _wgslsmith_f_op_f32(-267f * 1963f))), 23544u > (u_input.b.x | ~arg_1), 15420u), u_input.b, Struct_1(abs(2147483647i), (~0u <= ~u_input.a) == !select(true, false, false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1154f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-942f, 1431f, 947f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(308f, 282f, -451f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1587f, 814f, -1553f)))))), u_input.b.yy));
    return var_1.e.d;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_1(~(_wgslsmith_dot_vec2_i32(u_input.c ^ vec2<i32>(2147483647i, 0i), select(vec2<i32>(u_input.c.x, 17177i), vec2<i32>(u_input.e.x, u_input.c.x), vec2<bool>(false, false))) << (0u % 32u)), u_input.c.x >= -43116i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-648f, 453f, -180f) * vec3<f32>(arg_0, -118f, 606f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.d, u_input.b.x))))), vec2<u32>(u_input.a, ~_wgslsmith_add_u32(19072u, u_input.d) & u_input.b.x));
    let var_1 = Struct_1(var_0.a, !(true != var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(sign(arg_0))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), var_0.d.x)), _wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-537f * var_0.c.x) + _wgslsmith_f_op_f32(301f - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1715f), _wgslsmith_f_op_f32(select(var_0.d.x, arg_0, true)))))), u_input.b.xy);
    var var_2 = var_1.d.x;
    global1 = min((~6315u ^ var_0.e.x) >> (_wgslsmith_dot_vec3_u32(~(~u_input.b), u_input.b | _wgslsmith_add_vec3_u32(vec3<u32>(var_1.e.x, 1u, 0u), u_input.b)) % 32u), var_0.e.x);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1206f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.x)) - _wgslsmith_f_op_f32(-arg_0))), 758f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.x)))))));
    return 423f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_i32(-27966i, u_input.c.x);
    var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(-632f)))));
    global2 = array<vec4<u32>, 30>();
    let var_2 = ~vec4<u32>(firstLeadingBit(~_wgslsmith_div_u32(u_input.d, u_input.a)), u_input.d, 107803u, u_input.d);
    var var_3 = Struct_5(var_1, Struct_3((_wgslsmith_sub_i32(1i, u_input.c.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 47061i, u_input.e.x), vec3<i32>(23673i, u_input.e.x, 1i))) & 26021i), Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 669f) + var_1))), select(true, true, true), countOneBits(firstLeadingBit(4294967295u)) | u_input.b.x), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(2726u, u_input.a, var_2.x)), min(vec3<u32>(u_input.b.x, 1u, var_2.x), vec3<u32>(0u, var_2.x, 13498u))), ~(~vec3<u32>(u_input.b.x, 1u, var_2.x))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, -43024i), u_input.c.x | -31880i), u_input.c.x), var_1 <= var_1, vec2<f32>(var_1, var_1), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 2185f, var_1)))), countOneBits(var_2.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-579f, var_3.c.a, 570f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, -1000f, var_1), vec4<f32>(-233f, 1000f, var_1, -1990f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_div_f32(-393f, var_1))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1043f, 1079f, var_1, var_3.c.a) * vec4<f32>(var_1, var_1, -1579f, var_1)))))), _wgslsmith_f_op_vec2_f32(step(var_3.e.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_3.e.c)))))), u_input.c.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_1) * _wgslsmith_f_op_f32(var_1 + var_1)), 1f, -1147f, var_3.c.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -1414f, 1300f, 541f), vec4<f32>(var_3.c.a, var_3.c.a, 209f, var_1)), vec4<f32>(var_3.c.a, -788f, 132f, -178f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 181f, var_3.c.a, 109f))))), 0u);
}


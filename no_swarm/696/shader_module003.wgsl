struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(36118u, 0u, 15479u, 11789u, 21359u, 80207u, 4294967295u, 34595u, 0u, 11067u, 4294967295u, 1u, 107122u, 0u, 11475u, 1u, 4294967295u, 13721u, 52215u, 1u, 0u, 63083u, 1u, 4294967295u);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<bool>(true, false), true, vec3<i32>(-41719i, i32(-2147483648), -29866i), vec4<f32>(-814f, 504f, -1172f, 304f), -1260f), Struct_3(vec2<bool>(false, false), true, vec3<i32>(-1i, 1015i, -36923i), vec4<f32>(537f, 1859f, -1389f, -1051f), 397f), Struct_3(vec2<bool>(false, false), true, vec3<i32>(33710i, 1295i, 1i), vec4<f32>(-346f, 414f, 748f, -2206f), -434f), Struct_3(vec2<bool>(true, true), true, vec3<i32>(-39137i, 48147i, -26558i), vec4<f32>(508f, 892f, -300f, -433f), -519f), Struct_3(vec2<bool>(false, false), true, vec3<i32>(26213i, 34621i, 2147483647i), vec4<f32>(937f, -850f, 854f, -464f), -814f), Struct_3(vec2<bool>(false, false), true, vec3<i32>(-19532i, 2147483647i, -1i), vec4<f32>(210f, 430f, -495f, -347f), 1443f), Struct_3(vec2<bool>(true, true), false, vec3<i32>(-8360i, -65974i, -58347i), vec4<f32>(-1135f, 1000f, -226f, -837f), 860f), Struct_3(vec2<bool>(true, false), true, vec3<i32>(-1i, 13879i, i32(-2147483648)), vec4<f32>(-1490f, -1120f, 330f, -703f), -284f), Struct_3(vec2<bool>(true, false), false, vec3<i32>(0i, 23644i, 1507i), vec4<f32>(-1000f, 1086f, 102f, -1008f), 908f), Struct_3(vec2<bool>(false, true), false, vec3<i32>(22086i, 23889i, 33253i), vec4<f32>(-985f, -2667f, 560f, 1736f), -413f), Struct_3(vec2<bool>(true, false), false, vec3<i32>(63025i, i32(-2147483648), 1i), vec4<f32>(178f, 200f, 254f, -1576f), -950f), Struct_3(vec2<bool>(true, true), false, vec3<i32>(-21453i, 50388i, -42636i), vec4<f32>(-1599f, -101f, -806f, 2359f), -504f), Struct_3(vec2<bool>(true, true), false, vec3<i32>(i32(-2147483648), -51770i, 0i), vec4<f32>(680f, -732f, 1224f, -1177f), 360f), Struct_3(vec2<bool>(false, true), false, vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec4<f32>(-740f, 587f, 2001f, -413f), 1052f), Struct_3(vec2<bool>(true, false), true, vec3<i32>(1i, 22477i, 0i), vec4<f32>(264f, 1000f, 872f, -512f), 585f), Struct_3(vec2<bool>(true, false), false, vec3<i32>(2653i, 1i, 49397i), vec4<f32>(995f, -101f, -125f, -623f), 271f), Struct_3(vec2<bool>(false, true), false, vec3<i32>(-1i, 1i, 2147483647i), vec4<f32>(-1357f, 1162f, -359f, 1000f), -1000f), Struct_3(vec2<bool>(true, true), true, vec3<i32>(2147483647i, 0i, 38560i), vec4<f32>(-1008f, 596f, -1162f, 2130f), -361f), Struct_3(vec2<bool>(false, false), false, vec3<i32>(11555i, 63745i, -352i), vec4<f32>(-1057f, -2298f, 1411f, -685f), 859f));

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 7>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    let var_0 = arg_1.wy;
    global2 = -(firstTrailingBit(-arg_2.c.zy) | arg_2.c.zy);
    let var_1 = ~(~arg_2.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1572f + global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 24u)], 7u)])))), 1088f, -307f));
    let var_3 = _wgslsmith_mult_i32(-1i, abs(var_1.x));
    return 1f;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 19u)];
    var var_1 = ~select(_wgslsmith_clamp_u32(arg_2.a, u_input.b.x, 0u & arg_0.a), reverseBits(reverseBits(1u)), true) > _wgslsmith_mod_u32(_wgslsmith_div_u32(~countOneBits(126728u), 4294967295u), global0[_wgslsmith_index_u32(~u_input.b.x, 24u)]);
    var var_2 = arg_2;
    var var_3 = firstTrailingBit(vec4<i32>(90842i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(13871i, -36145i, var_0.c.x), ~var_0.c.x), select(var_0.c.x, u_input.a, select(arg_0.b.x, arg_0.b.x, arg_0.b.x)), 5814i)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(33701i, u_input.c, -3108i)), vec3<i32>(firstLeadingBit(var_0.c.x), _wgslsmith_dot_vec2_i32(var_0.c.yx, var_0.c.zx), -global2.x)), u_input.c, global2.x, -43517i);
    var_3 = vec4<i32>(abs(abs(~20278i)), (i32(-1i) * -1i) << (~(4294967295u << (var_2.a % 32u)) % 32u), u_input.a, var_3.x);
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = -vec3<i32>(0i, -(~(-1i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(u_input.a, -1i, 12870i, u_input.c))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global2.x, -18063i, global2.x), vec4<i32>(-10459i, 18368i, global2.x, global2.x), vec4<i32>(u_input.a, 2147483647i, global2.x, -26944i)) | -vec4<i32>(17490i, 2147483647i, u_input.c, -2147483647i)));
    let var_1 = -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_sub_i32(select(2147483647i, var_0.x, arg_0.x), u_input.a ^ -55739i)), _wgslsmith_div_vec2_i32(vec2<i32>(-35071i, -var_0.x), vec2<i32>(~var_0.x, firstLeadingBit(global2.x))));
    var var_2 = 2147483647i;
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x ^ ~(~(-2147483647i)), max(_wgslsmith_dot_vec2_i32(~var_1, vec2<i32>(var_1.x, var_1.x)), abs(global2.x))), var_0.zz, abs(select(vec2<i32>(var_1.x, var_1.x) >> (u_input.b % vec2<u32>(32u)), vec2<i32>(u_input.a, 2147483647i), select(arg_0.xz, arg_0.yx, arg_0.x)) ^ _wgslsmith_div_vec2_i32(-var_0.xx, select(var_0.xx, vec2<i32>(global2.x, -11137i), arg_0.xy))));
    global3 = array<f32, 7>();
    return reverseBits(~abs(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30535u, 24u)], 24u)])));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(-533f, _wgslsmith_f_op_f32(step(961f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43688u, 24u)], 7u)] * -647f), -959f)) + _wgslsmith_f_op_f32(-161f + 458f))))));
    var var_1 = vec3<bool>(all(vec4<bool>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24648u, 24u)], 24u)], 7u)])) == 401f, true, any(vec2<bool>(true, true)), global3[_wgslsmith_index_u32(u_input.b.x, 7u)] > -1099f)), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29091u, 24u)], 7u)], -1013f, true)) + 721f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(960f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 7u)])))), false, true), !all(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))));
    let var_2 = Struct_2(_wgslsmith_div_u32(select(_wgslsmith_div_u32(select(47615u, 67217u, true), u_input.b.x), 24905u, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(6570u, 7u)]) <= _wgslsmith_f_op_f32(func_2(454f, vec4<u32>(4294967295u, 8955u, global0[_wgslsmith_index_u32(62250u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 19u)], vec2<f32>(715f, global3[_wgslsmith_index_u32(79028u, 7u)])))), 1u), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59646u, 24u)], 7u)] * -474f)))), ~(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40537u, 24u)], 24u)]), vec4<u32>(92454u, 0u, 68424u, u_input.b.x), vec4<bool>(var_1.x, true, true, var_1.x)), ~vec4<u32>(global0[_wgslsmith_index_u32(16322u, 24u)], 0u, 1u, global0[_wgslsmith_index_u32(6004u, 24u)]))));
    let var_3 = vec4<i32>(select(firstTrailingBit(~2887i ^ u_input.a), -u_input.a, all(select(vec3<bool>(true, var_1.x, true), var_2.b, var_2.b))), global2.x, 1i & u_input.a, firstLeadingBit(u_input.a));
    var var_4 = Struct_1(func_4(!(!vec4<bool>(false, var_1.x, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_2, _wgslsmith_f_op_vec2_f32(max(var_2.c, vec2<f32>(var_2.c.x, global3[_wgslsmith_index_u32(var_2.a, 7u)]))), Struct_1(5759u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-993f, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(7576u, 0u), 7u)], _wgslsmith_f_op_f32(step(var_2.c.x, global3[_wgslsmith_index_u32(var_2.a, 7u)])), -848f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(select(0u, 1u, all(!vec2<bool>(true, func_1()))), 7u)];
    var var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), _wgslsmith_clamp_u32(1u, 0u, 1u) >= 94348u), false), vec2<bool>(max(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 42934u), ~27912u) >= u_input.b.x, true), any(select(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, u_input.c < 2147483647i, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    var var_2 = !vec2<bool>(all(!(!vec3<bool>(var_1.x, false, var_1.x))), var_1.x);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(32260u, ~0u), vec2<u32>(u_input.b.x, select(19672u, global0[_wgslsmith_index_u32(69848u, 24u)], var_1.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u))), _wgslsmith_mult_vec2_u32(countOneBits(u_input.b), firstTrailingBit(vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)])))), !(!(!vec2<bool>(true, var_2.x)))), u_input.b), 7u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-165f, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 1849f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(60355u, 7u)], 929f, 1320f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(497f, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -467f) + vec3<f32>(global3[_wgslsmith_index_u32(74535u, 7u)], 259f, global3[_wgslsmith_index_u32(43840u, 7u)]))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1401f, _wgslsmith_f_op_f32(-254f + global3[_wgslsmith_index_u32(53545u, 7u)]), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(22537u, 7u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 641f, global3[_wgslsmith_index_u32(0u, 7u)]), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)], -2205f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 24u)], 1u), 7u)], _wgslsmith_f_op_f32(min(-256f, global3[_wgslsmith_index_u32(4294967295u, 7u)])), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.b.x, 1u), 7u)]) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 109f)) - vec3<f32>(-776f, 693f, global3[_wgslsmith_index_u32(12051u, 7u)])))), true != var_1.x));
    let var_5 = Struct_1(_wgslsmith_clamp_u32(u_input.b.x, 60793u, 1u));
    let var_6 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(func_4(vec4<bool>(var_2.x, var_1.x, false, false), vec2<f32>(global3[_wgslsmith_index_u32(0u, 7u)], 732f), vec4<f32>(-1553f, 144f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58877u, 24u)], 7u)], -119f))) << (countOneBits(abs(35629u)) % 32u), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_5.a, global0[_wgslsmith_index_u32(0u, 24u)], var_5.a)), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_5.a, 24u)], 24u)], 392u, global0[_wgslsmith_index_u32(1u, 24u)]))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(27401u, global0[_wgslsmith_index_u32(1u, 24u)], 4294967295u), vec3<u32>(u_input.b.x, 5148u, u_input.b.x), vec3<u32>(20850u, u_input.b.x, 0u)))), 4294967295u), ~_wgslsmith_sub_vec4_u32(min(min(vec4<u32>(1u, 4294967295u, 10414u, global0[_wgslsmith_index_u32(var_5.a, 24u)]), vec4<u32>(49330u, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(47520u, 24u)])), firstLeadingBit(vec4<u32>(35129u, 8791u, 1u, 61030u))), ~firstTrailingBit(vec4<u32>(u_input.b.x, 1u, 14858u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50146u, 24u)], 24u)]))));
    global1 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(_wgslsmith_dot_vec4_u32(var_6, var_6), !vec3<bool>(var_1.x, var_1.x, true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-230f, var_4.x), var_4.xx)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_5.a, var_5.a, u_input.b.x, global0[_wgslsmith_index_u32(var_5.a, 24u)]), vec4<u32>(var_5.a, 4294967295u, global0[_wgslsmith_index_u32(0u, 24u)], 0u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1213f, 444f)), var_4.xx)), Struct_1(_wgslsmith_mult_u32(0u, var_6.x))))), global2.x);
}


struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<i32>(1i, -1i, 34015i, -31577i), 7646u, 59930u, vec4<u32>(64213u, 1u, 4294967295u, 1u), true), Struct_2(vec4<i32>(i32(-2147483648), 13536i, -1i, -29930i), 0u, 1u, vec4<u32>(29179u, 1u, 1u, 1u), false), Struct_2(vec4<i32>(28407i, 2147483647i, -44280i, 10729i), 33484u, 1u, vec4<u32>(37433u, 66078u, 1u, 3382u), false), Struct_2(vec4<i32>(-31157i, 0i, i32(-2147483648), 6202i), 0u, 28541u, vec4<u32>(4294967295u, 4294967295u, 45423u, 23139u), true), Struct_2(vec4<i32>(1i, i32(-2147483648), 2147483647i, 48313i), 4294967295u, 0u, vec4<u32>(4294967295u, 1u, 0u, 1u), false), Struct_2(vec4<i32>(i32(-2147483648), -44285i, -1i, 2147483647i), 1u, 1u, vec4<u32>(4294967295u, 4294967295u, 60181u, 1u), false), Struct_2(vec4<i32>(36258i, -89587i, 2147483647i, 86020i), 0u, 1u, vec4<u32>(52868u, 33283u, 0u, 44662u), true), Struct_2(vec4<i32>(-49734i, -1i, 0i, -26775i), 76858u, 1u, vec4<u32>(0u, 0u, 0u, 4294967295u), false), Struct_2(vec4<i32>(42533i, 10131i, -23112i, 0i), 2305u, 4294967295u, vec4<u32>(4294967295u, 73497u, 36109u, 9583u), false), Struct_2(vec4<i32>(-45590i, 27775i, -1i, 2147483647i), 0u, 0u, vec4<u32>(3070u, 4294967295u, 35622u, 1u), false), Struct_2(vec4<i32>(-1i, i32(-2147483648), 68234i, -89465i), 35916u, 1u, vec4<u32>(27486u, 78550u, 42252u, 52737u), false), Struct_2(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 36431i), 3135u, 4277u, vec4<u32>(0u, 1u, 1u, 0u), true), Struct_2(vec4<i32>(1i, i32(-2147483648), 7420i, -1i), 1u, 0u, vec4<u32>(48043u, 4294967295u, 39712u, 1u), false), Struct_2(vec4<i32>(-1i, 24776i, 2147483647i, -1i), 4294967295u, 4294967295u, vec4<u32>(29263u, 32111u, 23538u, 4294967295u), false), Struct_2(vec4<i32>(-29446i, 9368i, 2216i, -16864i), 20816u, 1u, vec4<u32>(0u, 28639u, 1u, 4294967295u), false), Struct_2(vec4<i32>(-42392i, -1i, -18488i, 0i), 2848u, 1u, vec4<u32>(33174u, 46409u, 1u, 0u), true), Struct_2(vec4<i32>(1i, -2825i, -3650i, 2147483647i), 0u, 1u, vec4<u32>(1u, 1u, 4294967295u, 95055u), true), Struct_2(vec4<i32>(47973i, i32(-2147483648), -22159i, 0i), 4294967295u, 0u, vec4<u32>(101600u, 1u, 121619u, 76927u), false), Struct_2(vec4<i32>(i32(-2147483648), 1i, -6137i, 7427i), 4294967295u, 4294967295u, vec4<u32>(23958u, 26718u, 3855u, 0u), true), Struct_2(vec4<i32>(3775i, 20082i, i32(-2147483648), i32(-2147483648)), 41996u, 1u, vec4<u32>(6577u, 3229u, 1u, 1u), false), Struct_2(vec4<i32>(54871i, 0i, -6815i, 1i), 1u, 35435u, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), false), Struct_2(vec4<i32>(-11749i, 34623i, -77353i, 1i), 27838u, 34135u, vec4<u32>(1u, 1u, 29332u, 4294967295u), true), Struct_2(vec4<i32>(23702i, 0i, 46323i, -12076i), 20218u, 4294967295u, vec4<u32>(105229u, 44047u, 68149u, 38041u), true), Struct_2(vec4<i32>(48880i, 2147483647i, 10343i, 0i), 0u, 1u, vec4<u32>(0u, 4294967295u, 63163u, 4294967295u), true), Struct_2(vec4<i32>(0i, 0i, 1i, 4058i), 37162u, 61609u, vec4<u32>(2611u, 1u, 4294967295u, 0u), true), Struct_2(vec4<i32>(-1i, 1i, 1i, -17967i), 1u, 44381u, vec4<u32>(49302u, 36369u, 10547u, 4294967295u), false), Struct_2(vec4<i32>(-10675i, -41330i, -1i, 10594i), 29146u, 36257u, vec4<u32>(30004u, 14156u, 72990u, 1u), true));

var<private> global2: array<u32, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = ~_wgslsmith_sub_u32(~abs(0u), 58605u) << ((~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64401u, 10u)], 10u)] ^ 12791u, 10u)]) | (29805u & abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 10u)], 10u)]))) % 32u);
    global1 = array<Struct_2, 27>();
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(var_0, 10u)], vec4<f32>(1372f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-817f - _wgslsmith_f_op_f32(ceil(-831f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1696f, -955f)) * _wgslsmith_f_op_f32(step(-740f, -1165f))) - -361f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-741f * 2142f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 233f), -1841f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-828f, -343f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-754f, 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(903f, 1074f), vec2<f32>(1252f, 477f))))), ~(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], 47862u), vec2<u32>(0u, 4294967295u)), ~vec2<u32>(30445u, 3428u)) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(countOneBits(var_1.d.x), ~var_0) & ~firstTrailingBit(global2[_wgslsmith_index_u32(0u, 10u)])), 73163u), 27u)];
    global2 = array<u32, 10>();
    return select(true, true, true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> bool {
    let var_0 = arg_1.b.x;
    let var_1 = firstLeadingBit(vec2<i32>(~abs(1i) & ~_wgslsmith_dot_vec2_i32(arg_0.a.zx, arg_0.a.xx), _wgslsmith_add_i32(u_input.a, -(u_input.a >> (26113u % 32u)))));
    let var_2 = Struct_3(~(~arg_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 1859f, 195f, var_0))), _wgslsmith_f_op_vec4_f32(-arg_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(-var_0), -1603f, _wgslsmith_f_op_f32(-704f * arg_1.b.x)), vec4<bool>(false, true, true, func_3(vec2<i32>(7700i, -9687i))))), arg_1.b.yz, min(arg_1.d, arg_0.d.wx));
    let var_3 = Struct_3(var_2.d.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))), 997f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), arg_1.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-346f, -485f) * -618f), _wgslsmith_f_op_f32(-373f * _wgslsmith_f_op_f32(628f + var_2.b.x)))), var_2.d | reverseBits(vec2<u32>(~global2[_wgslsmith_index_u32(arg_1.a, 10u)], _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, global2[_wgslsmith_index_u32(0u, 10u)]), vec2<u32>(0u, 1u)))));
    return arg_2.x;
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_2, 27>();
    global2 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_f32(round(-140f));
    let var_1 = select(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), vec3<bool>(true, false, true)), all(vec3<bool>(func_2(Struct_2(vec4<i32>(u_input.a, -1i, -43084i, -4749i), 2351u, 60953u, vec4<u32>(global2[_wgslsmith_index_u32(8197u, 10u)], 0u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50243u, 10u)], 10u)]), false), Struct_3(global2[_wgslsmith_index_u32(60361u, 10u)], vec4<f32>(583f, 463f, -251f, 743f), vec2<f32>(-1527f, -1259f), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68112u, 10u)], 10u)], 10u)], 10u)], global2[_wgslsmith_index_u32(1u, 10u)])), vec3<bool>(true, true, false)), true, true)) && !(!all(vec3<bool>(true, true, true))));
    global1 = array<Struct_2, 27>();
    return vec3<i32>(select(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(-11603i, u_input.a, u_input.a), vec3<i32>(u_input.a, 17518i, 2147483647i))), u_input.a, any(vec3<bool>(!var_1.x, true, var_1.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(5717i, _wgslsmith_add_i32(u_input.a, -2147483647i)), -1i, -1i, -1i), abs(vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), u_input.a, abs(-18957i), _wgslsmith_div_i32(1i, u_input.a)))), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2452i, -51639i, 1i, 2147483647i) ^ vec4<i32>(u_input.a, u_input.a, -18037i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, -11794i, 0i)), false), -vec4<i32>(u_input.a, 0i, u_input.a, -24409i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(434f, _wgslsmith_f_op_f32(-1514f - -1123f), _wgslsmith_f_op_f32(f32(-1f) * -296f)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-423f, 1f), -388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1394f))))));
    global2 = array<u32, 10>();
    let var_1 = ~max(-func_1(), vec3<i32>(_wgslsmith_sub_i32(u_input.a, 0i), ~u_input.a, _wgslsmith_mult_i32(u_input.a, 0i))) | max(-_wgslsmith_mult_vec3_i32(-vec3<i32>(22422i, 1i, u_input.a), abs(vec3<i32>(-14915i, -2147483647i, -2147483647i))), -vec3<i32>(reverseBits(u_input.a), _wgslsmith_mod_i32(1i, u_input.a), countOneBits(u_input.a)));
    let var_2 = global1[_wgslsmith_index_u32(abs(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14533u, 10u)], 10u)], 10u)]), 10u)], 10u)])), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(-var_2.a.www) & _wgslsmith_mult_vec3_i32(vec3<i32>(-20401i, u_input.a, -2147483647i), var_2.a.wyz)), var_2.d, ~countOneBits(~var_2.b), var_0, vec4<i32>(1i, -20517i, 22334i, _wgslsmith_add_i32(var_1.x, countOneBits(i32(-1i) * -12273i))));
}


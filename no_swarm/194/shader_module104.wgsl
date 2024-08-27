struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1499f, -1000f, -676f, 501f, -723f, -1228f, 1000f, 578f, 394f, -989f, -1326f, 622f, -1035f, 168f, 1000f, 1559f, -366f, 576f);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(true, vec3<i32>(1i, 17772i, 2147483647i), -367f, vec2<i32>(0i, -34820i), vec3<f32>(509f, 2741f, 1000f))), Struct_2(Struct_1(false, vec3<i32>(1i, 0i, -25942i), -1321f, vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(378f, 1088f, -1674f))), Struct_2(Struct_1(false, vec3<i32>(-68082i, 0i, -37159i), -1042f, vec2<i32>(880i, i32(-2147483648)), vec3<f32>(-824f, -574f, -876f))), Struct_2(Struct_1(false, vec3<i32>(-73720i, 27862i, 27590i), 439f, vec2<i32>(18654i, 9002i), vec3<f32>(-1000f, 2155f, 1128f))), Struct_2(Struct_1(true, vec3<i32>(1i, -1i, 2147483647i), -804f, vec2<i32>(2350i, -21584i), vec3<f32>(2040f, -324f, -967f))), Struct_2(Struct_1(false, vec3<i32>(16987i, i32(-2147483648), 60657i), -1582f, vec2<i32>(-16531i, 2147483647i), vec3<f32>(292f, 1064f, -2101f))), Struct_2(Struct_1(false, vec3<i32>(-24551i, 1i, 51743i), -498f, vec2<i32>(17234i, 67998i), vec3<f32>(-1000f, -2732f, -786f))), Struct_2(Struct_1(true, vec3<i32>(-27978i, 0i, 2147483647i), -793f, vec2<i32>(10379i, 21109i), vec3<f32>(-1821f, -109f, -241f))), Struct_2(Struct_1(true, vec3<i32>(-45738i, i32(-2147483648), -3620i), -1846f, vec2<i32>(919i, -16559i), vec3<f32>(-1119f, 701f, -314f))), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 161f, vec2<i32>(63485i, 2147483647i), vec3<f32>(-1000f, 451f, 820f))), Struct_2(Struct_1(true, vec3<i32>(-17946i, 1i, i32(-2147483648)), -635f, vec2<i32>(-2675i, -32946i), vec3<f32>(1081f, -908f, -313f))), Struct_2(Struct_1(false, vec3<i32>(0i, -1i, 3202i), 388f, vec2<i32>(i32(-2147483648), 1i), vec3<f32>(-293f, -1760f, -1553f))), Struct_2(Struct_1(true, vec3<i32>(0i, 1i, -38884i), -592f, vec2<i32>(i32(-2147483648), 58317i), vec3<f32>(-452f, -2607f, -1632f))), Struct_2(Struct_1(false, vec3<i32>(i32(-2147483648), 1i, -1i), 1000f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(-1409f, 1060f, -1000f))), Struct_2(Struct_1(false, vec3<i32>(-26606i, -11900i, 39006i), 1519f, vec2<i32>(1i, 1i), vec3<f32>(869f, 856f, -525f))), Struct_2(Struct_1(true, vec3<i32>(3922i, i32(-2147483648), 1i), -940f, vec2<i32>(0i, -34105i), vec3<f32>(1718f, -294f, -182f))), Struct_2(Struct_1(true, vec3<i32>(24611i, 0i, -1496i), -113f, vec2<i32>(45461i, 47212i), vec3<f32>(-2039f, 863f, -137f))), Struct_2(Struct_1(true, vec3<i32>(-1i, 11235i, 12478i), 281f, vec2<i32>(1i, -1i), vec3<f32>(1366f, -1808f, -1404f))), Struct_2(Struct_1(false, vec3<i32>(0i, -1i, 2147483647i), 381f, vec2<i32>(2147483647i, 0i), vec3<f32>(-767f, -356f, -507f))), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), 8781i, -2055i), 872f, vec2<i32>(2147483647i, -1i), vec3<f32>(1554f, 2308f, 750f))), Struct_2(Struct_1(true, vec3<i32>(i32(-2147483648), 1i, 2147483647i), -1000f, vec2<i32>(38119i, -1i), vec3<f32>(-187f, -1489f, -414f))), Struct_2(Struct_1(false, vec3<i32>(i32(-2147483648), 16747i, 5218i), 1000f, vec2<i32>(-1i, 1i), vec3<f32>(-943f, -1000f, 1000f))), Struct_2(Struct_1(false, vec3<i32>(-61865i, -40393i, i32(-2147483648)), -713f, vec2<i32>(i32(-2147483648), 66813i), vec3<f32>(1513f, 1000f, 1462f))), Struct_2(Struct_1(true, vec3<i32>(-3292i, 62848i, i32(-2147483648)), -531f, vec2<i32>(0i, 1i), vec3<f32>(1711f, -251f, 1901f))), Struct_2(Struct_1(false, vec3<i32>(959i, -24768i, -76852i), -523f, vec2<i32>(-1i, -22184i), vec3<f32>(-183f, 2776f, 2957f))), Struct_2(Struct_1(false, vec3<i32>(-5104i, 0i, 0i), -468f, vec2<i32>(0i, -4449i), vec3<f32>(457f, 338f, -533f))), Struct_2(Struct_1(true, vec3<i32>(0i, 1i, 2147483647i), -413f, vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(493f, 178f, -609f))), Struct_2(Struct_1(true, vec3<i32>(15112i, -34764i, 1i), 945f, vec2<i32>(-15869i, 1i), vec3<f32>(-1071f, -313f, -277f))), Struct_2(Struct_1(false, vec3<i32>(-39712i, -1i, -1i), 596f, vec2<i32>(1i, -13062i), vec3<f32>(206f, -273f, -1232f))), Struct_2(Struct_1(true, vec3<i32>(2147483647i, -26737i, 25201i), -1356f, vec2<i32>(-1i, 0i), vec3<f32>(-1000f, -2219f, -165f))), Struct_2(Struct_1(true, vec3<i32>(0i, -2186i, 1i), 317f, vec2<i32>(0i, 0i), vec3<f32>(2045f, 509f, 1000f))));

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(3312u, 61089u, 967u), vec3<u32>(45188u, 19769u, 1u), vec3<u32>(1u, 0u, 88112u), vec3<u32>(17416u, 37976u, 27183u), vec3<u32>(4526u, 66231u, 6989u), vec3<u32>(9562u, 4294967295u, 46024u), vec3<u32>(4294967295u, 11186u, 73862u), vec3<u32>(1u, 31972u, 20423u), vec3<u32>(1u, 74538u, 122132u), vec3<u32>(7582u, 4294967295u, 1u), vec3<u32>(0u, 1u, 10912u), vec3<u32>(1u, 0u, 32007u), vec3<u32>(85263u, 0u, 5803u), vec3<u32>(4294967295u, 4294967295u, 1590u), vec3<u32>(22612u, 4294967295u, 0u), vec3<u32>(7209u, 4294967295u, 0u), vec3<u32>(15838u, 4294967295u, 75526u), vec3<u32>(40298u, 0u, 1u), vec3<u32>(4294967295u, 22001u, 0u), vec3<u32>(156197u, 20930u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 5680u, 109187u), vec3<u32>(4294967295u, 33196u, 41902u), vec3<u32>(81283u, 4294967295u, 1u), vec3<u32>(224u, 49741u, 45226u), vec3<u32>(0u, 52307u, 1u), vec3<u32>(21861u, 4294967295u, 39890u), vec3<u32>(1u, 75326u, 4294967295u), vec3<u32>(0u, 1u, 1u));

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global3 = arg_0;
    let var_0 = Struct_1(any(select(select(!vec4<bool>(arg_0.c.a.a, true, arg_0.d.a, global3.d.a), !vec4<bool>(true, true, true, arg_0.d.a), any(vec4<bool>(arg_0.c.a.a, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.d.a, global3.c.a.a, arg_0.d.a, arg_0.d.a), vec4<bool>(false, true, arg_0.c.a.a, false), global3.c.a.a), any(vec2<bool>(arg_0.d.a, false))), arg_0.c.a.a)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global3.d.b.x, min(2147483647i, 1i), _wgslsmith_mod_i32(-2147483647i, -499i)), abs(vec3<i32>(-2147483647i, 9757i, global3.c.a.b.x))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(17615i, global3.c.a.b.x, arg_0.d.d.x), vec3<i32>(5804i, u_input.a, -1i)), vec3<i32>(~19189i, u_input.d, 0i))), -1000f, -(vec2<i32>(1i, abs(arg_0.d.b.x)) & -countOneBits(vec2<i32>(u_input.d, 2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1933f, global3.c.a.e.x, global0[_wgslsmith_index_u32(global3.b, 18u)]) - vec3<f32>(1312f, arg_0.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.e.x) * _wgslsmith_f_op_f32(ceil(-720f))))));
    let var_1 = arg_0.c;
    var var_2 = -2147483647i;
    var var_3 = ~(~global3.a.zyx) >> (~_wgslsmith_add_vec3_u32(arg_0.a.wzx, ~(~vec3<u32>(42132u, global3.b, arg_0.e.x))) % vec3<u32>(32u));
    return 0u << (_wgslsmith_dot_vec2_u32(arg_0.a.xx, countOneBits(vec2<u32>(var_3.x, _wgslsmith_sub_u32(0u, var_3.x)))) % 32u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = countOneBits(4167u);
    let var_1 = !vec3<bool>(~u_input.c > (~u_input.c << (u_input.b % 32u)), global3.d.a, u_input.b >= ~max(4294967295u, 1u));
    let var_2 = global3.d;
    let var_3 = vec2<i32>(_wgslsmith_sub_i32(global3.c.a.d.x, u_input.d), var_2.d.x);
    var var_4 = vec3<bool>(arg_0.x, true, var_1.x);
    return Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 515u, global3.b, 183u), vec4<u32>(func_3(Struct_3(global3.a, global3.e.x, global1[_wgslsmith_index_u32(global3.b, 31u)], global3.d, global3.a.zw)), 0u, 128761u, 37555u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 38663u, 140760u, 15906u), vec4<u32>(u_input.b, 29981u, u_input.b, u_input.c)), abs(u_input.b), ~4294967295u), ~((vec3<u32>(32601u, 4294967295u, u_input.b) ^ vec3<u32>(u_input.c, 0u, global3.b)) >> (~vec3<u32>(2572u, 94888u, global3.a.x) % vec3<u32>(32u)))), global3.c, global3.d, ~global3.a.zw);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-689f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-249f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1305f - global0[_wgslsmith_index_u32(arg_2.b, 18u)]))))), arg_0.c.a.e.x);
    global2 = array<vec3<u32>, 29>();
    var var_1 = select(arg_2.a.zx, global3.a.ww, any(!(!select(vec2<bool>(global3.d.a, true), vec2<bool>(global3.d.a, true), true))));
    global3 = func_2(!(!select(vec2<bool>(false, global3.c.a.a), !vec2<bool>(global3.d.a, arg_0.d.a), select(vec2<bool>(true, false), vec2<bool>(arg_2.d.a, false), global3.c.a.a))));
    global2 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_f32(round(-475f));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = true;
    let var_1 = global3.d.e;
    var var_2 = vec2<bool>(var_0, true);
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c)) - _wgslsmith_f_op_f32(func_4(func_2(!select(vec2<bool>(false, false), vec2<bool>(var_2.x, global3.d.a), vec2<bool>(false, global3.d.a))), 59884i, Struct_3(global3.a, ~u_input.c, Struct_2(Struct_1(arg_0.a, global3.d.b, arg_0.e.x, arg_0.d, global3.d.e)), Struct_1(true, vec3<i32>(global3.c.a.d.x, -2147483647i, u_input.a), _wgslsmith_div_f32(arg_0.c, global3.d.e.x), -global3.d.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2352f, -1800f, 1466f))), global3.e), u_input.e)));
    return _wgslsmith_add_u32(1u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 18>();
    var var_0 = global3.a.zxz ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b, ~func_1(global3.c.a, -445f), countOneBits(u_input.b)), min(~abs(vec3<u32>(10351u, u_input.c, global3.a.x)), firstTrailingBit(vec3<u32>(global3.e.x, u_input.c, 47097u) << (global3.a.wxx % vec3<u32>(32u)))), vec3<u32>(~_wgslsmith_clamp_u32(41352u, 4294967295u, global3.a.x), _wgslsmith_clamp_u32(43300u, firstTrailingBit(110625u), 10496u), abs(51362u)));
    global2 = array<vec3<u32>, 29>();
    let var_1 = global3.c.a.b.yy;
    var var_2 = func_2(select(vec2<bool>(true, (0u >= u_input.c) && !global3.d.a), !select(select(vec2<bool>(global3.c.a.a, true), vec2<bool>(global3.c.a.a, false), global3.c.a.a), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global3.d.a, false))), vec2<bool>(global3.c.a.a, global3.c.a.c < _wgslsmith_f_op_f32(trunc(-391f))))).c;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.c, global3.c.a.c, -422f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 18u)], global3.d.e.x), 461f))) * vec3<f32>(global3.d.c, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(var_2.a.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, abs(~(global3.a.wxw << (vec3<u32>(34509u, u_input.b, 74087u) % vec3<u32>(32u)))), firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d, var_2.a.d.x, 21485i), vec3<i32>(-67660i, u_input.a, var_1.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.d.c - -1156f), _wgslsmith_f_op_f32(-271f + var_2.a.e.x), _wgslsmith_f_op_f32(f32(-1f) * -608f), var_2.a.e.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.c, var_2.a.e.x, var_3.x, -504f), vec4<f32>(global3.c.a.c, -619f, var_3.x, var_2.a.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(949f, global0[_wgslsmith_index_u32(1u, 18u)], 316f, global0[_wgslsmith_index_u32(0u, 18u)]))), select(select(vec4<bool>(false, global3.d.a, var_2.a.a, true), vec4<bool>(true, false, true, false), vec4<bool>(global3.d.a, var_2.a.a, var_2.a.a, true)), select(vec4<bool>(var_2.a.a, global3.d.a, global3.c.a.a, false), vec4<bool>(var_2.a.a, var_2.a.a, false, var_2.a.a), var_2.a.a), var_0.x >= u_input.c))))));
}


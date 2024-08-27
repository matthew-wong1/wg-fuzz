struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1000f, -816f, -913f, 1791f), vec4<f32>(-126f, 147f, -1000f, -473f), vec4<f32>(-1000f, -662f, -710f, 1628f), vec4<f32>(1392f, -137f, 128f, 602f), vec4<f32>(454f, -1463f, -705f, -1313f), vec4<f32>(224f, -363f, -601f, 446f), vec4<f32>(-739f, -2341f, 1042f, -1636f), vec4<f32>(-1865f, 1645f, -1170f, -264f), vec4<f32>(2207f, -1526f, -571f, -1000f), vec4<f32>(499f, 1548f, 335f, 312f), vec4<f32>(-456f, -125f, 497f, -466f), vec4<f32>(1820f, 845f, 384f, 111f), vec4<f32>(-2272f, -273f, 1330f, -165f), vec4<f32>(-1670f, -975f, -587f, -1119f), vec4<f32>(1000f, 888f, -793f, 1000f), vec4<f32>(1235f, 820f, -356f, -136f), vec4<f32>(1145f, -444f, 572f, 1000f), vec4<f32>(353f, -391f, 260f, 1803f), vec4<f32>(269f, -933f, -781f, -363f), vec4<f32>(1454f, -366f, -1000f, 689f), vec4<f32>(650f, 817f, -921f, -675f), vec4<f32>(-442f, 2006f, -1000f, -640f), vec4<f32>(814f, 1007f, 165f, 576f), vec4<f32>(-502f, -1233f, 938f, 382f));

var<private> global2: vec2<f32>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = Struct_5(4061u);
    global1 = array<vec4<f32>, 24>();
    let var_1 = true;
    var var_2 = Struct_1(-37177i & reverseBits(~(-global3.b.x)), vec4<i32>(2147483647i, ~global3.d.x, -2147483647i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(1332i, -2147483647i, global3.b.x), global3.d), abs(vec3<i32>(0i, 0i, -2147483647i)))) << (vec4<u32>(2148u ^ (var_0.a << (u_input.b % 32u)), _wgslsmith_sub_u32(global3.e.x, 1u), 1u, global3.e.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))), ~global3.b.yyz << (global3.e.xwy % vec3<u32>(32u)), global3.e);
    let var_3 = ~var_2.e.xxw;
    return var_2.e.x | 4294967295u;
}

fn func_2() -> Struct_3 {
    global1 = array<vec4<f32>, 24>();
    global0 = func_3();
    var var_0 = Struct_1(countOneBits(_wgslsmith_sub_i32(global3.a, 20174i)), ~vec4<i32>(1i, -global3.d.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(global3.a, global3.d.x), _wgslsmith_add_i32(4783i, global3.a)), ~global3.a & (-17969i ^ global3.a)), _wgslsmith_f_op_f32(floor(global2.x)), -global3.b.wyx >> ((~global3.e.zzy << (~vec3<u32>(1u, 40876u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(global3.e.zwz), firstTrailingBit(vec3<u32>(global3.e.x, global3.e.x, 41856u))), vec3<u32>(abs(global3.e.x), global3.e.x, 22721u)), global3.e.x, u_input.b, 1u));
    global0 = var_0.e.x;
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.x, global2.x)), 489f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1697f, var_0.c)), false)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, 1354f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(591f, global2.x)))))));
    return Struct_3(Struct_1(-var_0.a, var_0.b << (vec4<u32>(firstTrailingBit(16234u), u_input.a, 4045u, 3300u) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.c)) * -941f), -655f), global3.d, vec4<u32>(u_input.a, 30445u, reverseBits(0u), 0u | var_0.e.x) ^ var_0.e), true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = all(!select(!vec2<bool>(arg_0, false), vec2<bool>(true, true), !arg_0)) & (true || any(vec4<bool>(4294967295u >= global3.e.x, any(vec3<bool>(false, false, arg_0)), any(vec2<bool>(arg_0, true)), all(vec3<bool>(arg_0, true, true)))));
    global0 = 73373u;
    let var_1 = func_2();
    global1 = array<vec4<f32>, 24>();
    global4 = array<vec4<bool>, 2>();
    return var_1.a;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global3 = arg_0;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, 596f)) * _wgslsmith_f_op_f32(-arg_0.c))) * arg_0.c) >= global3.c;
    var var_1 = Struct_5(44346u << (countOneBits(global3.e.x) % 32u));
    let var_2 = -1095f;
    var_1 = Struct_5(select(_wgslsmith_dot_vec3_u32((arg_0.e.www ^ vec3<u32>(1u, 4294967295u, 1u)) << (vec3<u32>(4294967295u, 4294967295u, var_1.a) % vec3<u32>(32u)), vec3<u32>(28683u, countOneBits(arg_0.e.x), _wgslsmith_mult_u32(95246u, var_1.a))), u_input.a, true));
    return 1u;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) + _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * -920f)))));
    global3 = Struct_1(_wgslsmith_clamp_i32(global3.b.x, 17826i, func_2().a.a & _wgslsmith_sub_i32(-322i, global3.d.x)), arg_1, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(global2.x, func_1(false).c))), vec3<i32>(i32(-1i) * -func_2().a.a, 12785i, _wgslsmith_dot_vec3_i32(global3.b.xwz, vec3<i32>(arg_1.x, arg_1.x, 31031i) | vec3<i32>(arg_1.x, -1i, arg_1.x)) ^ max(min(-1i, 0i), min(arg_1.x, global3.b.x))), ~_wgslsmith_sub_vec4_u32(~global3.e, ~min(vec4<u32>(arg_0.x, 14826u, 14280u, global3.e.x), global3.e)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(18932u, 24u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 24u)] * vec4<f32>(559f, global2.x, global2.x, global2.x)) - _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 24u)])))));
    var var_2 = 1u;
    global3 = Struct_1(~(~44377i), vec4<i32>(1i, global3.b.x, _wgslsmith_div_i32(reverseBits(~10355i), _wgslsmith_dot_vec3_i32(countOneBits(global3.d), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.b.x, arg_1.x, global3.b.x), vec3<i32>(arg_1.x, 19674i, global3.d.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, 2147483647i), abs(-15011i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 21316i), _wgslsmith_sub_vec2_i32(vec2<i32>(17983i, -2147483647i), arg_1.xy)))), var_1.x, -(~max(vec3<i32>(2147483647i, global3.d.x, arg_1.x), global3.b.xwz)) << (arg_0.xzw % vec3<u32>(32u)), abs(arg_0));
    return 0i == _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, global3.d.x), firstTrailingBit(global3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(u_input.a);
    var var_1 = 7572u;
    global0 = u_input.b >> (~(~222u) % 32u);
    var var_2 = func_5(vec4<u32>(1u, max(u_input.b, func_4(func_1(false))), ~u_input.a, func_3()), select(vec4<i32>(-(-14188i | global3.d.x), _wgslsmith_div_i32(min(-47910i, global3.d.x), global3.b.x), _wgslsmith_add_i32(~(-1i), -global3.a), global3.a), -global3.b, global3.d.x == _wgslsmith_mult_i32(-global3.a, -global3.b.x)));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~func_4(Struct_1(global3.a, global3.b, var_3, global3.d, global3.e)), _wgslsmith_mult_u32(u_input.b ^ 4294967295u, global3.e.x & 38759u), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, global3.e.x), 4294967295u)) & ~(_wgslsmith_add_vec4_u32(global3.e, vec4<u32>(global3.e.x, var_0.a, 4294967295u, 4294967295u)) & func_1(true).e), abs(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(8467u, var_0.a, 38843u, u_input.a) & global3.e, global3.e), global3.e)));
    var var_4 = -global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global3.c)), vec2<f32>(1855f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2865f, 361f))))), _wgslsmith_mod_vec3_u32(global3.e.yzy, global3.e.wzz) ^ abs(global3.e.xxx), firstTrailingBit(var_4.yw));
}


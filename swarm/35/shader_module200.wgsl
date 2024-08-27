struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(8634u, 6199u, 4294967295u), vec3<u32>(35043u, 6778u, 78362u), vec3<u32>(0u, 4294967295u, 1u));

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(1i, Struct_2(vec4<i32>(26798i, 2147483647i, -12992i, -55286i), vec4<i32>(2020i, 53158i, -33931i, -8332i), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4430u), vec2<f32>(-841f, -642f), -1i, 1066f), true), vec3<bool>(false, true, false)), Struct_3(0i, Struct_2(vec4<i32>(-23319i, 37493i, 18744i, 2189i), vec4<i32>(2147483647i, -2254i, 1i, -842i), Struct_1(vec4<u32>(1u, 19391u, 24905u, 47825u), vec2<f32>(-712f, -1153f), 1i, -195f), false), vec3<bool>(true, false, true)), Struct_3(2147483647i, Struct_2(vec4<i32>(-26015i, 2147483647i, 48335i, -1i), vec4<i32>(-1i, 59027i, 2147483647i, -1i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 12678u), vec2<f32>(-634f, 1650f), -3579i, -1032f), false), vec3<bool>(false, true, true)), Struct_3(4934i, Struct_2(vec4<i32>(-1i, -13455i, -25771i, i32(-2147483648)), vec4<i32>(-1i, -1681i, 1i, -73694i), Struct_1(vec4<u32>(4294967295u, 1u, 22635u, 4294967295u), vec2<f32>(-907f, -263f), -7476i, 877f), false), vec3<bool>(true, true, false)), Struct_3(2816i, Struct_2(vec4<i32>(0i, -32530i, 0i, i32(-2147483648)), vec4<i32>(0i, -1207i, 15669i, -1i), Struct_1(vec4<u32>(4294967295u, 16745u, 1u, 0u), vec2<f32>(-655f, -688f), -1i, -150f), true), vec3<bool>(true, false, true)), Struct_3(13127i, Struct_2(vec4<i32>(27648i, i32(-2147483648), 23830i, -7688i), vec4<i32>(2147483647i, -4512i, 38378i, -16407i), Struct_1(vec4<u32>(84239u, 38340u, 47865u, 44283u), vec2<f32>(968f, 295f), i32(-2147483648), -810f), false), vec3<bool>(true, false, false)), Struct_3(1256i, Struct_2(vec4<i32>(0i, -1i, i32(-2147483648), 0i), vec4<i32>(28693i, 0i, 0i, 18168i), Struct_1(vec4<u32>(58297u, 71863u, 4294967295u, 1u), vec2<f32>(-1167f, 768f), -1i, -1718f), false), vec3<bool>(false, true, false)), Struct_3(-19079i, Struct_2(vec4<i32>(1i, 2147483647i, i32(-2147483648), 2045i), vec4<i32>(2147483647i, 2147483647i, -54665i, i32(-2147483648)), Struct_1(vec4<u32>(43142u, 26640u, 4294967295u, 16409u), vec2<f32>(-1643f, -256f), 2147483647i, 472f), false), vec3<bool>(false, true, false)), Struct_3(0i, Struct_2(vec4<i32>(-1i, -15902i, -6467i, -1i), vec4<i32>(2546i, -1i, 37583i, 13222i), Struct_1(vec4<u32>(62778u, 4294967295u, 69179u, 0u), vec2<f32>(808f, -1176f), i32(-2147483648), 2329f), true), vec3<bool>(false, false, false)), Struct_3(2147483647i, Struct_2(vec4<i32>(13039i, 1i, -1i, -3872i), vec4<i32>(-1i, -1i, -42887i, -1i), Struct_1(vec4<u32>(13305u, 20789u, 45361u, 7331u), vec2<f32>(-1381f, -1059f), 0i, 910f), false), vec3<bool>(false, false, false)), Struct_3(4111i, Struct_2(vec4<i32>(1i, 1i, 0i, 2147483647i), vec4<i32>(1i, 54213i, -5864i, 27896i), Struct_1(vec4<u32>(15104u, 0u, 10752u, 0u), vec2<f32>(408f, 128f), 29674i, -1368f), false), vec3<bool>(true, true, false)), Struct_3(2147483647i, Struct_2(vec4<i32>(2147483647i, 1i, -18766i, -20076i), vec4<i32>(-3085i, 41254i, 7228i, 43328i), Struct_1(vec4<u32>(89781u, 1u, 31488u, 34803u), vec2<f32>(-1915f, 777f), 0i, -1085f), false), vec3<bool>(true, false, true)), Struct_3(1i, Struct_2(vec4<i32>(4126i, i32(-2147483648), 847i, i32(-2147483648)), vec4<i32>(-25417i, 0i, 2147483647i, 0i), Struct_1(vec4<u32>(4294967295u, 56602u, 21785u, 88909u), vec2<f32>(236f, 439f), -26350i, -557f), true), vec3<bool>(false, true, false)), Struct_3(i32(-2147483648), Struct_2(vec4<i32>(34555i, 1i, -85215i, 11986i), vec4<i32>(1i, 2147483647i, 20378i, i32(-2147483648)), Struct_1(vec4<u32>(31555u, 0u, 4294967295u, 4294967295u), vec2<f32>(1000f, 1000f), 45364i, 287f), false), vec3<bool>(false, false, true)), Struct_3(-37119i, Struct_2(vec4<i32>(-1i, 1i, 6330i, -1i), vec4<i32>(18971i, 2147483647i, -89688i, -30472i), Struct_1(vec4<u32>(53096u, 24171u, 4294967295u, 0u), vec2<f32>(119f, 121f), -1i, -1000f), false), vec3<bool>(false, false, true)), Struct_3(-44817i, Struct_2(vec4<i32>(1i, 29591i, -1i, -7624i), vec4<i32>(52690i, -37660i, 2147483647i, -62009i), Struct_1(vec4<u32>(4294967295u, 1u, 28659u, 19598u), vec2<f32>(1000f, -406f), -4902i, -2303f), false), vec3<bool>(false, false, true)), Struct_3(2147483647i, Struct_2(vec4<i32>(-2411i, 37642i, 0i, 0i), vec4<i32>(i32(-2147483648), 76177i, -20227i, 2147483647i), Struct_1(vec4<u32>(1u, 6370u, 4294967295u, 24143u), vec2<f32>(-2030f, 2054f), 0i, -962f), false), vec3<bool>(true, false, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    global0 = array<f32, 10>();
    var var_0 = global3[_wgslsmith_index_u32(arg_2, 17u)];
    global1 = array<vec4<u32>, 2>();
    global1 = array<vec4<u32>, 2>();
    var var_1 = var_0.b.c.b.x;
    return u_input.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> f32 {
    let var_0 = select(countOneBits(abs(func_3(abs(global2[_wgslsmith_index_u32(63514u, 3u)]), arg_3.a.c, 19312u))), select(func_3(_wgslsmith_add_vec3_u32(select(arg_3.a.b.c.a.xwy, arg_3.a.b.c.a.yzy, vec3<bool>(arg_2, true, false)), vec3<u32>(17619u, 24659u, arg_0.x)), select(select(arg_3.b, arg_3.b, arg_3.b.x), arg_3.a.c, !arg_3.a.c), 1u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, ~u_input.a.x), arg_3.a.a), arg_2), false);
    var var_1 = all(select(select(vec3<bool>(true, arg_3.b.x, false), select(select(vec3<bool>(arg_2, arg_3.b.x, arg_2), vec3<bool>(true, true, false), arg_2), select(arg_3.a.c, arg_3.a.c, arg_3.b.x), any(arg_3.a.c.yx)), true), !vec3<bool>(all(arg_3.b.yz), false, 161f <= global0[_wgslsmith_index_u32(arg_3.a.b.c.a.x, 10u)]), !arg_3.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)));
    let var_3 = arg_3.a;
    let var_4 = Struct_2(~(firstTrailingBit(countOneBits(var_3.b.a)) << (global1[_wgslsmith_index_u32(~firstLeadingBit(arg_0.x), 2u)] % vec4<u32>(32u))), max(abs(var_3.b.b), _wgslsmith_div_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, arg_3.a.b.c.c, -8831i), var_3.b.a), ~var_3.b.b), select(var_3.b.b, reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -2147483647i)), !vec4<bool>(false, var_3.c.x, var_3.b.d, arg_2)))), Struct_1(vec4<u32>(arg_0.x, arg_0.x, _wgslsmith_mod_u32(firstTrailingBit(1342u), firstLeadingBit(41702u)), abs(arg_3.a.b.c.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, -406f)) * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(arg_3.a.b.c.d)))), firstTrailingBit(-var_3.b.b.x), 876f), false);
    return _wgslsmith_f_op_f32(f32(-1f) * -834f);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec4<u32>(arg_0.x, arg_1.x, u_input.c.x, 3806u), vec4<f32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(arg_0.x, 10u)], -826f, 1000f), false, Struct_4(Struct_3(23317i, Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(arg_3.x, arg_3.x, u_input.a.x, arg_3.x), Struct_1(vec4<u32>(1u, arg_0.x, 0u, u_input.b), arg_2, -9966i, -415f), false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), arg_2.x)))))) - 1111f), _wgslsmith_div_f32(-268f, 178f));
    let var_1 = true;
    global2 = array<vec3<u32>, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2050f, arg_2.x, -2053f) - vec3<f32>(3394f, 529f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(821f, 169f, 2062f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1018f, _wgslsmith_div_f32(var_0.x, arg_2.x), -759f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], -562f, global0[_wgslsmith_index_u32(u_input.b, 10u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(21749u, 10u)]))))), var_1));
    global1 = array<vec4<u32>, 2>();
    return vec3<bool>(var_1, !(!(!all(vec2<bool>(var_1, false)))), any(vec4<bool>(var_1, true, true, false)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> Struct_3 {
    let var_0 = select(arg_1.c.yy, !select(arg_1.c.zx, func_1(vec4<u32>(12220u, u_input.c.x, 98554u, 37328u), vec4<u32>(arg_1.b.c.a.x, arg_1.b.c.a.x, arg_1.b.c.a.x, 4294967295u), vec2<f32>(-1681f, 193f), _wgslsmith_add_vec3_i32(arg_1.b.a.yxw, vec3<i32>(25820i, 2147483647i, -2147483647i))).zx, select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), any(vec3<bool>(false, arg_2, arg_2)))), any(func_1(arg_1.b.c.a, firstLeadingBit(global1[_wgslsmith_index_u32(1u, 2u)]), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]), -123f), arg_1.b.a.zzy).xx));
    var var_1 = arg_1.b;
    let var_2 = arg_1.b;
    return Struct_3(-min(-u_input.a.x & _wgslsmith_mult_i32(var_2.b.x, -1i), _wgslsmith_mod_i32(arg_1.a, 1811i << (var_2.c.a.x % 32u))), arg_1.b, arg_1.c);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> StorageBuffer {
    global3 = array<Struct_3, 17>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b.x - arg_1), global0[_wgslsmith_index_u32(u_input.b, 10u)]), -304f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_f_op_f32(123f - -889f)), _wgslsmith_f_op_f32(f32(-1f) * -839f)))));
    global2 = array<vec3<u32>, 3>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.xzw) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.d), arg_2.b.c.d, _wgslsmith_f_op_f32(-1000f * -541f))))), arg_2, all(vec2<bool>(arg_2.c.x, false)), _wgslsmith_add_u32(u_input.b, 9945u)).b.c;
    global0 = array<f32, 10>();
    return StorageBuffer(vec2<u32>(1u, ~var_1.a.x), firstTrailingBit(_wgslsmith_clamp_u32(83957u, 68774u, arg_0)), reverseBits(~vec3<i32>(1i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.b.x, 6529i, -1i), arg_2.b.b.xxz))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 3>();
    let x = u_input.a;
    s_output = func_5(~u_input.c.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(49155u, 10u)]), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(49020u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-918f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]) + vec3<f32>(891f, 1132f, 119f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-168f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 629f), vec3<f32>(-889f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 1375f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(30111u, 10u)], 1000f) * vec3<f32>(-1879f, global0[_wgslsmith_index_u32(0u, 10u)], 1095f)))), Struct_3(2147483647i, Struct_2(vec4<i32>(-1572i, u_input.a.x, u_input.a.x, -12778i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.b) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -44967i, u_input.a.x, u_input.a.x), vec4<i32>(38999i, u_input.a.x, u_input.a.x, -21543i)), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 2u)], vec2<f32>(-514f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), u_input.a.x, -2303f), true), vec3<bool>(true, true, true)), all(func_1(~global1[_wgslsmith_index_u32(u_input.b, 2u)], vec4<u32>(21567u, 1u, 0u, 37447u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(3899u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)])), vec3<i32>(u_input.a.x, 0i, -26272i) << (global2[_wgslsmith_index_u32(22879u, 3u)] % vec3<u32>(32u)))), u_input.c.x), Struct_1(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 18307u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 10u)], 1166f))), reverseBits(-63165i), -840f));
}


struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 30556u;

var<private> global2: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-837f, -265f, -2185f, 1472f), vec4<f32>(-1411f, 465f, 1091f, -2030f), vec4<f32>(628f, 267f, -610f, 1024f), vec4<f32>(-811f, 271f, 456f, -595f), vec4<f32>(1000f, 2419f, 319f, -1000f), vec4<f32>(629f, 241f, 1770f, 937f), vec4<f32>(1000f, 226f, 224f, 1415f), vec4<f32>(395f, -1676f, 383f, -106f), vec4<f32>(-1211f, -1028f, -1026f, 1824f), vec4<f32>(-239f, -136f, 243f, -255f), vec4<f32>(582f, -431f, -765f, 509f), vec4<f32>(174f, 265f, 1260f, 1000f), vec4<f32>(1147f, -1878f, -587f, 1140f), vec4<f32>(2330f, 1416f, 1002f, 2445f), vec4<f32>(269f, 527f, 816f, 1151f), vec4<f32>(-718f, 1184f, 282f, -649f), vec4<f32>(-267f, 2318f, 1987f, -1315f), vec4<f32>(512f, -386f, -155f, -1814f), vec4<f32>(-1674f, -128f, -1483f, -811f), vec4<f32>(-167f, -1237f, 594f, 1480f), vec4<f32>(-891f, 1357f, 263f, -231f), vec4<f32>(-1233f, 156f, 2124f, 976f), vec4<f32>(-865f, -426f, 2522f, -516f), vec4<f32>(-1305f, -354f, -285f, -575f), vec4<f32>(788f, -387f, -156f, 496f), vec4<f32>(-188f, -1801f, -453f, -1237f), vec4<f32>(746f, 997f, -468f, -229f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global2 = array<vec4<f32>, 27>();
    global2 = array<vec4<f32>, 27>();
    global1 = u_input.c;
    let var_0 = Struct_4(Struct_1(vec4<bool>(true, true, true, true), ~(-1i), 8691u, vec4<i32>(i32(-1i) * -23103i, max(3824i, -2147483647i), firstTrailingBit(~39556i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, 14120i), vec2<i32>(-1i, -2147483647i)), -vec2<i32>(0i, 9619i)))));
    var var_1 = ~_wgslsmith_mod_i32(-1i, abs(var_0.a.b));
    return var_0.a.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> u32 {
    global1 = 4294967295u;
    var var_0 = _wgslsmith_add_vec4_i32(arg_1.e.d, firstTrailingBit(_wgslsmith_sub_vec4_i32(min(arg_0.b.e.d, vec4<i32>(arg_1.b.x, arg_0.b.d, 9763i, arg_1.c)), -vec4<i32>(arg_0.b.e.b, arg_1.e.b, arg_1.e.d.x, arg_2)) & (-arg_1.e.d & _wgslsmith_mod_vec4_i32(vec4<i32>(3790i, -11424i, arg_0.b.b.x, arg_2), vec4<i32>(0i, arg_0.b.d, -1i, arg_1.b.x)))));
    global0 = _wgslsmith_f_op_f32(trunc(arg_0.c));
    var var_1 = arg_0.b;
    let var_2 = arg_0.b;
    return ~var_2.e.c;
}

fn func_2() -> vec3<i32> {
    global1 = abs(u_input.a.x);
    global1 = 1u;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1378f, -1000f, -266f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, 1398f, 693f))))));
    let var_1 = u_input.c > (_wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec2_u32(u_input.a.xz, ~u_input.a.xy)) & ~_wgslsmith_add_u32(u_input.a.x >> (u_input.b.x % 32u), ~u_input.c));
    global1 = _wgslsmith_mult_u32(func_4(Struct_3(countOneBits(vec4<u32>(1u, 43205u, 4294967295u, 2423u)), Struct_2(1u << (u_input.a.x % 32u), -vec2<i32>(0i, -11867i), 2147483647i, ~(-39071i), Struct_1(vec4<bool>(false, var_1, false, false), 0i, u_input.b.x, vec4<i32>(37719i, 0i, -2147483647i, 0i))), var_0.x), Struct_2(_wgslsmith_div_u32(~0u, u_input.b.x), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 7916i), vec2<i32>(16601i, 2147483647i)), -902i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -25529i, -1i, 3591i)), ~vec4<i32>(1i, 2147483647i, -1i, -1i)), Struct_1(select(vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_1, var_1, var_1, var_1)), ~0i, ~22527u, -vec4<i32>(0i, -62702i, -1i, 2147483647i))), _wgslsmith_clamp_i32(select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -39960i, 6637i), vec3<i32>(5561i, 2147483647i, -40818i)), false & var_1), func_3(), countOneBits(firstTrailingBit(9035i)))), ~(u_input.c ^ (21134u ^ u_input.a.x)) | (4294967295u >> (~(u_input.c | 128195u) % 32u)));
    return ~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(1i, 1i, 1i), vec3<i32>(17861i, -21281i, 1i) >> (~u_input.b % vec3<u32>(32u))), vec3<i32>(-29285i, -18902i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(6206i, 1i), vec2<i32>(1i, -2147483647i)))), vec3<i32>(max(func_3(), 1i), countOneBits(1i), 2256i >> (min(0u, 12571u) % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> vec3<u32> {
    global0 = -603f;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f + -1147f) - 1f);
    global2 = array<vec4<f32>, 27>();
    var var_1 = countOneBits(abs(func_2()));
    global1 = _wgslsmith_sub_u32(arg_0.a.c, 37287u);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(select(arg_1.a.c, max(65550u, 0u), !all(arg_1.a.a)), firstTrailingBit(arg_0.a.c), ~(~func_4(Struct_3(vec4<u32>(1u, 36140u, 102325u, 33186u), Struct_2(arg_1.a.c, vec2<i32>(var_1.x, 2147483647i), var_1.x, 30632i, Struct_1(vec4<bool>(arg_0.a.a.x, arg_2, true, arg_0.a.a.x), 14225i, 1u, arg_1.a.d)), -239f), Struct_2(arg_1.a.c, var_1.xz, 1i, arg_0.a.d.x, arg_0.a), arg_1.a.b))), firstTrailingBit(vec3<u32>(~0u, 34604u, 935u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(abs(~func_1(Struct_4(Struct_1(vec4<bool>(true, false, true, false), 0i, u_input.c, vec4<i32>(-19973i, 0i, 40372i, 49269i))), Struct_4(Struct_1(vec4<bool>(false, false, false, true), 0i, u_input.a.x, vec4<i32>(-1i, -30180i, 8643i, 0i))), true)), u_input.a);
    global1 = 1u;
    var var_1 = 365f;
    global1 = u_input.c;
    global2 = array<vec4<f32>, 27>();
    let var_2 = func_3();
    let var_3 = Struct_3(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(27421u, 12733u, max(1u, var_0.x), u_input.c))), Struct_2(~(~(~u_input.c)), vec2<i32>(reverseBits(1i), var_2), select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_2, -2147483647i, var_2), ~var_2), func_3(), true), _wgslsmith_add_i32(select(select(var_2, var_2, true), _wgslsmith_mod_i32(var_2, 2147483647i), false), 1084i), Struct_1(vec4<bool>(all(vec2<bool>(true, false)), true, true, true), func_2().x, abs(u_input.b.x >> (4294967295u % 32u)), ~(~vec4<i32>(var_2, 9268i, var_2, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1772f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1444f, var_3.c, -983f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, 374f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, var_3.c, -263f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, -449f, -108f), vec3<f32>(-615f, var_3.c, var_3.c), vec3<bool>(var_3.b.e.a.x, false, false))))), var_3.b.e.a.x)), _wgslsmith_sub_u32(11473u, ~(~u_input.a.x)), ~(~vec4<i32>(var_3.b.d, min(var_2, var_2), -12268i, var_3.b.e.b)), global2[_wgslsmith_index_u32(~33525u, 27u)]);
}


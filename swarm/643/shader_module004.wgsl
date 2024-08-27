struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(664f, 1155f, -679f, 425f, 760f, 1052f, -321f, -1618f, -577f, 455f, 207f, -851f, -242f, 390f);

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: vec2<i32> = vec2<i32>(-47205i, -1i);

var<private> global3: array<vec3<f32>, 16>;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<f32>(1067f, -733f, 1151f, -156f)), Struct_1(vec4<f32>(-354f, -1746f, -904f, -1000f)), Struct_1(vec4<f32>(368f, 941f, -1513f, 943f)), Struct_1(vec4<f32>(-653f, -199f, -1923f, -257f)), Struct_1(vec4<f32>(-154f, 136f, -854f, -1495f)), Struct_1(vec4<f32>(1570f, 554f, -1000f, 1000f)), Struct_1(vec4<f32>(-155f, 1500f, 601f, -331f)), Struct_1(vec4<f32>(1000f, 760f, -369f, 1277f)), Struct_1(vec4<f32>(1151f, 450f, 316f, -1376f)), Struct_1(vec4<f32>(325f, 363f, 1000f, -409f)), Struct_1(vec4<f32>(-1697f, 1039f, 579f, 1123f)), Struct_1(vec4<f32>(2702f, -1182f, 635f, -2488f)), Struct_1(vec4<f32>(291f, -1274f, 503f, 744f)), Struct_1(vec4<f32>(1840f, -1425f, 169f, -712f)), Struct_1(vec4<f32>(883f, 922f, 708f, -1153f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 14u)]));
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(0u, 15u)]);
    var var_2 = ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_2.x & 4381u, arg_1.a), 56244u));
    global3 = array<vec3<f32>, 16>();
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.a)) * vec4<f32>(var_0, _wgslsmith_f_op_f32(min(var_1.a.a.x, 424f)), 1104f, _wgslsmith_f_op_f32(var_1.a.a.x * 278f))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_div_f32(-1000f, -900f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_1.a, 14u)], -2673f))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~arg_2.x, 14u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.a.a * var_1.a.a), vec4<f32>(var_0, global0[_wgslsmith_index_u32(arg_2.x, 14u)], var_0, var_0), var_1.a.a.x > var_0)) + _wgslsmith_f_op_vec4_f32(floor(var_1.a.a))) - var_1.a.a));
    return ~(arg_1.e | arg_1.e);
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = Struct_4(~(~func_3(all(vec2<bool>(false, false)), Struct_3(u_input.b.x, vec2<i32>(arg_1, global2.x), 0i, false, vec3<i32>(global2.x, 13637i, u_input.d.x)), firstTrailingBit(u_input.e.yy), _wgslsmith_mult_i32(u_input.c, 2147483647i))), u_input.a, all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, true, any(vec4<bool>(false, true, false, false))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false)))));
    let var_1 = -174f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f - 898f)));
    global2 = _wgslsmith_sub_vec2_i32(~(var_0.a.xy ^ var_0.a.xz), var_0.a.zx);
    let var_3 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(firstTrailingBit(var_0.a), -vec3<i32>(41816i, global2.x, 83395i), vec3<i32>(1i >> (var_0.b % 32u), _wgslsmith_sub_i32(var_0.a.x, -41409i), ~global2.x)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(u_input.d.yz, vec2<i32>(global2.x, -2147483647i)), ~2147483647i), -_wgslsmith_mod_vec3_i32(u_input.d, var_0.a)));
    return u_input.e.x;
}

fn func_1() -> Struct_4 {
    global2 = u_input.d.yy;
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(u_input.e.x, 15u)]);
    var var_1 = _wgslsmith_mult_u32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1522f, 901f) + _wgslsmith_f_op_f32(729f - global0[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_f_op_f32(ceil(var_0.a.a.x))), -11442i), min(1u, 0u));
    global1 = array<vec4<u32>, 5>();
    var var_2 = vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), 37861i), -1i, u_input.d.x, -1i) ^ vec4<i32>(global2.x, _wgslsmith_add_i32(countOneBits(15434i), ~10276i << (u_input.e.x % 32u)), _wgslsmith_clamp_i32(~(~global2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.d.x, global2.x), vec4<i32>(-33373i, 2147483647i, 42331i, -13666i)), -vec4<i32>(2147483647i, u_input.c, global2.x, global2.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-31830i, u_input.d.x), u_input.d.zz)), global2.x);
    return Struct_4(u_input.d, firstTrailingBit(_wgslsmith_div_u32(func_2(_wgslsmith_f_op_f32(var_0.a.a.x * var_0.a.a.x), 1i ^ var_2.x), min(u_input.e.x, ~u_input.e.x))), true);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> f32 {
    global4 = array<Struct_1, 15>();
    global2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(~global2.x), select(-u_input.c, func_1().a.x, true)), -vec2<i32>(1i, arg_1.a.x << (52733u % 32u))) << (u_input.e.zy % vec2<u32>(32u));
    var var_0 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-arg_1.a, abs(vec3<i32>(81i, global2.x, 5934i))), abs(-13178i)), ~2147483647i);
    var var_1 = 497f;
    let var_2 = -891i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~max(arg_1.b, u_input.a), 14u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1129f + global0[_wgslsmith_index_u32(56836u, 14u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(295f)) - _wgslsmith_f_op_f32(1747f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 14u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 5>();
    let var_0 = vec4<u32>(~(~(13592u << (reverseBits(u_input.b.x) % 32u))), _wgslsmith_sub_u32(4786u, u_input.e.x), ~u_input.a, 0u);
    let var_1 = ~1u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.x, 14u)], 1000f), _wgslsmith_f_op_f32(func_4(true, func_1())));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1063f)))) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(42784u ^ ~var_1, 14u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_1, 14u)] - global0[_wgslsmith_index_u32(0u, 14u)]) * 1465f) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(u_input.b.xyw & u_input.b.zwx), var_0.yzy), 14u)]));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~53005u >> (0u % 32u), 14u)])) > global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(56430u, _wgslsmith_add_u32(u_input.a, 0u), var_1), select(var_1, _wgslsmith_dot_vec2_u32(u_input.e.zx, abs(vec2<u32>(u_input.a, 29356u))), false)), 14u)];
    var var_4 = vec2<bool>(false, var_3 & true);
    var var_5 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(var_1, 14u)], -1194f, global0[_wgslsmith_index_u32(22916u, 14u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-546f, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(37945u, 14u)], 309f) + vec4<f32>(113f, global0[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(u_input.e.x, 14u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, -2002f, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(var_1, 14u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, u_input.d.x, vec3<u32>(1u, var_1, 22234u) >> (_wgslsmith_add_vec3_u32(min(select(vec3<u32>(45935u, 0u, u_input.e.x), vec3<u32>(19851u, var_1, var_0.x), vec3<bool>(var_4.x, var_4.x, false)), _wgslsmith_mod_vec3_u32(var_0.zzx, u_input.b.zxx)), u_input.e.yyx) % vec3<u32>(32u)));
}


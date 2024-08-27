struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-979f, -706f, 277f, -303f);

var<private> global1: array<u32, 5> = array<u32, 5>(0u, 4294967295u, 0u, 9769u, 13428u);

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-1655f, 285f, 1027f, 1360f), vec4<f32>(1529f, -2884f, -1114f, -1982f), vec4<f32>(251f, -312f, 155f, -1000f), vec4<f32>(1526f, 742f, 2482f, -248f), vec4<f32>(-1008f, 256f, 246f, -865f), vec4<f32>(973f, 316f, 651f, -988f), vec4<f32>(-266f, -764f, -830f, 609f), vec4<f32>(-579f, 1000f, 1000f, 2022f), vec4<f32>(894f, 531f, -1151f, 1009f), vec4<f32>(-1105f, -1100f, 1291f, -1199f), vec4<f32>(-451f, 923f, 712f, -1435f), vec4<f32>(-270f, -722f, 268f, 443f), vec4<f32>(-324f, -408f, -1751f, 1000f), vec4<f32>(207f, -287f, -592f, -397f), vec4<f32>(-806f, -621f, 557f, -248f), vec4<f32>(-1046f, -873f, 513f, -1114f), vec4<f32>(1327f, -342f, 1164f, -699f), vec4<f32>(-116f, 277f, -1312f, 383f), vec4<f32>(270f, 1351f, 491f, -1062f), vec4<f32>(-406f, -277f, 749f, -1972f), vec4<f32>(567f, 971f, 1648f, -193f), vec4<f32>(-707f, 127f, 252f, 413f), vec4<f32>(1257f, -522f, -153f, -370f), vec4<f32>(843f, 716f, -2256f, -1630f), vec4<f32>(1452f, 1921f, 671f, -1178f), vec4<f32>(1598f, -753f, -253f, 281f), vec4<f32>(-2070f, -1112f, 179f, -135f), vec4<f32>(1882f, -274f, 999f, 408f), vec4<f32>(-1247f, 334f, -746f, 1000f), vec4<f32>(1174f, -612f, -1126f, 814f), vec4<f32>(-232f, 1133f, 1000f, -303f));

var<private> global3: u32 = 84577u;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(230f, -1000f, -591f), vec2<u32>(22710u, 66498u), vec4<bool>(true, true, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = select(select(vec3<u32>(1u, 26921u, global4.b.x) >> (vec3<u32>(arg_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(60069u, u_input.b.x), arg_0.b), max(arg_1.b.x, 7263u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(28412u, arg_1.b.x, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3448u, 5u)], 5u)], arg_2.b.x, arg_2.b.x)), abs(~vec3<u32>(1u, arg_1.b.x, arg_1.b.x))), (!arg_2.c.x && !arg_2.c.x) & (_wgslsmith_add_i32(u_input.c, u_input.c) == u_input.c)), vec3<u32>(_wgslsmith_dot_vec2_u32(~arg_1.b, countOneBits(arg_2.b & vec2<u32>(2100u, 27440u))), ~(~global4.b.x), 1u), !(!vec3<bool>(arg_1.a.x <= arg_1.a.x, u_input.d > 36083i, true)));
    let var_1 = !arg_0.c.x;
    let var_2 = false;
    var var_3 = vec3<bool>(any(global4.c.zxz), select(var_2, arg_0.c.x, any(arg_2.c.wz)) == select(select(all(vec2<bool>(false, true)), var_2, false), var_0.x <= arg_0.b.x, select(var_1, true, var_2)), true);
    let var_4 = global0.yx;
    return -(-vec4<i32>(1i, _wgslsmith_mod_i32(u_input.d, u_input.c), u_input.d, -u_input.c) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.c, -28972i), vec4<i32>(0i, -2147483647i, u_input.d, u_input.d))));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = max(reverseBits(vec4<i32>(~arg_0, _wgslsmith_div_i32(arg_0, u_input.c), ~(-20889i), abs(3270i)) | vec4<i32>(~arg_0, _wgslsmith_sub_i32(u_input.c, -8516i), abs(u_input.d), arg_0)), _wgslsmith_mult_vec4_i32(func_3(Struct_1(vec3<f32>(global4.a.x, -701f, -1490f), ~u_input.b, global4.c), Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a), select(u_input.b, u_input.b, true), global4.c), Struct_1(global0.wxz, vec2<u32>(4294967295u, 40891u), !global4.c)), abs(vec4<i32>(-1i) * -vec4<i32>(3280i, arg_0, u_input.c, 62184i))));
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    global2 = array<vec4<f32>, 31>();
    var var_1 = countOneBits(_wgslsmith_mod_vec3_i32(firstLeadingBit(var_0.yxz), -var_0.yzx));
    return Struct_1(global4.a, vec2<u32>(~(~43629u) | _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(18174u, global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)]), vec3<u32>(1u, global1[_wgslsmith_index_u32(global4.b.x, 5u)], u_input.a)), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101706u, 5u)], 5u)], 1u, 1u)), select(4294967295u, 10891u, ~u_input.b.x < ~u_input.a)), !select(global4.c, select(global4.c, vec4<bool>(global4.c.x, global4.c.x, false, true), any(global4.c.wz)), global4.c.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    global4 = arg_1;
    var var_0 = u_input.a;
    let var_1 = func_2(-2147483647i, -346f);
    var var_2 = !vec3<bool>(all(arg_1.c), 274f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(1253f + global0.x)), true);
    let var_3 = ~0u;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, global0.x, var_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(1498f + 256f), global4.a.x, global4.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, global0.x, global0.x), global0.xzz))))) - _wgslsmith_f_op_vec3_f32(func_1(-_wgslsmith_mult_i32(-1i, u_input.c), Struct_1(vec3<f32>(-501f, -827f, 1398f), vec2<u32>(global4.b.x, global1[_wgslsmith_index_u32(1u, 5u)]), global4.c)))), ~(~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(19135u, 48651u))) ^ ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global4.b.x, u_input.a), global4.b)), global4.c);
    var var_1 = func_2(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.a.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1363f, -1421f))));
    let var_2 = 13978u;
    let var_3 = !var_0.c;
    var var_4 = countOneBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.c, -1i << (global1[_wgslsmith_index_u32(var_0.b.x, 5u)] % 32u)), ~vec2<i32>(firstTrailingBit(-40275i), -42518i), ~_wgslsmith_mult_vec2_i32(max(vec2<i32>(70136i, u_input.c), vec2<i32>(0i, u_input.c)), select(vec2<i32>(-1i, u_input.d), vec2<i32>(u_input.d, -1i), vec2<bool>(var_0.c.x, global4.c.x)))));
    let var_5 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 444f)), 245f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) + -1206f), var_0.a.x), ~var_1.b, select(func_2(~_wgslsmith_add_i32(var_4.x, -2147483647i), func_2(-var_4.x, 1865f).a.x).c, vec4<bool>(select(675f != global0.x, global4.c.x, var_0.c.x), true, var_0.c.x, all(!vec2<bool>(true, global4.c.x))), var_0.c));
    global2 = array<vec4<f32>, 31>();
    var var_6 = firstTrailingBit(-reverseBits(vec3<i32>(u_input.c, var_4.x, -7347i) | vec3<i32>(-2147483647i, u_input.d, u_input.c)) & _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.d, 33216i), vec3<i32>(-12056i, var_4.x, 13207i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, u_input.d, u_input.d), vec4<i32>(1i, u_input.c, var_4.x, -39420i)), -1i, 39476i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(46348i, var_6.x, 40374i), select(vec3<i32>(var_6.x, 8526i, -9185i), vec3<i32>(u_input.d, 41650i, u_input.c), global4.c.x), vec3<i32>(1i, u_input.d, u_input.d)), vec3<i32>(~(-2147483647i), ~(-3618i), 1i))), vec3<u32>(var_2, abs(4294967295u), _wgslsmith_sub_u32(var_0.b.x, 92189u)) | vec3<u32>(55867u, ~(global1[_wgslsmith_index_u32(4294967295u, 5u)] | 4294967295u), ~(~0u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(0u, 31u)])) * _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(28454u, 31u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1798f)) + -304f) + var_1.a.x));
}


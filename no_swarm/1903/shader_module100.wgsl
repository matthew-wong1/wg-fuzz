struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(20465u, vec3<f32>(758f, -685f, 326f), 10263u, -226f, 0i);

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(47054u, vec3<f32>(368f, -511f, -2151f), 4294967295u, 257f, -1i), Struct_1(66784u, vec3<f32>(364f, -1176f, 1018f), 97943u, -850f, 0i), Struct_1(7119u, vec3<f32>(-401f, 338f, 1804f), 19412u, 1215f, 9726i));

var<private> global2: array<bool, 13>;

var<private> global3: array<u32, 20> = array<u32, 20>(17630u, 1u, 24268u, 0u, 1u, 0u, 28264u, 14614u, 0u, 0u, 0u, 4294967295u, 56860u, 9391u, 14183u, 0u, 45071u, 4294967295u, 0u, 38160u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_2(~_wgslsmith_mult_u32(min(global3[_wgslsmith_index_u32(global0.a, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.c, 20u)], 20u)]) ^ ~9799u, 34825u), select(arg_0.zyw, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.wwy, vec3<i32>(-31756i, arg_0.x, global0.e)), vec3<i32>(2147483647i, -17469i, u_input.a.x) ^ arg_0.ywx), global2[_wgslsmith_index_u32(countOneBits(abs(global3[_wgslsmith_index_u32(4294967295u, 20u)])), 13u)]) | arg_0.xyw, _wgslsmith_f_op_f32(-716f - 981f), !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(max(global0.c, global3[_wgslsmith_index_u32(1u, 20u)]))), 13u)]);
    global2 = array<bool, 13>();
    var_0 = Struct_2(8542u, max(~max(vec3<i32>(-18005i, -1i, var_0.b.x), arg_0.yxz) & -(arg_0.zwy << (vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(var_0.a, 20u)], 0u) % vec3<u32>(32u))), vec3<i32>(-28906i, min(~6603i, -33738i), firstTrailingBit(15527i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1829f + _wgslsmith_div_f32(-1405f, global0.b.x))), var_0.d || all(!(!vec2<bool>(false, var_0.d))));
    var var_1 = arg_0.www;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1138f + var_0.c));
    return _wgslsmith_add_u32(~max(var_0.a ^ 3839u, ~(~41241u)), ~global0.c);
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 3>();
    var var_0 = Struct_1(reverseBits(firstTrailingBit(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global0.c, 20u)], 4294967295u))), global0.b, _wgslsmith_sub_u32(reverseBits(countOneBits(global0.c)), ~min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a, 20u)], 20u)], 20u)], 20u)], 4294967295u)) | ~_wgslsmith_add_u32(min(global0.c, global0.c), func_3(vec4<i32>(43199i, 2147483647i, u_input.a.x, 39145i))), -292f, _wgslsmith_sub_i32(global0.e, 1i << (~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 20u)], 40612u, 4294967295u), 20u)] % 32u)));
    global2 = array<bool, 13>();
    global3 = array<u32, 20>();
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global0.a, countOneBits(0u), global3[_wgslsmith_index_u32(global0.c, 20u)]), 3u)];
    return max(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.a, abs(~(~1u))), 20u)], 4294967295u);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1000f + arg_0.x);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(func_2()), ~arg_2.a, (func_2() ^ _wgslsmith_div_u32(1u, reverseBits(66841u))) >> (global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(min(global0.c, 82046u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.a), vec2<u32>(global3[_wgslsmith_index_u32(arg_2.a, 20u)], 1u)))), 20u)] % 32u)), 13u)];
    var var_2 = u_input.a;
    let var_3 = min(u_input.a, _wgslsmith_mod_vec2_i32(~u_input.a, abs(vec2<i32>(arg_1.e, arg_1.e))) >> (~vec2<u32>(0u, firstLeadingBit(arg_2.a)) % vec2<u32>(32u)));
    var var_4 = min(arg_2.e, global0.e);
    return -14077i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(reverseBits(firstLeadingBit(u_input.a.x)), ~(-2147483647i))), _wgslsmith_clamp_i32(1i, reverseBits(abs(func_1(vec4<f32>(-781f, global0.d, -542f, global0.d), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 3u)], global1[_wgslsmith_index_u32(global0.c, 3u)]))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -8010i) >> (vec3<u32>(9079u, global3[_wgslsmith_index_u32(47011u, 20u)], global0.c) % vec3<u32>(32u)), vec3<i32>(1i, u_input.a.x, u_input.a.x)) ^ select(u_input.a.x, _wgslsmith_mod_i32(-2147483647i, -53135i), global0.a == global0.c)), !(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, global0.c, 55183u), vec3<u32>(1u, 4294967295u, 1u)), abs(vec3<u32>(global0.a, global0.a, global0.c))) > (max(40134u, 23525u) >> (global0.a % 32u))));
    global0 = global1[_wgslsmith_index_u32(~global0.a, 3u)];
    global2 = array<bool, 13>();
    var var_1 = 1852f;
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(countOneBits(32819u), 20u)], _wgslsmith_mult_u32(1u, ~1u))), firstTrailingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a, 20u)], 20u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 20u)], 20u)], 20u)], _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global0.a, 20u)], 4294967295u, 4294967295u)))));
    let var_3 = Struct_2(~1u, vec3<i32>(~u_input.a.x, 6435i, u_input.a.x) ^ select(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, global0.e)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(0i, 24231i, 51147i), vec3<i32>(u_input.a.x, -1i, var_0)), vec3<i32>(-2147483647i, abs(-57718i), 8693i & var_0), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), all(vec4<bool>(any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(56704u, 13u)], global2[_wgslsmith_index_u32(var_2.x, 13u)])) | any(vec2<bool>(true, false)), global2[_wgslsmith_index_u32(~(~35781u), 13u)], !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13487u, global0.a, 0u), 13u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(vec4<i32>(-46803i, u_input.a.x, 2147483647i, var_0)), ~global3[_wgslsmith_index_u32(25162u, 20u)]), 13u)])));
    var var_4 = ~_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(global0.c, 137276u, 0u, global0.c)), ~select(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 20u)], 0u, global3[_wgslsmith_index_u32(10112u, 20u)]), abs(vec4<u32>(var_2.x, 4294967295u, var_3.a, 46996u)), 0i == var_3.b.x), countOneBits(~(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 126888u, 0u, var_3.a))));
    var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(abs(_wgslsmith_div_u32(var_2.x, reverseBits(2915u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_4.wxz, min(var_4.wzz, vec3<u32>(4294967295u, 71720u, 1u))), countOneBits(var_2.x), 68443u)), var_4.wx);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, 63717i, var_0, 2147483647i) ^ vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(global0.e, 2147483647i, u_input.a.x, 24175i)))) << (_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, var_2.x, 52286u, 8484u), vec4<u32>(var_3.a, 18807u, 73744u, var_2.x)), vec4<u32>(19028u, reverseBits(1u), _wgslsmith_add_u32(3034u, 73517u), abs(var_4.x))) % vec4<u32>(32u)), vec2<u32>(3120u, ~1u), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_3.b.x, 1i), max(u_input.a, u_input.a), true), vec2<i32>(3666i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1732f, _wgslsmith_f_op_f32(global0.d + 1711f))), var_4.wy >> (~((vec2<u32>(0u, global3[_wgslsmith_index_u32(var_4.x, 20u)]) & var_4.yy) & (var_4.yz | var_4.wz)) % vec2<u32>(32u)));
}


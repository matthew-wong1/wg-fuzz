struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: Struct_2 = Struct_2(Struct_1(70350u, -32399i, vec2<i32>(29907i, -11652i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_2(Struct_1(97949u, countOneBits(max(u_input.d.x, u_input.a)) & 15306i, -abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global1.a.c.x), global1.a.c, global1.a.c))));
    global0 = array<i32, 13>();
    var var_1 = Struct_4(Struct_1(0u << (reverseBits(arg_0) % 32u), u_input.d.x, u_input.d.xx), var_0, var_0.a.a, true, _wgslsmith_clamp_u32(74671u, ~(arg_0 & 1u), abs(arg_0 << (53225u % 32u))) & global1.a.a);
    var_1 = Struct_4(var_1.a, Struct_2(Struct_1(var_1.e, -var_1.a.b << (firstLeadingBit(var_0.a.a) % 32u), select(_wgslsmith_mod_vec2_i32(u_input.d.zz, vec2<i32>(global1.a.c.x, u_input.a)), vec2<i32>(var_1.a.c.x, global0[_wgslsmith_index_u32(2620u, 13u)]), !vec2<bool>(false, var_1.d)))), ~(~arg_0), false, var_0.a.a);
    var_1 = Struct_4(Struct_1(~abs(var_1.c ^ global1.a.a), -abs(var_1.b.a.b), ~(_wgslsmith_mult_vec2_i32(vec2<i32>(14269i, 37789i), vec2<i32>(global1.a.b, global0[_wgslsmith_index_u32(75512u, 13u)])) << (vec2<u32>(var_1.c, u_input.b.x) % vec2<u32>(32u)))), var_0, ~u_input.b.x ^ ~_wgslsmith_div_u32(global1.a.a, ~global1.a.a), true, reverseBits(u_input.c.x));
    return 125702u;
}

fn func_4(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_clamp_u32(21129u, global1.a.a, global1.a.a & 4294967295u);
    global0 = array<i32, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(3162f, -168f, false)), _wgslsmith_f_op_f32(ceil(-1733f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1713f, 1000f), vec2<f32>(-1227f, 1824f)))))));
    global1 = Struct_2(global1.a);
    var var_2 = all(vec2<bool>(((arg_0 & 4294967295u) ^ 0u) == ~_wgslsmith_mult_u32(arg_0, var_0), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, true))))));
    return any(vec4<bool>(true, false, _wgslsmith_sub_u32(var_0, u_input.c.x) >= abs(70928u), !any(vec3<bool>(true, false, false)))) == true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> bool {
    global0 = array<i32, 13>();
    let var_0 = Struct_4(global1.a, Struct_2(Struct_1(u_input.b.x, max(global1.a.b, _wgslsmith_add_i32(-15803i, -1i)), u_input.d.zy)), firstLeadingBit(u_input.c.x), 1250f < _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-1953f - _wgslsmith_f_op_f32(-295f * arg_0.x))), ~4294967295u);
    let var_1 = ~1u;
    global0 = array<i32, 13>();
    var var_2 = u_input.c.x;
    return func_4(_wgslsmith_mult_u32(~(~4294967295u), func_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1870f, arg_0.x, arg_0.x, -156f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1095f)) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = u_input.d;
    return Struct_2(Struct_1(func_3(1u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(605f, -1000f, -1562f, 255f), vec4<f32>(-643f, 1271f, -799f, -116f)))))), 1i, global1.a.c));
}

fn func_6(arg_0: Struct_2) -> bool {
    let var_0 = ~select(firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.d | u_input.d, vec3<i32>(-1i, global1.a.c.x, 33508i))), u_input.d, !any(vec4<bool>(true, true, true, true)));
    var var_1 = countOneBits(~u_input.c.wz);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1137f - 135f), _wgslsmith_f_op_f32(-1361f + -170f))), -524f)) + -1000f)));
    var var_3 = firstTrailingBit(global1.a.c);
    let var_4 = Struct_4(Struct_1(~(~(~1u)), func_5(-global1.a.c, vec4<i32>(var_3.x << (u_input.b.x % 32u), global1.a.c.x, firstLeadingBit(u_input.d.x), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 13u)], var_3.x)), ~(u_input.c.x | arg_0.a.a)).a.b, -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(50656i, var_0.x)), arg_0.a.c | global1.a.c)), Struct_2(Struct_1(arg_0.a.a, select(-37114i, arg_0.a.c.x, true), _wgslsmith_div_vec2_i32(-vec2<i32>(-25116i, -3399i), firstLeadingBit(u_input.d.yx)))), 4294967295u, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, -14461i, -8120i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.b, -1i, -2147483647i), select(vec3<i32>(-2147483647i, 17409i, var_3.x), var_0, false))) >= arg_0.a.b, firstLeadingBit(abs(countOneBits(global1.a.a))));
    return all(!select(!(!vec4<bool>(var_4.d, true, var_4.d, true)), vec4<bool>(true, var_4.d && var_4.d, true, false), select(select(vec4<bool>(var_4.d, true, false, false), vec4<bool>(var_4.d, false, var_4.d, var_4.d), vec4<bool>(var_4.d, var_4.d, true, var_4.d)), !vec4<bool>(true, true, var_4.d, var_4.d), var_4.d)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: bool) -> f32 {
    var var_0 = u_input.a;
    let var_1 = vec2<bool>(func_6(func_5(abs(arg_1.b.yy), select(vec4<i32>(11375i, 2147483647i, -2147483647i, global1.a.c.x), vec4<i32>(global0[_wgslsmith_index_u32(global1.a.a, 13u)], -2147483647i, 61658i, global0[_wgslsmith_index_u32(global1.a.a, 13u)]), func_2(vec3<f32>(305f, arg_0.x, -1458f), vec3<bool>(arg_2, arg_1.a, true))), 4294967295u & u_input.b.x)), arg_2);
    var var_2 = false;
    let var_3 = Struct_4(Struct_1(u_input.b.x, abs(global0[_wgslsmith_index_u32(global1.a.a, 13u)]), _wgslsmith_mult_vec2_i32(global1.a.c >> (_wgslsmith_clamp_vec2_u32(u_input.c.yx, vec2<u32>(global1.a.a, u_input.b.x), u_input.c.ww) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(global1.a.c, ~arg_1.b.zy))), func_5(vec2<i32>(reverseBits(~u_input.d.x), arg_1.b.x >> (firstLeadingBit(1u) % 32u)), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(7848i, -1i, 0i, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<i32>(global1.a.b, arg_1.b.x, global0[_wgslsmith_index_u32(global1.a.a, 13u)], -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b.x, u_input.d.x, -608i, u_input.d.x), vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], arg_1.b.x, 0i, 71212i))), global1.a.a), 12790u, true, _wgslsmith_add_u32(~(~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, global1.a.a), _wgslsmith_add_vec3_u32(u_input.b, u_input.c.wwy))));
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_div_i32(max(var_3.b.a.c.x, global1.a.c.x), (~global0[_wgslsmith_index_u32(u_input.c.x, 13u)] >> (4294967295u % 32u)) | 0i), ((2147483647i << (~global1.a.a % 32u)) | func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(-41809i, u_input.d.x), vec2<i32>(18248i, 1i), u_input.d.xx), ~vec4<i32>(-2147483647i, 5599i, 65646i, 2147483647i), 1u).a.c.x) ^ 18915i);
    return arg_0.x;
}

fn func_7(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = ~(~reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(global1.a.a, u_input.c.x)), 49548u, _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.c.zx), global1.a.a & global1.a.a)));
    global0 = array<i32, 13>();
    return ~u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true)))) || (select(u_input.b.x != 4294967295u, true, true) && true));
    var var_1 = func_7(vec4<f32>(777f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-199f + -823f), _wgslsmith_f_op_f32(1000f - -1327f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, 2247f) * vec2<f32>(447f, 1109f)), Struct_5(var_0.x, vec3<i32>(global1.a.c.x, -1i, 0i)), global1.a.b < global0[_wgslsmith_index_u32(49746u, 13u)]))), -901f, 1027f), firstLeadingBit(~0u), vec3<f32>(1f, 1f, 1f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f * 1021f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2717f), _wgslsmith_f_op_f32(f32(-1f) * -1861f), true))), 337f));
    global0 = array<i32, 13>();
    global1 = func_5(_wgslsmith_clamp_vec2_i32(countOneBits(var_1.xx), vec2<i32>(u_input.a, ~(~(-9628i))), global1.a.c), vec4<i32>(u_input.d.x, var_1.x, global0[_wgslsmith_index_u32(~u_input.b.x & u_input.c.x, 13u)], 9386i) & ~firstTrailingBit(vec4<i32>(var_1.x, global0[_wgslsmith_index_u32(global1.a.a, 13u)], 1446i, u_input.d.x)), global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b >> (u_input.b.x % 32u));
}


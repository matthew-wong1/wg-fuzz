struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 7>;

var<private> global3: array<u32, 30>;

var<private> global4: u32 = 38088u;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = ~arg_2.a;
    var var_1 = global1.c.x;
    return !select(!global1.b, select(!vec4<bool>(global1.b.x, false, false, global1.b.x), select(global1.b, select(vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), vec4<bool>(true, false, global1.b.x, global1.b.x), true), any(vec3<bool>(true, global1.b.x, false))), vec4<bool>(global1.b.x, true, all(global1.b), false)), vec4<bool>(!all(vec3<bool>(global1.b.x, global1.b.x, false)), 154778u > ~var_0, global1.b.x, any(!vec4<bool>(global1.b.x, false, false, global1.b.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-537f, 134f, global1.e))) * vec3<f32>(arg_2.x, arg_0.e, global1.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 7u)], arg_0.d, -942f), vec3<f32>(arg_2.x, -1581f, 664f)))), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, -602f, 633f))) - vec3<f32>(302f, 202f, -400f))), !(!global1.b.x | (~arg_0.a.x >= 0u))));
    global3 = array<u32, 30>();
    global2 = array<f32, 7>();
    global1 = arg_0;
    return ~select(_wgslsmith_mod_vec3_i32(-vec3<i32>(global1.c.x, 2147483647i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, global1.c.x, global1.c.x), vec3<i32>(-1i, global1.c.x, global1.c.x))) << (~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.x, global1.a.x, u_input.c), vec3<u32>(u_input.d, 4204u, arg_0.a.x)) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(max(arg_3.x, 0u) | countOneBits(12664u), 16u)], -2147483647i << (_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x) % 32u), -37195i), global1.b.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = max(func_4(Struct_2(~(global1.a & global1.a), select(func_3(vec4<i32>(global0[_wgslsmith_index_u32(9886u, 16u)], -50768i, u_input.b, -20932i), Struct_1(u_input.d), Struct_1(global1.a.x), Struct_3(Struct_1(u_input.d))), select(global1.b, vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x), global1.b), all(global1.b.yx)), vec2<i32>(abs(global1.c.x), -global0[_wgslsmith_index_u32(global1.a.x, 16u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(785f)) * _wgslsmith_f_op_f32(min(arg_0.x, -200f))), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~4294967295u, 7u)]))), u_input.b, vec2<f32>(global1.e, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(34300u), 7u)] * -370f)), firstTrailingBit(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(8216u, 23872u)), abs(global1.a)))), vec3<i32>(u_input.b | _wgslsmith_add_i32(u_input.b, -50803i), -27465i, -reverseBits(global0[_wgslsmith_index_u32(u_input.d, 16u)])) >> (abs(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 138084u, 32069u), vec3<u32>(global1.a.x, global3[_wgslsmith_index_u32(global1.a.x, 30u)], global1.a.x), vec3<u32>(8319u, global1.a.x, global1.a.x)), vec3<u32>(global1.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37191u, 30u)], 30u)], 25128u) << (vec3<u32>(global3[_wgslsmith_index_u32(20952u, 30u)], global3[_wgslsmith_index_u32(global1.a.x, 30u)], 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(firstLeadingBit(u_input.c), abs(u_input.c))), 16u)];
    let var_2 = Struct_3(Struct_1(u_input.d));
    var var_3 = !vec3<bool>(global1.b.x, var_2.a.a > abs(_wgslsmith_dot_vec4_u32(vec4<u32>(42694u, global3[_wgslsmith_index_u32(global1.a.x, 30u)], 80979u, global3[_wgslsmith_index_u32(global1.a.x, 30u)]), vec4<u32>(u_input.a, var_2.a.a, 16900u, 33192u))), true);
    var var_4 = Struct_1(abs(~firstTrailingBit(~global3[_wgslsmith_index_u32(global1.a.x, 30u)])));
    return Struct_1(var_2.a.a);
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global4 = _wgslsmith_sub_u32(4294967295u, u_input.d) | 4294967295u;
    global4 = abs(4294967295u);
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~1u, 7u)])), -1918f)))));
    var var_1 = Struct_3(Struct_1(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(57563u, 0u) & global1.a, select(global1.a, vec2<u32>(33130u, u_input.a), global1.b.zw)), 30u)]));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~(u_input.a | 4294967295u), max(~1030u, ~u_input.a), 18536u), 85194u), firstLeadingBit(20145u));
    return func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a.a, 65974u), 7u)], _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global1.a.x, 7u)], 665f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a.x, 7u)])))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(21034u, 7u)], global1.d, -1109f, global1.e), vec4<f32>(-1225f, -1421f, 1902f, global1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1168f, 385f, global2[_wgslsmith_index_u32(4639u, 7u)], 685f) + vec4<f32>(-1111f, global2[_wgslsmith_index_u32(var_2, 7u)], 666f, -1000f))))))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~countOneBits(-global0[_wgslsmith_index_u32(4294967295u, 16u)]);
    global2 = array<f32, 7>();
    var var_1 = Struct_3(func_5(_wgslsmith_dot_vec2_i32(arg_0.c, min(vec2<i32>(u_input.b, var_0) << (vec2<u32>(u_input.c, arg_0.a.x) % vec2<u32>(32u)), -vec2<i32>(arg_0.c.x, -31806i))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-113f, -1459f), vec2<f32>(global1.e, global1.e))), vec4<f32>(266f, arg_0.e, _wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_f32(floor(-2069f))))));
    global2 = array<f32, 7>();
    global3 = array<u32, 30>();
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    var var_0 = abs(-(~vec2<i32>(3998i, 1i)));
    var var_1 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(global1.a.x, 3922u, 0u) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.a, global1.a), ~6167u, 1u), select(vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 30u)], 71473u, 36559u, arg_2.a.x), vec4<u32>(4294967295u, 10096u, global1.a.x, 27940u)), 4294967295u), ~min(vec3<u32>(1u, u_input.d, arg_0), vec3<u32>(global1.a.x, 45798u, global3[_wgslsmith_index_u32(16864u, 30u)])), !arg_2.b.x));
    global2 = array<f32, 7>();
    let var_2 = ~arg_0 | func_1(arg_2).a.x;
    global0 = array<i32, 16>();
    return 4294967295u;
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.c.x, 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 16u)]) | (vec4<i32>(global1.c.x, global1.c.x, global1.c.x, u_input.b) | abs(vec4<i32>(-1i, global1.c.x, global1.c.x, 0i))), vec4<i32>(-1i) * -abs(vec4<i32>(global1.c.x, -5265i, -9313i, global1.c.x))));
    global4 = 0u;
    var_0 = vec4<i32>(16914i, 1i, global1.c.x, _wgslsmith_dot_vec3_i32(select(var_0.yyz, min(var_0.xyx >> (vec3<u32>(arg_2.a, u_input.d, 47099u) % vec3<u32>(32u)), var_0.zzx << (vec3<u32>(arg_2.a, arg_2.a, 12059u) % vec3<u32>(32u))), global1.b.x), vec3<i32>(abs(select(global1.c.x, u_input.b, arg_1)), -_wgslsmith_add_i32(global1.c.x, -2147483647i), abs(1i))));
    var var_1 = ~17954u;
    let var_2 = Struct_3(Struct_1(4294967295u));
    return Struct_2(_wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_3.xy), ~(~vec2<u32>(global3[_wgslsmith_index_u32(global1.a.x, 30u)], 0u)), vec2<u32>(44049u, ~13747u)) | ~reverseBits(vec2<u32>(4294967295u, 14283u)), !global1.b, global1.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3 ^ ~arg_3, min(arg_3, countOneBits(~arg_3))), 7u)], _wgslsmith_f_op_f32(-func_1(func_1(Struct_2(vec2<u32>(u_input.c, arg_3.x), vec4<bool>(arg_1, false, global1.b.x, arg_1), global1.c, global1.e, global1.e))).d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3[_wgslsmith_index_u32(firstLeadingBit(countOneBits(3723u)), 30u)];
    let var_1 = func_7(Struct_1(func_6(_wgslsmith_clamp_u32(1u, u_input.a & 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 3067u, 0u), vec3<u32>(u_input.a, 1u, 4294967295u))), true, func_1(Struct_2(global1.a, global1.b, global1.c, global1.e, -2102f)), global1.c)), func_3(vec4<i32>(u_input.b, -1i, func_4(Struct_2(global1.a, global1.b, vec2<i32>(-1i, 47031i), global1.d, 144f), global0[_wgslsmith_index_u32(u_input.c, 16u)], vec2<f32>(global1.d, 896f), vec2<u32>(4294967295u, 66683u)).x & ~0i, u_input.b), Struct_1(_wgslsmith_add_u32(u_input.d, global3[_wgslsmith_index_u32(~u_input.c, 30u)])), Struct_1(abs(u_input.d << (0u % 32u))), Struct_3(Struct_1(~global1.a.x))).x, Struct_1(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, ~93848u, _wgslsmith_div_u32(51680u, u_input.c)), 30u)]), vec3<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(global1.a, ~vec2<u32>(global1.a.x, global1.a.x)), 1u));
    var var_2 = global1.b.x;
    global0 = array<i32, 16>();
    var var_3 = vec3<bool>(!func_3(abs(-vec4<i32>(u_input.b, 2147483647i, 16816i, u_input.b)), func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.e, global2[_wgslsmith_index_u32(0u, 7u)]), vec2<f32>(1000f, 670f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 7u)], -169f, 1000f) * vec4<f32>(-962f, global2[_wgslsmith_index_u32(36738u, 7u)], -1615f, 711f))), func_5(global0[_wgslsmith_index_u32(4294967295u, 16u)], func_5(-1i, Struct_1(var_1.a.x))), Struct_3(func_2(vec2<f32>(var_1.d, var_1.d), vec4<f32>(1000f, global2[_wgslsmith_index_u32(var_1.a.x, 7u)], var_1.d, 461f)))).x, false, (all(!vec2<bool>(var_1.b.x, false)) || (true & func_1(var_1).b.x)) || (any(func_1(var_1).b.xzy) == true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(select(1i, -1i, func_1(Struct_2(global1.a, vec4<bool>(global1.b.x, false, false, var_3.x), vec2<i32>(-1i, 2147483647i), var_1.d, global1.e)).b.x), 29990i, min(~u_input.b, -2147483647i)), ~5059i));
}


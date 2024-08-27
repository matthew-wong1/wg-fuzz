struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(733f, 420f), vec2<f32>(-803f, 2264f), vec2<f32>(815f, -632f), vec2<f32>(-837f, -301f), vec2<f32>(-571f, 2267f), vec2<f32>(-507f, -1377f), vec2<f32>(-816f, -883f), vec2<f32>(134f, -191f), vec2<f32>(295f, -520f), vec2<f32>(821f, 1834f), vec2<f32>(-1000f, -844f), vec2<f32>(-1550f, -1532f), vec2<f32>(-1592f, 1829f), vec2<f32>(-176f, 293f), vec2<f32>(-1000f, -2659f), vec2<f32>(1149f, 1104f));

var<private> global3: array<f32, 11>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_u32(u_input.a, 4294967295u);
    let var_1 = Struct_1(-64909i, (any(!vec4<bool>(true, global4.x, global4.x, global4.x)) || global4.x) | (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 11u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.b, 11u)], global3[_wgslsmith_index_u32(1u, 11u)])))));
    var var_2 = _wgslsmith_add_vec3_i32(u_input.d.xzy, _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(0i, u_input.d.x, 3693i)), select(firstTrailingBit(vec3<i32>(0i, u_input.d.x, -1i)), vec3<i32>(-6445i, 31844i, -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 6u)])) ^ u_input.d.wxy);
    var var_3 = reverseBits(countOneBits(vec4<u32>(reverseBits(u_input.c), u_input.c ^ u_input.c, u_input.c, u_input.a) ^ ~vec4<u32>(u_input.c, u_input.a, u_input.b, u_input.b)));
    let var_4 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.c, var_3.x, var_3.x, var_3.x), vec4<u32>(var_3.x, 8472u, var_3.x, 67636u), vec4<bool>(false, true, false, var_1.b)), ~vec4<u32>(4294967295u, u_input.c, var_3.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 4294967295u, 0u, 19598u), vec4<u32>(1u, 1u, u_input.a, 57214u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 77226u, u_input.c, 105036u), vec4<u32>(1u, var_3.x, u_input.b, var_3.x), vec4<u32>(20581u, 1u, var_3.x, 11366u))) | vec4<u32>(~_wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_div_u32(~u_input.c, 4294967295u ^ var_3.x), _wgslsmith_div_u32(35602u, ~8685u), ~(~var_3.x)), Struct_1(abs(var_1.a), _wgslsmith_add_u32(20633u, 1860u) <= min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.b, 30538u), vec4<u32>(54364u, 38216u, var_3.x, u_input.a)), _wgslsmith_add_u32(u_input.b, 4294967295u))));
    return ~4294967295u ^ min(_wgslsmith_dot_vec4_u32(var_4.a, var_4.a), u_input.a);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(select(u_input.d.x, u_input.d.x, false), -u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)), u_input.d.x), u_input.d.x), 72090u > arg_1.x);
    var var_1 = Struct_2(~vec4<u32>(arg_1.x, arg_1.x, 31720u, arg_0.a.x ^ _wgslsmith_sub_u32(64972u, 0u)), Struct_1(firstLeadingBit(~(~var_0.a)), 0u != _wgslsmith_div_u32(9936u, u_input.b)));
    let var_2 = u_input.d.zx;
    let var_3 = _wgslsmith_clamp_vec2_i32((-(~vec2<i32>(var_2.x, var_1.b.a)) >> (arg_1.zy % vec2<u32>(32u))) ^ (_wgslsmith_sub_vec2_i32(vec2<i32>(34690i, 1i), countOneBits(u_input.d.xz)) >> (vec2<u32>(0u, _wgslsmith_add_u32(1u, 5228u)) % vec2<u32>(32u))), ~(-vec2<i32>(~37684i, var_2.x)), u_input.d.yz);
    var var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.a ^ abs(0i), _wgslsmith_mult_i32(arg_0.b.a, -10036i) | _wgslsmith_mult_i32(var_1.b.a, 38996i), var_3.x), _wgslsmith_sub_vec3_i32(max(vec3<i32>(var_0.a, u_input.d.x, 1i), u_input.d.wxw) | (vec3<i32>(-2147483647i, u_input.d.x, 2147483647i) & vec3<i32>(var_3.x, -1283i, -2222i)), u_input.d.yxz)) >> (arg_1.xxy % vec3<u32>(32u));
    return _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(65560u, arg_1.x, 11989u)), vec3<u32>(var_1.a.x, var_1.a.x, 1u), arg_1.zxz), vec3<u32>(~_wgslsmith_sub_u32(4294967295u, var_1.a.x), 0u, _wgslsmith_div_u32(35736u, u_input.b)), vec3<u32>(min(arg_0.a.x, ~arg_1.x), _wgslsmith_sub_u32(0u, ~4294967295u), ~44843u)), ~vec3<u32>(max(~arg_0.a.x, u_input.b), 4294967295u, func_3()));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    return ~(~10577u);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> Struct_4 {
    global4 = arg_1;
    return Struct_4(~vec2<u32>(4294967295u, _wgslsmith_mult_u32(~95376u, select(u_input.c, arg_0, false))), Struct_3(abs(0i << (select(4294967295u, arg_0, global4.x) % 32u)), true, select(false, select(false, global4.x, global4.x) | !global4.x, global4.x), vec4<bool>(select(select(true, false, global4.x), u_input.d.x != -2147483647i, -1153f <= global3[_wgslsmith_index_u32(0u, 11u)]), false, true, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = arg_1.b;
    global2 = array<vec2<f32>, 16>();
    global1 = array<vec3<bool>, 6>();
    var var_1 = _wgslsmith_f_op_f32(min(-1469f, -485f));
    let var_2 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 11u)], -866f, global3[_wgslsmith_index_u32(1868u, 11u)], -165f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -2814f, 2250f), vec4<f32>(global3[_wgslsmith_index_u32(arg_1.a.x, 11u)], -287f, 678f, -2307f))), true && (u_input.b != ~u_input.a), vec3<u32>(arg_1.a.x, 4294967295u, arg_1.a.x | 4294967295u) >> (func_2(arg_1, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 75866u, 1u, 1u), vec4<u32>(u_input.c, u_input.c, 4294967295u, 47078u))) % vec3<u32>(32u))), var_0.d.zww, ~(~_wgslsmith_div_i32(~var_0.a, arg_2.a)), countOneBits(firstLeadingBit(0i)));
    return 18475i;
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    global2 = array<vec2<f32>, 16>();
    let var_0 = i32(-1i) * -17334i;
    var var_1 = Struct_5(u_input.d.x, global4.x, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 573f) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 11u)] + global3[_wgslsmith_index_u32(0u, 11u)])), global3[_wgslsmith_index_u32(u_input.b, 11u)])), -114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 11u)])))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~func_2(Struct_4(vec2<u32>(1u, u_input.b), Struct_3(1i, false, global4.x, vec4<bool>(global4.x, global4.x, true, false))), vec4<u32>(u_input.a, arg_0.x, arg_0.x, u_input.c)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(2600u, arg_0.x, 64957u), _wgslsmith_sub_vec3_u32(vec3<u32>(44682u, 27791u, 64740u), arg_0))), 11u)]), Struct_1(~11555i, !(!all(global4.yy))));
    var var_2 = ~u_input.d.wwx;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 11u)] * _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(0u, 11u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(422f)))) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, u_input.a), 11u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-388f, -1540f, true))))));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(func_6(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 22246u, u_input.a), abs(vec3<u32>(u_input.c, u_input.c, 0u))), ~max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -14511i, -40265i), u_input.d.zyx) | select(vec3<i32>(u_input.d.x, u_input.d.x, -1i), vec3<i32>(8436i, 0i, 17598i), global4.x), vec3<i32>(func_1(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], -1110f, global3[_wgslsmith_index_u32(u_input.c, 11u)]), Struct_4(vec2<u32>(u_input.a, 0u), Struct_3(-23605i, global4.x, global4.x, vec4<bool>(true, global4.x, false, true))), Struct_1(u_input.d.x, global4.x), u_input.d.x), u_input.d.x, u_input.d.x))), 11u)];
    global1 = array<vec3<bool>, 6>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 11u)]))) * global3[_wgslsmith_index_u32(u_input.a, 11u)]), -498f, 485f);
    let var_2 = _wgslsmith_sub_u32(47781u, ~countOneBits(firstTrailingBit(139299u) >> (u_input.b % 32u)));
    global3 = array<f32, 11>();
    global1 = array<vec3<bool>, 6>();
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -1678f, 1215f);
    let var_3 = func_5(_wgslsmith_mod_u32(4294967295u, reverseBits(~u_input.b & 4294967295u)), vec3<bool>(true, global4.x, global4.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-39527i), 73019i ^ u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), abs(max(vec3<i32>(1i, u_input.d.x, u_input.d.x), vec3<i32>(24565i, u_input.d.x, u_input.d.x))))), u_input.d.x).b.d.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 0u), ~u_input.c), var_2, 1u), select(vec4<u32>(func_5(0u, vec3<bool>(var_3.x, true, var_3.x), u_input.d.x, u_input.d.x).a.x, u_input.b, ~76664u, ~4294967295u), vec4<u32>(~var_2, func_4(vec4<f32>(-1000f, var_1.x, var_1.x, global3[_wgslsmith_index_u32(21047u, 11u)]), vec4<f32>(var_1.x, var_1.x, -1004f, -878f), var_3.x, vec3<u32>(u_input.b, 1u, u_input.b)), u_input.a, 60077u), select(!vec4<bool>(false, true, false, global4.x), func_5(u_input.a, global1[_wgslsmith_index_u32(2951u, 6u)], -2147483647i, -29631i).b.d, select(vec4<bool>(true, false, false, global4.x), vec4<bool>(var_3.x, false, var_3.x, global4.x), vec4<bool>(var_3.x, var_3.x, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(round(-969f)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1734u, u_input.a), 11u)], _wgslsmith_f_op_f32(max(-296f, 1046f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], var_1.x, 1119f, 139f) - vec4<f32>(-891f, 1635f, 1050f, -2335f))))), ~_wgslsmith_mult_vec2_u32((vec2<u32>(u_input.b, var_2) | vec2<u32>(u_input.c, 4294967295u)) | vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 14173u), vec2<u32>(116447u, 4294967295u)), ~vec2<u32>(1u, 0u))), 2722u & select(var_2, 1u, all(select(vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(false, global4.x, true, false), vec4<bool>(false, var_3.x, global4.x, true)))));
}


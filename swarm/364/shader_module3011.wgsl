struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 28>;

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, true, false, false, true, false, false, true, false, false, true, false, true, true, false, true, true, false, false, false, true, false, false, false, false);

var<private> global3: array<vec3<bool>, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_4(Struct_2(arg_1.x != -2533f), vec3<f32>(-264f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), -1981f)))));
    var var_1 = Struct_5(vec4<i32>(-1i, reverseBits(arg_0), -1i, -max(arg_0, ~global1[_wgslsmith_index_u32(arg_2.x, 28u)])), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(-19852i, global1[_wgslsmith_index_u32(0u, 28u)]) & vec2<i32>(0i, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(15413i, arg_0), vec2<i32>(u_input.b, arg_0), vec2<i32>(-9089i, 20540i)))), abs(vec4<u32>(0u, 18077u, ~(~1u), arg_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1077f)), _wgslsmith_f_op_f32(-arg_1.x), 990f, arg_1.x)), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 26u)], true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.zx), 26u)]));
    var_0 = Struct_4(Struct_2(true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-439f, _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -3196f))), 828f)));
    let var_2 = Struct_4(var_0.a, arg_1.www);
    global0 = u_input.b >> ((max(var_1.c.x, 14909u) << (select(abs(_wgslsmith_div_u32(var_1.c.x, 49635u)), 33895u, true) % 32u)) % 32u);
    return all(select(select(!select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(true, var_0.a.a, false), vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec3<bool>(true, var_2.a.a, true), false), var_1.e.wyy, select(vec3<bool>(var_0.a.a, var_0.a.a || var_2.a.a, all(vec3<bool>(false, var_0.a.a, var_1.e.x))), !var_1.e.zyz, global3[_wgslsmith_index_u32(~(~1u), 1u)])));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(round(-3082f));
    var var_2 = Struct_4(Struct_2(arg_3.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-206f, 987f)), _wgslsmith_f_op_f32(step(-914f, -1478f)), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, var_1, var_1)))))));
    let var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26593u, u_input.c.x, 87961u) | vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, 1u), abs(vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.c.x))), max(76265u, u_input.d.x))), 26u)];
    var var_4 = Struct_3(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b) | global1[_wgslsmith_index_u32(41045u, 28u)], _wgslsmith_mult_i32(u_input.b | 1i, max(-2147483647i, -7486i)), -global1[_wgslsmith_index_u32(~30204u, 28u)]), Struct_2(arg_3.x), Struct_2(func_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-40246i, -23104i, 2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec4<i32>(u_input.a, -933i, 0i, u_input.a)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, var_2.b.x, 203f, arg_2))), max(~vec2<u32>(u_input.d.x, 2396u), u_input.c.yz))), vec3<u32>(select(51800u, _wgslsmith_sub_u32(39008u, u_input.d.x), true) ^ 48439u, countOneBits(u_input.c.x), select(_wgslsmith_add_u32(~u_input.c.x, ~4294967295u), u_input.c.x, all(select(arg_1.yww, vec3<bool>(true, arg_3.x, false), false)))), var_2.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.e));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    var var_0 = global3[_wgslsmith_index_u32(u_input.d.x, 1u)];
    let var_1 = select(false, !any(!(!global3[_wgslsmith_index_u32(1u, 1u)])), false);
    var var_2 = Struct_4(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1, !select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 26u)], var_1, var_1), vec4<bool>(true, false, var_1, var_1), vec4<bool>(false, var_0.x, global2[_wgslsmith_index_u32(0u, 26u)], true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), select(!vec2<bool>(true, var_0.x), !var_0.yx, var_0.zy)))));
    global3 = array<vec3<bool>, 1>();
    let var_3 = Struct_5(_wgslsmith_div_vec4_i32(-min(vec4<i32>(-2147483647i, 1i, global1[_wgslsmith_index_u32(48812u, 28u)], u_input.b), max(vec4<i32>(-15754i, u_input.a, -2147483647i, 2147483647i), vec4<i32>(u_input.b, u_input.a, 12453i, global1[_wgslsmith_index_u32(u_input.d.x, 28u)]))), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -17174i, u_input.a, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 74i, 33571i, 10772i)))), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(62223u, firstTrailingBit(4294967295u & u_input.d.x)), 28u)]), firstTrailingBit(vec4<u32>(30282u, countOneBits(u_input.c.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 61364u), 59522u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d.x, 46888u, 4294967295u, u_input.c.x), vec4<u32>(0u, u_input.c.x, 4294967295u, 4294967295u)), ~vec4<u32>(0u, 1u, 0u, u_input.d.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 802f, var_2.b.x, 1000f)))))), vec4<bool>(!all(select(vec4<bool>(var_1, var_0.x, false, arg_0.a), vec4<bool>(var_0.x, true, false, var_2.a.a), var_0.x)), func_3(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, -2468f, 998f, 1479f) - vec4<f32>(var_2.b.x, 433f, 1594f, 757f)), vec2<u32>(u_input.c.x | 4294967295u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x))), false, true));
    return StorageBuffer(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-627f, var_3.d.x))))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.c.zz, vec2<u32>(0u, 2505u)) << (u_input.c.x % 32u), 11631u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false);
    let var_1 = ~(min(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_clamp_u32(u_input.d.x, 1u, 49547u)), u_input.d.x) | 1u);
    global0 = -1015i;
    let var_2 = -global1[_wgslsmith_index_u32(1u << (~u_input.d.x % 32u), 28u)];
    global0 = abs(u_input.a >> (1u % 32u));
    let x = u_input.a;
    s_output = func_1(Struct_2(!all(vec4<bool>(global2[_wgslsmith_index_u32(var_1, 26u)], true, false, true))), -1149f);
}


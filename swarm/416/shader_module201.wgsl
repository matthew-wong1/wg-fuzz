struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-47390i, vec3<bool>(true, true, false), vec4<u32>(1u, 11182u, 1u, 4294967295u), true);

var<private> global1: array<i32, 15>;

var<private> global2: f32;

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    global1 = array<i32, 15>();
    global2 = _wgslsmith_f_op_f32(1628f + _wgslsmith_f_op_f32(503f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(621f)) + 770f))));
    let var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(max(countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(39387u, 15u)], -21048i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 15u)])), -(vec4<i32>(global0.a, global1[_wgslsmith_index_u32(global0.c.x, 15u)], -1i, global1[_wgslsmith_index_u32(22579u, 15u)]) ^ vec4<i32>(global0.a, 2147483647i, 2147483647i, global1[_wgslsmith_index_u32(global0.c.x, 15u)]))), -(~(vec4<i32>(global1[_wgslsmith_index_u32(11941u, 15u)], global0.a, 0i, -35714i) << (global0.c % vec4<u32>(32u))))), (-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(4384u, 15u)], -2147483647i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global0.a, -22086i, global0.a)) | vec4<i32>(-2147483647i, 46774i, 0i, 2147483647i)) ^ vec4<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 7305u), 15u)], global0.a, global1[_wgslsmith_index_u32(~(~38334u), 15u)], _wgslsmith_sub_i32(-42674i, -1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(global1[_wgslsmith_index_u32(global0.c.x, 15u)], -1i, global0.a), vec3<i32>(50544i, global1[_wgslsmith_index_u32(u_input.a, 15u)], 0i)), -vec3<i32>(14531i, 1i, global0.a)), max(0i, ~global1[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -1i, 1i, -7896i), vec4<i32>(58966i, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 42194u << (global0.c.x % 32u)), 15u)]) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, 75147i, 25774i) << (global0.c % vec4<u32>(32u)), vec4<i32>(30703i, -2147483647i, 12459i, 1i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 15u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 15u)], global0.a)), abs(vec4<i32>(global0.a, global0.a, global1[_wgslsmith_index_u32(17494u, 15u)], -4270i))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, 693f)))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(151f, _wgslsmith_f_op_f32(143f + 360f))))));
    var var_1 = min(-var_0.x, -abs(global1[_wgslsmith_index_u32(4294967295u, 15u)]) << ((4294967295u >> (_wgslsmith_dot_vec3_u32(global0.c.xwz, global0.c.wyz) % 32u)) % 32u)) >> (u_input.a % 32u);
    return vec3<bool>(!any(select(select(vec4<bool>(global0.b.x, global0.d, global0.d, global0.d), vec4<bool>(global0.d, global0.d, false, true), global0.b.x), select(vec4<bool>(global0.b.x, true, global0.d, global0.b.x), vec4<bool>(global0.d, global0.d, true, false), vec4<bool>(global0.b.x, true, global0.b.x, global0.d)), !vec4<bool>(false, global0.b.x, global0.d, global0.d))), !(2147483647i == select(31482i, global1[_wgslsmith_index_u32(u_input.b, 15u)], 4294967295u < u_input.b)), !any(vec3<bool>(global0.c.x >= global0.c.x, true, false)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = global0.a;
    var var_1 = Struct_2(vec3<bool>(false, arg_0.b.x, select(any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -757f) == _wgslsmith_f_op_f32(ceil(596f)))), Struct_1(-1631f, -2389f, -abs(-1i), all(!select(vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_1.x, arg_1.x, arg_2.x), global0.b.x))));
    let var_2 = func_3();
    var_1 = Struct_2(!select(var_1.a, global0.b, var_2), var_1.b);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b + _wgslsmith_f_op_f32(-470f - -726f))) * _wgslsmith_f_op_f32(select(-531f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(-var_1.b.b)), var_2.x))), -432f, global1[_wgslsmith_index_u32(arg_0.c.x, 15u)], select(arg_0.d, true, !select(!global0.b.x, -1i < var_1.b.c, arg_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_2(!(!vec3<bool>(var_0.a.x, arg_0.a.x | var_0.b.d, all(var_0.a.xx))), Struct_1(_wgslsmith_f_op_f32(-arg_1.b), 894f, -abs(0i | global0.a), any(select(!global0.b.zz, func_3().yx, !var_0.a.zy))));
    global0 = Struct_4(_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_0.b.c, global0.a, var_0.b.c) ^ vec3<i32>(var_0.b.c, global1[_wgslsmith_index_u32(u_input.a, 15u)], -199i), vec3<i32>(var_0.b.c, -97861i, -2147483647i)), ~(vec3<i32>(var_0.b.c, global0.a, -2147483647i) | vec3<i32>(global1[_wgslsmith_index_u32(arg_3.x, 15u)], 2147483647i, -40254i))) & 0i, var_0.a, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3, global0.c.wzz), abs(~54073u), ~arg_3.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(43972u, u_input.b), arg_3.x)), global0.c), global0.d);
    global0 = Struct_4(reverseBits(~firstLeadingBit(_wgslsmith_div_i32(global0.a, var_0.b.c))), global0.b, global0.c, func_3().x);
    let var_1 = Struct_3(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 1000f)));
    return 1189f;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_2(global0.b, func_2(Struct_4(arg_0, global0.b, global0.c, true), select(vec2<bool>(true, global0.d), vec2<bool>(global0.d, true), true), vec2<bool>(global0.d, false))), Struct_3(abs(u_input.b) >> (119008u % 32u), _wgslsmith_div_f32(1876f, _wgslsmith_f_op_f32(f32(-1f) * -1841f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1037f, arg_1, 502f, arg_1) * vec4<f32>(arg_1, arg_1, arg_1, -922f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 2033f, arg_1, 1000f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, -854f), vec4<f32>(-184f, 560f, arg_1, 185f)))))), abs(~vec3<u32>(4294967295u, u_input.b, 0u)) & global0.c.zzy)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f - arg_1)), arg_1))))));
    var var_0 = vec3<bool>(!(~global0.c.x > global0.c.x), !(!(global0.b.x | false)), true);
    return Struct_4(_wgslsmith_sub_i32(-6629i, ~global1[_wgslsmith_index_u32(1862u, 15u)]), global0.b, vec4<u32>(6652u, 1u, global0.c.x, 22562u), false);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    var var_0 = global0.c.wx;
    var_0 = ~arg_1.c.yy;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334f * arg_2.b.a) + func_2(arg_1, arg_2.a.yx, vec2<bool>(true, global0.d)).b), arg_2.b.a))));
    global0 = func_1(global1[_wgslsmith_index_u32(4294967295u, 15u)], 1240f);
    return ~(abs(10238u) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(global1[_wgslsmith_index_u32(~abs(func_5(firstTrailingBit(vec2<i32>(1i, global1[_wgslsmith_index_u32(41663u, 15u)])), func_1(global0.a, -398f), Struct_2(global0.b, Struct_1(1000f, 1000f, -7422i, true)))), 15u)], global0.a, select(true, global0.b.x, global0.b.x & true));
    var var_0 = _wgslsmith_f_op_f32(ceil(-898f));
    global3 = ~abs(global0.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-917f, _wgslsmith_f_op_f32(trunc(997f)), all(vec4<bool>(true, true, global0.d, true)))), -193f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(Struct_4(27834i, global0.b, vec4<u32>(46601u, global0.c.x, global0.c.x, global0.c.x), global0.d), global0.b.yx, global0.b.yy).b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-396f, -159f)) * 100f))) + -1505f);
    global0 = Struct_4(41962i, vec3<bool>(false || (all(vec4<bool>(global0.d, false, true, true)) && !global0.d), select(true, true, any(global0.b)) & func_2(func_1(-46593i, -1394f), vec2<bool>(global0.d, global0.d), global0.b.xx).d, true), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(22006u, global0.c.x), select(45253u, global0.c.x, global0.b.x), u_input.a), ~(~0u), 4294967295u, ~u_input.a) << (~global0.c % vec4<u32>(32u)), true & !global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1371f), vec3<i32>(_wgslsmith_mult_i32(global0.a, global1[_wgslsmith_index_u32(~u_input.b, 15u)]), _wgslsmith_mod_i32(-(-1i ^ global1[_wgslsmith_index_u32(global0.c.x, 15u)]), _wgslsmith_div_i32(-2147483647i, 27208i)), -1i & _wgslsmith_add_i32(-global1[_wgslsmith_index_u32(30576u, 15u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, global0.a, global1[_wgslsmith_index_u32(global0.c.x, 15u)]), vec3<i32>(global0.a, -21496i, global0.a)))), -vec4<i32>(-1i & -global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], -33196i, global0.a), vec3<i32>(global1[_wgslsmith_index_u32(0u, 15u)], 33737i, 264i)), select(vec3<i32>(global1[_wgslsmith_index_u32(global0.c.x, 15u)], global0.a, 48268i), vec3<i32>(global0.a, global0.a, global1[_wgslsmith_index_u32(u_input.b, 15u)]), global0.d)), _wgslsmith_dot_vec3_i32(~vec3<i32>(36543i, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.a, -26783i, 77974i), vec3<i32>(global0.a, global1[_wgslsmith_index_u32(1u, 15u)], 48274i))), countOneBits(global1[_wgslsmith_index_u32(u_input.b, 15u)] | global1[_wgslsmith_index_u32(0u, 15u)])));
}


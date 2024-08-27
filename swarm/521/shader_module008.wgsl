struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(42062i, i32(-2147483648), i32(-2147483648)), vec3<i32>(65558i, 18635i, -1i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-32108i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(1i, -19783i, 23240i), vec3<i32>(1i, 31464i, 0i), vec3<i32>(i32(-2147483648), -1i, -26276i), vec3<i32>(46871i, -1i, 0i), vec3<i32>(i32(-2147483648), 0i, 3883i), vec3<i32>(23670i, -55499i, 54757i), vec3<i32>(-41318i, -54982i, -18862i), vec3<i32>(-21666i, 0i, 1i), vec3<i32>(-9755i, -24828i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, 24143i), vec3<i32>(1i, -52709i, 0i), vec3<i32>(-1i, 17342i, -1i), vec3<i32>(0i, -18777i, 1i), vec3<i32>(i32(-2147483648), 1i, 16200i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(arg_3.a, -select(~global1[_wgslsmith_index_u32(u_input.d.x, 19u)], max(arg_2.b, arg_1.b), !any(global0[_wgslsmith_index_u32(40070u, 23u)])), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - 648f), _wgslsmith_f_op_f32(select(-397f, arg_1.d.x, arg_3.e))))), _wgslsmith_f_op_vec4_f32(max(arg_1.d, vec4<f32>(-594f, arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f * arg_1.d.x))))), true);
    var var_1 = Struct_1(true, vec3<i32>(2147483647i, -41703i, 2147483647i) | (countOneBits(vec3<i32>(2147483647i, 1i, arg_3.b.x)) & _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(4294967295u | u_input.d.x, 19u)], vec3<i32>(-6038i, -2147483647i, 0i))), _wgslsmith_f_op_f32(select(arg_3.c, -1490f, arg_2.a)), var_0.d, true);
    global0 = array<vec2<bool>, 23>();
    global0 = array<vec2<bool>, 23>();
    return (_wgslsmith_sub_i32(-19432i, 0i) & firstTrailingBit(arg_0.x)) >= _wgslsmith_clamp_i32(u_input.c, ~arg_3.b.x, -1i);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = vec3<bool>(arg_1, arg_1, select(!all(global0[_wgslsmith_index_u32(u_input.d.x, 23u)]), false, func_3((vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) | vec4<i32>(2147483647i, 3104i, u_input.c, 32541i)) | select(vec4<i32>(-37464i, u_input.c, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, -18702i), vec4<bool>(true, arg_1, false, arg_1)), Struct_1(true, _wgslsmith_sub_vec3_i32(vec3<i32>(-44129i, u_input.c, u_input.c), global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), vec4<f32>(-876f, arg_0.x, 959f, arg_0.x), select(false, false, arg_1)), Struct_1(all(global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 58943i, u_input.c), vec3<i32>(40350i, u_input.c, u_input.c)), -1000f, arg_0, arg_1 & false), Struct_1(all(vec3<bool>(false, arg_1, arg_1)), min(vec3<i32>(14704i, -26352i, -1i), vec3<i32>(31422i, 8524i, -14548i)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(arg_0.x, 579f, 400f, 244f)), true))));
    global1 = array<vec3<i32>, 19>();
    let var_1 = Struct_1(!var_0.x, global1[_wgslsmith_index_u32(u_input.d.x, 19u)], -381f, _wgslsmith_f_op_vec4_f32(-arg_0), false);
    let var_2 = var_1;
    global0 = array<vec2<bool>, 23>();
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = ~u_input.d.zwy;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(arg_0.d)), false == (reverseBits(4294967295u << (u_input.b % 32u)) <= max(~0u, ~43955u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, arg_1.d.x, 1677f, -448f) + var_1.d), 70778i < arg_1.b.x).c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - var_1.d.x))))))));
    var var_3 = select(vec3<bool>(all(!(!vec3<bool>(arg_0.a, true, arg_1.a))), select(arg_1.a == true, arg_1.e || !var_1.e, arg_1.e), !all(global0[_wgslsmith_index_u32(countOneBits(var_0.x), 23u)])), vec3<bool>(!(all(global0[_wgslsmith_index_u32(u_input.b, 23u)]) | true), all(vec4<bool>(any(global0[_wgslsmith_index_u32(var_0.x, 23u)]), 49750i != arg_0.b.x, false, arg_0.a)), func_2(arg_0.d, arg_1.e).e), vec3<bool>(false, arg_1.e, !arg_1.e));
    let var_4 = 0i;
    return vec3<bool>(true, !(-u_input.c < 22999i), any(select(!(!vec4<bool>(true, true, arg_0.e, true)), vec4<bool>(func_2(arg_1.d, false).a, select(true, false, arg_0.a), var_3.x, !arg_0.a), true)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = vec4<bool>(all(func_4(Struct_1(true, global1[_wgslsmith_index_u32(1u, 19u)], arg_2, vec4<f32>(-885f, -369f, 142f, arg_2), true), func_2(vec4<f32>(arg_2, arg_2, -1138f, 508f), false))) && true, !any(func_4(func_2(vec4<f32>(arg_2, -218f, arg_2, arg_2), false), Struct_1(false, vec3<i32>(-2147483647i, arg_0, -25444i), arg_2, vec4<f32>(-1000f, arg_2, arg_2, arg_2), false))), true, true);
    var var_1 = var_0;
    var_1 = select(vec4<bool>(!var_1.x, true, var_0.x, false | var_0.x), vec4<bool>(select(-1077f > arg_2, false, false) & (0i <= (22279i >> (u_input.b % 32u))), true, func_4(Struct_1(all(var_0.xzz), firstTrailingBit(vec3<i32>(0i, -12805i, arg_1)), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -2327f, arg_2, -513f))), all(var_1.xw)), Struct_1(any(var_1.wx), _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(86544u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), 1238f, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 1126f, arg_2) * vec4<f32>(arg_2, -297f, arg_2, arg_2)), var_0.x)).x, false), true);
    let var_2 = vec4<bool>(!(1u < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 4294967295u) & u_input.d, ~u_input.d)), true, any(!vec2<bool>(true, 74718u == u_input.a.x)), true);
    global1 = array<vec3<i32>, 19>();
    return Struct_1(any(vec2<bool>(var_1.x, !func_2(vec4<f32>(-1017f, 1052f, -1682f, 1069f), var_2.x).e)), (select(-vec3<i32>(arg_0, arg_1, arg_1), _wgslsmith_mod_vec3_i32(vec3<i32>(18169i, u_input.c, -1i), global1[_wgslsmith_index_u32(2184u, 19u)]), !var_0.xwx) << (vec3<u32>(1u, 4294967295u, u_input.d.x) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c | -2147483647i, _wgslsmith_div_i32(arg_1, arg_1), -63230i), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_1, 40302i, arg_1), _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]))), arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1397f)), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - 538f)))), !select(true, true, select(var_2.x, var_2.x, var_2.x)) && var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = Struct_1(true, ~abs(global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1176f - 1608f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(_wgslsmith_f_op_vec4_f32(min(arg_0.d, arg_0.d)), any(vec4<bool>(arg_0.a, false, arg_2.a, arg_2.e))).d) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_1.x, -1042f, -188f))))), !(arg_0.a & true));
    let var_1 = reverseBits(_wgslsmith_div_vec3_u32(firstTrailingBit(~(vec3<u32>(u_input.b, arg_3, arg_3) << (vec3<u32>(u_input.a.x, 6226u, 7253u) % vec3<u32>(32u)))), u_input.a));
    global1 = array<vec3<i32>, 19>();
    global0 = array<vec2<bool>, 23>();
    let var_2 = abs(arg_3);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.zzy, vec3<u32>(65552u, 30790u, 12875u)), ~u_input.d.x), u_input.a.xy), 57450u), min(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~u_input.d.x, u_input.d.x, 14876u)), u_input.b), _wgslsmith_div_u32(u_input.d.x, 1u), 1u);
    let var_1 = -1000f;
    global0 = array<vec2<bool>, 23>();
    var_0 = vec4<u32>(34975u, var_0.x, 1u, u_input.a.x);
    var var_2 = vec4<f32>(-746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -616f, -2282f);
    global0 = array<vec2<bool>, 23>();
    let var_3 = vec4<u32>(78384u, 4294967295u, var_0.x, _wgslsmith_div_u32(44664u, u_input.a.x));
    global0 = array<vec2<bool>, 23>();
    let var_4 = var_3.xw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(1000f - -1000f)) * _wgslsmith_f_op_f32(min(var_1, var_1))), var_1), 1i, func_5(func_1(-50473i, -(u_input.c & u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(567f - 1859f) * _wgslsmith_f_op_f32(f32(-1f) * -1146f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -975f) * var_2.wxz)), var_2.wyx, vec3<bool>(var_3.x < 0u, true, any(vec4<bool>(false, true, true, true))))), Struct_1(true, reverseBits(_wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(var_3.x, 19u)], vec3<i32>(u_input.c, 0i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_div_f32(var_2.x, var_1), -215f, _wgslsmith_f_op_f32(-var_1)), ~u_input.c <= min(-1070i, 2147483647i)), max(var_4.x, ~1652u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 30085u), ~var_3) % 32u)));
}


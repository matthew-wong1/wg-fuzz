struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(36034u, 80327u, 4294967295u, 41128u, 1u, 1113u, 4294967295u, 1u, 1u, 68121u, 0u, 0u, 5705u, 39258u, 0u, 37713u, 127770u, 6581u, 21077u, 0u, 4294967295u, 54484u, 0u, 1u, 13668u, 1u);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1i), Struct_1(2147483647i), Struct_1(9383i), Struct_1(31437i), Struct_1(i32(-2147483648)), Struct_1(-33333i), Struct_1(-1i), Struct_1(1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-3820i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-32496i), Struct_1(-1i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(-2686i), Struct_1(-1282i), Struct_1(39894i), Struct_1(53079i), Struct_1(0i), Struct_1(73475i), Struct_1(19477i), Struct_1(1i), Struct_1(-26626i), Struct_1(-5353i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(0i), Struct_1(i32(-2147483648)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = ~((~vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40507u, 26u)], 26u)], 26u)], global0[_wgslsmith_index_u32(1u, 26u)]) >> (((vec3<u32>(global0[_wgslsmith_index_u32(5163u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], 13938u) & vec3<u32>(global0[_wgslsmith_index_u32(17946u, 26u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)])) >> ((vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19981u, 26u)], 26u)], global0[_wgslsmith_index_u32(26491u, 26u)], 4294967295u) << (vec3<u32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], global0[_wgslsmith_index_u32(21209u, 26u)]) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))) & countOneBits(~vec3<u32>(108621u, 27696u, 8212u)));
    let var_1 = Struct_1(u_input.a);
    var var_2 = min(_wgslsmith_dot_vec2_u32(var_0.zy, var_0.yz), _wgslsmith_sub_u32(var_0.x, ~4294967295u) & ~14846u);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-660f, -476f, -1234f), vec3<f32>(-1168f, -642f, 268f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, 602f, -1650f)) + vec3<f32>(-1000f, 460f, 227f))))))));
    var_0 = vec3<u32>(var_0.x, var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(max(var_0.x, var_0.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)] ^ 0u, _wgslsmith_mult_u32(50524u, global0[_wgslsmith_index_u32(var_0.x, 26u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 0u, 14651u), vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 26u)], 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 26u)], 26u)], global0[_wgslsmith_index_u32(25991u, 26u)]))), ~(vec4<u32>(1u, 55867u, 4294967295u, 11295u) >> (vec4<u32>(21122u, var_0.x, var_0.x, 114903u) % vec4<u32>(32u)))), max(~(~vec4<u32>(global0[_wgslsmith_index_u32(69508u, 26u)], 38419u, 49465u, 1u)), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 26u)], 0u, 55814u, global0[_wgslsmith_index_u32(0u, 26u)])))));
    return var_3.x;
}

fn func_2() -> f32 {
    let var_0 = -(u_input.a ^ u_input.a);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11931u, 26u)], 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), 32u)];
    var var_2 = vec2<f32>(-126f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-883f, _wgslsmith_f_op_f32(step(1147f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -2002f)) * _wgslsmith_f_op_f32(round(1563f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1082f + 1838f), _wgslsmith_f_op_f32(-1973f - -910f), true)))));
    global1 = array<Struct_1, 32>();
    var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, -317f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, var_2.x))), vec2<f32>(var_2.x, 138f)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<u32, 26>();
    global1 = array<Struct_1, 32>();
    var var_0 = global1[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)] << (countOneBits(_wgslsmith_add_u32(1u, 33955u)) % 32u)), 32u)];
    var var_1 = Struct_1(arg_0.a);
    return arg_0;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<u32, 26>();
    var var_0 = Struct_1(-_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a))), abs(u_input.a)));
    var_0 = func_4(Struct_1(-max(var_0.a, var_0.a) & reverseBits(-36640i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_0.x * -1296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1514f, -670f)), -1000f))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81737u, 26u)], 26u)] != 2559u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true), false), any(vec4<bool>(true, true, true, true))), _wgslsmith_add_vec3_i32(firstLeadingBit(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-23311i, 34346i, var_0.a), vec3<i32>(2147483647i, var_0.a, var_0.a)))), firstLeadingBit(firstLeadingBit(-vec3<i32>(u_input.a, 0i, u_input.a)))));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    return func_4(Struct_1(39593i), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-139f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1372f)))), arg_0.x), !vec2<bool>(any(vec2<bool>(true, true)), false), (_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, -2147483647i, u_input.a) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], 11494u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, 53609i, u_input.a) | vec3<i32>(-26765i, var_0.a, u_input.a), ~vec3<i32>(u_input.a, u_input.a, -67705i)) | select(max(vec3<i32>(var_0.a, 33075i, 2200i), vec3<i32>(1i, var_0.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 53674i, 53095i), vec3<i32>(20704i, -25020i, 0i)), vec3<bool>(true, true, false))) << (max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(71980u, global0[_wgslsmith_index_u32(0u, 26u)], 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(20022u, global0[_wgslsmith_index_u32(28029u, 26u)], 4246u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31078u, 26u)], 26u)], 26u)], 26u)], 24334u, 1u)), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51281u, 26u)], 26u)], 26u)], 26u)], 26u)], 54133u, 24971u)), countOneBits(vec3<u32>(55108u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 4294967295u) ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)]))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = all(vec2<bool>(true, !any(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1232f);
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-589f, 1032f), vec2<f32>(var_2, var_2))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(530f, var_2)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, 800f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, -2001f), vec2<f32>(-956f, var_2)), vec2<bool>(true, true))))));
    global1 = array<Struct_1, 32>();
    return 26376i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(~(firstLeadingBit(vec4<i32>(-33955i, 1i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) << (vec4<u32>(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]), global0[_wgslsmith_index_u32(4294967295u, 26u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78054u, 26u)], 26u)] % 32u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], global0[_wgslsmith_index_u32(34340u, 26u)]) % vec4<u32>(32u))), vec4<i32>(func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, -663f))), Struct_1(-u_input.a)), -12792i, u_input.a, u_input.a));
    let var_1 = u_input.a & u_input.a;
    global1 = array<Struct_1, 32>();
    var var_2 = 713f;
    var var_3 = -u_input.a;
    let var_4 = false;
    global1 = array<Struct_1, 32>();
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-926f, -1447f), -656f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(~(-34675i ^ u_input.a), _wgslsmith_add_i32(15818i, var_1 << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13094u, 26u)], 26u)], 26u)] % 32u)), u_input.a, ~(-25193i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2345f, var_5.x), _wgslsmith_f_op_f32(-454f - -303f))))));
}


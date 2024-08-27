struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: bool = true;

var<private> global2: i32 = -5853i;

var<private> global3: array<i32, 20>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_1(53558i, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 39382i, global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<i32>(2147483647i, 0i, 2147483647i, global3[_wgslsmith_index_u32(arg_2.x, 20u)])), _wgslsmith_mod_i32(arg_1.b.x, arg_0.a), firstTrailingBit(52206i)), -arg_0.b)), arg_1.b.x >> (475u % 32u), arg_1.d, true);
    global4 = _wgslsmith_dot_vec2_i32(-(~arg_0.b.zz), arg_0.b.xy);
    let var_1 = vec4<i32>(~(~(i32(-1i) * -global3[_wgslsmith_index_u32(u_input.a, 20u)])), -9590i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(countOneBits(arg_2.x), 20u)], i32(-1i) * -53285i), arg_1.c);
    let var_2 = var_0.b;
    global0 = array<vec2<bool>, 25>();
    return arg_0.b << (arg_2.xyw % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    global3 = array<i32, 20>();
    global4 = -1i;
    let var_0 = arg_0;
    global2 = -var_0.c;
    var var_1 = ~(-vec4<i32>(52097i, -28804i, ~(-arg_0.a), -26997i));
    return var_0;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1628f - -1043f))));
    global4 = ~global3[_wgslsmith_index_u32(0u, 20u)];
    var var_1 = Struct_1(86225i, abs(_wgslsmith_mod_vec3_i32(abs(arg_0.b), vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 20u)], -2147483647i, global3[_wgslsmith_index_u32(0u, 20u)]))), 1i, select(func_2(arg_0, !(!arg_0.e), ~u_input.a & 1u, select(global0[_wgslsmith_index_u32(~u_input.a, 25u)], vec2<bool>(true, arg_0.e), vec2<bool>(arg_0.e, false))).d, arg_0.d, !vec4<bool>(func_2(Struct_1(arg_0.c, vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 20u)], -2147483647i, 0i), global3[_wgslsmith_index_u32(u_input.a, 20u)], arg_0.d, false), arg_0.e, 10251u, vec2<bool>(arg_0.e, arg_0.d.x)).e, u_input.a != 10932u, any(vec3<bool>(arg_0.e, true, arg_0.d.x)), select(arg_0.e, false, arg_0.d.x))), true);
    let var_2 = ~(min(_wgslsmith_mult_u32(_wgslsmith_add_u32(15294u, u_input.a), 4294967295u), u_input.a) ^ _wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 1u));
    let var_3 = !select(!var_1.d.wzx, !vec3<bool>(true, true, !var_1.e), !var_1.d.x);
    return false || (var_2 != min(5807u, abs(var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-41116i, _wgslsmith_add_vec3_i32(reverseBits(~vec3<i32>(32180i, global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)])), ~func_1(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 20u)], vec3<i32>(2147483647i, 10469i, 6469i), global3[_wgslsmith_index_u32(75069u, 20u)], vec4<bool>(true, false, false, false), true), Struct_1(0i, vec3<i32>(global3[_wgslsmith_index_u32(39775u, 20u)], 0i, -19380i), global3[_wgslsmith_index_u32(u_input.a, 20u)], vec4<bool>(false, false, false, false), false), vec4<u32>(u_input.a, 10273u, 9410u, u_input.a), false)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 14667u, 1u) & vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(u_input.a, 29756u, 47268u)), firstLeadingBit(reverseBits(vec3<u32>(u_input.a, 0u, u_input.a)))) % vec3<u32>(32u)), select(max(abs(max(2147483647i, -1i)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, firstTrailingBit(1u)), 20u)]), global3[_wgslsmith_index_u32((~u_input.a >> (_wgslsmith_clamp_u32(12428u, u_input.a, 0u) % 32u)) ^ ~reverseBits(23529u), 20u)], all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(global0[_wgslsmith_index_u32(4294967295u, 25u)])))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(global0[_wgslsmith_index_u32(~u_input.a | _wgslsmith_dot_vec4_u32(vec4<u32>(59688u, 1u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 36713u)), 25u)]) && func_3(func_2(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 20u)], vec3<i32>(-1i, 2147483647i, global3[_wgslsmith_index_u32(26446u, 20u)]), 34584i, vec4<bool>(false, false, false, true), true), true, u_input.a, !global0[_wgslsmith_index_u32(0u, 25u)])));
    let var_1 = Struct_1(-7943i, abs(var_0.b), -1i, var_0.d, !(~(~0u) > u_input.a));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(204f, -930f, -848f), vec3<f32>(-2164f, -1000f, 1000f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(688f, -1692f, 1000f), vec3<f32>(-2329f, 159f, 1842f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-297f, 461f, 566f), vec3<f32>(1000f, 805f, -670f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-111f, -1338f, 994f), vec3<f32>(566f, -417f, -747f)))), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(377f, -304f, 1010f) + vec3<f32>(-107f, -434f, -1000f))) - vec3<f32>(-1053f, _wgslsmith_f_op_f32(-1073f + -721f), _wgslsmith_f_op_f32(step(-748f, 151f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1821f * 973f))), -112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1342f)))))));
    let var_3 = !select(var_0.d.wxy, !func_2(var_1, func_3(var_1), countOneBits(15375u), var_1.d.yw).d.yzx, var_1.d.zxy);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x)) * _wgslsmith_f_op_f32(-1810f * _wgslsmith_f_op_f32(-120f - var_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-133f, -444f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(677f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(355f * var_2.x)))))));
    let var_4 = func_2(Struct_1(1i, var_0.b ^ _wgslsmith_div_vec3_i32(vec3<i32>(-22206i, global3[_wgslsmith_index_u32(u_input.a, 20u)], 0i), firstLeadingBit(var_0.b)), -1i, vec4<bool>(var_0.d.x, true, all(select(var_0.d, var_0.d, false)), func_2(var_1, var_3.x & true, u_input.a, select(vec2<bool>(var_1.e, false), var_3.xy, global0[_wgslsmith_index_u32(u_input.a, 25u)])).d.x), true), !all(var_3.xy), u_input.a, var_3.xx);
    var var_5 = ~max(max(vec4<i32>(_wgslsmith_div_i32(var_1.b.x, 2147483647i), ~47345i, global3[_wgslsmith_index_u32(u_input.a, 20u)], ~var_0.b.x), firstLeadingBit(countOneBits(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 1i)))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_0.b.x, 1i, var_0.c, var_0.a), -vec4<i32>(var_1.a, var_0.b.x, global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(35128u, 20u)]), var_1.d), vec4<i32>(_wgslsmith_dot_vec2_i32(var_4.b.zx, vec2<i32>(global3[_wgslsmith_index_u32(20967u, 20u)], var_1.b.x)), -1i, -global3[_wgslsmith_index_u32(22015u, 20u)], 8700i), reverseBits(vec4<i32>(1i, var_4.c, var_0.b.x, -11162i))));
    let var_6 = func_2(func_2(var_1, all(select(var_3, select(var_0.d.wwz, var_3, false), u_input.a > 25850u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, 59188u, u_input.a), vec3<u32>(u_input.a, u_input.a, 5644u)), !vec2<bool>(any(vec4<bool>(var_4.e, var_3.x, var_3.x, var_4.d.x)), false)), true, 1u, vec2<bool>(var_4.d.x, true));
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(657f)), _wgslsmith_f_op_f32(floor(-820f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 611f, -299f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-503f, 616f, 550f), vec3<f32>(-2209f, var_2.x, 1621f), var_0.d.xwz))))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(floor(-1000f)), 1f))), _wgslsmith_div_vec2_u32(select(firstLeadingBit(vec2<u32>(u_input.a, 2305u)), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u))), var_4.d.wy), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a)) & vec2<u32>(1u, select(4294967295u, u_input.a, var_3.x))), reverseBits(var_4.b));
}


struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<f32, 21> = array<f32, 21>(-1504f, 734f, -3006f, 1061f, 500f, -1565f, -905f, -507f, 1000f, 1000f, 116f, 131f, -582f, 1354f, -1054f, -1000f, 423f, -725f, -1098f, -2267f, -1013f);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_1(any(vec3<bool>(global2.a, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(76148u, 21u)])) > 1f, all(vec4<bool>(global2.a, false, true, global0.a)) | false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 21u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-867f, global1[_wgslsmith_index_u32(arg_1.x, 21u)])))))))));
    var var_2 = -(firstTrailingBit(~2147483647i) >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), arg_1.wzx) % 32u));
    var var_3 = vec3<bool>(all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a, true, true), vec3<bool>(true, global2.a, global2.a), false), select(vec3<bool>(false, global0.a, var_0.a), vec3<bool>(false, global2.a, false), vec3<bool>(false, var_0.a, true))), vec3<bool>(global2.a, global0.a, false), vec3<bool>(select(true, global0.a, false), any(vec2<bool>(false, true)), var_0.a & var_0.a))), !(var_1.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_1.x, 21u)])))), false);
    global2 = Struct_1(global2.a);
    return vec3<u32>(_wgslsmith_dot_vec4_u32(abs(arg_1), arg_1) & arg_1.x, arg_1.x | _wgslsmith_add_u32(~55244u, countOneBits(_wgslsmith_sub_u32(u_input.a.x, 1u))), ~(~min(~14211u, arg_1.x >> (99576u % 32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = false;
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, -u_input.b, u_input.b, _wgslsmith_mod_i32(1i, u_input.b)), vec4<i32>(-39584i, u_input.b, u_input.b, _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, -8235i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -37169i, -34177i, 45407i), vec4<i32>(41730i, 1i, -2147483647i, u_input.b))))), arg_3);
    var var_2 = Struct_1(!all(select(vec2<bool>(false, false), select(vec2<bool>(global2.a, false), vec2<bool>(false, global0.a), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var_1 = vec4<i32>(u_input.b, -1i, _wgslsmith_div_i32(~(-3288i), arg_3.x | 1i), -2147483647i);
    var var_3 = arg_2;
    return _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(-(vec2<i32>(arg_3.x, var_1.x) ^ vec2<i32>(-40333i, arg_3.x)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -6272i))), var_1.zy);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> vec3<bool> {
    let var_0 = max(u_input.b, _wgslsmith_clamp_i32(6840i, func_4(func_3(vec3<i32>(u_input.b, 1i, 0i), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, arg_2)), ~vec3<u32>(0u, 47940u, arg_0) & firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(all(vec3<bool>(arg_1.x, true, global0.a))), vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), firstLeadingBit(_wgslsmith_sub_i32(32971i, func_4(vec3<u32>(21268u, 12765u, u_input.a.x), vec3<u32>(1u, 6487u, arg_0), Struct_1(arg_1.x), vec4<i32>(u_input.b, 5423i, u_input.b, 12002i))))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(-max(u_input.b, 0i), func_4(vec3<u32>(arg_2, 1u, arg_0), vec3<u32>(arg_2, arg_2, 37533u), Struct_1(true), vec4<i32>(u_input.b, 0i, -1i, u_input.b)) & _wgslsmith_dot_vec4_i32(vec4<i32>(13244i, 2147483647i, var_0, var_0), vec4<i32>(u_input.b, var_0, -58031i, var_0))), var_0) & -(~(-vec2<i32>(3508i, 47484i) ^ vec2<i32>(-2147483647i, u_input.b)));
    var var_2 = vec2<i32>(1i, -15745i | u_input.b);
    let var_3 = Struct_1(true);
    var var_4 = -vec2<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b ^ 0i, var_0), -(i32(-1i) * -54027i)));
    return !vec3<bool>(global0.a, true, false);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(true);
    var var_1 = Struct_1(global0.a);
    var var_2 = Struct_1(true);
    let var_3 = Struct_1(any(select(func_2(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(3364u, u_input.a.x)), arg_3.zy, 4294967295u & u_input.a.x).xx, arg_3.yz, select(var_1.a & false, 0u >= u_input.a.x, !arg_3.x))));
    var_0 = var_3;
    return var_3;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = Struct_1(!(arg_0 & !(!global2.a)));
    var var_1 = u_input.b;
    global2 = func_5(global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), reverseBits(1u)) | ~(~u_input.a.x)), 21u)], u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(80098u, 21u)]))) - -319f))), select(select(func_2(_wgslsmith_div_u32(u_input.a.x, 56148u), !vec2<bool>(arg_0, true), u_input.a.x), select(func_2(u_input.a.x, vec2<bool>(global2.a, global0.a), u_input.a.x), !vec3<bool>(global2.a, global0.a, global0.a), vec3<bool>(global2.a, global2.a, var_0.a)), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(global0.a, true, var_0.a), vec3<bool>(false, arg_0, global2.a))), !func_2(_wgslsmith_add_u32(u_input.a.x, 43212u), select(vec2<bool>(true, false), vec2<bool>(global2.a, true), vec2<bool>(global0.a, true)), firstTrailingBit(u_input.a.x)), !(!select(vec3<bool>(global2.a, true, false), vec3<bool>(var_0.a, false, arg_0), true))));
    let var_2 = func_4(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(30054u, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(reverseBits(u_input.a.x), u_input.a.x, 40367u), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 52728u, 9000u), vec3<u32>(0u, 52555u, 0u))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), func_5(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), ~(-u_input.b), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~u_input.a.x, 21u)], _wgslsmith_f_op_f32(-860f * -925f))), vec3<bool>(true, global2.a & global2.a, true)), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -40430i, 27276i, 1i), vec4<i32>(u_input.b, 13804i, -58024i, u_input.b))) | -1i;
    let var_3 = countOneBits(-1i);
    return StorageBuffer(firstLeadingBit(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a.x, 46962u), u_input.a & vec2<u32>(99848u, 27552u), vec2<bool>(true, true)), ~u_input.a)), ~abs(min(vec4<i32>(52115i, 2147483647i, -36708i, u_input.b), vec4<i32>(u_input.b, 0i, var_2, var_3)) | countOneBits(vec4<i32>(0i, 0i, u_input.b, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!select(all(select(vec4<bool>(global2.a, global0.a, false, true), vec4<bool>(global0.a, global2.a, global2.a, true), false)), true, false));
}


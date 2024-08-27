struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-548f, 574f, 548f, 1552f), 9045u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<f32> {
    let var_0 = -1i << (global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(0u, u_input.a.x, ~global0[_wgslsmith_index_u32(0u, 21u)]))), 21u)] % 32u);
    var var_1 = !all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1613f, _wgslsmith_f_op_f32(-461f - global1.a.x), _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, 1751f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f - global1.a.x))));
    let var_3 = true;
    var var_4 = ~(~(~firstLeadingBit(30848u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.a))) - vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(207f - var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1182f - var_2.x) + global1.a.x), _wgslsmith_f_op_f32(abs(1f)))));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_1(global1.a, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(28153u, _wgslsmith_mult_u32(0u, 1u)), 21u)]);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(arg_2.a)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(129f * 856f), _wgslsmith_f_op_vec4_f32(func_3()).x, all(vec3<bool>(arg_1.x, true, arg_2.a.x >= 1029f)))) - 948f);
    var var_2 = 4294967295u < ~_wgslsmith_mult_u32(var_0.b, arg_2.b);
    var var_3 = select(select(vec4<bool>(global1.a.x != var_1, any(vec3<bool>(false, true, arg_0)) & true, !arg_0, true), !(!select(vec4<bool>(arg_1.x, false, arg_0, arg_0), vec4<bool>(arg_0, arg_1.x, arg_0, arg_1.x), true)), select(select(vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(arg_1.x, arg_0, arg_0, arg_0), vec4<bool>(false, arg_1.x, true, true), vec4<bool>(false, arg_1.x, arg_1.x, arg_0)), arg_1.x), !(!vec4<bool>(false, arg_0, arg_1.x, arg_1.x)), any(select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_0, false, false, false), vec4<bool>(false, false, false, true))))), !select(vec4<bool>(any(vec3<bool>(false, arg_0, arg_0)), false, false, arg_0), vec4<bool>(!arg_0, true, any(vec4<bool>(arg_1.x, arg_1.x, arg_0, false)), true), vec4<bool>(true, false, arg_0, true)), select(vec4<bool>(true, select(arg_1.x, arg_0, !arg_0), false, all(vec3<bool>(true, true, true))), select(!(!vec4<bool>(arg_0, arg_0, true, arg_0)), vec4<bool>(arg_0, arg_1.x, false, arg_1.x == true), select(vec4<bool>(arg_0, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, true, true), select(arg_0, true, false))), !any(vec2<bool>(arg_0, true)) | (all(vec3<bool>(arg_1.x, false, false)) || all(arg_1))));
    return var_3.xzz;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = reverseBits(countOneBits(vec3<u32>(reverseBits(arg_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.b, 1u, arg_1.b), vec4<u32>(1u, 57875u, u_input.b, u_input.a.x)), arg_1.b) | ~u_input.a));
    let var_1 = arg_2.x;
    let var_2 = func_4(arg_0, !vec2<bool>(arg_0, true), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), ~max(14519u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16434u, 0u), vec3<u32>(657u, 4294967295u, 5914u)))), -(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, 2147483647i, 1i), vec4<i32>(1i, 2147483647i, -2147483647i, 2147483647i))) | -_wgslsmith_div_vec4_i32(vec4<i32>(-12469i, arg_3.x, -11660i, arg_3.x), vec4<i32>(arg_3.x, arg_3.x, 0i, 1i))));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> f32 {
    global1 = func_2(false, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-775f, arg_2, arg_3, 904f) - global1.a))))), ~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b, u_input.a.x), 21u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-950f, -409f, arg_1.x)))), _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_2))) + _wgslsmith_f_op_vec3_f32(min(global1.a.ywx, _wgslsmith_div_vec3_f32(global1.a.xwx, vec3<f32>(arg_3, 468f, 2530f)))))), vec3<i32>(-1i, 1i, ~1i));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 270f, global1.a.x, arg_0)) * global1.a), global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-677f)) - _wgslsmith_div_f32(1000f, arg_2))) + arg_2), func_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), func_2(all(select(vec4<bool>(arg_1.x, arg_1.x, false, true), arg_1, arg_1)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, arg_0, arg_2, arg_2)), 43392u | global1.b), _wgslsmith_f_op_vec3_f32(-func_2(false, Struct_1(vec4<f32>(arg_2, 1733f, -1198f, -503f), global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec3<f32>(559f, -461f, 1993f), vec3<i32>(-2147483647i, -18217i, 97298i)).a.yxz), vec3<i32>(i32(-1i) * -2147483647i, 0i, i32(-1i) * -1552i)), _wgslsmith_f_op_vec3_f32(-global1.a.wxx), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(-34463i), -1i, reverseBits(1i)), countOneBits(vec3<i32>(-1i, 7641i, 24397i)) << (~u_input.a % vec3<u32>(32u)))), func_2(true, func_2(all(arg_1.wzw), Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - global1.a), firstLeadingBit(global0[_wgslsmith_index_u32(26205u, 21u)])), vec3<f32>(global1.a.x, -276f, _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(14818i, 39890i, -48747i)), vec3<i32>(-2147483647i, -15855i, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(arg_3 - -902f), global1.a.x), firstLeadingBit(vec3<i32>(1i, 1i, 1i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, arg_2, 624f, arg_2)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-290f, -1366f, arg_2, -769f)))), ~(18300u & _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 21u)], 0u))));
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.a.x - 192f), _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-1293f * 692f), _wgslsmith_f_op_f32(f32(-1f) * -1733f)), global0[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(var_0.e.b, var_0.e.b)), 21u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)) + 103f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_3) + -609f), func_2(true, var_0.d, _wgslsmith_f_op_vec3_f32(var_0.a.a.wzx * vec3<f32>(arg_3, -2468f, arg_2)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-55202i, 1i, 2147483647i), vec3<i32>(-2147483647i, 275i, 1i), vec3<i32>(-2147483647i, -4693i, 2147483647i))).a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(round(global1.a)), firstTrailingBit(4294967295u)), func_2(func_4(!(!arg_1.x), vec2<bool>(all(vec3<bool>(true, arg_1.x, false)), func_4(arg_1.x, vec2<bool>(arg_1.x, true), var_0.d, vec4<i32>(16746i, 0i, 30156i, 2147483647i)).x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, arg_0, 277f, -1043f)), 1u), vec4<i32>(1i, -12439i, -39207i, max(40857i, 18711i))).x, var_0.e, _wgslsmith_f_op_vec3_f32(-global1.a.zxw), -(vec3<i32>(-6224i, 1i, 0i) >> (abs(vec3<u32>(global0[_wgslsmith_index_u32(113093u, 21u)], u_input.a.x, 0u)) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), 8919u));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global1.a)))), var_0.c.b), 290f, func_2(true, func_2(arg_1.x, var_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, var_1.b, -1286f) + global1.a.zxw), vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1883f, -604f)), _wgslsmith_f_op_f32(-var_0.e.a.x), _wgslsmith_div_f32(-1352f, arg_0)), _wgslsmith_f_op_vec3_f32(max(global1.a.zwz, global1.a.zyy))), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-1i, -3560i, 2147483647i)), abs(vec3<i32>(2147483647i, -2147483647i, -54549i)) | (vec3<i32>(845i, 22739i, 0i) >> (u_input.a % vec3<u32>(32u))))), func_2(arg_1.x, Struct_1(vec4<f32>(288f, arg_0, 797f, -336f), 1u), vec3<f32>(arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-206f)))), 974f), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 36697i), ~47728i), firstTrailingBit(1i), -(i32(-1i) * -5578i))), func_2(all(!(!arg_1.wyx)), Struct_1(_wgslsmith_f_op_vec4_f32(var_1.c.a * global1.a), ~(46446u >> (u_input.b % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_1.e.a.xww)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-351f, -151f, arg_0))), arg_1.x))), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, reverseBits(-2147483647i)), _wgslsmith_div_i32(countOneBits(2147483647i), _wgslsmith_div_i32(-39087i, -32654i)), firstTrailingBit(min(1i, -60880i)))));
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-global1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1159f, var_2.a.a.x) * _wgslsmith_f_op_f32(ceil(252f)))), _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1214f - -1155f))), _wgslsmith_f_op_f32(select(-689f, _wgslsmith_f_op_f32(floor(arg_3)), arg_1.x)), _wgslsmith_f_op_vec4_f32(func_3()).x), var_2.e.b);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x - -115f), _wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(trunc(-834f)), _wgslsmith_f_op_f32(global1.a.x + global1.a.x))))), u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f * global1.a.x)) == _wgslsmith_f_op_f32(sign(global1.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.a)) - vec4<f32>(-285f, 356f, 139f, 2397f)), ~(~countOneBits(u_input.b)));
    var_0 = var_2;
    var var_3 = var_2;
    let var_4 = 2946i;
    var var_5 = 1u;
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(abs((vec3<i32>(-1i, var_4, var_4) | countOneBits(vec3<i32>(var_4, var_4, var_4))) << (~select(vec3<u32>(4294967295u, var_0.b, u_input.b), u_input.a, var_1) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(1159f, vec4<bool>(var_1, var_1, true, var_1), global1.a.x, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -781f), var_0.a.x))), _wgslsmith_div_f32(-1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f + var_3.a.x)))));
}


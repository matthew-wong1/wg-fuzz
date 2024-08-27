struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1131f, 1172f);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)));

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<f32, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global3 = array<f32, 15>();
    let var_0 = select(!(any(vec2<bool>(true, true)) || all(vec2<bool>(true, true))), true, !(!any(vec4<bool>(false, false, false, false))));
    return -1000f;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 19>();
    global3 = array<f32, 15>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-142f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, u_input.c), 15u)], -330f, global0.x), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))), -2013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global0.x)), 1164f));
    let var_1 = arg_2.a.x;
    var var_2 = u_input.d;
    return 24592u & u_input.a.x;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-534f, arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - _wgslsmith_f_op_f32(253f + -1539f)) * global3[_wgslsmith_index_u32(abs(4294967295u), 15u)]))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(select(-125f, _wgslsmith_f_op_f32(-arg_0), all(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(2495f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(67415u, 0u), vec2<u32>(4294967295u, 4294967295u)), 15u)], true)), 1111f, arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(906f)), _wgslsmith_f_op_f32(abs(arg_0))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(175f, global0.x, 1213f, -1401f), vec4<f32>(-444f, arg_0, -318f, 574f)), vec4<f32>(1000f, global0.x, -1242f, var_0.x), all(vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(exp2(arg_0))) * 520f), 373f));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-745f, arg_0, -743f, 823f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -702f, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -597f, 748f, 458f), vec4<f32>(global0.x, -290f, -202f, 786f), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)))))), vec4<f32>(var_0.x, arg_0, -298f, var_0.x), arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 320f, 863f, 318f)))))));
    global3 = array<f32, 15>();
    return Struct_1(vec2<bool>(false, any(arg_2.a)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    var var_0 = 0u;
    global1 = array<Struct_1, 28>();
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.d.x, 15u)] * _wgslsmith_div_f32(global0.x, 886f)))), vec4<u32>(~max(u_input.a.x, u_input.a.x) ^ _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 0u, 29530u, u_input.c)), abs(u_input.d)), func_2(53150u, u_input.d.zxx, Struct_1(!vec2<bool>(true, arg_0.a.x))), u_input.a.x, ~1u), Struct_1(vec2<bool>(6138i >= _wgslsmith_mult_i32(18028i, arg_1), !arg_0.a.x)));
    var_0 = 4294967295u;
    let var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 583f) * vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 134f), vec2<f32>(-995f, global0.x), var_2.a.x))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.c, 15u)])), -1256f))), any(!var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, 995f)) * _wgslsmith_div_vec2_f32(vec2<f32>(727f, global0.x), vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 1805f))) + _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<bool>(false, true)), -5095i))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(56234u, 15u)]) * _wgslsmith_div_f32(-1279f, -800f)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 15u)] + global3[_wgslsmith_index_u32(1u, 15u)]))))));
    var var_0 = Struct_1(vec2<bool>(~(~25046u) < u_input.c, false & !all(vec2<bool>(false, true))));
    let var_1 = firstLeadingBit(min(0u, u_input.a.x));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-699f, global3[_wgslsmith_index_u32(33593u, 15u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_1, 15u)], 1039f) + vec2<f32>(1145f, global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(803f - -530f), global3[_wgslsmith_index_u32(0u, 15u)]))));
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_div_f32(-302f, _wgslsmith_f_op_vec2_f32(func_1(global1[_wgslsmith_index_u32(max(1u, 377u), 28u)], max(2147483647i, u_input.b.x))).x)), select(u_input.d, u_input.d, false), Struct_1(var_0.a));
    let var_4 = all(select(select(vec3<bool>(all(vec2<bool>(var_0.a.x, false)), var_0.a.x, !var_0.a.x), !vec3<bool>(true, var_0.a.x, var_0.a.x), true), vec3<bool>(func_4(536f, ~vec4<u32>(30371u, 66595u, 50384u, u_input.c), func_4(-1205f, vec4<u32>(u_input.d.x, var_1, 1u, 0u), Struct_1(var_3.a))).a.x, !var_3.a.x, true), select(vec3<bool>(!var_0.a.x, !var_0.a.x, var_0.a.x), !(!vec3<bool>(true, var_0.a.x, var_3.a.x)), !var_3.a.x != (var_2.x != -1367f))));
    global1 = array<Struct_1, 28>();
    global3 = array<f32, 15>();
    let var_5 = -abs(vec3<i32>(-20128i, u_input.b.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.b.x, 0i, 2147483647i), min(max(u_input.b.wzy & -u_input.b.wxz, ~abs(u_input.b.wxw)), -vec3<i32>(i32(-1i) * -746i, countOneBits(2858i), 0i)), _wgslsmith_add_vec2_u32(u_input.d.xx, _wgslsmith_mod_vec2_u32(select(vec2<u32>(77913u, u_input.c), min(u_input.d.yz, u_input.a), all(vec4<bool>(false, var_4, true, var_3.a.x))), ~_wgslsmith_add_vec2_u32(u_input.a, u_input.d.wx))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-2357f, global0.x), -310f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-524f * -277f))), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 15u)] - global0.x), _wgslsmith_div_f32(1000f, 1774f), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-611f - 1346f)))));
}


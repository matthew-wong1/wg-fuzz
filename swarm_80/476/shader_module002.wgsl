struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-44857i, 2147483647i, 1577i);

var<private> global1: array<u32, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = ~vec3<i32>(firstLeadingBit(61053i), u_input.a.x << (_wgslsmith_add_u32(u_input.b, 84716u) % 32u), abs(max(u_input.a.x, 13157i)));
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1040f, -152f, -654f, 1000f), vec4<f32>(-962f, 666f, -623f, -842f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(459f)), -390f, _wgslsmith_f_op_f32(-237f - 359f), -128f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(782f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2055f) * _wgslsmith_f_op_f32(trunc(491f))))));
    var var_1 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)), var_0.a.x), _wgslsmith_f_op_f32(355f - var_0.a.x)));
    var_1 = Struct_1(var_0.a);
    global1 = array<u32, 31>();
    return _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(var_0.a.x, -1039f))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(724f + 2168f), _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f - 1327f) - -602f)), _wgslsmith_f_op_f32(floor(-512f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(954f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1391f - 1000f) + 1f)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, var_0.a.x, var_0.a.x, var_0.a.x) * var_0.a))))));
    var var_2 = var_1;
    global0 = (u_input.a.xwx & vec3<i32>(i32(-1i) * -12299i, global0.x, ~(-1i | global0.x))) & abs(u_input.a.zxx);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    return all(!(!(!vec2<bool>(false, arg_0)))) & true;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = !select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, func_2(false), arg_0.x < u_input.c), true), vec4<bool>(true, true, false, true), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), u_input.d != u_input.a.x, true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(743f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1346f + 1660f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-789f + -687f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-108f - -393f) * _wgslsmith_div_f32(301f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1061f)) - 1389f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, var_1, var_0.x))))));
    let var_3 = !select(!var_0.zy, !select(vec2<bool>(var_0.x, false), !var_0.wz, select(var_0.zy, var_0.xw, var_0.x)), true);
    global1 = array<u32, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(-255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f) - _wgslsmith_f_op_f32(round(316f)))))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = -1000f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 762f, var_0, arg_0), vec4<f32>(-1402f, var_0, 181f, 1425f)))))));
    var_1 = Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) * -591f)));
    let var_2 = all(!vec2<bool>(false, select(false, true, true))) | !select(select(true, true, true), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true);
    var var_3 = abs(abs(~(vec4<u32>(u_input.c, 64177u, 112407u, u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, u_input.e, 0u, 4294967295u), vec4<u32>(0u, 20148u, 4294967295u, global1[_wgslsmith_index_u32(arg_1.x, 31u)])) % vec4<u32>(32u)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(-var_1.a), all(vec3<bool>(var_2, true, var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 31>();
    let var_0 = vec4<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(max(0u, u_input.e), countOneBits(4294967295u)))), 31u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.c, 31u)], 31u)], 31u)], u_input.b);
    let var_1 = true;
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) + _wgslsmith_f_op_f32(f32(-1f) * -614f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 860f))) * _wgslsmith_f_op_f32(func_1(select(var_0.yyz, vec3<u32>(u_input.e, 110991u, var_0.x), vec3<bool>(var_1, true, true)))))), vec2<u32>(~(_wgslsmith_sub_u32(u_input.b, 42263u) << (firstLeadingBit(global1[_wgslsmith_index_u32(62539u, 31u)]) % 32u)), global1[_wgslsmith_index_u32(min(4294967295u, u_input.c), 31u)]));
    var var_3 = func_4(328f, vec2<u32>(~reverseBits(_wgslsmith_div_u32(u_input.e, 70636u)), ~13727u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)) + var_3.a.x), -805f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(292f, _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.e, 4294967295u, u_input.b))), _wgslsmith_f_op_f32(-1592f * var_3.a.x), 340f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, -400f, var_2.a.x, var_2.a.x)), var_3.a))))));
    var var_5 = vec2<i32>(max(global0.x, _wgslsmith_sub_i32(-reverseBits(21068i), global0.x)), u_input.a.x);
    let var_6 = var_0.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(331f, -1234f), _wgslsmith_f_op_f32(abs(var_2.a.x)), var_4.a.x, _wgslsmith_f_op_f32(-776f + -588f)))), var_5.x);
}


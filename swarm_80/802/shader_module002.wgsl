struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-244f, 436f, -148f);

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(1549f, -158f, -1514f, 377f), vec4<f32>(1505f, -628f, 969f, -1000f), vec4<f32>(-1354f, -1000f, -869f, 1129f), vec4<f32>(416f, -1538f, -1419f, -596f), vec4<f32>(484f, 369f, 645f, -111f), vec4<f32>(316f, 665f, -605f, -1265f), vec4<f32>(284f, 407f, -724f, -1287f), vec4<f32>(-1000f, 429f, -1136f, 473f), vec4<f32>(-218f, -1356f, 184f, 495f), vec4<f32>(-301f, -1000f, -812f, 546f), vec4<f32>(502f, 1823f, 179f, -1000f), vec4<f32>(-408f, -2071f, -807f, -263f), vec4<f32>(664f, 1148f, 1460f, -1342f), vec4<f32>(1376f, -1322f, -1988f, -420f));

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = !select(vec4<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), true), vec4<bool>(true, true, true, true), false), true || any(vec4<bool>(true, true, false, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.x, 1u, abs(arg_0.x)), arg_0.x), 14u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(425f, -633f, -865f, 412f), vec4<f32>(global0.x, -1000f, global0.x, global0.x))), global1[_wgslsmith_index_u32(7066u, 14u)])))) * _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, u_input.b)), 14u)] * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.x, global0.x, global0.x), vec4<f32>(125f, 1006f, global0.x, global0.x), false)))))));
    global1 = array<vec4<f32>, 14>();
    global2 = array<Struct_2, 4>();
    let var_2 = any(select(var_0.wxx, var_0.zwz, all(!var_0.yy)));
    return -613f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    var var_0 = true;
    global1 = array<vec4<f32>, 14>();
    var_0 = true;
    var var_1 = Struct_1(~(-(~abs(arg_3.zxy))), all(vec4<bool>(all(!vec4<bool>(false, true, arg_1.a, true)), arg_0.x, true == arg_0.x, arg_0.x)), reverseBits(countOneBits(abs(arg_1.b.yy))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(-412f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_f32(ceil(global0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.c)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.xx)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-698f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, -102f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - global0.yz))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(~83335u, 4u)], -19856i, vec4<i32>(-(~(-1i)), ~u_input.a ^ -78913i, u_input.a, 2147483647i))), _wgslsmith_f_op_f32(select(-160f, _wgslsmith_f_op_f32(func_3(min(~vec2<u32>(37438u, u_input.b), ~vec2<u32>(u_input.b, 32564u)))), !any(vec4<bool>(true, false, true, false)))));
    global2 = array<Struct_2, 4>();
    let var_2 = vec4<u32>(~u_input.b | firstLeadingBit(abs(1u)), firstLeadingBit(~_wgslsmith_sub_u32(u_input.b, ~98408u)), _wgslsmith_add_u32(u_input.b, ~u_input.b << ((u_input.b | 23274u) % 32u)) >> (min(u_input.b, u_input.b) % 32u), max(4294967295u, ~u_input.b));
    let var_3 = true;
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-26626i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -8978i, 1i)), 0i, 0i), u_input.a), -vec3<i32>(u_input.a, 1i, i32(-1i) * -30542i)), false, abs(var_2.xz));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    global2 = array<Struct_2, 4>();
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(118f, global0.x, -2300f) - vec3<f32>(global0.x, -1188f, global0.x)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1110f, _wgslsmith_f_op_f32(181f - 509f)), global0.x, -1000f))));
    let var_0 = vec2<bool>(all(select(vec3<bool>(true, true, any(vec3<bool>(true, arg_1.a, arg_3))), !(!vec3<bool>(arg_3, arg_3, true)), select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, true, true), false || arg_3))), arg_3);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), -1133f, _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 686f, global0.x), vec3<f32>(658f, global0.x, 266f)))))))));
    var var_2 = arg_0.a.x == _wgslsmith_mod_i32(16918i ^ _wgslsmith_mult_i32(-66597i, arg_0.a.x & 2147483647i), 0i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-1000f - global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>((all(vec2<bool>(true, true)) && any(vec3<bool>(true, true, true))) == true, true && (any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) | true));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_f32(max(-1566f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))))), global0.x, 1634f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(func_4(func_1(), Struct_2(var_0.x, vec4<u32>(0u, u_input.b, 0u, u_input.b)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 11871u), vec2<u32>(u_input.b, 29596u), vec2<u32>(1u, 35185u)), true)), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -481f))))));
    var var_2 = select(select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), !select(!vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, true, false, var_0.x), true), vec4<bool>(var_0.x, true, !(!var_0.x), var_0.x)), vec4<bool>(var_0.x, true, func_1().b, func_1().b), func_1().b);
    global2 = array<Struct_2, 4>();
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().a, 877f);
}


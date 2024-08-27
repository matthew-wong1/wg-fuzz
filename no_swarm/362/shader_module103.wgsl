struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, true, false, true, false, true, false, true, false, false, false, false, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, true, true, false);

var<private> global1: Struct_1;

var<private> global2: i32 = -56754i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~reverseBits(60368u), 30u)], global1.b);
    global0 = array<bool, 30>();
    let var_1 = global1.b.x;
    global0 = array<bool, 30>();
    let var_2 = Struct_1(!var_0.a, var_0.b);
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global2 = u_input.b.x;
    var var_0 = global1.b;
    var var_1 = select(vec4<bool>(true, !any(vec2<bool>(false, true)), false, any(vec3<bool>(true, true, select(global1.a, arg_0.a, false)))), select(vec4<bool>(true, true, all(!vec2<bool>(arg_0.a, true)), true), vec4<bool>(!(false && arg_1.a), func_2(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], false)).a, true, select(0u, 22135u, global0[_wgslsmith_index_u32(0u, 30u)]) > 1u), true), !vec4<bool>(global0[_wgslsmith_index_u32(3899u, 30u)], true, true, !global0[_wgslsmith_index_u32(1u >> (0u % 32u), 30u)]));
    var_1 = vec4<bool>(true, true, global1.a, var_1.x);
    global1 = func_2(!select(!var_1.wyy, vec3<bool>(all(var_1.zwx), arg_1.b.x < 1363f, global0[_wgslsmith_index_u32(1u, 30u)] || true), vec3<bool>(any(vec3<bool>(true, true, global1.a)), true, all(vec4<bool>(arg_0.a, arg_1.a, true, global0[_wgslsmith_index_u32(0u, 30u)])))));
    return 47687u;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(103750u, firstTrailingBit(_wgslsmith_sub_u32(~0u, 24623u)));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(1i, 30755i, 480i, u_input.b.x), ~u_input.b);
    global2 = 5400i;
    var_1 = vec4<i32>(-firstTrailingBit(var_1.x), ~abs(var_1.x), arg_0.x, 1i);
    let var_2 = _wgslsmith_sub_u32(firstTrailingBit(19529u), _wgslsmith_mod_u32(func_3(func_2(vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false, false)), func_2(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4825u, 30u)], global0[_wgslsmith_index_u32(23728u, 30u)]), vec3<bool>(false, global1.a, false), vec3<bool>(global0[_wgslsmith_index_u32(24865u, 30u)], global1.a, global0[_wgslsmith_index_u32(0u, 30u)])))), ~(~(~0u))));
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1364f - arg_1), _wgslsmith_f_op_f32(global1.b.x * arg_1), arg_1), _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, -661f, 659f), _wgslsmith_f_op_vec3_f32(max(global1.b, vec3<f32>(-489f, arg_1, 1978f)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(_wgslsmith_div_u32(arg_0, arg_0), _wgslsmith_div_u32(arg_0, 2081u), max(arg_0, 56982u)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), reverseBits(vec3<u32>(39128u, 1u, 1u)))), vec3<u32>(~arg_0, 19041u, ~(~57737u))) >> (max(func_3(arg_1, func_1(vec3<i32>(u_input.b.x, -10219i, u_input.b.x), _wgslsmith_f_op_f32(step(-1443f, 2835f)))), ~4294967295u) % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(564f)) > global1.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1019f, _wgslsmith_f_op_f32(-global1.b.x), func_2(vec3<bool>(false, arg_1.a, global0[_wgslsmith_index_u32(arg_0, 30u)])).b.x) * func_1(vec3<i32>(-38201i, u_input.b.x, -28501i), arg_1.b.x).b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-959f, global1.b.x, global1.b.x), arg_1.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, -380f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, arg_1.b.x, -1000f))))));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(1u | arg_0, var_0), var_0);
    let var_3 = arg_1;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.x, var_1.b.x, _wgslsmith_f_op_f32(round(-1343f)), arg_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b.x * -712f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2156f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-921f + global1.b.x), 1063f, true)), -1955f), 191f));
    return 67260u | min(reverseBits(var_2.x), select(~4294967295u, 43393u, global0[_wgslsmith_index_u32(42072u, 30u)]));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), u_input.b.yy), 2147483647i), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.yw), vec2<i32>(u_input.a, u_input.a)));
    var var_0 = ~firstLeadingBit(0u) << (abs(arg_1) % 32u);
    var_0 = _wgslsmith_sub_u32(~65342u, 0u);
    var_0 = 4294967295u;
    var var_1 = global1.a;
    return Struct_1(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)], global1.a), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 30u)], global1.a, false)), vec3<bool>(true, true, true), false)) | true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -369f))) * _wgslsmith_f_op_f32(floor(arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = func_5(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b.x + 831f))), 553f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -3035f)), _wgslsmith_f_op_f32(640f + _wgslsmith_f_op_f32(-global1.b.x))))), ~func_4(1u, func_1(abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-global1.b.x))));
    let var_2 = abs(u_input.b.yx);
    global0 = array<bool, 30>();
    var var_3 = _wgslsmith_f_op_vec3_f32(step(func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(103f, global1.b.x, 1278f, var_1.b.x) * vec4<f32>(-452f, var_1.b.x, global1.b.x, -337f)))))), 1u).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, var_1.b.x, var_1.b.x)), var_1.b) + vec3<f32>(-557f, -1036f, _wgslsmith_f_op_f32(round(901f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-144f, _wgslsmith_div_f32(369f, global1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-1000f - -396f), var_1.b.x)) + vec3<f32>(-305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1306f, var_1.b.x, global0[_wgslsmith_index_u32(0u, 30u)])) * _wgslsmith_div_f32(2192f, var_3.x)), var_1.b.x)), ~vec3<u32>(func_3(func_5(vec4<f32>(var_1.b.x, -1467f, var_3.x, 630f), 4294967295u), func_5(vec4<f32>(var_1.b.x, var_3.x, global1.b.x, -948f), 1u)), 48063u, ~select(71020u, 1u, var_1.a)));
}


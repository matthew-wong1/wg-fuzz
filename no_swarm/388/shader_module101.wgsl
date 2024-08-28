struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1863f, -777f), vec2<f32>(-274f, -1000f), vec2<f32>(1000f, -578f), vec2<f32>(-535f, -1306f), vec2<f32>(-1644f, -1415f), vec2<f32>(-746f, 946f), vec2<f32>(431f, 682f), vec2<f32>(-1445f, 155f));

var<private> global1: array<i32, 11> = array<i32, 11>(-1i, 8836i, 20740i, -58794i, i32(-2147483648), 56767i, 1i, i32(-2147483648), 1i, 14090i, 43738i);

var<private> global2: array<vec4<u32>, 9>;

var<private> global3: array<vec2<u32>, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global2 = array<vec4<u32>, 9>();
    var var_0 = Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(0u, 11728u, 2009u, 41025u)), vec4<u32>(54449u, 16857u, 4294967295u, 11872u) << (select(global2[_wgslsmith_index_u32(9141u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], false) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(~firstLeadingBit(1u), 9u)]), ~(~(~global2[_wgslsmith_index_u32(4294967295u, 9u)]))));
    let var_1 = Struct_1(all(!select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))) && select(!(var_0.a & true), var_0.a, all(vec3<bool>(true, false, var_0.a))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 0u, ~_wgslsmith_add_u32(562u, 9838u), 39071u), vec4<u32>(~var_0.b.x, 0u, 23279u, 11396u)));
    var var_2 = var_1;
    var var_3 = var_1;
    return var_1.b.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = min(_wgslsmith_div_i32(12888i, _wgslsmith_mod_i32(-2147483647i, countOneBits(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 11u)]))), -1i);
    let var_1 = 327f;
    let var_2 = firstLeadingBit(~u_input.a);
    global2 = array<vec4<u32>, 9>();
    var var_3 = Struct_1(any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(true, all(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, true))))), _wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstTrailingBit(28139u), func_3()), 9u)], vec4<u32>(16397u, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(22207u, 31u)], global3[_wgslsmith_index_u32(30602u, 31u)]), max(0u, 24925u), min(1u, 0u)) & firstLeadingBit(vec4<u32>(2674u, 28509u, 9374u, 57705u))));
    return select(vec2<bool>(true | var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -2552f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1852f)) + _wgslsmith_f_op_f32(f32(-1f) * -1119f))), select(!select(select(vec2<bool>(true, var_3.a), vec2<bool>(var_3.a, true), false), !vec2<bool>(true, var_3.a), false), select(!vec2<bool>(var_3.a, var_3.a), vec2<bool>(876f <= var_1, !var_3.a), vec2<bool>(all(vec3<bool>(var_3.a, var_3.a, true)), var_2 == -12544i)), vec2<bool>(select(all(vec3<bool>(var_3.a, var_3.a, false)), var_3.b.x != var_3.b.x, var_1 >= -470f), true)), vec2<bool>(!(_wgslsmith_f_op_f32(round(var_1)) == -1378f), !((-31960i ^ u_input.a) >= ~u_input.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = vec2<i32>(reverseBits(arg_1), u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1271f * -1893f), -649f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(546f, -1449f)), _wgslsmith_f_op_f32(f32(-1f) * -1334f)))));
    var var_2 = !(!func_2());
    global1 = array<i32, 11>();
    let var_3 = u_input.a;
    return select(vec4<bool>(true, true, 1u > _wgslsmith_clamp_u32(~1u, ~4294967295u, reverseBits(33946u)), any(vec4<bool>(var_2.x, !arg_0.x, !var_2.x, all(vec4<bool>(arg_0.x, false, arg_0.x, var_2.x))))), select(vec4<bool>(!func_2().x, var_2.x, !arg_0.x, true), !vec4<bool>(all(arg_0.yxw), var_2.x, false, select(var_2.x, false, true)), vec4<bool>(!any(arg_0.wyz), arg_0.x, true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(all(func_1(vec4<bool>(false, false, true, true), 2147483647i)) | false), reverseBits(firstLeadingBit(select(vec4<u32>(40008u, 1u, 4294967295u, 87510u), global2[_wgslsmith_index_u32(0u, 9u)], vec4<bool>(true, true, false, false))) & ~vec4<u32>(33488u, 1u, 2565u, 1u)));
    global2 = array<vec4<u32>, 9>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, 906f)))), _wgslsmith_f_op_f32(sign(254f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(386f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-436f, 632f, true)) * -2251f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1600f * 1563f))));
    var var_3 = vec3<bool>(func_2().x, true, false);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)), -629f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-108f + -146f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f - _wgslsmith_f_op_f32(-183f * 355f))))));
    global0 = array<vec2<f32>, 8>();
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1019f)))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f + -513f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(774f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-202f, -1444f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(959f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_5 * -1066f))), var_5, -772f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(279f, var_5, var_5) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(245f, var_5, 567f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-676f, var_5, var_5))) - vec3<f32>(var_5, -1114f, var_5)), func_1(vec4<bool>(true, var_0.a, true, var_1.a), _wgslsmith_clamp_i32(2147483647i, u_input.b, 14475i)).xyz))));
}


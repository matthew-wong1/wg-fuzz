struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1325f, 1000f), vec2<f32>(1086f, 573f), vec2<f32>(967f, 681f), vec2<f32>(-261f, -940f), vec2<f32>(672f, 3511f), vec2<f32>(-1616f, -511f), vec2<f32>(1231f, -1419f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = select(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, ((30207u != arg_0.x) & true) | true), vec4<bool>(!select(true, true, false) && true, true, false, true), vec4<bool>(true | (~1u <= (24513u & u_input.e.x)), any(vec2<bool>(true, true)), true, firstTrailingBit(u_input.b.x) < _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), u_input.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(893f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> bool {
    global0 = array<vec3<i32>, 15>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1389f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(244f + -1373f), _wgslsmith_f_op_f32(-372f - 161f))), _wgslsmith_div_f32(1805f, -381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(380f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0.a.x, u_input.b.x, arg_2))) * _wgslsmith_f_op_f32(f32(-1f) * -496f)))));
    var var_1 = ~u_input.e.zy;
    global1 = array<vec2<f32>, 7>();
    let var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(216f)) - _wgslsmith_f_op_f32(abs(-361f))) - _wgslsmith_f_op_f32(step(-338f, -720f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-796f * _wgslsmith_f_op_f32(trunc(886f))))));
    return (~arg_2 >> (1u % 32u)) >= arg_0.a.x;
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    global1 = array<vec2<f32>, 7>();
    let var_0 = arg_0.x;
    return Struct_2(select(!arg_0, !arg_0, all(select(vec2<bool>(var_0, var_0), select(arg_0.xy, arg_0.zw, arg_0.x), true))));
}

fn func_1() -> f32 {
    let var_0 = func_4(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(false, false, true, true)), func_2(Struct_1(u_input.e, 0i), vec3<i32>(-43896i, u_input.c, u_input.a), u_input.e.x, Struct_2(vec4<bool>(false, false, false, false))), true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_2(Struct_1(u_input.e, u_input.a), global0[_wgslsmith_index_u32(u_input.d, 15u)], ~u_input.d, Struct_2(vec4<bool>(false, false, false, true))))));
    let var_1 = Struct_1(vec4<u32>(abs(~(u_input.e.x & 22217u)), ~_wgslsmith_add_u32(3295u, u_input.b.x), 1u, u_input.e.x), 2147483647i);
    global1 = array<vec2<f32>, 7>();
    let var_2 = abs(~(vec2<i32>(u_input.a, ~(-72537i)) << (firstTrailingBit(u_input.b.zy) % vec2<u32>(32u))));
    let var_3 = countOneBits(var_2);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1236f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-387f, 1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1866f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(1103f * -809f), !var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(756f)) + -1089f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1111f)) + _wgslsmith_f_op_f32(sign(716f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.e, 608i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_f32(func_1());
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(105f, var_1), 1205f)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), var_1)), _wgslsmith_f_op_f32(abs(-824f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, -1000f)) - _wgslsmith_f_op_f32(trunc(-140f))))));
    let var_5 = true;
    var var_6 = _wgslsmith_div_vec4_u32(vec4<u32>(37684u, _wgslsmith_mod_u32(14470u, select(~1u, ~u_input.e.x, var_0.a.x >= 143u)), ~reverseBits(var_0.a.x & u_input.b.x), 0u), vec4<u32>(0u, var_0.a.x, u_input.d >> ((max(u_input.d, var_0.a.x) | reverseBits(17189u)) % 32u), 0u));
    let var_7 = ~(~var_0.a.zz);
    let var_8 = func_4(select(func_4(select(!vec4<bool>(var_5, var_5, var_5, var_5), select(vec4<bool>(var_5, var_5, var_5, true), vec4<bool>(var_5, var_5, var_5, var_5), false), !vec4<bool>(var_5, var_5, false, var_5))).a, !vec4<bool>(false, false, false, var_5), !select(select(vec4<bool>(true, var_5, var_5, true), vec4<bool>(var_5, var_5, false, var_5), vec4<bool>(var_5, true, false, var_5)), !vec4<bool>(true, true, var_5, var_5), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x << (1u % 32u), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))));
}


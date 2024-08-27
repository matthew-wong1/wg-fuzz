struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-422f, 12995u);

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-638f, 1u), Struct_1(-751f, 0u), Struct_1(229f, 4294967295u), Struct_1(1101f, 19680u), Struct_1(883f, 4294967295u), Struct_1(1657f, 0u), Struct_1(691f, 34622u), Struct_1(1605f, 1u), Struct_1(-1918f, 3742u), Struct_1(355f, 1u), Struct_1(614f, 1u), Struct_1(-138f, 18610u), Struct_1(-318f, 16556u), Struct_1(-311f, 1u));

var<private> global3: array<vec4<bool>, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(select(-2621f, arg_1, select(true, true, false))), ~44268u);
    global2 = array<Struct_1, 14>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f - arg_2.a)))), ~global0.b);
    global1 = vec3<bool>(select(global1.x, false, true), global0.a >= _wgslsmith_f_op_f32(sign(global0.a)), !global1.x);
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, global0.b, 1u, u_input.e), u_input.a)))), 14u)];
    return -338f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))) - _wgslsmith_f_op_f32(func_3(1i ^ u_input.c, _wgslsmith_f_op_f32(-arg_1.x), Struct_1(798f, global0.b)))) - arg_2.a));
    global2 = array<Struct_1, 14>();
    let var_1 = abs(~u_input.a.xw);
    let var_2 = u_input.c;
    global3 = array<vec4<bool>, 22>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global0.a, 736f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(960f, -720f, -1750f) + vec3<f32>(arg_0.a, -1791f, -1066f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, global0.a, arg_2.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2015f, var_0, arg_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(135f, arg_1.x, 265f) + vec3<f32>(arg_0.a, arg_0.a, 1131f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(543f)), _wgslsmith_f_op_f32(func_3(var_2, arg_2.a, global2[_wgslsmith_index_u32(6288u, 14u)])), _wgslsmith_f_op_f32(f32(-1f) * -697f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-470f, 253f, 744f))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = any(!select(select(!global1.xx, !vec2<bool>(false, global1.x), true), select(select(vec2<bool>(true, true), global1.yx, global1.yx), vec2<bool>(true, global1.x), vec2<bool>(false, global1.x)), 40696u <= _wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.zy)));
    global1 = select(select(select(select(vec3<bool>(global1.x, true, var_1), select(vec3<bool>(false, false, var_1), vec3<bool>(var_1, global1.x, var_1), vec3<bool>(true, global1.x, global1.x)), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, true), vec3<bool>(global1.x, true, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(var_1, true, true), false), !vec3<bool>(true, var_1, var_1), true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(var_1, true, true), any(vec3<bool>(global1.x, var_1, var_1)))), select(vec3<bool>(false, 149f <= global0.a, !var_1), vec3<bool>(select(global1.x, var_1, true), var_1, true), true), vec3<bool>(u_input.c < select(-1i, -22861i, false), true, true)), !select(!(!vec3<bool>(true, var_1, true)), vec3<bool>(var_1, false, true), !(!vec3<bool>(true, global1.x, false))), all(!(!vec3<bool>(false, global1.x, true))));
    global3 = array<vec4<bool>, 22>();
    global0 = Struct_1(arg_0.x, _wgslsmith_sub_u32(global0.b, ~firstTrailingBit(firstLeadingBit(4294967295u))));
    return Struct_1(arg_0.x, 37323u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    var var_0 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1061f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(238f)) - _wgslsmith_f_op_f32(sign(-495f)))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(180f)), _wgslsmith_f_op_f32(2167f - arg_0.a))), _wgslsmith_f_op_f32(abs(117f)))), any(select(select(!global1.zx, select(global1.xx, vec2<bool>(arg_2, global1.x), vec2<bool>(false, true)), select(vec2<bool>(global1.x, arg_2), global1.zx, global1.yx)), !(!global1.zz), !global1.xz)), any(!global1.xx), true);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1226f, arg_0.a, -1282f)) - _wgslsmith_f_op_vec3_f32(func_2(Struct_1(-1096f, global0.b), vec2<f32>(global0.a, -961f), Struct_1(arg_0.a, 21195u)))))));
    global0 = global2[_wgslsmith_index_u32(firstLeadingBit(var_1.b) >> (0u % 32u), 14u)];
    global3 = array<vec4<bool>, 22>();
    global3 = array<vec4<bool>, 22>();
    return _wgslsmith_sub_u32(abs(13670u), countOneBits(_wgslsmith_sub_u32(~996u, ~firstLeadingBit(arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(true, true, false);
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(global0.a)), ~select(0u, 4294967295u, true) >> (_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(78574u, 0u, 69317u, u_input.d), u_input.a), u_input.d) % 32u));
    var var_1 = global0.a;
    global2 = array<Struct_1, 14>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_mod_u32(0u, max(30308u, func_1(Struct_1(-762f, 55127u), vec3<i32>(u_input.c, u_input.c, u_input.c), global1.x)))), abs(_wgslsmith_sub_u32(u_input.e, min(~61712u, ~u_input.a.x)))), 14u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1824f, -1000f, var_2.a) * vec3<f32>(global0.a, var_2.a, -488f)))) - vec3<f32>(global0.a, 1469f, global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~reverseBits(0u))));
}


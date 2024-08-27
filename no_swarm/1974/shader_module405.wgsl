struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: f32 = -474f;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_1, 30>();
    var var_0 = Struct_1(true);
    var var_1 = Struct_1(!arg_0.a && any(vec4<bool>(any(vec3<bool>(arg_0.a, false, false)), select(false, false, false), select(var_0.a, true, false), true || var_0.a)));
    let var_2 = max(~_wgslsmith_div_u32(36471u, _wgslsmith_mod_u32(1u, ~u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(~u_input.b.x, 57518u)), min(_wgslsmith_sub_u32(14446u, _wgslsmith_sub_u32(12795u, u_input.b.x)), ~u_input.b.x)));
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(u_input.b.x), 30u)];
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -913f)))), _wgslsmith_f_op_f32(min(-290f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) - _wgslsmith_f_op_f32(min(611f, -1317f)))))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(true);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(18818u, reverseBits(4294967295u)) ^ _wgslsmith_div_u32(reverseBits(4294967295u), reverseBits(u_input.b.x)), _wgslsmith_div_u32(23004u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19688u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 96036u)), u_input.b.x))), 4294967295u), 26u)];
    var var_2 = u_input.a.x;
    let var_3 = u_input.b.x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1399f, -254f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1898f, -595f))) + _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(var_3, 30u)]))));
    return _wgslsmith_f_op_f32(f32(-1f) * -388f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = u_input.b;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_1)), _wgslsmith_f_op_f32(sign(1230f))), 228f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) + 624f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f) * -894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1345f + -516f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(196f, _wgslsmith_f_op_f32(trunc(264f))))))), -1563f));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, _wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_div_f32(681f, var_0.x)), 1f, var_0.x) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1839f, 872f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, 164f, var_0.x) + vec3<f32>(var_0.x, 845f, var_0.x)) * _wgslsmith_f_op_vec3_f32(func_1(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], Struct_1(false))))))) - vec3<f32>(-789f, _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 30u)])), var_0.x)), var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_1(_wgslsmith_add_u32(~(~13666u), 0u) >= u_input.b.x);
    let var_3 = u_input.b.x;
    var var_4 = vec4<f32>(672f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-274f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(u_input.b.x << (u_input.b.x % 32u))), ~1u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zy), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), var_3), abs(vec4<u32>(var_3, var_3, 7222u, u_input.b.x)) | firstLeadingBit(vec4<u32>(var_3, u_input.b.x, var_3, var_3)))), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(any(select(vec3<bool>(false, false, false), vec3<bool>(var_2.a, var_2.a, var_2.a), var_2.a))), Struct_1(!var_2.a))).x, ~reverseBits(vec2<u32>(~31027u, u_input.b.x)), var_3, u_input.a.x >> (_wgslsmith_dot_vec2_u32(select(select(u_input.b.zx, u_input.b.yz, vec2<bool>(true, var_2.a)), vec2<u32>(4294967295u, u_input.b.x), true), abs(~vec2<u32>(1u, 5382u))) % 32u));
}


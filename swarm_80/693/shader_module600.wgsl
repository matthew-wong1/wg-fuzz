struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(0u, ~(~(~arg_0.b)));
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, -1079f, arg_1, arg_1));
    var var_2 = global0[_wgslsmith_index_u32(abs(1u), 25u)];
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    return vec4<i32>(~(-12918i), -2653i, reverseBits(13366i), -46538i);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 25>();
    var var_0 = abs(~max(1u, 159088u));
    let var_1 = firstLeadingBit(vec4<i32>(-(~0i), -2147483647i, 0i & (u_input.c.x ^ 13695i), -2147483647i >> (select(60497u, u_input.a.x, arg_0) % 32u)) & func_3(Struct_1(u_input.a.x, arg_1.b), _wgslsmith_f_op_f32(abs(-486f)), Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 48824u, 45105u, 1u), vec4<u32>(5874u, arg_1.b, 0u, arg_1.a)))));
    var_0 = ~(~29004u) & firstTrailingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, arg_1.b, 4294967295u), vec4<u32>(u_input.a.x, 11134u, arg_3.b, 0u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1567f, -1000f), -401f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-765f, _wgslsmith_f_op_f32(f32(-1f) * -1155f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1692f, 825f) + vec2<f32>(-250f, -2292f)))))), !vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -659f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, -392f))) * vec2<f32>(-555f, _wgslsmith_div_f32(-778f, 893f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -291f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1962f, -135f))))))));
    return _wgslsmith_mod_u32(arg_1.b, arg_1.a);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_0.a, u_input.a.x);
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return ~_wgslsmith_dot_vec2_u32(~u_input.a.xy, reverseBits(vec2<u32>(firstTrailingBit(0u), func_2(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.c.x, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_mod_u32(36285u, ~65678u), abs(4294967295u), ~u_input.a.x), vec4<u32>(~u_input.a.x << (u_input.a.x % 32u), func_1(Struct_1(87500u, 0u)), ~(~1u), u_input.a.x)) % 32u), 25u)];
    var var_1 = select(vec3<bool>(false, false, !(_wgslsmith_div_f32(404f, 534f) == _wgslsmith_f_op_f32(floor(-1024f)))), !vec3<bool>(true, false, ~u_input.a.x >= ~1u), _wgslsmith_f_op_f32(1182f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f - 1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1706f, 1078f)) + -857f)));
    var var_2 = Struct_1(~(~var_0.b), ~92538u);
    var var_3 = !vec4<bool>(true, !select(true, true, true), true, all(!vec3<bool>(true, var_1.x, true)) && (true & all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))));
    global0 = array<Struct_1, 25>();
    let var_4 = Struct_1(47275u, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1484f, 261f, false))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1254f - -664f), _wgslsmith_f_op_f32(max(256f, 250f)), var_3.x)))));
}


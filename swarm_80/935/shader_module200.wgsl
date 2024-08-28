struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<f32, 15>;

var<private> global3: array<f32, 9>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    global2 = array<f32, 15>();
    let var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a, arg_0.a, arg_0.a | arg_0.a) & (arg_0.a | 1u), arg_0.a), 1f);
    return !(!vec4<bool>(true, all(vec3<bool>(false, true, global0.x)), false, any(vec4<bool>(false, global0.x, false, true))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1414f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, -419f, false))))))))));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec4<bool> {
    global2 = array<f32, 15>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_0, 9u)], _wgslsmith_f_op_f32(ceil(-1244f))), vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(arg_0, firstLeadingBit(arg_0), true), 9u)] - _wgslsmith_f_op_f32(func_3(vec4<f32>(global3[_wgslsmith_index_u32(72650u, 9u)], 462f, global2[_wgslsmith_index_u32(0u, 15u)], 237f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(15675u, 15u)], -1011f))))), global3[_wgslsmith_index_u32(max(arg_0, _wgslsmith_mod_u32(arg_0, arg_0)) ^ min(~1u, arg_0), 9u)]));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(var_0.x + -1462f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-549f, global3[_wgslsmith_index_u32(arg_0, 9u)])), _wgslsmith_f_op_f32(140f * global3[_wgslsmith_index_u32(arg_0, 9u)])))), any(global0.yzw), true, true);
    let var_2 = global1[_wgslsmith_index_u32(~(~45327u), 9u)];
    let var_3 = global1[_wgslsmith_index_u32(min(abs(select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(13730u, 48882u), arg_0), 4294967295u, var_1.x)), max(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 4294967295u), vec2<u32>(4294967295u, var_2.a)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.a, 1u, arg_0), vec3<u32>(arg_0, 1u, var_2.a), vec3<bool>(false, false, true)), vec3<u32>(arg_0, 0u, 4294967295u) ^ vec3<u32>(var_2.a, 4294967295u, 2395u))))), 9u)];
    return vec4<bool>(var_1.x, func_1(global1[_wgslsmith_index_u32(57336u, 9u)], _wgslsmith_dot_vec4_i32(-vec4<i32>(24179i, 0i, 1i, -38768i), vec4<i32>(2147483647i, 1i, u_input.a.x, -1i) << (vec4<u32>(var_3.a, var_3.a, 33696u, 25948u) % vec4<u32>(32u)))).x | true, all(!select(global0.ww, select(vec2<bool>(true, true), vec2<bool>(false, true), global0.wy), vec2<bool>(global0.x, global0.x))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!vec4<bool>((23408i != u_input.a.x) & (u_input.a.x == u_input.a.x), global0.x, !all(vec4<bool>(true, false, global0.x, global0.x)), global0.x), !(!(!func_1(global1[_wgslsmith_index_u32(948u, 9u)], 40250i))), func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(60462u, 81595u), vec2<u32>(0u, 4294967295u)), u_input.a.x));
    var var_0 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1623u, 0u, 4294967295u), vec3<u32>(34821u, 17999u, 4294967295u)) << (firstTrailingBit(vec3<u32>(4294967295u, 51934u, 1u)) % vec3<u32>(32u))) & ~(~(~0u)), 4011u, global0.x), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec2<i32>(23287i, 13727i), ~vec2<i32>(u_input.a.x, -2147483647i), func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(91256u, var_0.a, var_0.a, 7345u), vec4<u32>(var_0.a, var_0.a, 4294967295u, 8174u)), 9u)], u_input.a.x).x));
}


struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1359f, _wgslsmith_f_op_f32(floor(arg_2.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -1758f), _wgslsmith_f_op_f32(-arg_2.a.x))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1068f + arg_1))) * _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-319f, _wgslsmith_f_op_f32(max(-406f, -1332f)), all(vec4<bool>(true, false, true, true)))), arg_2.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a))));
    var var_3 = ~u_input.b.x;
    var var_4 = ~min(u_input.b.x, _wgslsmith_clamp_u32((u_input.c | 0u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 52401u), vec3<u32>(0u, u_input.c, 68441u)), 4294967295u, select(u_input.b.x, ~4294967295u, true)));
    return 28423u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_1(abs(countOneBits(~(~vec3<u32>(u_input.b.x, 16174u, 0u)))), ~_wgslsmith_mult_u32(u_input.c, _wgslsmith_clamp_u32(~u_input.b.x, u_input.c, ~1u)));
    var_0 = Struct_1(vec3<u32>(abs(_wgslsmith_mult_u32(3756u, 73661u << (u_input.b.x % 32u))), (_wgslsmith_div_u32(u_input.c, u_input.b.x) ^ ~73333u) & func_3(-1933f, arg_0.x, Struct_2(vec3<f32>(608f, arg_0.x, arg_0.x))), u_input.b.x), min(28037u, 0u));
    var_0 = Struct_1(reverseBits(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x | 80729u, max(57773u, 0u)), _wgslsmith_add_u32(~8173u, u_input.b.x & var_0.a.x), ~1023u << ((u_input.b.x >> (0u % 32u)) % 32u))), var_0.b);
    var var_1 = u_input.c;
    let var_2 = Struct_2(arg_0);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -417f), arg_0.x), vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(sign(3000f)), var_2.a.x), vec3<bool>(true, true, true)))));
}

fn func_1() -> f32 {
    var var_0 = -1732i;
    var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = !all(select(vec3<bool>(false, all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(732f, -456f, 487f))))), vec2<i32>(1614i, abs(u_input.a))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-861f, 1000f, 236f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f * 442f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1007f, -547f, -573f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(861f, -493f, 1204f) - vec3<f32>(1000f, -1867f, 1000f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), 1113f);
    var var_3 = Struct_1(countOneBits(~select(firstLeadingBit(u_input.b.xyy), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 65663u), vec3<u32>(u_input.b.x, 4294967295u, 7609u)), true)), reverseBits(firstTrailingBit(716u)));
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), 1293f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_3.a.x, 3492u)), vec2<u32>(19483u, select(var_3.a.x, 1u, var_0.x)) & ~select(var_3.a.yy, var_3.a.yz, var_0)), ~(~firstLeadingBit(var_3.a)));
}


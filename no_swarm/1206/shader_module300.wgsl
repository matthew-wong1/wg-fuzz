struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 1177f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-609f, -234f), vec2<f32>(-2500f, global0.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(232f, 201f), vec2<f32>(-191f, global0.x)) + vec2<f32>(global0.x, global0.x))) + vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x - 906f)), _wgslsmith_f_op_f32(-global0.x))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)) - _wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + 445f));
    let var_2 = var_0;
    let var_3 = var_0;
    return 929f;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(0u, 1i, -73065i), vec3<u32>(75346u, 0u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b), true)), _wgslsmith_f_op_f32(-global0.x)), arg_0) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, arg_0), vec2<f32>(-343f, arg_0), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) + vec2<f32>(1438f, arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, arg_0), vec2<f32>(818f, -689f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, 598f)))))));
    let var_0 = ~u_input.a;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, u_input.a.x, -var_0.x), ~vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 40155u)), reverseBits(vec3<u32>(u_input.b, u_input.b, 52117u)), abs(vec3<u32>(49412u, 21146u, 31316u))), !all(vec3<bool>(false, true, true)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1805f + -550f)))))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))));
    let var_2 = vec3<bool>(2147483647i >= ~var_0.x, (~var_0.x < -u_input.a.x) || true, true);
    let var_3 = ~_wgslsmith_mult_u32(~u_input.b, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 88213u, u_input.b)), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b))));
    return vec3<bool>(all(vec3<bool>(any(vec3<bool>(false, false, true)) & var_2.x, var_2.x, !var_2.x)), var_2.x, var_2.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = select(!(!func_2(_wgslsmith_f_op_f32(select(global0.x, 2064f, false)))), !vec3<bool>(true, _wgslsmith_f_op_f32(floor(-1000f)) <= _wgslsmith_f_op_f32(-global0.x), true), vec3<bool>(((u_input.a.x == u_input.a.x) && true) | !any(vec2<bool>(false, false)), select(all(vec3<bool>(true, true, true)), true, !(1u != u_input.b)), true));
    let var_1 = arg_1;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(945f, -2127f) + vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1349f) * vec2<f32>(-810f, 1385f))) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -1751f), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 689f))))));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1602f)), -380f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) * global0.x) - 423f)));
    global0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(f32(-1f) * -340f)), _wgslsmith_f_op_f32(-378f + global0.x))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, true, (true && any(vec4<bool>(false, false, false, false))) && !any(vec2<bool>(true, true)));
    let var_1 = abs(vec3<u32>(func_1(~3629u, Struct_1(44809u, -11165i, 19769i)), ~(24801u | u_input.b), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b), false), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))))) & ~firstTrailingBit(max(countOneBits(vec3<u32>(u_input.b, 0u, u_input.b)), ~vec3<u32>(u_input.b, u_input.b, u_input.b)));
    var var_2 = 8354u;
    var var_3 = firstTrailingBit(vec3<u32>(10854u, 21743u, _wgslsmith_mod_u32(118965u, 8644u) << (0u % 32u)));
    let var_4 = abs((~4294967295u | _wgslsmith_div_u32(var_1.x << (u_input.b % 32u), var_1.x | var_1.x)) & _wgslsmith_clamp_u32(countOneBits(_wgslsmith_div_u32(var_1.x, var_1.x)), 20944u, ~var_3.x));
    var_3 = _wgslsmith_div_vec3_u32(firstTrailingBit(~(vec3<u32>(var_1.x, 0u, var_4) | abs(var_1))), ~vec3<u32>(1u, ~1u, var_3.x) >> (vec3<u32>(var_1.x, 4579u, 0u) % vec3<u32>(32u)));
    var var_5 = ~vec3<u32>(~(~_wgslsmith_mod_u32(var_1.x, u_input.b)), min(firstLeadingBit(var_3.x), var_4), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(var_1.x, ~(~var_4), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.b), var_4)), 14907u, reverseBits(~var_3.x)));
}


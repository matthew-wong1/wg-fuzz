struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
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

var<private> global0: vec4<f32> = vec4<f32>(463f, -111f, -218f, -822f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<i32>) -> vec4<u32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(891f * arg_1.x), arg_1.x))))), -465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(sign(2125f)));
    let var_0 = vec3<u32>(~u_input.d.x, ~select(30216u, u_input.b, true) << (_wgslsmith_clamp_u32(9825u, 1u, reverseBits(u_input.e)) % 32u), 0u) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(select(0u, 1u, false), u_input.e, 4294967295u), ~(~vec3<u32>(u_input.b, 4294967295u, 23456u)));
    var var_1 = select(!vec3<bool>(arg_0, arg_0, arg_2), !vec3<bool>(true, any(vec2<bool>(arg_2, true)), true), vec3<bool>(select(arg_2, any(vec2<bool>(arg_0, false)), arg_2), arg_2, true));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))));
    let var_2 = arg_2 & (true == !(!var_1.x));
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~28951u, u_input.d.x, ~u_input.b), firstLeadingBit(1u), var_0.x, var_0.x), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(43815u, 56008u, u_input.e, var_0.x), vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x))), firstTrailingBit(reverseBits(vec4<u32>(20354u, 0u, u_input.b, 4294967295u))) >> (~vec4<u32>(1u, 4294967295u, var_0.x, u_input.e) % vec4<u32>(32u))), vec4<u32>(4294967295u, max(7300u, u_input.d.x), reverseBits(~(~44391u)), u_input.b));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<f32> {
    var var_0 = arg_0.a;
    let var_1 = ~max(~_wgslsmith_dot_vec4_u32(func_3(true, vec4<f32>(arg_0.a.a.x, 865f, global0.x, -143f), true, vec2<i32>(-2147483647i, -1i)), _wgslsmith_sub_vec4_u32(vec4<u32>(22796u, u_input.b, 4294967295u, 9613u), vec4<u32>(6579u, 0u, 1u, 0u))), ~u_input.e);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), arg_0.a.a) - arg_1))));
    var var_3 = arg_0.a;
    let var_4 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1521f, _wgslsmith_div_f32(-162f, var_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(1000f - 911f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_3.a.x), var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(208f)), _wgslsmith_f_op_f32(-var_4.a.a.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.a.x, -161f, var_3.a.x, arg_1.x), vec4<f32>(-381f, -743f, -649f, arg_0.a.a.x), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(499f, -607f, var_0.a.x, 233f))))))));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.wx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.wz + global0.yz) * vec2<f32>(-1278f, -109f))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -684f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, global0.x, -309f, 1853f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-509f, var_0.x, var_0.x, var_0.x), vec4<f32>(global0.x, global0.x, -1000f, var_0.x))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(min(global0.x, var_0.x)), _wgslsmith_f_op_f32(max(1495f, 419f)), _wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(vec2<f32>(-129f, -551f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2159f), global0.x))), !(!(!any(vec2<bool>(true, true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.xy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global0.yz, global0.wy, vec2<bool>(false, true))))), false))) * _wgslsmith_f_op_vec2_f32(-global0.xz));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(global0.wz)), global0.yy)).x, 1156f))));
    var_0 = var_1.a.a;
    return vec4<u32>(min(~1u, u_input.e), ~u_input.b ^ _wgslsmith_div_u32(abs(~u_input.d.x), _wgslsmith_mod_u32(~u_input.e, 82934u ^ u_input.b)), 30751u, ~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 63234u, u_input.d.x), max(vec4<u32>(0u, u_input.d.x, 1u, u_input.d.x), vec4<u32>(u_input.e, 0u, u_input.e, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 23757u, 23022u, 1u), countOneBits(func_1())), vec4<u32>(17106u, ~146u, 3047u << (u_input.b % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.e, u_input.b)), vec3<u32>(0u, 4294967295u, u_input.e))), vec4<u32>(_wgslsmith_mod_u32(~u_input.b, select(1u, 4294967295u, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x) | vec2<u32>(13460u, 7946u), _wgslsmith_sub_vec2_u32(u_input.d, u_input.d)), 4294967295u, 32879u)), ~firstLeadingBit(firstLeadingBit(vec4<u32>(96638u, 1u, u_input.d.x, u_input.d.x) >> (vec4<u32>(0u, 0u, 3398u, u_input.e) % vec4<u32>(32u)))));
    let var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(vec2<f32>(global0.x, global0.x))), vec2<f32>(global0.x, 1216f))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -633f))))));
    var var_2 = Struct_3(reverseBits(vec2<u32>(u_input.b, 80606u)), var_1.a);
    let var_3 = u_input.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-global0.x), var_2.b.a.x))));
    var_0 = vec4<u32>(~0u, _wgslsmith_mod_u32(~1u, func_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(151f, -684f, -147f, var_1.a.a.x) + vec4<f32>(var_2.b.a.x, -1533f, 845f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1000f, -254f, -1000f) + vec4<f32>(var_2.b.a.x, -153f, global0.x, -1306f))), any(vec2<bool>(false, false)), ~u_input.c.xw).x), var_0.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(~func_3(true, vec4<f32>(var_2.b.a.x, var_1.a.a.x, var_2.b.a.x, var_1.a.a.x), true, vec2<i32>(u_input.c.x, u_input.c.x))), vec4<u32>(u_input.d.x, _wgslsmith_add_u32(var_2.a.x, u_input.d.x >> (var_3 % 32u)), firstLeadingBit(~28300u), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(9049u);
}


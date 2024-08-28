struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f)), -228f, -302f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1425f, -290f, 429f) + vec3<f32>(700f, -1526f, -1060f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-620f, 1047f, 999f) + vec3<f32>(1000f, -966f, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 277f, -960f), vec3<f32>(-1853f, 284f, -1023f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(811f, 795f, -793f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, -110f, var_0.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0.x, var_0.x)))), vec3<f32>(653f, _wgslsmith_f_op_f32(floor(-763f)), var_0.x))));
    var var_1 = Struct_1(abs(~(~max(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(40348u, u_input.b, 36917u, u_input.b)))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + -1037f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1272f)), _wgslsmith_f_op_f32(exp2(var_0.x))))));
    var var_2 = Struct_1(~var_1.a, var_1.b);
    var_1 = Struct_1(abs(~vec4<u32>(8458u, 42719u, 1u, abs(0u))), _wgslsmith_f_op_vec2_f32(-var_0.zx));
    return _wgslsmith_dot_vec3_u32(var_1.a.wxz, ~vec3<u32>(1u, select(abs(4294967295u), ~1u, true), 1u));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.b.x)))));
    let var_1 = firstLeadingBit(~select(_wgslsmith_add_u32(0u, u_input.a.x) | abs(arg_1), u_input.a.x, all(select(vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(true, false, true, arg_2), true))));
    let var_2 = Struct_1(vec4<u32>(8420u, var_1, func_3(vec3<bool>(arg_2 || arg_2, !arg_2, arg_2 & arg_2)), firstTrailingBit(abs(7287u)) >> (func_3(select(vec3<bool>(false, true, true), vec3<bool>(arg_2, false, false), vec3<bool>(false, true, false))) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, -439f))))));
    var_0 = -560f;
    var var_3 = abs(arg_0.wyw);
    return Struct_1(arg_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(var_2.b.x * -432f)), _wgslsmith_f_op_f32(-var_2.b.x))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = func_2(select(abs(firstLeadingBit(select(vec4<i32>(-2147483647i, 1i, 1i, -1i), vec4<i32>(-4193i, 0i, -2147483647i, -12247i), vec4<bool>(false, true, false, true)))), ~abs(vec4<i32>(0i, -2147483647i, -1340i, -66669i)) >> (max(vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b) << (vec4<u32>(29325u, u_input.a.x, 10862u, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, 0u, 54851u)) % vec4<u32>(32u)), true), _wgslsmith_div_u32(abs(_wgslsmith_mod_u32(0u, u_input.b)), ~select(u_input.b, u_input.a.x, any(vec2<bool>(false, true)))), false, Struct_1(vec4<u32>(87321u, 1u, u_input.a.x, _wgslsmith_mult_u32(~1u, 1u)), _wgslsmith_f_op_vec2_f32(-arg_0.zx)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, 1f), _wgslsmith_f_op_vec2_f32(-var_0.b), any(vec4<bool>(true, all(vec2<bool>(true, true)), true, false))));
    let var_2 = select(select(vec4<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), false, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), false), select(true, true, true)), vec4<bool>(any(vec4<bool>(true, false, true, false)), true, _wgslsmith_f_op_f32(var_1.x + -2036f) >= _wgslsmith_f_op_f32(exp2(var_1.x)), true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))), vec4<bool>(any(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, false, false)), true, true)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * -571f)));
    var var_3 = any(select(select(var_2.wy, var_2.wz, true), select(vec2<bool>(true, true), vec2<bool>(var_2.x, true), false), vec2<bool>(all(select(var_2.wy, var_2.zw, true)), true)));
    var var_4 = var_0;
    return select(var_0.a, countOneBits(~(~var_4.a)), var_2);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = firstTrailingBit(0u);
    var var_2 = select(var_0.a.x, 66303u, true);
    let var_3 = arg_3.b.x;
    var var_4 = 0u;
    return Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.b.x - -727f), var_0.b.x) * vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), arg_0.b.x)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -906f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_3.b, var_0.b))), !(!vec2<bool>(arg_1.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-570f, -1685f, -1245f) * vec3<f32>(566f, -377f, 1109f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(714f, 638f, -746f) + vec3<f32>(-1182f, -458f, -382f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(309f, -328f) * vec2<f32>(-411f, 583f))))), vec4<bool>(true, true, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), any(vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), true))), -1887f, func_2(vec4<i32>(-28278i, ~38690i, firstTrailingBit(abs(39640i)), i32(-1i) * -2147483647i), func_1(vec3<f32>(844f, 1427f, 706f)).x ^ ~(46379u << (u_input.b % 32u)), true, Struct_1(vec4<u32>(u_input.b, u_input.a.x, 19328u, u_input.b) >> (vec4<u32>(4294967295u, 41931u, u_input.a.x, 16001u) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_div_f32(149f, -377f), -278f))));
    var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(var_0.a, ~var_0.a), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1409f, -553f))))))));
    let var_2 = Struct_1(var_0.a, var_0.b);
    let var_3 = var_1.b.x;
    let var_4 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(48182u, 0u, var_1.a.x, u_input.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 9245u, var_0.a.x)) >> (abs(select(var_1.a, var_1.a, false)) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(max(var_0.a.x, var_2.a.x)), ~func_4(var_2, vec4<bool>(true, true, true, true), var_3, var_2).a.x, firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 0u)), 38949u)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_f_op_vec2_f32(ceil(var_1.b)), 18689u);
}


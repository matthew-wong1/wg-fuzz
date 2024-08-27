struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = 1552f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-835f)));
    var var_0 = Struct_1(~u_input.c, true, u_input.d.zx);
    let var_1 = min(vec3<i32>(_wgslsmith_add_i32(-1i, ~_wgslsmith_sub_i32(17103i, u_input.b)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, abs(1i)), 39725i), ~(_wgslsmith_div_i32(var_0.c.x, u_input.b) >> (66603u % 32u))), -u_input.d);
    let var_2 = select(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 55297u), vec2<u32>(1u, u_input.a) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), firstLeadingBit(36499u ^ _wgslsmith_clamp_u32(~u_input.a, u_input.a, 0u)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2057f - -707f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1221f))));
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-1f);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(991f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(func_3()))));
    var var_1 = Struct_1(abs(u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 75440u), vec2<u32>(12016u, 74199u) ^ vec2<u32>(u_input.a, u_input.a)) % 32u)), !all(vec4<bool>(true, true, true, true)), ~firstTrailingBit(min(vec2<i32>(38706i, -2147483647i), ~u_input.d.xz)));
    let var_2 = select(select(firstLeadingBit(abs(vec4<u32>(1u, 4294967295u, 24100u, 7193u))) ^ countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), firstLeadingBit(select(vec4<u32>(u_input.a, 1u, 0u, 9660u), vec4<u32>(u_input.a, u_input.a, 102733u, u_input.a) | vec4<u32>(u_input.a, 4294967295u, u_input.a, 43907u), true)), !all(vec4<bool>(var_1.b, var_1.b, true, true))), ~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(43275u, 0u, 48116u, u_input.a)), vec4<u32>(u_input.a, 31094u, u_input.a, 34736u))), all(!(!vec4<bool>(false, var_1.b, false, false))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1344f)) - var_0) + -369f) * 441f);
    return select(select(select(select(select(vec4<bool>(var_1.b, var_1.b, true, false), vec4<bool>(var_1.b, true, false, true), true), select(vec4<bool>(true, false, false, var_1.b), vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(false, false, true, var_1.b)), select(vec4<bool>(var_1.b, var_1.b, true, false), vec4<bool>(var_1.b, var_1.b, var_1.b, false), vec4<bool>(var_1.b, true, var_1.b, var_1.b))), select(vec4<bool>(var_1.b, var_1.b, true, true), select(vec4<bool>(false, var_1.b, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, var_1.b, true, true)), select(vec4<bool>(var_1.b, var_1.b, var_1.b, true), vec4<bool>(var_1.b, true, true, true), vec4<bool>(false, var_1.b, var_1.b, false))), vec4<bool>(any(vec3<bool>(true, var_1.b, true)), all(vec4<bool>(var_1.b, false, true, true)), true, true)), select(select(select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, false, var_1.b), var_1.b), select(vec4<bool>(false, true, var_1.b, false), vec4<bool>(true, false, false, true), var_1.b), select(vec4<bool>(var_1.b, true, var_1.b, false), vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(true, true, var_1.b, var_1.b))), vec4<bool>(false, var_1.b, var_1.b, any(vec4<bool>(false, true, false, var_1.b))), !vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), select(!(!vec4<bool>(var_1.b, false, var_1.b, false)), vec4<bool>(true, any(vec3<bool>(var_1.b, var_1.b, true)), !var_1.b, true), !vec4<bool>(false, var_1.b, var_1.b, false))), vec4<bool>(!all(vec4<bool>(var_1.b, var_1.b, var_1.b, false)), true, false, var_1.b), select(var_1.b, !any(select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(false, var_1.b, false, var_1.b), var_1.b)), var_1.b));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = !select(vec4<bool>(arg_1, select(all(vec4<bool>(false, arg_0.b, true, false)), arg_0.b, true), true != (true || arg_1), arg_1 | true), !(!(!vec4<bool>(false, true, arg_1, arg_0.b))), select(!func_2(), !(!vec4<bool>(false, true, true, arg_0.b)), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-445f, 525f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(322f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2072f, -671f))))));
    var var_1 = 0u;
    var_0 = vec4<bool>(!arg_1, true, !any(var_0.wy), !(!(func_2().x | true)));
    var var_2 = 29270u;
    return -559f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-350f, _wgslsmith_f_op_f32(f32(-1f) * -515f))) * _wgslsmith_f_op_f32(-491f + _wgslsmith_div_f32(-673f, -501f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(firstLeadingBit(u_input.b), u_input.a >= u_input.a, u_input.d.yy), true))));
    global0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-213f)));
    let var_0 = -1000f;
    let var_1 = select(!vec2<bool>(!all(vec3<bool>(true, false, true)), true), vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(true, false, false, true))));
    let var_2 = Struct_1(-13660i, true, ~(~u_input.d.xy << ((vec2<u32>(15765u, u_input.a) & vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    var var_3 = i32(-1i) * -2147483647i;
    var_3 = u_input.b;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1046f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0), true)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-767f, var_0)), vec2<f32>(_wgslsmith_f_op_f32(var_0 + var_0), var_0), vec2<bool>(false, all(vec4<bool>(true, var_2.b, var_1.x, true)))))), _wgslsmith_sub_i32(u_input.c ^ -27328i, u_input.b), vec2<u32>(_wgslsmith_mod_u32(abs(u_input.a), 1u) ^ ~_wgslsmith_clamp_u32(20189u, 0u, 1u), u_input.a), u_input.a << (16264u % 32u));
}


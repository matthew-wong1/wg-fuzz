struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<bool> {
    let var_0 = false;
    return vec2<bool>((!var_0 && (_wgslsmith_f_op_f32(-arg_0) <= 394f)) || var_0, arg_0 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f + arg_0) - -260f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-16342i, 14664i), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_0.x, u_input.b, u_input.b), vec4<i32>(-65391i, u_input.a, u_input.a, 9705i), arg_2.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.a, u_input.a), vec4<i32>(arg_0.x, -57476i, 1i, -31246i), vec4<i32>(arg_0.x, 0i, arg_0.x, u_input.a))) << (39723u % 32u), arg_0.x);
    let var_1 = Struct_1(arg_2.a, arg_2.b);
    let var_2 = vec2<bool>(true, arg_2.a.x);
    var var_3 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(abs(1223f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(759f, 817f))))))), min(arg_3.x, 0u));
    let var_4 = ~_wgslsmith_sub_u32(~select(~1u, select(6333u, 13982u, var_2.x), true), 86746u);
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> bool {
    var var_0 = min(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 22366i), vec3<i32>(2147483647i, u_input.b, -2147483647i) | vec3<i32>(43749i, u_input.a, u_input.b))), ~u_input.a);
    let var_1 = Struct_1(select(vec2<bool>(!(!arg_1.b.x), arg_1.a.x), select(func_2(-132f, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(41963u, arg_3.x))), !select(arg_1.a, arg_1.a, true), true), false), select(arg_1.b, !select(select(arg_0.b, vec3<bool>(arg_0.b.x, false, true), arg_0.b), vec3<bool>(arg_1.b.x, false, true), vec3<bool>(arg_0.b.x, arg_0.b.x, false)), vec3<bool>(true, ~u_input.b > -u_input.b, true)));
    var var_2 = arg_0;
    var var_3 = Struct_1(vec2<bool>(!(~arg_2.x <= min(4294967295u, arg_2.x)), arg_0.a.x), arg_1.b);
    var_2 = Struct_1(var_2.b.yz, select(!var_2.b, var_1.b, !select(!vec3<bool>(true, var_1.a.x, false), !var_2.b, func_3(vec2<i32>(0i, u_input.b), 624f, var_1, vec2<u32>(arg_2.x, arg_3.x)))));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(arg_2.b.xy, select(arg_0, vec3<bool>(arg_0.x, func_2(635f, 1u).x, false), select(!vec3<bool>(arg_2.b.x, false, arg_0.x), !select(vec3<bool>(false, arg_0.x, true), arg_2.b, vec3<bool>(true, arg_0.x, false)), !func_3(vec2<i32>(-2147483647i, -36924i), 1056f, Struct_1(arg_2.a, vec3<bool>(false, false, false)), vec2<u32>(69401u, 1u)))));
    let var_1 = Struct_1(select(!func_2(_wgslsmith_f_op_f32(-171f + arg_3.x), ~0u), select(select(arg_2.a, !vec2<bool>(var_0.a.x, arg_0.x), var_0.b.x), !vec2<bool>(arg_0.x, var_0.a.x), true), arg_0.zz), var_0.b);
    var var_2 = all(var_0.b.yz);
    var var_3 = -vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(1i, u_input.a, u_input.b) >> (vec3<u32>(29498u, 0u, 25529u) % vec3<u32>(32u))), u_input.b >> (~10015u % 32u)), u_input.a, -1i);
    let var_4 = Struct_1(vec2<bool>(arg_2.b.x, any(vec3<bool>(!var_0.a.x, true, !arg_0.x))), !arg_0);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(414f)) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_4(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, func_1(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false)), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u))), vec3<f32>(-1003f, _wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(479f - 330f)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), vec2<f32>(-154f, _wgslsmith_div_f32(-993f, -987f))))));
    var_0 = -545f;
    let var_1 = vec2<i32>(-1i, ~(-10549i));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-139f - 506f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1569f)) + _wgslsmith_f_op_f32(-700f + 1256f)) - 1373f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1033f))))), _wgslsmith_div_f32(1431f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = true;
    var var_3 = Struct_1(!(!select(func_2(328f, 14769u), vec2<bool>(true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_3(var_1, -441f, Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false)), vec2<u32>(0u, 4294967295u)) | false), vec3<bool>(any(vec2<bool>(true, true)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(453f, var_1, _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-6411i, var_1.x) & vec2<i32>(-15939i, var_1.x), vec2<i32>(2147483647i, var_1.x)), vec2<i32>(2147483647i | var_1.x, 1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32((vec4<i32>(u_input.b, -54258i, -1i, 40899i) & vec4<i32>(var_1.x, -12081i, -101357i, -11342i)) | -vec4<i32>(-63072i, 1i, -2147483647i, -1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), var_1), u_input.a >> (30313u % 32u), max(var_1.x, -11079i), u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 31209i, u_input.b, -29359i), vec4<i32>(-2147483647i, -13686i, var_1.x, 30780i)), -vec4<i32>(2147483647i, var_1.x, u_input.a, -19867i))), firstLeadingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_1.x, u_input.a, 2147483647i, 27550i)), ~vec4<i32>(var_1.x, 2147483647i, 1i, 0i)))), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -15116i) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), var_1), var_1.x));
}


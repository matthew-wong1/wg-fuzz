struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_3(select(select(vec4<bool>(all(vec3<bool>(false, false, true)), false, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true), !any(vec2<bool>(true, true))), vec4<bool>((arg_1 > u_input.b) || true, false, true, false), false));
    global0 = arg_0.x;
    let var_1 = ~arg_0 << (arg_0 % vec4<u32>(32u));
    let var_2 = Struct_1(arg_0.zxz);
    var_0 = Struct_3(!var_0.a);
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(754f, arg_3.b, arg_3.b)))))));
    let var_2 = select(select(select(!(!vec4<bool>(arg_3.a, true, arg_3.a, arg_3.a)), select(vec4<bool>(true, arg_3.a, arg_3.a, arg_3.a), !vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_3.a), !vec4<bool>(arg_3.a, arg_3.a, false, arg_3.a)), select(vec4<bool>(false, false, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_3.a), select(vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, false, arg_3.a), arg_3.a))), select(vec4<bool>(true, any(vec3<bool>(arg_3.a, arg_3.a, true)), true, false), vec4<bool>(all(vec3<bool>(arg_3.a, true, arg_3.a)), true, arg_3.a, arg_3.a), (arg_3.a != arg_3.a) || true), arg_3.a & true), select(!(!(!vec4<bool>(arg_3.a, arg_3.a, arg_3.a, true))), !(!(!vec4<bool>(false, arg_3.a, arg_3.a, arg_3.a))), all(select(!vec3<bool>(false, false, arg_3.a), vec3<bool>(arg_3.a, arg_3.a, false), select(vec3<bool>(arg_3.a, arg_3.a, false), vec3<bool>(arg_3.a, true, true), true)))), true);
    let var_3 = _wgslsmith_f_op_f32(-arg_3.b);
    global0 = 0u;
    return var_2.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3.a.x;
    var var_1 = select(vec2<bool>((_wgslsmith_f_op_f32(exp2(arg_0.x)) <= _wgslsmith_f_op_f32(-arg_0.x)) | func_3(func_2(vec4<u32>(0u, 1u, 57941u, 41525u), 0i), Struct_1(vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<u32>(62035u, 0u, 4294967295u)), Struct_2(arg_1, arg_0.x)), arg_3.a.x), arg_3.a.xy, vec2<bool>(false, select((arg_0.x > arg_0.x) | !arg_3.a.x, any(!vec3<bool>(false, arg_3.a.x, arg_1)), true)));
    var_1 = select(arg_3.a.xw, !(!arg_3.a.wy), 1u <= _wgslsmith_add_u32(_wgslsmith_mod_u32(func_2(vec4<u32>(45087u, 62577u, 45486u, 1760u), arg_2.x).a.x, 66484u), 1u));
    var var_2 = Struct_2(!all(vec3<bool>(true, true || var_0, var_1.x || var_1.x)), _wgslsmith_f_op_f32(-552f - arg_0.x));
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(454f + 553f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f + _wgslsmith_f_op_f32(round(var_2.b)))), !var_2.a);
    return Struct_1(~select(reverseBits(vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(75934u, 1u, 23928u)), vec3<bool>(var_1.x, var_2.a == true, false)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = ~(~reverseBits(arg_3.a.x) >> (1u % 32u));
    global0 = 17054u;
    let var_0 = 1u | ~(~(~arg_1.a.x));
    let var_1 = arg_2.a;
    let var_2 = Struct_3(!select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), any(vec4<bool>(true, false, false, true))), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))));
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1196f), _wgslsmith_f_op_f32(max(-1082f, 1228f)), _wgslsmith_f_op_f32(step(1189f, 1000f)), _wgslsmith_f_op_f32(step(-614f, -1035f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(-850f - 1433f), 377f, -699f))), var_2.a.x, vec4<i32>(firstLeadingBit(44933i), max(1i << (arg_1.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2539i, u_input.b, 1i) ^ u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-39038i, 0i, u_input.a.x)))), firstTrailingBit(~_wgslsmith_mod_i32(-1655i, u_input.a.x)), u_input.d), Struct_3(select(var_2.a, select(select(vec4<bool>(true, var_2.a.x, true, var_2.a.x), vec4<bool>(var_2.a.x, true, false, true), vec4<bool>(false, true, var_2.a.x, false)), var_2.a, var_2.a), !select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, false, var_2.a.x), var_2.a.x)))).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    var var_0 = ~_wgslsmith_add_u32(64804u, 1u) ^ select(func_4(~0u, func_1(vec4<f32>(-869f, -318f, 1066f, 887f), true, vec4<i32>(u_input.c, u_input.c, 12991i, -32924i), Struct_3(vec4<bool>(false, false, false, false))), Struct_1(vec3<u32>(71937u, 32797u, 1u)), func_2(vec4<u32>(5687u, 75094u, 0u, 0u), -18384i)) ^ 4294967295u, select(~1u, ~1u, 1f >= _wgslsmith_f_op_f32(round(-1621f))), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = 45705u;
    let var_1 = abs(39831u);
    var_0 = ~1u;
    var var_2 = 135f;
    var var_3 = _wgslsmith_f_op_f32(-310f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(select(-1854f, _wgslsmith_f_op_f32(trunc(-172f)), false)))));
    let var_4 = !select(vec4<bool>(true, true, !func_3(Struct_1(vec3<u32>(var_1, 0u, var_1)), Struct_1(vec3<u32>(var_1, var_1, 0u)), Struct_1(vec3<u32>(var_1, 71406u, var_1)), Struct_2(true, 517f)), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), true), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1f) + 1400f));
}


struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    return 69867u > ~(~arg_2.a.c >> (~1u % 32u));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = abs(_wgslsmith_clamp_i32(abs(30170i), firstTrailingBit(abs(31237i)), ~firstLeadingBit(1i)));
    var var_1 = arg_1.a;
    var var_2 = max(21047u, 4294967295u);
    let var_3 = var_1.e.x;
    var_2 = abs(39404u);
    return select(func_2(var_1.e, arg_1.a.e, Struct_2(Struct_1(var_1.a, 1u, u_input.a.x, select(vec2<bool>(arg_1.a.d.x, true), vec2<bool>(var_1.a.x, false), arg_1.a.e.ww), select(vec4<bool>(var_1.a.x, true, var_1.e.x, var_1.d.x), vec4<bool>(true, true, var_1.a.x, var_1.a.x), var_1.d.x))), vec4<bool>(var_1.d.x, !arg_1.a.d.x, false, any(select(vec2<bool>(false, arg_1.a.e.x), var_1.d, vec2<bool>(true, true))))), true && (all(vec4<bool>(true, arg_1.a.e.x, false, true)) == ((1656f >= arg_0) & true)), any(!vec2<bool>(var_1.e.x, false)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_1(select(vec3<bool>(func_2(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec3<bool>(false, false, true), u_input.a.x, 1u, vec2<bool>(true, true), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true)), !any(vec2<bool>(true, true))), vec3<bool>(true, true, false), true), _wgslsmith_mult_u32(~reverseBits(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), u_input.b.xw)), arg_0, vec2<bool>(func_2(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true), Struct_2(Struct_1(vec3<bool>(true, false, true), 84806u, 9898u, vec2<bool>(true, true), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)) | !func_3(-246f, Struct_2(Struct_1(vec3<bool>(false, true, true), u_input.a.x, 41900u, vec2<bool>(true, false), vec4<bool>(false, true, true, true))))), select(vec4<bool>(false, false, _wgslsmith_div_f32(238f, -460f) != _wgslsmith_f_op_f32(round(-1354f)), !all(vec4<bool>(true, true, true, false))), vec4<bool>(true, false, false, (21576u < u_input.a.x) | false), !any(vec2<bool>(true, true))));
    global0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-755f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1969f)), 1043f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -748f))), _wgslsmith_f_op_f32(sign(-1244f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(-113f)), !var_0.a.x)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), -1521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), -1035f));
    var_0 = Struct_1(select(select(vec3<bool>(var_0.d.x, true, var_0.d.x), select(var_0.a, select(vec3<bool>(var_0.e.x, true, true), var_0.e.yzx, vec3<bool>(var_0.e.x, var_0.e.x, false)), vec3<bool>(true, true, true)), var_0.a.x), select(vec3<bool>(arg_0 != 0u, !var_0.a.x, all(var_0.e)), !vec3<bool>(var_0.a.x, var_0.e.x, var_0.e.x), var_0.e.zzw), select(!vec3<bool>(false, var_0.a.x, true), select(select(vec3<bool>(var_0.d.x, var_0.a.x, var_0.a.x), var_0.e.wzy, false), vec3<bool>(false, true, true), var_0.a.x), select(!var_0.a, select(vec3<bool>(true, var_0.a.x, true), vec3<bool>(var_0.a.x, var_0.d.x, var_0.e.x), var_0.e.xwy), vec3<bool>(var_0.d.x, var_0.d.x, var_0.e.x)))), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, arg_0), var_0.b)) | ~arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.b) | u_input.b.xw, vec2<u32>(~var_0.b, 22041u)) | ~(var_0.b ^ ~4294967295u), var_0.d, select(select(var_0.e, var_0.e, false), var_0.e, var_0.e));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~u_input.b.x & ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 15452u), abs(u_input.b.x)));
    var var_1 = vec4<bool>(true, !all(vec3<bool>(true, all(vec3<bool>(true, false, true)), true)), true, !((_wgslsmith_f_op_f32(f32(-1f) * -1279f) > _wgslsmith_f_op_f32(sign(2204f))) || true));
    let var_2 = vec4<bool>(var_1.x, var_1.x, false, false);
    var_1 = !var_2;
    var var_3 = 43845u >> (_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.b.x, ~1u), min(~_wgslsmith_div_u32(1u, var_0), u_input.a.x)) % 32u);
    global0 = any(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(137f - 431f))))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(var_0, 1u))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1344f, 110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1377f - -656f) - _wgslsmith_f_op_f32(round(-609f))))), 716f), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_add_i32(-51740i, ~reverseBits(-1i))), ~_wgslsmith_clamp_i32(-(-28753i << (u_input.b.x % 32u)), -(~(-1i)), 19960i));
}


struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = select(!any(vec2<bool>(false, true)) | true, true, all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false))) || all(vec2<bool>(true, true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2068f, 878f))))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1856f + 681f) * 1f))));
    global0 = firstLeadingBit(u_input.c) != 22051u;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_1.x * 1541f), vec2<bool>(((var_1.x >= -425f) && all(vec2<bool>(true, false))) & (-u_input.d.x <= 5655i), !(true || select(false, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x))), vec3<f32>(350f, 1339f, var_1.x))), true);
    var var_3 = 59952i;
    return any(!select(!select(vec4<bool>(false, true, var_2.b.x, true), vec4<bool>(true, true, false, true), var_2.b.x), vec4<bool>(select(false, false, false), !var_2.b.x, false, var_2.b.x || var_2.d), select(vec4<bool>(false, var_2.d, false, true), !vec4<bool>(var_2.b.x, false, var_2.b.x, true), vec4<bool>(true, false, var_2.d, true))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = !vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), false)), true, false);
    global0 = all(!select(select(select(vec3<bool>(true, true, false), var_1, true), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1), !select(var_1, vec3<bool>(false, var_1.x, false), false), !var_1.x));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), !var_1.xx, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-274f, 848f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) + arg_1.x), -519f), _wgslsmith_f_op_vec3_f32(arg_1.zwy * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.yyx), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, arg_1.x, -792f))), select(vec3<bool>(false, var_1.x, var_1.x), var_1, false))))), any(vec3<bool>(false, var_1.x, !func_3())));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(step(-1105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * 322f) + -761f)))), !vec2<bool>(!(u_input.a >= arg_2.x), var_1.x), _wgslsmith_f_op_vec3_f32(-var_2.c), false);
    return 3049u;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = ~4294967295u;
    var var_1 = arg_2;
    var var_2 = arg_2;
    let var_3 = Struct_1(vec3<u32>(~((33288u & u_input.c) >> (var_2.c % 32u)), _wgslsmith_sub_u32(firstLeadingBit(func_2(-10093i, vec4<f32>(-1561f, arg_3.c.x, 1000f, 197f), var_1.d)), countOneBits(~arg_2.d.x)), _wgslsmith_add_u32(36185u, ~(~22837u))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.b.x, arg_3.a, 638f))), ~(~arg_2.a.x), ~max(vec4<u32>(max(4294967295u, var_2.c), 0u, ~47291u, abs(4294967295u)), ~(vec4<u32>(1u, u_input.a, var_2.d.x, arg_0.x) << (var_2.d % vec4<u32>(32u)))), select(!(!(!vec2<bool>(true, arg_2.e.x))), !var_2.e, arg_2.e.x));
    let var_4 = -u_input.d;
    return !all(vec2<bool>(arg_2.e.x, any(select(vec4<bool>(var_2.e.x, false, false, true), vec4<bool>(true, arg_3.b.x, true, arg_3.b.x), vec4<bool>(true, false, true, var_2.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(539f)), _wgslsmith_f_op_f32(round(1156f)), func_1(vec3<u32>(u_input.b, u_input.b, 0u), -32425i, Struct_1(vec3<u32>(71724u, u_input.a, 1u), vec3<f32>(-182f, -280f, 343f), u_input.c, vec4<u32>(4294967295u, u_input.a, 11304u, 61256u), vec2<bool>(true, true)), Struct_2(-732f, vec2<bool>(true, false), vec3<f32>(-180f, -1161f, -2080f), true)))))) - _wgslsmith_f_op_f32(f32(-1f) * -1567f));
    var_0 = -129f;
    var var_1 = Struct_1(vec3<u32>(~(~min(u_input.c, u_input.a)), u_input.b, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(6819u, 2354u), vec2<u32>(u_input.a, 51603u))) & ~_wgslsmith_add_u32(u_input.c, u_input.a)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(580f - -1000f), _wgslsmith_f_op_f32(-372f + -723f), 1355f)))), u_input.a, _wgslsmith_clamp_vec4_u32((select(vec4<u32>(7769u, u_input.c, 0u, u_input.c), vec4<u32>(23209u, 75497u, 4294967295u, u_input.c), vec4<bool>(false, true, true, true)) | ~vec4<u32>(u_input.a, u_input.b, u_input.c, 5897u)) >> (vec4<u32>(1u, 4294967295u, abs(9452u), 71186u) % vec4<u32>(32u)), ~reverseBits(~vec4<u32>(0u, u_input.a, u_input.a, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.c, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 79583u, u_input.b), vec4<u32>(50894u, u_input.c, u_input.b, 5475u) >> (vec4<u32>(36661u, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u))))), vec2<bool>(!func_3(), true));
    var var_2 = -2108f;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-125f, var_1.b.x, !var_1.e.x)) * -440f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f - 2238f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -1060f), var_1.b.x)) - -435f)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(round(-618f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(279f)), _wgslsmith_f_op_f32(f32(-1f) * -2134f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x - 1225f))) * var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1264f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1751f, var_1.b.x, _wgslsmith_f_op_f32(abs(-1959f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(305f, var_3.x, 213f), vec3<f32>(-906f, var_1.b.x, var_3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_1.b.x, var_1.b.x)))))), ~19958u, 89094u, abs(_wgslsmith_add_u32(~select(var_1.d.x, 1u, var_1.e.x), abs(_wgslsmith_sub_u32(u_input.c, var_1.a.x)))), var_1.d);
}


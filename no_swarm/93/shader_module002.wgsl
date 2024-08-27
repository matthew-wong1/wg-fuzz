struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f * var_0.x) - 645f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_0)), _wgslsmith_f_op_vec2_f32(-arg_0))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -2044f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, var_0.x), vec2<f32>(938f, arg_0.x))), select(vec2<bool>(true, true), vec2<bool>(true, false), true)))))));
    var var_2 = vec2<bool>(!(2147483647i != (~u_input.b.x << (u_input.a.x % 32u))), true);
    return 10749i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> u32 {
    var var_0 = u_input.b.x;
    let var_1 = ~firstLeadingBit(-u_input.b.x) << (77589u % 32u);
    var var_2 = _wgslsmith_add_i32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, 115f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-269f, 888f)))))), u_input.b.x);
    var_0 = countOneBits(-(~(~(-45854i))) | var_1);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(847f)) + _wgslsmith_f_op_f32(-988f - -1963f))) * _wgslsmith_f_op_f32(abs(1f)))));
    return ~max(22428u << (_wgslsmith_mod_u32(arg_1.x >> (0u % 32u), ~1u) % 32u), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, 0u, 5191u, arg_1.x)), ~min(vec4<u32>(32983u, 0u, u_input.a.x, arg_1.x), vec4<u32>(1u, u_input.a.x, 0u, 1u))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(-vec4<i32>(~u_input.b.x, -u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(18255i, u_input.b.x, u_input.b.x, -830i), vec4<i32>(92738i, u_input.b.x, u_input.b.x, -728i)), u_input.b.x) | vec4<i32>(~u_input.b.x, 26047i, u_input.b.x, _wgslsmith_div_i32(~15104i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, 1174f, 291f)))), ~func_2(vec4<bool>(u_input.a.x > 1u, u_input.b.x < u_input.b.x, true, false), vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), ~u_input.a.x, firstLeadingBit(u_input.a.x))));
    var var_1 = var_0;
    let var_2 = Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, max(u_input.a.x, 0u) < 1u, false, true), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), true)));
    var_1 = var_0;
    let var_3 = Struct_2(vec4<bool>(!(!var_2.a.x), true, true, var_2.a.x));
    return Struct_2(vec4<bool>(true, (var_2.a.x & true) & any(vec4<bool>(var_3.a.x, true, true, false)), (_wgslsmith_f_op_f32(f32(-1f) * -579f) == var_0.b.x) && true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1010f, -1366f, -686f), vec3<f32>(151f, 1222f, 1000f))))) - vec3<f32>(208f, -146f, 1449f));
    var var_1 = func_1();
    var_1 = Struct_2(!select(var_1.a, !vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), !all(vec2<bool>(var_1.a.x, var_1.a.x))));
    var_1 = Struct_2(!(!vec4<bool>(any(vec3<bool>(var_1.a.x, true, var_1.a.x)), -17453i <= u_input.b.x, var_1.a.x, !var_1.a.x)));
    var_1 = func_1();
    let var_2 = Struct_1(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 32986i, u_input.b.x, -31157i), vec4<i32>(2147483647i, 0i, u_input.b.x, u_input.b.x)) << (vec4<u32>(u_input.a.x, u_input.a.x, 51636u, u_input.a.x) % vec4<u32>(32u))) | (vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -1i), u_input.b.x, 0i, u_input.b.x) >> (~select(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(74272u, 0u, u_input.a.x, u_input.a.x), var_1.a) % vec4<u32>(32u))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1006f)) * _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x))), 4294967295u);
    var_1 = func_1();
    var_1 = Struct_2(!(!(!var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(vec3<i32>(53156i, 9994i, select(u_input.b.x, u_input.b.x, false))), ~abs(firstTrailingBit(u_input.b)), 444f);
}


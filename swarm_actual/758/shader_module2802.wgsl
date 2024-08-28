struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: bool) -> vec3<f32> {
    let var_0 = vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f * _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(min(904f, -108f)), all(vec2<bool>(true, arg_3)))))), 151f, 242f);
    var var_1 = vec2<u32>(~_wgslsmith_clamp_u32(~u_input.b, u_input.b | arg_0.x, 37752u), ~1u) | max(arg_0.yz, _wgslsmith_sub_vec2_u32(~arg_0.zx, vec2<u32>(arg_0.x, 0u)));
    var_1 = vec2<u32>(abs(0u), arg_0.x & var_1.x);
    var var_2 = _wgslsmith_div_vec3_u32(min(~countOneBits(vec3<u32>(1u, 4294967295u, var_1.x)), arg_0), arg_0);
    let var_3 = abs(4294967295u);
    return var_0.xyz;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(~(~(abs(vec2<u32>(u_input.b, u_input.c)) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 33886u)))));
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.a, u_input.a);
    let var_2 = select(vec3<bool>(any(vec2<bool>(true, true)), true, any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false)))), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, -544f, 432f)), _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.c, var_0.a.x, 0u), var_2.x, -365f, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(188f, -483f, 332f) - vec3<f32>(445f, -130f, -1116f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, -1673f, -288f)))), abs(min(max(vec2<u32>(var_0.a.x, u_input.c), vec2<u32>(u_input.b, u_input.b)), select(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, 1u), var_2.yx)) | _wgslsmith_div_vec2_u32(var_0.a >> (var_0.a % vec2<u32>(32u)), vec2<u32>(7849u, var_0.a.x))));
    var var_4 = vec3<u32>(~u_input.c, reverseBits(0u), min(11394u, _wgslsmith_add_u32(max(var_3.b.x, 10856u), 1u ^ var_3.b.x))) & select(max(abs(~vec3<u32>(26369u, 23452u, 36314u)), vec3<u32>(var_3.b.x << (21616u % 32u), ~var_3.b.x, var_3.b.x & 4294967295u)), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(16105u, var_0.a.x, var_3.b.x), firstTrailingBit(vec3<u32>(9118u, 3245u, 50412u))), select(~vec3<u32>(110743u, 38871u, var_0.a.x), vec3<u32>(u_input.c, 12835u, 19200u), vec3<bool>(true, var_2.x, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(var_2.x, var_2.x, false), var_2), vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(true, var_0.a.x >= var_0.a.x, true), !any(vec3<bool>(var_2.x, var_2.x, false))));
    return Struct_1(var_3.a, var_3.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> bool {
    global0 = _wgslsmith_div_f32(1904f, arg_2.x);
    let var_0 = func_2();
    let var_1 = !vec2<bool>(~u_input.a.x < u_input.a.x, all(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -541f, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, var_0.a.x, var_0.a.x, -1979f) + vec4<f32>(-768f, 1050f, var_0.a.x, var_0.a.x)) * vec4<f32>(arg_2.x, var_0.a.x, var_0.a.x, 279f)))) - vec4<f32>(arg_2.x, -645f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_2.x)))), arg_2.x)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(~firstLeadingBit(u_input.b & 1373u) == ~u_input.c, !(!(4294967295u > ~u_input.b)), true);
    let var_1 = Struct_3(~vec2<u32>(u_input.c, 1u));
    let var_2 = !vec3<bool>(false, var_0.x, func_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.b, 21243u), vec3<u32>(var_1.a.x, 26735u, 0u)), vec3<u32>(u_input.b, u_input.c, ~113847u), vec2<f32>(_wgslsmith_div_f32(-415f, 891f), -685f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(-771f, -212f)), _wgslsmith_f_op_f32(max(670f, 520f)), _wgslsmith_div_f32(1000f, -1351f), _wgslsmith_f_op_f32(f32(-1f) * -675f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-187f, -1036f, -274f, 1082f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1551f, 1000f, 370f, -1105f) * vec4<f32>(2373f, -1000f, 238f, 1000f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1123f, 655f, 382f, -115f) + vec4<f32>(-947f, 1000f, -803f, 242f)), vec4<f32>(1f, 1f, 1f, 1f))))));
}


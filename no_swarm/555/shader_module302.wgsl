struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-4907i, 34356i, 36176i, 0i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(1123f)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = -u_input.b;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.a, -446f)), 1f, true))))), var_0.b);
    global0 = vec4<i32>(-17550i, -33471i, u_input.b.x, ~(_wgslsmith_mod_i32(u_input.a, global0.x) >> (~arg_0.x % 32u)) >> (26020u % 32u));
    let var_3 = u_input.b;
    return ~(~_wgslsmith_add_u32(~arg_0.x, _wgslsmith_mod_u32(arg_0.x, 1u << (arg_0.x % 32u))));
}

fn func_1() -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-298f - -748f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(137f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-987f)), _wgslsmith_f_op_f32(trunc(371f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f - -850f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1416f) - _wgslsmith_div_f32(212f, 221f)), _wgslsmith_f_op_f32(step(1000f, -281f)), false)))));
    var var_1 = Struct_1(var_0.x, any(vec4<bool>(false, true, true, any(vec3<bool>(true, false, true)))) && !all(vec3<bool>(true, true, true)));
    let var_2 = vec2<u32>(firstTrailingBit(func_2(vec2<u32>(1u, 1u))), abs(35086u));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(step(var_1.a, 539f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, 210f, var_1.a, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 873f, -563f, var_1.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -589f, -1000f, 1754f)) + vec4<f32>(-1254f, 593f, -1456f, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(2430f, _wgslsmith_f_op_f32(floor(var_1.a)), 1164f, _wgslsmith_f_op_f32(select(var_1.a, var_0.x, var_1.b))), _wgslsmith_div_vec4_f32(vec4<f32>(1048f, 471f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-462f, var_1.a, -344f, var_0.x)))))));
    return reverseBits(_wgslsmith_mult_i32(max(48994i, -1i), min(max(global0.x, ~global0.x), u_input.b.x)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = !(!vec2<bool>((global0.x | 15718i) > _wgslsmith_div_i32(u_input.a, 1i), any(select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, true), vec3<bool>(true, true, arg_0.b)))));
    let var_1 = ~1u;
    var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(arg_0.b, true), !vec2<bool>(arg_0.b, true), true)));
    var var_2 = var_0.x;
    var_0 = select(vec2<bool>(select(arg_0.a < _wgslsmith_f_op_f32(select(-1569f, arg_0.a, false)), !all(vec2<bool>(arg_0.b, true)), _wgslsmith_div_f32(arg_0.a, -1000f) != -400f), _wgslsmith_sub_u32(~var_1, var_1) != select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, 8668u), vec4<u32>(var_1, 1u, var_1, 1u)), var_1 == var_1)), !(!(!select(vec2<bool>(var_0.x, arg_0.b), vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x)))), !(!vec2<bool>(arg_0.b || false, var_0.x | var_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(551f, arg_0.a))) - -233f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2036i);
    let var_1 = 1f;
    var_0 = func_1();
    var var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(~2147483647i, reverseBits(~u_input.b.x)), max(reverseBits(vec2<i32>(func_1(), -1i)), _wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -59236i, u_input.b.x), vec3<i32>(global0.x, u_input.b.x, 60666i))))));
    let var_3 = ~select(~vec4<i32>(-1i, select(2219i, global0.x, false), global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global0.x, u_input.b.x), u_input.b)), vec4<i32>(-2147483647i, 1i, u_input.b.x, 1i), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-215f + _wgslsmith_f_op_f32(-1943f + var_1)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3(Struct_1(var_1, true)))))), vec3<u32>(func_2(~(~vec2<u32>(37695u, 4294967295u))), 1u, abs(4294967295u)), ~abs(~(~vec4<u32>(1u, 1729u, 78178u, 39177u))), abs(~_wgslsmith_mult_u32(0u, 20192u)), abs(global0.x));
}


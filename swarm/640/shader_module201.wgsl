struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = ~(~vec4<u32>(0u, 1u, 31724u, global0.x) | ~min(vec4<u32>(1u, 49508u, global0.x, 4294967295u), vec4<u32>(4294967295u, arg_0, 2269u, arg_0))) << (vec4<u32>(~arg_0, ~countOneBits(~0u), ~global0.x, arg_0) % vec4<u32>(32u));
    global0 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(global0.xwx, vec3<u32>(arg_0, 4294967295u, 17645u)), arg_0, arg_0, arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, 4294967295u) & (vec4<u32>(arg_0, 34049u, arg_0, 20932u) ^ vec4<u32>(global0.x, global0.x, arg_0, global0.x)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(16433u, 4294967295u, 0u, arg_0)), countOneBits(vec4<u32>(global0.x, 4294967295u, 41213u, 4294967295u)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1397f * 1020f), -1000f, _wgslsmith_f_op_f32(1180f * 323f), 1455f)))));
    let var_1 = !(!((1i << (arg_0 % 32u)) <= 10183i));
    var var_2 = _wgslsmith_f_op_f32(exp2(var_0.x));
    return Struct_2(Struct_1(5297u, vec4<u32>(countOneBits(~global0.x), global0.x, _wgslsmith_mult_u32(global0.x, ~arg_0), arg_0 >> (~0u % 32u)), 55942u), vec4<u32>(arg_0, 1u, 4294967295u, firstTrailingBit(global0.x)), max(_wgslsmith_add_vec4_i32(~max(u_input.a, u_input.a), -min(u_input.a, u_input.a)), abs(~firstLeadingBit(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x)))));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_1(~_wgslsmith_mod_u32(min(13747u << (1u % 32u), abs(1u)), ~global0.x), vec4<u32>(16123u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 64120u) & global0.yz, ~vec2<u32>(82465u, 0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 63290u, 37362u, 1u), vec4<u32>(global0.x, global0.x, 1u, global0.x)), ~21623u)), select(_wgslsmith_add_u32(78447u, global0.x), reverseBits(global0.x), arg_0), ~(~(~18886u))), 0u);
    var_0 = Struct_1(global0.x, ~(~var_0.b), ~select(abs(~var_0.c), _wgslsmith_sub_u32(var_0.b.x, _wgslsmith_sub_u32(global0.x, 6965u)), select(all(vec2<bool>(false, arg_0)), !arg_0, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(748f - -829f), _wgslsmith_f_op_f32(floor(-1740f)), _wgslsmith_f_op_f32(min(-3654f, -1471f)), -112f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-869f, -1623f, -424f, 1750f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1230f, 884f, 1000f, -1014f), vec4<f32>(1629f, -1000f, 1000f, 606f), false)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, -261f, 291f, 1038f))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(exp2(var_1.x))))), var_1.x);
    var_0 = Struct_1(_wgslsmith_sub_u32(1u >> (var_0.b.x % 32u), 0u), vec4<u32>(_wgslsmith_clamp_u32(101753u, var_0.c, _wgslsmith_div_u32(_wgslsmith_div_u32(27777u, 58327u), 4294967295u)), 4294967295u, reverseBits(_wgslsmith_add_u32(4294967295u, global0.x)), global0.x), 4294967295u);
    return any(vec3<bool>((false || arg_0) == ((arg_0 && false) || true), _wgslsmith_f_op_f32(min(-937f, _wgslsmith_f_op_f32(abs(-389f)))) > var_2.x, select(true, all(!vec4<bool>(false, arg_0, true, arg_0)), any(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, false))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = func_2(~(~(~_wgslsmith_div_u32(global0.x, global0.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(216f)));
    let var_2 = -156f;
    var var_3 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + _wgslsmith_f_op_f32(trunc(-998f)))) - _wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(-var_1));
    let var_4 = select(false != all(vec4<bool>(true, true, func_3(false), select(true, true, false))), all(select(vec3<bool>(select(true, true, false), u_input.a.x >= -3398i, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_0.c.x != -31620i), any(vec3<bool>(true, true, true)))), any(select(vec3<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, true)), true), vec3<bool>(true, u_input.a.x < 13541i, any(vec3<bool>(true, false, true))), select(17595u >= arg_0.b.x, true, true))));
    return (global0.x | 0u) >> (0u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> StorageBuffer {
    global0 = firstLeadingBit(vec4<u32>(1u, abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(arg_0.b.x, global0.x)), 1u)), 26067u, 34893u));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-289f)) * _wgslsmith_f_op_f32(round(1158f))), -557f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -631f)), 1f))));
    let var_1 = arg_0;
    var var_2 = func_2(arg_0.b.x).a;
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32((vec2<u32>(7233u, 1u) >> (global0.yw % vec2<u32>(32u))) | min(var_2.b.xz, vec2<u32>(58583u, arg_0.b.x)), vec2<u32>(~1u, 13821u))), vec2<u32>(0u, ~arg_0.b.x));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(Struct_1(~global0.x, vec4<u32>(~1u, global0.x, func_1(Struct_1(9226u, vec4<u32>(global0.x, 1u, global0.x, 45815u), global0.x), vec4<f32>(-352f, 1234f, -110f, 182f)), 1u), _wgslsmith_add_u32(1u, ~global0.x)), ~abs(min(vec4<u32>(global0.x, global0.x, 73381u, global0.x), vec4<u32>(global0.x, 0u, global0.x, 0u))), vec4<i32>(-u_input.a.x, 0i, u_input.a.x, 0i)), select(vec3<bool>(-2147483647i != (u_input.a.x << (global0.x % 32u)), !all(vec3<bool>(false, false, false)), false), !vec3<bool>(true, true, u_input.a.x < 42985i), (countOneBits(-1i) << (_wgslsmith_dot_vec3_u32(global0.yyw, vec3<u32>(5828u, 0u, global0.x)) % 32u)) >= -(i32(-1i) * -523i)));
}


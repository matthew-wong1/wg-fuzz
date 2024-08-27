struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -509f);
    var var_1 = true;
    return select(!select(vec3<bool>(true, all(vec3<bool>(true, false, true)), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(true, true, true))), vec3<bool>(arg_1.x <= abs(1u), true, all(vec3<bool>(false, true, true))), true && ((true & any(vec2<bool>(true, false))) || true));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = Struct_1(true);
    var var_1 = !vec4<bool>(var_0.a, any(select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(arg_1.a, arg_1.a, false, var_0.a), vec4<bool>(arg_1.a, true, arg_1.a, var_0.a))) && false, true, var_0.a);
    var_1 = vec4<bool>(true, true, (~abs(u_input.a.x) < -10991i) && all(select(vec4<bool>(var_0.a, true, arg_1.a, true), !vec4<bool>(true, var_0.a, var_1.x, true), true)), !all(var_1.zyz));
    var var_2 = vec3<bool>(false, !var_0.a & !var_0.a, true);
    var_0 = Struct_1(~(~_wgslsmith_clamp_u32(16236u, 22346u, 4294967295u)) < ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12836u, 80204u, 4072u), vec3<u32>(134675u, 1u, 77724u)), 55091u));
    return all(!select(var_2.xz, select(vec2<bool>(var_1.x, false), vec2<bool>(arg_1.a, var_0.a), true), true));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = abs(~u_input.a);
    var var_1 = any(vec3<bool>(arg_1, all(vec4<bool>(func_3(u_input.a.x, Struct_2(true), arg_3), any(vec4<bool>(true, false, arg_1, false)), arg_3 == arg_3, arg_0.x)), func_1(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(39533i, 1i, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), ~(~vec4<u32>(0u, 7369u, 0u, arg_2.x)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), ~var_0.x, ~u_input.a.x)).x));
    let var_2 = -var_0.x;
    var var_3 = !select(select(!arg_0, vec3<bool>(func_1(vec3<i32>(var_2, 2147483647i, -2147483647i), vec4<u32>(arg_2.x, arg_2.x, 1u, arg_2.x), vec3<i32>(-1i, -1i, -32730i)).x, arg_0.x && true, !arg_1), arg_0), arg_0, (_wgslsmith_f_op_f32(floor(369f)) <= -974f) | arg_1);
    var var_4 = arg_2;
    return vec4<bool>(any(vec4<bool>(!arg_1, var_3.x, false, arg_3 != _wgslsmith_div_f32(arg_3, -132f))), -firstLeadingBit(abs(u_input.a.x)) != reverseBits(~var_2), arg_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(all(vec3<bool>(true, true, true)), abs(u_input.a.x) <= u_input.a.x, false, countOneBits(1u) != select(17471u, 1u, true)), !func_2(func_1(vec3<i32>(u_input.a.x, u_input.a.x, 31458i), vec4<u32>(91151u, 2579u, 24942u, 1u), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), true, ~vec3<u32>(67459u, 1u, 0u), 256f), vec4<bool>(true, func_1(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec4<u32>(4294967295u, 1u, 46899u, 132886u), vec3<i32>(u_input.a.x, u_input.a.x, 1960i)).x && true, true, true)), vec4<bool>(true, select(func_3(_wgslsmith_mod_i32(41724i, 18703i), Struct_2(false), _wgslsmith_f_op_f32(f32(-1f) * -314f)), true, (2147483647i & u_input.a.x) >= firstTrailingBit(u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-482f + -2210f), _wgslsmith_f_op_f32(trunc(994f))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -760f))), true), vec4<bool>(false, true, false, true));
    let var_1 = Struct_2(var_0.x);
    let var_2 = 793u;
    var var_3 = Struct_1(false);
    var var_4 = any(vec4<bool>(true, !var_0.x, var_0.x, u_input.a.x <= -u_input.a.x));
    let var_5 = var_2;
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(607f, 1331f)), vec2<f32>(-1814f, -1733f), true))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 300f), _wgslsmith_f_op_vec2_f32(vec2<f32>(365f, -626f) - vec2<f32>(527f, 136f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(903f, -1362f) + vec2<f32>(-261f, 271f)))), var_2);
}


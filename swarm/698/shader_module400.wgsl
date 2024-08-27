struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)));
    return -arg_1.b.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, -896f, 921f, 1295f) - vec4<f32>(192f, -630f, -1784f, 593f)) - vec4<f32>(1f, 1f, 1f, 1f))))), vec3<i32>(min(10930i, (0i >> (0u % 32u)) | _wgslsmith_clamp_i32(39335i, -1i, 1024i)), _wgslsmith_div_i32(arg_1, _wgslsmith_mod_i32(firstLeadingBit(arg_1), 41746i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, arg_1, -2147483647i)), max(vec3<i32>(arg_1, -2619i, 2147483647i), vec3<i32>(arg_1, 0i, arg_1))), ~(-1877i), countOneBits(max(-17120i, arg_1)))));
    var var_1 = Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(true, 4294967295u > u_input.a), vec2<bool>(true, true)), vec2<bool>(u_input.a > 70969u, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_2 = Struct_1(var_0.a, -var_0.b);
    let var_3 = Struct_2(select(vec2<bool>(var_1.a.x, all(!vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x))), select(vec2<bool>(true, var_1.a.x), !(!vec2<bool>(var_1.a.x, false)), vec2<bool>(var_1.a.x, var_1.a.x && var_1.a.x)), var_1.a));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-var_2.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)), -1277f));
    return var_0.b.x;
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = select(vec2<i32>(_wgslsmith_div_i32(func_2(Struct_5(1i), Struct_1(vec4<f32>(1253f, 118f, 700f, -1678f), vec3<i32>(2147483647i, arg_0.a, -14675i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -74468i), vec2<i32>(53673i, arg_0.a))), abs(~(-1i))), vec2<i32>(func_3(vec4<u32>(1u, 23134u, u_input.a, 28271u), 2147483647i) << (~58525u % 32u), -32678i & _wgslsmith_mult_i32(-2147483647i, arg_0.a)), !select(true, false, true)) >> (firstLeadingBit(vec2<u32>(~11324u, ~_wgslsmith_sub_u32(u_input.a, u_input.a))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-493f, 397f)), _wgslsmith_f_op_f32(abs(1314f)), var_0.x >= arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-112f, -421f)))));
    var var_2 = !vec3<bool>(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    var var_3 = var_1.x;
    var_3 = 2029f;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, -755f, 1509f, -1252f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1787f * 2184f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(914f, -211f)) - _wgslsmith_div_f32(2820f, 1115f)), _wgslsmith_div_f32(-214f, _wgslsmith_f_op_f32(f32(-1f) * -935f)))));
    let var_1 = vec3<i32>((i32(-1i) * -(i32(-1i) * -1829i)) << (0u % 32u), abs(1i), -(i32(-1i) * -1i));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(472f - var_0.x), _wgslsmith_f_op_f32(-var_0.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -313f)))), _wgslsmith_f_op_f32(-860f + _wgslsmith_f_op_f32(func_1(Struct_3(var_1.x)))), 904f);
    var var_2 = Struct_3(var_1.x);
    var_2 = Struct_3(1899i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1430f, -1535f, _wgslsmith_f_op_f32(min(var_0.x, -282f)), _wgslsmith_f_op_f32(func_1(Struct_3(var_1.x))))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1597f, _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -261f, -151f) * vec4<f32>(var_0.x, -642f, var_0.x, var_0.x)))))), 0i, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) ^ vec4<u32>(1137u, 7518u, 4294967295u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 7419u, 4294967295u, u_input.a), ~vec4<u32>(1u, u_input.a, 0u, u_input.a))), 44992i, 61340u);
}


struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(66279u, 1u, 57394u, 1u), ~vec4<u32>(51335u, 1u, 0u, 59212u)), max(~(~4294967295u), 4294967295u), ~countOneBits(firstLeadingBit(4294967295u))), !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))));
    var var_1 = Struct_1(max(vec3<u32>(18110u, _wgslsmith_mod_u32(4294967295u, 22047u | var_0.a.x), ~var_0.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_0.a.x), var_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 1u), vec2<u32>(var_0.a.x, 4294967295u))), vec3<u32>(min(var_0.a.x, 454u), 1u, countOneBits(58817u)))), vec2<bool>(_wgslsmith_f_op_f32(-2073f + arg_0) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + arg_1.x), var_0.b.x));
    var_1 = Struct_1(var_1.a, !var_1.b);
    var_1 = Struct_1(~(vec3<u32>(var_1.a.x, var_1.a.x, ~var_0.a.x) | (select(var_1.a, var_0.a, vec3<bool>(var_1.b.x, false, var_0.b.x)) | (vec3<u32>(var_0.a.x, var_1.a.x, 28957u) & vec3<u32>(0u, var_0.a.x, var_1.a.x)))), var_1.b);
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(var_1.a, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(5718u, 0u, 12496u), var_0.a), ~var_1.a)));
    return vec4<bool>(true, true, true, true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(4294967295u, ~27272u, 4294967295u), select(!vec2<bool>(all(vec4<bool>(true, false, true, true)), true), vec2<bool>(any(vec3<bool>(true, true, true)), true), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), func_3(-1000f, vec3<f32>(644f, 1686f, 264f))))));
    var var_1 = var_0;
    var_1 = Struct_1(var_0.a, !var_1.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-507f - 737f), _wgslsmith_f_op_f32(trunc(-928f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-261f, -621f) + _wgslsmith_f_op_f32(min(571f, -949f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -595f)))))));
    return Struct_1(vec3<u32>(var_0.a.x, firstTrailingBit(abs(var_1.a.x)) >> (var_0.a.x % 32u), _wgslsmith_div_u32(~var_1.a.x, 0u)), !select(select(vec2<bool>(false, var_1.b.x), !var_1.b, var_1.b), !vec2<bool>(var_0.b.x, true), var_1.b));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3);
    let var_1 = func_2();
    let var_2 = var_0;
    var var_3 = func_2();
    var_3 = var_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(4294967295u, -1240f, 3290u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f * -1227f)) + -423f));
    var var_1 = vec3<bool>(true, !var_0.b.x, ~_wgslsmith_add_u32(~var_0.a.x, var_0.a.x << (var_0.a.x % 32u)) > abs(var_0.a.x));
    var_1 = vec3<bool>(true, true, var_0.b.x);
    let var_2 = ~vec2<u32>(4294967295u, var_0.a.x) >> (var_0.a.xz % vec2<u32>(32u));
    let var_3 = abs(var_0.a.x);
    var_1 = !select(vec3<bool>(true, false, u_input.a >= firstLeadingBit(u_input.a)), !(!select(vec3<bool>(false, var_1.x, var_0.b.x), vec3<bool>(var_1.x, true, var_1.x), var_0.b.x)), ~(~55154u) != (select(27857u, var_0.a.x, true) & ~var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2888f))))), _wgslsmith_mod_vec4_u32(min(~firstTrailingBit(vec4<u32>(990u, 1u, var_3, 31814u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3, var_0.a.x, 20770u, 1u), vec4<u32>(0u, var_3, var_3, var_0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3, var_2.x, var_2.x, var_2.x), vec4<u32>(60098u, 4294967295u, 4294967295u, 46966u)), min(vec4<u32>(var_3, 31130u, var_3, 4294967295u), vec4<u32>(var_3, var_0.a.x, var_2.x, var_3)))), reverseBits(vec4<u32>(var_0.a.x, 2691u, var_3, var_2.x) ^ vec4<u32>(var_3, 63286u, 1u, 13441u)) ^ (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 1u, var_2.x, 1u), vec4<u32>(0u, var_3, 1u, 40734u), vec4<u32>(0u, var_3, var_0.a.x, var_0.a.x)) ^ ~vec4<u32>(1u, var_0.a.x, 11543u, 1u))), -1i, -(u_input.a & u_input.a), ~(~u_input.a));
}


struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = -386f;
    let var_1 = Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(-arg_0));
    var var_2 = var_1;
    let var_3 = true;
    var var_4 = var_1;
    return Struct_2(var_1, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1009f), -918f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) + _wgslsmith_f_op_f32(177f * 1960f))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<bool>) -> bool {
    let var_0 = arg_1;
    global0 = array<vec4<u32>, 14>();
    var var_1 = var_0.b.x;
    var_1 = var_0.b.x;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-var_0.b), 73818i, arg_1.b.x, _wgslsmith_f_op_vec2_f32(-arg_1.b)).a;
    return !arg_3.x;
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = vec2<u32>(22599u & _wgslsmith_clamp_u32(29743u, _wgslsmith_mult_u32(~u_input.a, ~u_input.a), ~41421u << (_wgslsmith_clamp_u32(27116u, 4294967295u, u_input.a) % 32u)), _wgslsmith_div_u32(~3054u, ~9386u));
    var_0 = countOneBits(_wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 25913u), vec2<u32>(var_0.x, 0u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))) << (select(~firstLeadingBit(vec2<u32>(var_0.x, var_0.x)), abs(abs(vec2<u32>(4294967295u, 4294967295u))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)) % vec2<u32>(32u)));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -767f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, arg_0))))), 14674i, _wgslsmith_f_op_f32(2604f + _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1093f, 478f)) - vec2<f32>(_wgslsmith_div_f32(arg_0, -224f), _wgslsmith_f_op_f32(f32(-1f) * -124f))) - vec2<f32>(825f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 603f) - -2826f))));
    var_0 = _wgslsmith_add_vec2_u32(~countOneBits(select(vec2<u32>(28335u, 32631u), vec2<u32>(var_0.x, 4294967295u) ^ vec2<u32>(u_input.a, u_input.a), true)), select(vec2<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(32058u, 14u)]) ^ select(1u, u_input.a, false), select(~var_0.x, var_0.x | 1u, func_3(vec3<u32>(4294967295u, u_input.a, 54652u), Struct_1(-23918i, var_1.a.b), vec2<bool>(false, false), vec4<bool>(true, false, true, false)))), countOneBits(countOneBits(vec2<u32>(4294967295u, u_input.a))) ^ vec2<u32>(var_0.x, 1u | var_0.x), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec2<bool>(true, false))))));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-func_2(var_1.a.b, 9113i, _wgslsmith_f_op_f32(f32(-1f) * -1393f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(151f, arg_0)))))).b.xy), ~(-36664i), _wgslsmith_f_op_f32(391f + func_2(var_1.b.wz, -func_2(vec2<f32>(-1069f, var_1.a.b.x), 9380i, -2713f, var_1.b.zy).a.a, arg_0, vec2<f32>(230f, -324f)).a.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.b) * func_2(var_1.b.wy, var_1.a.a, 1450f, vec2<f32>(452f, 370f)).a.b)))).a;
    return vec2<f32>(_wgslsmith_div_f32(var_2.b.x, -676f), var_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-20745i, 27052i, 0i), firstTrailingBit(vec3<i32>(1i, 2147483647i, -2244i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(351f))), vec2<f32>(_wgslsmith_f_op_f32(-2915f + -1104f), -238f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1941f, 960f, -229f, -2064f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-632f, -616f, -712f, -563f))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1101f, -1801f, -1961f, 1612f), vec4<f32>(1268f, -1000f, 622f, -1812f)))))))));
    var var_1 = func_2(var_0.b.xx, _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(42542i, -1i, var_0.a.a), vec3<i32>(-2147483647i, var_0.a.a, -4698i) >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)))), min(~var_0.a.a, var_0.a.a) | max(var_0.a.a, ~var_0.a.a)), -1878f, vec2<f32>(_wgslsmith_f_op_f32(select(-427f, _wgslsmith_f_op_f32(-var_0.b.x), all(vec2<bool>(true, true)) | false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.b.x) * var_0.b.x))).a;
    var var_2 = vec2<bool>(true, false);
    var var_3 = 4294967295u;
    let var_4 = ~(-countOneBits(vec4<i32>(~var_1.a, func_2(vec2<f32>(var_0.a.b.x, var_0.a.b.x), 2147483647i, var_0.a.b.x, var_1.b).a.a, 1i, -38445i)));
    var var_5 = !select(select(vec4<bool>(var_2.x, false || var_2.x, var_2.x, var_2.x), vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)), false, 14329i == var_1.a, true), var_0.a.a > countOneBits(var_0.a.a)), vec4<bool>(all(!vec2<bool>(var_2.x, false)), false || any(vec4<bool>(var_2.x, true, var_2.x, false)), !var_2.x, var_2.x), select(!select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, false, var_2.x), false), !(!vec4<bool>(false, true, true, var_2.x)), var_2.x));
    var_2 = !(!var_5.yx);
    var_1 = var_0.a;
    var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1566f - 328f) * var_0.a.b.x)), var_1.b.x), 0i, _wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(step(var_1.b, var_0.a.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, -1350f), var_1.b) + vec2<f32>(var_1.b.x, var_0.a.b.x)))), vec2<bool>(var_2.x && any(vec4<bool>(var_2.x, var_5.x, var_2.x, false)), var_0.a.b.x <= _wgslsmith_f_op_f32(var_1.b.x * -635f))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-1i), var_4.wyz, u_input.a & u_input.a);
}


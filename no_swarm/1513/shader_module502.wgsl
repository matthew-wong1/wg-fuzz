struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global1 = Struct_3(global1.a, all(select(vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)), global1.a.a || global1.b, global1.a.a), select(!vec4<bool>(false, false, global1.a.a, false), select(vec4<bool>(false, false, global1.b, false), vec4<bool>(true, false, global1.b, global1.a.a), false), true), any(vec3<bool>(false, global1.a.a, true)) || true)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(global1.c.x, 31557u)), u_input.a.zx << (vec2<u32>(global1.c.x, 4294967295u) % vec2<u32>(32u))), firstLeadingBit(~countOneBits(u_input.a.xz))), global1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1229f))))));
    let var_0 = ~(vec4<i32>(-1i) * -(~reverseBits(vec4<i32>(16359i, 52818i, 26725i, -16355i))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-global1.e)))))), 1471f, global1.e, global1.e);
    var var_2 = select(vec4<bool>(!global1.a.a, global1.a.a, global1.b, true), vec4<bool>(any(vec3<bool>(global1.a.a, false, true)), !any(!vec2<bool>(global1.b, false)), true, any(select(vec3<bool>(global1.a.a, global1.b, global1.a.a), vec3<bool>(false, false, global1.b), global1.a.a))), true);
    let var_3 = ~(-var_0.x) & abs(24956i);
    return global1.c.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = countOneBits(u_input.a.x);
    var var_1 = global1.d.x;
    global0 = global1.e;
    let var_2 = max(vec4<u32>(_wgslsmith_div_u32(~global1.c.x, _wgslsmith_add_u32(firstTrailingBit(var_0), firstTrailingBit(68495u))), 1u, 0u, 52326u), vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.c.x, global1.c.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, var_0, global1.c.x)), 1u), ~func_3(_wgslsmith_f_op_vec3_f32(step(global1.d.ywx, global1.d.xyz))), min(_wgslsmith_clamp_u32(1u, 42682u << (1u % 32u), u_input.a.x), var_0), u_input.a.x << (firstLeadingBit(971u) % 32u)));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, reverseBits(min(20617i, -1i))) | firstTrailingBit(firstTrailingBit(countOneBits(vec3<i32>(46220i, -2147483647i, 22005i)))), ~vec3<i32>(2147483647i, -20414i, firstTrailingBit(-2147483647i)));
    return Struct_3(Struct_2(true), true, ~(countOneBits(u_input.a.yx) ^ abs(global1.c)) << (~vec2<u32>(global1.c.x, var_2.x) % vec2<u32>(32u)), vec4<f32>(-931f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1168f - 633f) * _wgslsmith_f_op_f32(-arg_0.x)) + -720f), -1809f), arg_0.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(arg_0);
    global0 = _wgslsmith_f_op_f32(-global1.d.x);
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-337f, 170f), _wgslsmith_div_f32(global1.d.x, 960f)), _wgslsmith_f_op_vec2_f32(global1.d.wy * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d.x, 1008f), global1.d.xx, arg_0)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.d.wz)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2453f, global1.d.x)))), global1.e), 170f));
    var var_2 = _wgslsmith_f_op_f32(var_1.e - 1250f);
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-747f, var_1.d.x)), var_1.e, _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-680f - global1.e) * -1065f)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, ~global1.c.x), 1u) << (_wgslsmith_div_vec4_u32(vec4<u32>(64558u, 1u, global1.c.x, abs(49022u & global1.c.x)), ~(~vec4<u32>(86898u, global1.c.x, 42281u, u_input.a.x))) % vec4<u32>(32u));
    var var_1 = func_1(global1.a.a);
    var var_2 = !select(select(select(select(vec4<bool>(global1.a.a, true, true, global1.b), vec4<bool>(global1.a.a, global1.a.a, true, true), global1.a.a), vec4<bool>(global1.b, false, true, global1.a.a), !global1.b), select(vec4<bool>(global1.a.a, global1.b, global1.b, global1.a.a), select(vec4<bool>(global1.b, global1.a.a, false, global1.b), vec4<bool>(true, false, true, global1.b), vec4<bool>(global1.b, global1.a.a, global1.a.a, true)), all(vec3<bool>(true, global1.a.a, false))), vec4<bool>(false, false, global1.a.a, global1.a.a)), vec4<bool>(global1.b, true, any(vec4<bool>(false, global1.a.a, false, global1.b)), true), select(!vec4<bool>(global1.a.a, true, global1.a.a, true), !vec4<bool>(global1.b, false, false, false), any(vec4<bool>(global1.b, global1.a.a, true, global1.b)) | func_2(var_1.a.xw, global1.d.yw).a.a));
    var_2 = !(!select(select(!vec4<bool>(true, global1.b, var_2.x, var_2.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_2.x, global1.b, var_2.x), vec4<bool>(global1.b, true, true, false)), true), select(!vec4<bool>(global1.a.a, global1.a.a, true, var_2.x), select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(global1.b, var_2.x, global1.a.a, var_2.x), vec4<bool>(false, true, false, var_2.x)), select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(false, true, var_2.x, var_2.x))), true));
    var var_3 = ~(_wgslsmith_mod_vec3_u32(vec3<u32>(13224u << (var_0.x % 32u), ~var_0.x, abs(global1.c.x)), vec3<u32>(46176u, 4294967295u, _wgslsmith_mod_u32(var_0.x, var_0.x))) << (_wgslsmith_mod_vec3_u32(~u_input.a << (u_input.a % vec3<u32>(32u)), abs(abs(var_0.yxy))) % vec3<u32>(32u)));
    var_1 = func_1(true);
    let var_4 = ~global1.c.x;
    var var_5 = vec2<i32>(~(-1i), _wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(3104i, 38692i)), -firstLeadingBit(~vec2<i32>(45146i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_5.x, var_5.x);
}


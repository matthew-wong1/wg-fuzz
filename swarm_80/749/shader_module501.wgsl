struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    global0 = arg_0;
    let var_1 = 41749u;
    var var_2 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(29197u, var_1, 4294967295u, 4294967295u), vec4<u32>(var_1, var_1, var_1, u_input.b)), ~36250u), vec3<u32>(~0u, 46859u, 8685u)), vec3<u32>(var_1, 4294967295u, 0u)));
    var_2 = Struct_1(select(var_2.a >> (vec3<u32>(24583u, _wgslsmith_dot_vec2_u32(var_2.a.yx, vec2<u32>(33834u, u_input.b)), 37971u) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(var_1, 4981u, 0u)), vec3<bool>(true, any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), true)));
    return firstLeadingBit(_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(firstLeadingBit(var_2.a), countOneBits(vec3<u32>(var_1, 0u, 3719u)))), select(~(~var_2.a), vec3<u32>(u_input.b, var_1, ~var_2.a.x), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_2, arg_2, false), false), !vec3<bool>(arg_2, true, arg_2), false | arg_2))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(global0.x - global0.x), global0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 935f, global0.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 113f) - vec3<f32>(990f, -769f, -1000f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(771f * -322f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 381f, 1704f) - vec3<f32>(global0.x, 1000f, global0.x))))));
    let var_0 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1355f, 1023f))))), u_input.c.xww, (firstTrailingBit(u_input.b) > 0u) == select(true, true, any(vec2<bool>(false, true)))));
    var var_1 = var_0;
    let var_2 = ~0i;
    var_1 = var_0;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a, ~_wgslsmith_div_i32(u_input.a, max(-u_input.a, select(34960i, 1i, false))), countOneBits(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(25716i, u_input.a, u_input.a), u_input.c.yzz) >> (_wgslsmith_sub_u32(arg_1, u_input.b) % 32u))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1527f, 1215f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-global0.x))));
    var var_1 = func_2((abs(u_input.c.x) >> (~_wgslsmith_div_u32(28842u, 1u) % 32u)) << (((~1u >> (~arg_1 % 32u)) & u_input.b) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))));
    var_1 = Struct_1(var_1.a);
    return Struct_1(~(~vec3<u32>(~u_input.b, countOneBits(44237u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, ~0u);
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~var_0.a.x, 72075u), 35072u), u_input.b, 4294967295u));
    let var_2 = abs(u_input.c);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -462f, global0.x) * vec3<f32>(global0.x, -1000f, -816f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1447f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-500f, global0.x, global0.x), vec3<f32>(global0.x, 1274f, -801f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(261f, -1547f, 1000f), vec3<f32>(global0.x, -1312f, global0.x), false))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(step(global0.x, -1520f)), _wgslsmith_div_f32(-694f, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1342f, -865f, -2477f)), true)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 147f, -1036f)), vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1010f)), -255f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-793f, -108f, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(-1000f, global0.x, global0.x))), vec3<f32>(778f, -685f, _wgslsmith_f_op_f32(865f + global0.x))) * vec3<f32>(global0.x, 245f, global0.x)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2156f, global0.x, -566f, global0.x), vec4<f32>(global0.x, global0.x, 531f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, 722f, global0.x, -601f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1012f, -571f, global0.x, global0.x), vec4<f32>(-1164f, global0.x, global0.x, global0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f + 1331f)) + global0.x), 1003f, _wgslsmith_f_op_f32(f32(-1f) * -710f), 335f));
    var var_4 = _wgslsmith_f_op_f32(floor(-751f));
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + global0.x))))), global0.x));
}


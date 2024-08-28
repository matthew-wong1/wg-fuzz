struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -958f, global1.x) + arg_0.www), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, global1.x, arg_0.x))))) + _wgslsmith_f_op_vec3_f32(sign(arg_0.wxw)));
    var_0 = false;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -119f) + vec3<f32>(1190f, arg_0.x, -1113f))))));
    let var_1 = Struct_2(~(~countOneBits(global0.zw)), vec4<u32>(~(global0.x >> (abs(4294967295u) % 32u)), 4294967295u >> (global0.x % 32u), select(_wgslsmith_mod_u32(1u, 71621u), ~global0.x, false) | 1u, global0.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(356f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f * _wgslsmith_f_op_f32(f32(-1f) * -1138f)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    global0 = ~(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 50312u, global0.x, global0.x), ~vec4<u32>(1u, 62921u, 4294967295u, 46351u), vec4<u32>(arg_1.a.x, 1378u, global0.x, arg_2)), ~select(vec4<u32>(arg_2, 1u, global0.x, arg_2), vec4<u32>(global0.x, 8546u, 16938u, 4294967295u), vec4<bool>(false, false, true, true))) >> (_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(9814u, arg_2, global0.x, arg_2), vec4<u32>(27204u, global0.x, global0.x, 1u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(13884u, arg_2, arg_2, 0u), vec4<u32>(324u, 0u, arg_2, global0.x)))) % vec4<u32>(32u)));
    let var_0 = vec3<bool>(true, all(vec2<bool>(!any(vec4<bool>(false, true, true, false)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1219f)) - -1210f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_0, -1042f, 166f, global1.x), 0i, 2687i)))) > global1.x);
    let var_1 = Struct_2(select(vec2<u32>(1u, 54646u), ~min(abs(vec2<u32>(1236u, global0.x)), max(arg_1.a, global0.yy)), all(!vec4<bool>(var_0.x, true, true, true))), ~(~(vec4<u32>(global0.x, arg_1.a.x, 1u, 4294967295u) ^ vec4<u32>(arg_1.a.x, 0u, 4294967295u, global0.x))) ^ (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, arg_2), vec4<u32>(43414u, arg_1.a.x, 0u, arg_2), vec4<u32>(20994u, arg_2, global0.x, arg_1.a.x)), vec4<u32>(1u, arg_2, global0.x, arg_2)) | max(firstTrailingBit(vec4<u32>(global0.x, global0.x, arg_2, arg_2)), select(vec4<u32>(48648u, 3558u, arg_1.a.x, 19984u), vec4<u32>(0u, arg_1.a.x, 4328u, 7246u), vec4<bool>(var_0.x, false, var_0.x, var_0.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1008f, 875f, -1576f, -901f)), vec4<f32>(-785f, 2684f, 369f, 1110f))), vec4<f32>(_wgslsmith_f_op_f32(1586f + -106f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(arg_0 + -138f), -672f), all(!vec2<bool>(true, var_0.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1285f, global1.x, global1.x, arg_0))))))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = arg_0.b;
    var var_0 = ~(~arg_0.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2200f, 225f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, -648f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(global1.x, Struct_1(vec2<u32>(arg_0.b.x, arg_0.a.x)), arg_0.b.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -566f, 417f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1733f, -588f, 480f, global1.x)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, var_1.x, var_1.x, 452f)))))));
    let var_3 = -abs(vec3<i32>(-1i) * -(vec3<i32>(-31589i, 0i, u_input.a) ^ vec3<i32>(u_input.a, 1i, 2147483647i)));
    return _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(reverseBits(global0.xz), var_0.yw)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(firstLeadingBit(~((64297u ^ global0.x) >> (~global0.x % 32u))), _wgslsmith_mod_u32(abs(global0.x), ~global0.x), countOneBits(abs(abs(abs(1u)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(func_1(Struct_2(global0.zx, vec4<u32>(11438u, global0.x, 2367u, global0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(4294967295u, global0.x))), abs(vec2<u32>(func_1(Struct_2(global0.xy, vec4<u32>(4294967295u, 3760u, global0.x, 1u))), 0u))));
    var var_0 = Struct_1(~global0.wx & select(global0.zz, abs(vec2<u32>(3168u, global0.x)), !any(vec2<bool>(true, true))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1206f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, -715f)), vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(step(global1.x, global1.x)) > _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 1685f, -311f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1327f)))) - vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-456f + 184f)))));
    var var_1 = select(vec2<i32>(abs(2147483647i), -52140i), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -27601i), abs(vec2<i32>(u_input.a, 21792i))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))) >> (~select(var_0.a, var_0.a, vec2<bool>(all(vec3<bool>(true, true, true)), true)) % vec2<u32>(32u));
    var_0 = Struct_1(~var_0.a);
    let var_2 = Struct_1(global0.xw);
    let var_3 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}


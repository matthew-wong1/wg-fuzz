struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = global0.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-373f, -886f), 105f, arg_0.a)));
    var var_1 = arg_0;
    global0 = select(!vec4<bool>(arg_1, any(global0.wx), _wgslsmith_f_op_f32(var_1.a + var_0.x) >= arg_0.a, global0.x), select(select(select(!vec4<bool>(arg_1, false, true, arg_1), select(vec4<bool>(true, false, arg_1, false), vec4<bool>(global0.x, global0.x, true, true), arg_1), vec4<bool>(arg_1, false, true, global0.x)), vec4<bool>(arg_1, global0.x, any(global0.zyw), any(global0.yyx)), !(!vec4<bool>(true, global0.x, arg_1, false))), select(select(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, arg_1), global0.x), !vec4<bool>(true, arg_1, false, true), vec4<bool>(global0.x, global0.x, true, true)), !vec4<bool>(arg_1, false, true, true), !vec4<bool>(true, false, arg_1, arg_1)), arg_1), any(global0.yx) & false);
    var_1 = arg_0;
    return countOneBits(5853i) | u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<f32>(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_2.a, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(509f + 1282f) + _wgslsmith_div_f32(arg_3.a, 162f)))));
    global0 = select(vec4<bool>(min(func_3(Struct_1(var_0.x, u_input.a), false), -u_input.b) >= u_input.b, arg_0.c & true, true, arg_3.a < _wgslsmith_f_op_f32(-arg_2.a)), !select(select(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0.c, true, global0.x), vec4<bool>(global0.x, false, false, true)), !global0.x), select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), vec4<bool>(true, true, true, true), global0.x), !(!vec4<bool>(global0.x, arg_0.c, false, global0.x))), select(!select(!vec4<bool>(true, arg_0.c, false, global0.x), select(vec4<bool>(true, false, global0.x, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, global0.x, false), false), !vec4<bool>(true, global0.x, false, global0.x)), vec4<bool>(!global0.x && !arg_0.c, all(select(global0.ww, vec2<bool>(global0.x, false), arg_0.c)), true, !arg_0.c), select(select(select(vec4<bool>(global0.x, true, global0.x, arg_0.c), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(arg_0.c, global0.x, true, true)), select(vec4<bool>(true, true, global0.x, arg_0.c), vec4<bool>(global0.x, arg_0.c, true, global0.x), vec4<bool>(false, true, arg_0.c, false)), arg_3.b.x > arg_3.b.x), select(!vec4<bool>(global0.x, false, global0.x, arg_0.c), vec4<bool>(false, false, arg_0.c, true), select(vec4<bool>(arg_0.c, true, true, true), vec4<bool>(false, false, false, true), global0.x)), true)));
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-296f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(abs(var_0))))) * vec2<f32>(1f, 422f))));
    var_1 = arg_2.b.x;
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = true;
    var var_1 = 20619u;
    let var_2 = reverseBits(min(vec4<i32>(u_input.b << (arg_0.d % 32u), min(u_input.b, arg_0.a.x), arg_0.a.x, ~42643i), vec4<i32>(firstLeadingBit(arg_0.b.x), 1i, 1i, arg_0.b.x ^ arg_0.e.x))) << (vec4<u32>(arg_0.d, 1u, 1u, 46940u) % vec4<u32>(32u));
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = vec2<i32>(u_input.b, u_input.b);
    let var_1 = arg_0;
    let var_2 = Struct_1(304f, firstLeadingBit(vec3<u32>(~reverseBits(86334u), 31416u, countOneBits(~33604u))));
    let var_3 = Struct_2(vec2<i32>(~var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-40057i, max(var_0.x, u_input.b)), vec2<i32>(var_0.x, ~var_0.x))), ~vec2<i32>(~min(u_input.b, 2600i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.x), var_0), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, var_0.x), vec2<i32>(0i, 0i)))), all(vec3<bool>(!any(global0.ww), !any(global0.wx), global0.x)), ~abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.b.x), vec2<u32>(1u, 855u))), abs(_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.b, var_0.x, 0i, u_input.b)), vec4<i32>(var_0.x, firstTrailingBit(20217i), var_0.x, u_input.b))));
    global1 = arg_0;
    return select(!vec4<bool>(any(select(global0.wzy, vec3<bool>(var_1, true, false), global0.x)), all(vec3<bool>(var_1, true, true)), !all(vec2<bool>(global0.x, true)), !(58937u != arg_1.b.x)), vec4<bool>(func_4(func_2(Struct_2(vec2<i32>(-41771i, -7921i), var_3.a, false, var_3.d, var_3.e), vec2<u32>(arg_1.b.x, 5981u), arg_1, Struct_1(var_2.a, arg_1.b))) && false, any(global0.xxx), true, any(vec4<bool>(true, true, false, false))), !(!vec4<bool>(!arg_0, func_4(var_3), all(vec2<bool>(true, arg_0)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(!vec4<bool>(global0.x, global0.x, true, global0.x), !(!vec4<bool>(false, true, global0.x, global0.x)), all(global0.xz)), select(func_1(global0.x, Struct_1(1f, u_input.d)), vec4<bool>(all(vec4<bool>(global0.x, true, false, false)), !global0.x, select(true, false, global0.x != false), any(func_1(false, Struct_1(366f, u_input.d)).wwy)), func_1(global0.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -471f), vec3<u32>(3536u, 0u, u_input.d.x)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(981f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f + 206f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-774f)))))), _wgslsmith_sub_vec2_u32(min(u_input.a.xz, u_input.a.yz) | u_input.d.xz, ~vec2<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.d.x))), vec3<f32>(1f, 1f, 1f), -u_input.b);
}


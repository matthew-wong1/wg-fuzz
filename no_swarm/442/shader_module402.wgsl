struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, -1956f)), _wgslsmith_div_vec2_f32(vec2<f32>(263f, 2176f), vec2<f32>(-1815f, -302f)))) * vec2<f32>(-949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-660f + 741f) * -1634f))), 81047u);
    var var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_1.a, vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f + var_1.a.x))))), 1u);
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(54547u, 0u, ~(~1u), _wgslsmith_add_u32(var_1.b, 0u) << ((abs(1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(50215u, u_input.a.x, 30718u, u_input.a.x), vec4<u32>(41635u, 1u, 0u, 69552u))) % 32u)), ~vec4<u32>(_wgslsmith_mod_u32(~var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 0u, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, global0.x))), u_input.a.x, 0u, 39792u));
    let var_2 = var_0;
    return arg_1;
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = func_3((~_wgslsmith_add_i32(-2147483647i, 15192i) >> (u_input.a.x % 32u)) ^ -1i, vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(72644u, global0.x, u_input.a.x, 10712u), vec4<u32>(7211u, 54066u, 0u, 46244u))) >= 0u, true));
    return vec3<bool>(select(!func_3(~2147483647i, func_3(-1i, vec3<bool>(var_0.x, true, var_0.x))).x, true, any(!func_3(1i, vec3<bool>(false, true, false)))), !var_0.x, !all(vec2<bool>(true, select(false, true, var_0.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, -228f))));
    var var_1 = 1i;
    let var_2 = Struct_2(select(!func_2(~vec2<u32>(18719u, 39723u)), !func_3(69809i, vec3<bool>(true, true, true)), false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1)))));
    var var_3 = countOneBits(arg_2.x) >> (u_input.a.x % 32u);
    var var_4 = -_wgslsmith_mod_i32(max(-33048i, _wgslsmith_mod_i32(arg_2.x, ~2147483647i)), 31591i);
    return _wgslsmith_f_op_f32(ceil(303f)) >= _wgslsmith_f_op_f32(abs(1058f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(false, false, func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a.x, 67599u), vec4<u32>(u_input.a.x, global0.x, 1892u, 8746u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(497f, -213f)) * _wgslsmith_f_op_f32(ceil(927f))), -select(vec4<i32>(-5567i, 1i, -23187i, -2147483647i), vec4<i32>(2147483647i, 30052i, 0i, 0i), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)));
    var var_1 = 0u;
    var_1 = ~_wgslsmith_add_u32(reverseBits(74400u) | global0.x, ~(~abs(global0.x)));
    global0 = ~(~vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), global0.xz), u_input.a.x, 31613u));
    var var_2 = select(vec4<u32>(~0u, ~abs(4294967295u), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(96714u, global0.x, 1u), u_input.a), 1u, _wgslsmith_dot_vec2_u32(global0.yy, ~global0.yx)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 40078u, u_input.a.x) ^ u_input.a, u_input.a)), select(firstLeadingBit(select(vec4<u32>(global0.x, global0.x, 34119u, u_input.a.x), vec4<u32>(43795u, 57915u, u_input.a.x, 0u), false)) & ~(vec4<u32>(global0.x, global0.x, 60123u, global0.x) ^ vec4<u32>(36835u, 4294967295u, u_input.a.x, 52945u)), vec4<u32>(u_input.a.x, min(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 13281u, 4294967295u), global0.wxy)) | firstLeadingBit(vec4<u32>(global0.x, u_input.a.x, 5953u, 5080u)), select(!vec4<bool>(var_0.a.x, var_0.a.x, false, true), select(!vec4<bool>(true, false, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), select(false, false, false)), true)), var_0.a.x);
    let var_3 = Struct_2(vec3<bool>(all(select(vec3<bool>(true, var_0.a.x, var_0.a.x), !vec3<bool>(false, var_0.a.x, var_0.a.x), !var_0.a)), 274f < var_0.b, true), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, var_3.b, 1390f), vec3<f32>(var_0.b, var_0.b, var_3.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(877f, var_3.b, var_3.b)))))), vec3<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -363f)) * var_0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -270f))))), countOneBits(vec3<u32>(var_2.x, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_2.x), vec2<u32>(4294967295u, 50649u)))), abs(0i) >> (_wgslsmith_mod_u32(global0.x, 30359u) % 32u), 0u);
}


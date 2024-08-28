struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<f32> = vec4<f32>(-1163f, -1000f, -1074f, -1000f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(329f, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-757f, 1741f))) + 243f))));
    var var_1 = reverseBits(-(~vec4<i32>(arg_0, 1i, 8034i >> (u_input.c.x % 32u), abs(-1i))));
    var var_2 = u_input.c.zxy;
    global0 = !vec3<bool>(global0.x, true, true);
    global0 = vec3<bool>(true, true, (true | (true || global0.x)) & (u_input.c.x >= ~4294967295u));
    return _wgslsmith_f_op_f32(var_0.x * 706f);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(u_input.c.x);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f - global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(2147483647i)) + global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.x)), -1178f), -912f);
    global0 = vec3<bool>(true, !(firstLeadingBit(u_input.a.x >> (0u % 32u)) > 52752i), true);
    var var_1 = Struct_3(!select(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, true), global0.x), vec3<bool>(!global0.x, any(vec4<bool>(false, false, true, true)), true), global0.x), 118f, Struct_1(abs(u_input.a), ~vec3<u32>(0u, ~u_input.c.x, ~0u), _wgslsmith_f_op_f32(f32(-1f) * -423f), (_wgslsmith_dot_vec3_u32(u_input.c.zyz, vec3<u32>(80582u, u_input.c.x, u_input.c.x)) ^ max(48677u, var_0.a)) >> (1u % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-var_1.c.e), any(select(vec3<bool>(true, var_1.a.x, true), var_1.a, all(vec2<bool>(var_1.a.x, true)))))), var_1.c.c, _wgslsmith_f_op_f32(-145f - var_1.b));
    return ~var_1.c.d;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> bool {
    var var_0 = ~(i32(-1i) * -15751i);
    var var_1 = func_2();
    let var_2 = Struct_2(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 0u)), u_input.c.x));
    var_1 = ~54325u;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1053f, -257f, arg_3.x, -457f), vec4<f32>(650f, global1.x, -320f, 420f)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(ceil(-1832f)), arg_3.x)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -884f))), global1.x, -1057f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(2147483647i))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xzz;
    let var_1 = global1.x;
    global0 = vec3<bool>(any(!(!select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, true, global0.x, global0.x), false))), func_1(-var_0.x | 46443i, ~(u_input.a.x & _wgslsmith_mod_i32(2147483647i, 32504i)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b.x, var_0.x)), var_0.zx), vec2<i32>(_wgslsmith_div_i32(var_0.x, 1i), var_0.x | var_0.x)), global1.wyw), true);
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(655f, -898f, 280f, global1.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, global1.x, global1.x))))))), vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(-818f, global1.x)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -1124f)), -102f, _wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = u_input.b.xyy;
    var var_3 = vec3<bool>(!(!global0.x || true), -(~2147483647i) <= -var_0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1761f, 930f))) * -918f) + 947f), global1.x);
}


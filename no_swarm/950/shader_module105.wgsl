struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 0u;

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    return ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 42168u, global0.c.x), ~vec3<u32>(global0.c.x, global0.c.x, global0.b.x)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, 40890u), vec3<u32>(4294967295u, global0.c.x, global0.b.x)), ~1u)) > _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(firstTrailingBit(vec2<u32>(1u, global0.c.x))), reverseBits(countOneBits(vec2<u32>(global0.b.x, global0.c.x)))), global0.b);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(global0.a, vec2<u32>(0u, _wgslsmith_mult_u32(min(0u, 98074u), _wgslsmith_mult_u32(~20556u, select(1u, arg_0, true)))), ~global0.b);
    global1 = arg_1;
    var var_1 = var_0;
    global2 = -1000f;
    var var_2 = select(true, any(vec3<bool>(true, !func_3(), !(arg_3.x != 2147483647i))), any(!vec4<bool>(true, arg_3.x >= 27521i, arg_0 >= arg_2, true)));
    return func_3();
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> vec3<f32> {
    let var_0 = vec2<bool>(func_2(0u, global0.c.x, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(102u, 97519u, 0u, arg_1)), vec4<u32>(countOneBits(arg_1), ~4294967295u, ~1u, countOneBits(arg_1))), u_input.b.zxz), !arg_2);
    let var_1 = arg_2;
    let var_2 = all(!(!select(select(vec4<bool>(var_0.x, true, var_0.x, arg_2), vec4<bool>(var_0.x, var_1, var_0.x, var_1), vec4<bool>(false, true, var_0.x, arg_2)), vec4<bool>(arg_2, false, false, arg_2), !vec4<bool>(true, true, arg_2, true))));
    global2 = global0.a;
    global1 = global0.b.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-903f, -501f, -784f), vec3<f32>(377f, global0.a, -435f))) - vec3<f32>(global0.a, global0.a, -1137f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a, 339f, global0.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, global0.a, global0.a) + vec3<f32>(global0.a, 1081f, -1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -239f, 278f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-368f, 1229f, -1128f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 549f, global0.a))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 318f, -1067f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) * vec3<f32>(global0.a, global0.a, 1633f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, global0.a, global0.a), vec3<f32>(global0.a, 305f, 699f))) * vec3<f32>(-274f, global0.a, 928f))), vec3<f32>(global0.a, _wgslsmith_f_op_f32(-1047f - _wgslsmith_div_f32(2585f, global0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.b.x) & u_input.b.wyy, ~u_input.b.zzx) > 4670i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, global0.b, countOneBits(countOneBits(max(abs(global0.c), global0.c | global0.b))));
    var var_1 = _wgslsmith_f_op_f32(111f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1140f, global0.a)));
    global2 = var_0.a;
    global0 = var_0;
    global2 = -1123f;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.b.x, 19057i, u_input.b.x), 4294967295u, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -164f), var_0.a, _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, 357f, 1046f), vec3<f32>(var_0.a, -473f, var_0.a))))), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_clamp_vec3_i32(u_input.b.wxz, u_input.b.xyz, u_input.b.wzx), 1u, true)), (global0.a >= global0.a) & true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f) * -638f), var_0.a, global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-51869i, -2147483647i) >> ((countOneBits(8827u) | global0.c.x) % 32u), select(countOneBits(u_input.a), u_input.b.x, select(false, any(vec3<bool>(false, false, false)), false))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(max(-170f, 250f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, -1277f)))))), _wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_2)), _wgslsmith_f_op_vec3_f32(func_1(u_input.b.zxw, global0.b.x, false)), 2262f <= var_2.x)))));
}


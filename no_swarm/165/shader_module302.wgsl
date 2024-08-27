struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -1833f, 1231f);

var<private> global1: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = arg_2.b;
    var var_0 = true;
    let var_1 = arg_1.a;
    let var_2 = select(vec2<bool>(true, true), select(vec2<bool>(!arg_1.a.x & any(arg_2.a.wy), !select(false, var_1.x, false)), vec2<bool>(any(arg_2.a.zxw), !all(vec3<bool>(arg_1.a.x, arg_2.a.x, true))), false), all(vec4<bool>(false, _wgslsmith_f_op_f32(min(arg_1.b.x, -548f)) >= -731f, arg_1.a.x, arg_2.a.x)));
    var var_3 = _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, min(-46997i, u_input.e.x), max(u_input.e.x >> (_wgslsmith_mult_u32(u_input.b >> (u_input.b % 32u), 23283u) % 32u), u_input.a.x));
    return var_1;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x));
    var var_1 = !vec3<bool>(false, false, select(any(vec4<bool>(true, true, true, true)), any(func_3(arg_1.yyy, Struct_1(vec4<bool>(true, true, true, true), arg_1.wxy), Struct_1(vec4<bool>(false, true, true, false), arg_1.xyw))), _wgslsmith_f_op_f32(max(703f, arg_1.x)) != -757f));
    let var_2 = select(vec2<u32>(select(u_input.b, arg_0.x, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, 4294967295u), u_input.b), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_mult_vec2_u32(arg_0.yy, vec2<u32>(53353u, arg_0.x))))), ~_wgslsmith_mult_vec2_u32(arg_0.yz, min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(86752u, 1u)), arg_0.ww)), select(!vec2<bool>(var_1.x & false, !var_1.x), select(!var_1.yx, !var_1.yx, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, -167f, var_0)), Struct_1(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec3<f32>(944f, -691f, -934f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(756f, var_0, global0.x))).x), !func_3(arg_1.zxz, Struct_1(vec4<bool>(true, true, true, var_1.x), arg_1.zxy), Struct_1(vec4<bool>(false, true, var_1.x, true), arg_1.xxw)).yw));
    let var_3 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-766f, -510f, arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), var_0, 1339f), !func_3(vec3<f32>(var_0, var_0, global0.x), Struct_1(vec4<bool>(false, var_1.x, var_1.x, var_1.x), arg_1.yxx), Struct_1(vec4<bool>(false, var_1.x, var_1.x, true), vec3<f32>(1264f, 704f, -301f))).wwy)), Struct_1(select(func_3(arg_1.zzx, Struct_1(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec3<f32>(339f, arg_1.x, -748f)), Struct_1(vec4<bool>(true, var_1.x, var_1.x, true), arg_1.wwz)), !vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, false, false, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, arg_1.x))))), Struct_1(func_3(vec3<f32>(global0.x, global0.x, -1000f), Struct_1(vec4<bool>(var_1.x, var_1.x, false, var_1.x), arg_1.wzy), Struct_1(vec4<bool>(true, false, false, var_1.x), vec3<f32>(arg_1.x, 201f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.wzx, arg_1.zzx))))), vec3<f32>(_wgslsmith_f_op_f32(step(651f, 603f)), -212f, -1000f));
    var_1 = !select(!var_3.a.zyx, !select(select(var_3.a.wyx, var_3.a.yww, vec3<bool>(false, false, false)), var_3.a.wzz, 1964f != var_3.b.x), !select(func_3(arg_1.yww, Struct_1(var_3.a, arg_1.wyy), var_3).yxy, !var_3.a.zzx, false));
    return vec4<bool>(!var_1.x, (reverseBits(_wgslsmith_add_i32(3065i, u_input.e.x)) >= ~(-2147483647i)) | false, var_3.a.x | (u_input.c != u_input.c), !(select(_wgslsmith_mult_u32(u_input.b, u_input.b), arg_0.x, var_1.x || var_3.a.x) <= _wgslsmith_mult_u32(max(43929u, u_input.b), 6542u)));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~u_input.b;
    var var_1 = Struct_1(!(!select(func_2(vec4<u32>(u_input.b, 4294967295u, 30133u, var_0), vec4<f32>(global0.x, -296f, global0.x, global0.x)), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(819f, -1524f, 733f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1128f, 1180f, global0.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1508f, global0.x, global0.x), vec3<f32>(-436f, global0.x, global0.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -195f, global0.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -618f, global0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -300f, 1178f) - vec3<f32>(242f, 2096f, -462f))))));
    let var_2 = ~0i;
    let var_3 = true;
    var var_4 = var_1.a.x == !any(func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-327f, 696f, 1799f))), Struct_1(vec4<bool>(false, true, var_3, arg_0.x), vec3<f32>(global0.x, global0.x, 1731f)), Struct_1(var_1.a, vec3<f32>(-281f, 1788f, -820f))).ywy);
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(step(-167f, 649f))), global0.x) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), -436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, false)))), global0.x)));
    let var_0 = Struct_1(vec4<bool>(all(func_2(vec4<u32>(1u, u_input.b, 30798u, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, -226f, global0.x, global0.x))).xy), true, all(vec3<bool>(true, false, true)) & false, all(vec3<bool>(true, true, true)) & true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-363f, global0.x, global0.x) * vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, 1000f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(581f, global0.x, 2410f) * vec3<f32>(1764f, global0.x, global0.x)))))));
    var var_1 = vec4<u32>(~u_input.b, ~1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 0u, 2485u) & vec4<u32>(u_input.b, 33883u, u_input.b, u_input.b), firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.b, 32667u, 1u, 4294967295u)))), u_input.b), 4294967295u);
    var var_2 = !var_0.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-global0.x), true)) + _wgslsmith_f_op_f32(select(global0.x, var_0.b.x, true))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1463f * -916f)))) - global0.x);
    var_1 = ~vec4<u32>(120564u, ~u_input.b, ~138021u, countOneBits(var_1.x));
    var var_4 = vec3<f32>(global0.x, -509f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + var_3) - _wgslsmith_f_op_f32(step(var_0.b.x, 1000f))))));
    var var_5 = vec2<u32>(65349u, _wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(~reverseBits(u_input.b), 1u << (~var_1.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(2999i, 551f, firstLeadingBit(countOneBits(u_input.d.x)), vec2<f32>(var_4.x, var_4.x), 1i);
}


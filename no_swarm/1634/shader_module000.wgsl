struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1002f, -821f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    let var_0 = -firstTrailingBit(i32(-1i) * -countOneBits(35976i));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-939f, global0.x))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x);
    var var_1 = Struct_1(var_0);
    let var_2 = !vec2<bool>(!(any(vec2<bool>(true, true)) == any(vec2<bool>(true, false))), true);
    return countOneBits(_wgslsmith_dot_vec4_u32(u_input.b, ~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b)) & ~_wgslsmith_dot_vec3_u32(u_input.b.xxw, vec3<u32>(0u, u_input.a, 48077u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1136f, 466f)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 501f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 886f))))))));
    let var_0 = vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b.wyy | u_input.b.xww), select(u_input.b.zzy, vec3<u32>(1u, u_input.b.x, 1u), vec3<bool>(true, false, true)) >> (~u_input.b.xxw % vec3<u32>(32u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, _wgslsmith_div_u32(50767u, arg_1.x)), arg_0)), ~_wgslsmith_clamp_u32(90610u, ~0u, arg_1.x), min(41723u, ~_wgslsmith_add_u32(u_input.a, ~6868u)));
    return Struct_1(~_wgslsmith_add_i32(0i ^ (1i >> (u_input.a % 32u)), 2147483647i));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_1(58922i);
    var_0 = Struct_1(0i);
    var_0 = func_3(0u, u_input.b.zx << (vec2<u32>(func_2() << (arg_1.x % 32u), 58299u) % vec2<u32>(32u)));
    let var_1 = firstLeadingBit(u_input.b.x) << ((~u_input.a & (u_input.a >> (46114u % 32u))) % 32u);
    let var_2 = select(vec4<i32>(-var_0.a, func_3(4294967295u, vec2<u32>(arg_1.x, 0u)).a, 2147483647i, _wgslsmith_sub_i32(var_0.a, var_0.a)) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(-1i) * -(vec4<i32>(42859i, 0i, 6477i, var_0.a) ^ vec4<i32>(-23171i, var_0.a, -1i, var_0.a)), !vec4<bool>(var_0.a > var_0.a, true, true, select(false, true, true))) | vec4<i32>(~max(~var_0.a, func_3(21480u, vec2<u32>(u_input.a, arg_0.x)).a), 1i, -1894i, _wgslsmith_mod_i32(22558i >> (var_1 % 32u), firstLeadingBit(min(2147483647i, 14859i))));
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, true), all(vec2<bool>(true, false))), !vec3<bool>(true, false, all(vec2<bool>(false, false))), all(vec4<bool>(false, select(false, any(vec3<bool>(true, false, true)), any(vec2<bool>(false, true))), true, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec2<f32> {
    var var_0 = func_3(4294967295u, min(u_input.b.yz, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.b.x, 88712u)), ~_wgslsmith_mod_vec2_u32(u_input.b.yw, u_input.b.zx))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x + global0.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-512f, -314f) + vec2<f32>(639f, global0.x)))))))));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(266f, -1610f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = arg_1.x;
    var_0 = func_3(u_input.a, countOneBits(vec2<u32>(abs(u_input.b.x), firstLeadingBit(u_input.a))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 773f)), global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-34842i, -2147483647i), vec2<i32>(68009i, -40369i))) | 19886i);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(452f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(345f, 607f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(func_4((((vec2<i32>(var_0.a, 2147483647i) ^ vec2<i32>(var_0.a, var_0.a)) | vec2<i32>(-1i, var_0.a)) << (u_input.b.zw % vec2<u32>(32u))) ^ (abs(~vec2<i32>(var_0.a, 11640i)) | firstLeadingBit(vec2<i32>(var_0.a, -31459i))), select(vec3<bool>(all(func_1(u_input.b.yxw, vec4<u32>(82039u, u_input.a, 39415u, 82047u))), false, all(vec4<bool>(true, false, true, true))), vec3<bool>(true, false, all(vec3<bool>(true, true, true))), func_1(~(~u_input.b.xyz), u_input.b))));
    var var_1 = -1034f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, 2349f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x)))), true)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, 1296f, 1512f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1880f, global0.x))))))), var_0.a);
}


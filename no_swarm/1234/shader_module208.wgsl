struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = 0u & min(50354u, arg_3.a.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.b, 55322u, 0u) & vec4<u32>(arg_2, arg_3.a.x, arg_2, arg_2), abs(vec4<u32>(arg_2, 4294967295u, arg_3.a.x, u_input.b))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.d.b))) * _wgslsmith_f_op_f32(-1000f - arg_3.b.b)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(arg_1.x, 506f)))), arg_3.d.c, arg_3.e.x, select(!arg_3.b.e, select(vec4<bool>(false, arg_3.b.c, true, arg_0.x > -31753i), !select(vec4<bool>(arg_3.b.e.x, arg_3.e.x, true, arg_3.b.a), vec4<bool>(arg_3.c.c, arg_3.b.e.x, arg_3.e.x, arg_3.b.c), arg_3.b.a), arg_3.e.x && arg_3.b.d), vec4<bool>(arg_3.e.x, all(vec4<bool>(arg_3.c.e.x, arg_3.c.d, arg_3.c.a, arg_3.d.a)), true, select(true && arg_3.b.e.x, arg_3.c.a, true))));
    let var_2 = Struct_2(~reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(arg_3.a, arg_3.a), arg_3.a)), Struct_1(all(!arg_3.c.e.zwz) != arg_3.c.a, -979f, true, all(!select(var_1.e.yz, vec2<bool>(false, false), true)), select(vec4<bool>(!arg_3.c.d, u_input.a >= arg_0.x, -1015f < arg_3.b.b, var_1.a), arg_3.b.e, !select(vec4<bool>(false, var_1.e.x, true, arg_3.d.a), vec4<bool>(false, false, false, true), arg_3.c.a))), arg_3.c, var_1, var_1.e.zy);
    var var_3 = _wgslsmith_mult_u32(u_input.b, 0u);
    var_3 = 100722u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.b * _wgslsmith_f_op_f32(abs(arg_3.c.b))) + var_2.b.b));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(var_0.x & false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), var_0.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f * -966f)) > _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(62048i, u_input.a, u_input.a, -12307i), vec4<i32>(u_input.a, -6953i, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 1631f, -1000f, -834f))), 28926u, Struct_2(vec3<u32>(1u, u_input.b, u_input.b), Struct_1(false, -371f, false, var_0.x, vec4<bool>(false, var_0.x, var_0.x, true)), Struct_1(var_0.x, 294f, true, true, vec4<bool>(true, true, false, var_0.x)), Struct_1(false, 1000f, var_0.x, true, vec4<bool>(false, false, false, true)), var_0)))), !(!vec4<bool>(var_0.x, false, var_0.x & var_0.x, true)));
    var var_2 = firstTrailingBit(firstLeadingBit(u_input.a << (29896u % 32u)));
    let var_3 = ~(~select(vec2<u32>(u_input.b, u_input.b), select(max(vec2<u32>(34781u, 1u), vec2<u32>(u_input.b, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(113437u, u_input.b), vec2<u32>(20139u, u_input.b)), !var_1.e.yz), !vec2<bool>(true, var_1.d)));
    var_2 = 2147483647i;
    return Struct_1(true, 1218f, var_0.x, (_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.a, u_input.a), 35873i >> (u_input.b % 32u)) != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(13080i, u_input.a, -1i))) & all(vec2<bool>(all(vec4<bool>(var_0.x, false, false, var_1.c)), var_1.b <= var_1.b)), select(var_1.e, vec4<bool>(true, false, !any(vec3<bool>(var_0.x, true, var_1.e.x)), var_0.x), select(var_1.e, var_1.e, select(!vec4<bool>(true, var_0.x, true, var_1.c), var_1.e, !var_1.e))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = func_2();
    var_0 = arg_1;
    var_0 = func_2();
    var_0 = Struct_1(arg_1.a, -293f, select(all(var_0.e.xz) == any(!arg_1.e.yxy), arg_1.e.x, !var_0.c), any(select(select(vec3<bool>(arg_1.e.x, false, arg_1.e.x), arg_1.e.xyx, select(var_0.e.wzw, vec3<bool>(arg_1.e.x, var_0.a, var_0.d), false)), !select(arg_1.e.zxz, var_0.e.xwz, true), !(!vec3<bool>(arg_1.d, arg_1.e.x, arg_1.d)))), !(!select(vec4<bool>(arg_1.a, var_0.a, arg_1.d, arg_1.d), !vec4<bool>(false, false, true, var_0.a), select(arg_1.e, vec4<bool>(var_0.a, arg_1.d, true, true), var_0.e.x))));
    let var_1 = func_2().e;
    return _wgslsmith_mult_u32(~(~(~35031u)) | firstLeadingBit(~_wgslsmith_mod_u32(u_input.b, 8323u)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_u32(~(u_input.b >> (1329u % 32u)), select(func_1(vec4<f32>(-1676f, -266f, 345f, -1018f), Struct_1(true, -1000f, false, true, vec4<bool>(true, false, true, true))), u_input.b, any(vec3<bool>(false, false, true)))) | u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1443f, -29332i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-220f + -1353f) - _wgslsmith_f_op_f32(2115f + 931f)))))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a, 1i), 0i, abs(-28186i)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -687i), vec3<i32>(2147483647i, -6060i, u_input.a))), -countOneBits(u_input.a), -u_input.a, -2147483647i));
}


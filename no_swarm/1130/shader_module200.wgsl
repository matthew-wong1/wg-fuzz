struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_sub_u32(var_0.d.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, arg_0.c), u_input.a.x)) << (reverseBits(_wgslsmith_add_u32(var_0.d.x, 4294967295u)) % 32u), -18282i, u_input.a.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.d.x, 1u) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.d, u_input.a.yw), _wgslsmith_mod_vec2_u32(vec2<u32>(18462u, 92990u), vec2<u32>(1u, u_input.a.x))), arg_0.d));
    var_0 = var_1;
    var_0 = Struct_1(_wgslsmith_mult_u32(max(30049u, var_1.c), _wgslsmith_dot_vec2_u32(~(~var_1.d), var_1.d)), max(abs(1i), select(_wgslsmith_mod_i32(abs(var_1.b), ~var_0.b), firstLeadingBit(var_0.b), -43064i < ~arg_0.b)), ~u_input.a.x, reverseBits(~(~_wgslsmith_clamp_vec2_u32(var_0.d, vec2<u32>(u_input.a.x, 0u), vec2<u32>(4294967295u, u_input.a.x)))));
    var var_2 = firstTrailingBit(_wgslsmith_div_u32(~u_input.a.x, var_1.a));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-864f, -931f)) + _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.d.x, arg_1.b, 38771u, vec2<u32>(40417u, arg_1.c)), vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1f))))), -138f, _wgslsmith_f_op_f32(round(-2078f)));
    let var_1 = var_0.x;
    var var_2 = vec2<i32>(select(arg_1.b ^ -27962i, arg_0, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 26573i, 0i, -2147483647i), vec4<i32>(arg_0, -2147483647i, -8575i, arg_0)), vec4<i32>(firstLeadingBit(arg_1.b), ~2911i, -1i, ~0i))) >> (_wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a.xx, u_input.a.wx)), max(u_input.a.xz, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(26067u, 1u))) << (abs(~arg_1.d) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_2 = min(-_wgslsmith_clamp_vec2_i32(vec2<i32>(~arg_1.b, 17622i << (arg_1.a % 32u)), vec2<i32>(-2147483647i, arg_0 << (1u % 32u)), -vec2<i32>(-6661i, -2147483647i) ^ vec2<i32>(arg_0, arg_1.b)), _wgslsmith_sub_vec2_i32(~vec2<i32>(-arg_1.b, -arg_0), -(~select(vec2<i32>(var_2.x, 1i), vec2<i32>(32379i, 1i), true))));
    let var_3 = Struct_1(u_input.a.x, 2354i, ~(~25243u), ~reverseBits(arg_1.d));
    return _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yzz, ~u_input.a.xxz) & ~1u, 93637u, 0u, (_wgslsmith_add_u32(arg_1.d.x, arg_1.d.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(61845u, 7961u, u_input.a.x, 4294967295u), vec4<u32>(33001u, 51606u, 4294967295u, 1u))) & ~abs(0u)), ~(~u_input.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x ^ 1u, min(10705u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.wy | vec2<u32>(6475u, 1u), vec2<u32>(u_input.a.x, 20389u) | vec2<u32>(20530u, arg_0.x)))), ~2147483647i, 4294967295u, arg_1.d);
    var var_1 = func_2(-(_wgslsmith_sub_i32(min(arg_1.b, var_0.b), var_0.b) & var_0.b), var_0);
    var var_2 = Struct_1(~_wgslsmith_mod_u32(~1u, firstLeadingBit(u_input.a.x)), i32(-1i) * -var_0.b, 4294967295u, vec2<u32>(_wgslsmith_clamp_u32(51427u, abs(abs(3288u)), ~(~var_1.x)), 31443u));
    var var_3 = var_0;
    var_3 = var_0;
    return any(vec3<bool>(any(vec2<bool>(true, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, -20503i, 0u, vec2<u32>(u_input.a.x, u_input.a.x));
    var var_1 = select(select(vec4<bool>(!(var_0.b == -41698i), false, !all(vec3<bool>(false, false, true)), true), vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(func_1(u_input.a, var_0), false, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.b > -21036i, true, true), var_0.b != _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(-11551i, var_0.b))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, false, false), false), true);
    let var_2 = var_0;
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(0u ^ var_0.c, firstTrailingBit(4294967295u)) | countOneBits(var_0.c)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.d.x, u_input.a.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.d.x, u_input.a.x), countOneBits(~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1003f, -1483f) - vec2<f32>(1404f, -695f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, 715f))))), 2147483647i, var_2.b >> (_wgslsmith_mod_u32(var_0.d.x, ~var_3.x) % 32u), firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(var_0.a, var_3.x)), ~0u)));
}


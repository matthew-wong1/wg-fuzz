struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(98002u, 8781u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_5(Struct_1(-2790i, ~u_input.b, vec3<bool>(true, any(vec2<bool>(true, true)), _wgslsmith_div_i32(u_input.a.x, -2147483647i) > (u_input.a.x << (0u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1094f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(917f, 1980f), _wgslsmith_f_op_f32(select(570f, 597f, true))))));
    return true;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> vec3<bool> {
    global0 = Struct_2(select((global0.a >> (select(vec2<u32>(4294967295u, arg_1), vec2<u32>(arg_1, 0u), vec2<bool>(false, true)) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(53886u, 29663u), vec2<u32>(1u, global0.a.x)), global0.a, vec2<bool>(true != all(vec4<bool>(true, true, false, true)), func_3(Struct_2(vec2<u32>(18142u, global0.a.x))))));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(countOneBits(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(global0.a.x, 4294967295u, 13652u)), arg_1), _wgslsmith_clamp_u32(0u, ~1u, 4294967295u))));
    var var_0 = Struct_2(vec2<u32>(arg_1 << (u_input.b % 32u), _wgslsmith_add_u32(global0.a.x, _wgslsmith_div_u32(arg_1, ~global0.a.x))));
    global0 = Struct_2(global0.a);
    return !select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, false, false)))), vec3<bool>(true, true, true));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_5(Struct_1(arg_0.x, 4294967295u, select(vec3<bool>(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), all(vec2<bool>(false, false)), arg_1.x & true), vec3<bool>(!arg_1.x, arg_1.x, -2147483647i != u_input.a.x), arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -835f), 1107f)));
    return Struct_2(~vec2<u32>(u_input.b | ~4294967295u, abs(~u_input.b)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = -235f;
    global0 = func_4(min(u_input.a.xz, _wgslsmith_add_vec2_i32(u_input.a.yy, ~vec2<i32>(u_input.a.x, u_input.a.x)) ^ ~vec2<i32>(u_input.a.x, u_input.a.x)), select(vec3<bool>(true, !arg_1.x & true, !(!arg_1.x)), !select(!vec3<bool>(arg_1.x, false, true), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), arg_1.x), !func_2(~u_input.a.x, 1u, -1i)));
    global0 = func_4(-countOneBits(u_input.a.wy), select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, select(true, arg_1.x, any(arg_1)), true), vec3<bool>(true, arg_1.x, false)));
    var var_1 = ~arg_2.xyy;
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -_wgslsmith_dot_vec4_i32(-u_input.a, select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 10739i), u_input.a, false))), u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, -13265i, countOneBits(6827i))), -u_input.a.wwx));
    return Struct_4(72938i);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = vec2<u32>(arg_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~arg_0.a.x, u_input.b), firstLeadingBit(global0.a)), arg_0.a | vec2<u32>(u_input.b, u_input.b << (0u % 32u))));
    global0 = Struct_2(global0.a);
    var var_1 = arg_3.a << (abs(_wgslsmith_mod_u32(reverseBits(~0u), max(global0.a.x, var_0.x & var_0.x))) % 32u);
    return vec3<u32>(global0.a.x, u_input.b, max(70768u, global0.a.x | (20492u ^ ~var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.ww;
    var var_1 = ~(~max(4294967295u, _wgslsmith_mod_u32(0u, 1u)) & global0.a.x);
    let var_2 = ~(~_wgslsmith_sub_i32(i32(-1i) * -var_0.x, ~var_0.x));
    let var_3 = _wgslsmith_mult_u32(0u, ~(~(~global0.a.x | ~u_input.b)));
    var_1 = _wgslsmith_dot_vec3_u32(max(select(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a.x, 0u, 50485u), vec3<u32>(4294967295u, 0u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(43417u, 0u, var_3), vec3<u32>(var_3, u_input.b, var_3))), func_5(Struct_2(vec2<u32>(1u, 0u)), _wgslsmith_f_op_f32(abs(-1194f)), true, func_1(global0.a.x, vec2<bool>(true, false), vec4<u32>(10565u, 1u, global0.a.x, 29853u))), vec3<bool>(true, true, true)), vec3<u32>(~global0.a.x, 11232u, 4750u)), vec3<u32>(1u, 71017u, 42684u));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(54985u, 19370u, 4294967295u, u_input.b), vec4<u32>(1u, 26864u, u_input.b, 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.a.x, var_3, 48202u), vec4<u32>(3315u, 19420u, var_3, global0.a.x)), ~(u_input.b ^ u_input.b)), global0.a);
}


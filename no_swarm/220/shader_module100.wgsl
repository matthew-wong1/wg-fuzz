struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = ~vec4<u32>(26882u, ~arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 0u), ~arg_2.wzy) << (_wgslsmith_mult_u32(arg_1, ~0u) % 32u), arg_2.x);
    let var_1 = Struct_2(arg_3, true | (-30299i != arg_0.a.x));
    var_0 = abs(~_wgslsmith_div_vec4_u32(arg_2, ~(vec4<u32>(4294967295u, var_0.x, 83959u, 2423u) | vec4<u32>(arg_2.x, 31404u, 0u, 23076u))));
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, ~(~24212u), arg_2.x, ~0u), ~(abs(arg_2) & min(vec4<u32>(0u, arg_1, var_0.x, var_0.x), arg_2))), select(arg_2, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_1, u_input.c, 35254u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, u_input.c, var_0.x, arg_2.x), vec4<u32>(arg_1, arg_1, 1u, arg_2.x)), var_1.b), ~arg_2 >> (~vec4<u32>(arg_2.x, arg_1, arg_2.x, var_0.x) % vec4<u32>(32u)), ~(vec4<u32>(arg_2.x, arg_2.x, 54444u, var_0.x) ^ vec4<u32>(u_input.c, 40433u, u_input.c, 49395u))), all(vec4<bool>(var_1.b, true & var_1.b, all(vec3<bool>(true, var_1.b, true)), !var_1.b))));
    global0 = _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))));
    return vec2<i32>(~_wgslsmith_mod_i32(~var_1.a.a.x, ~u_input.b), abs(i32(-1i) * -16498i));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = arg_0.b;
    global1 = all(vec2<bool>(_wgslsmith_div_i32(0i, arg_0.a.a.x) >= _wgslsmith_add_i32(u_input.a, ~1i), arg_0.b && false));
    let var_0 = _wgslsmith_div_u32(~u_input.c, u_input.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x));
    let var_1 = arg_0;
    return var_1.a.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(func_3(Struct_1(vec2<i32>(u_input.a, u_input.b), vec3<f32>(866f, arg_1, 1224f)), 4294967295u, vec4<u32>(u_input.c, 4294967295u, 1u, 0u), Struct_1(vec2<i32>(u_input.a, -2147483647i), vec3<f32>(219f, -975f, -219f))), vec3<f32>(arg_1, 2004f, -1000f)), any(vec4<bool>(true, true, true, true))))) - arg_1);
    global0 = 1f;
    var var_0 = arg_0.x;
    let var_1 = 0u;
    var var_2 = abs(vec2<u32>(37926u, 24637u));
    return vec4<bool>(false, true, false, select(select(any(vec3<bool>(true, true, true)), true, true), false, false));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<u32> {
    var var_0 = !any(func_2(vec3<u32>(u_input.c, 7825u, 1u) | vec3<u32>(21156u, u_input.c, 64394u), _wgslsmith_div_f32(arg_0, arg_0))) && true;
    var var_1 = Struct_2(Struct_1(reverseBits(~firstTrailingBit(vec2<i32>(0i, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-1319f + 269f), 438f))), any(func_2(~(vec3<u32>(4294967295u, u_input.c, u_input.c) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<i32>(u_input.b, -2147483647i), vec3<f32>(arg_0, 1000f, arg_0)), true))), _wgslsmith_f_op_f32(max(-1000f, -168f))))).xy));
    var var_2 = ~select(vec4<i32>(-2147483647i, var_1.a.a.x, -27527i, u_input.b), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, 62558i, 5735i), vec4<i32>(-22834i, arg_1, -41798i, -70878i)), -2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(var_1.a.a, var_1.a.a)), !var_1.b);
    let var_3 = var_1.b;
    var var_4 = abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(25200i, firstTrailingBit(21618i)), _wgslsmith_mod_i32(64547i, 3563i)) >> (u_input.c % 32u));
    return ~vec2<u32>(~(~34045u << (u_input.c % 32u)), _wgslsmith_div_u32(1u, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_0 = func_1(-1529f, u_input.b);
    var_0 = select(vec2<u32>(~10029u, 8226u), (vec2<u32>(62460u, var_0.x) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 43726u), vec2<u32>(var_0.x, 61443u), vec2<u32>(u_input.c, var_0.x))) | vec2<u32>(115092u, ~0u), false) ^ abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(73995u, 40979u))) | ~vec2<u32>(var_0.x, 7834u));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(493f, 1464f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(680f, -1742f) - vec2<f32>(1415f, -1054f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1912f, -604f))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1000f), vec2<f32>(1001f, 313f))))))), false));
    global0 = _wgslsmith_f_op_f32(-var_1.x);
    var var_2 = reverseBits(vec3<u32>(4294967295u, ~u_input.c, 1u));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(~0i, countOneBits(-1i), ~firstLeadingBit(u_input.a), 48911i), vec4<i32>(_wgslsmith_add_i32(1i, 1i), firstLeadingBit(u_input.a), -14159i, 1i) & ~(-vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.a))), func_3(Struct_1(reverseBits(-vec2<i32>(u_input.b, u_input.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-840f, -1000f, var_1.x))))), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, 80466u), vec2<u32>(var_0.x, var_0.x))), vec2<u32>(0u, 1u) & min(vec2<u32>(var_0.x, 10961u), vec2<u32>(0u, var_2.x))), vec4<u32>(_wgslsmith_mult_u32(4294967295u >> (u_input.c % 32u), ~var_0.x), 926u, u_input.c, var_0.x), Struct_1(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.b, -9479i)), select(vec2<i32>(u_input.a, 18677i), vec2<i32>(0i, -1i), var_3)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, 742f)), _wgslsmith_div_f32(1213f, 1774f)))), ~firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(1151i, 14346i, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, u_input.b), vec3<i32>(0i, u_input.a, 1i), vec3<i32>(-2147483647i, -1i, 0i)))));
}


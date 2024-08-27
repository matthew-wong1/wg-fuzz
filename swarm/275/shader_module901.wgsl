struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 2147483647i, 1617i, 2147483647i);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-1904f, -1119f, 304f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> i32 {
    global0 = -vec4<i32>(global0.x, global0.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-5622i, 79179i), global0.xz & vec2<i32>(-12854i, 2147483647i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, 1i), vec3<i32>(-9889i, 63950i, global0.x)) << (select(u_input.b, u_input.b, arg_0) % 32u), _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, global0.x), 2147483647i >> (arg_3 % 32u))), ~_wgslsmith_clamp_i32(0i, firstLeadingBit(-2147483647i), 0i));
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(arg_3, 1u, arg_3))), vec3<u32>(_wgslsmith_add_u32(arg_3, arg_3), ~arg_3, u_input.a)), vec3<u32>(_wgslsmith_mod_u32(~1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(arg_3, 41750u)) % 32u), 28452u), ~u_input.b, _wgslsmith_sub_u32(~0u, reverseBits(u_input.a)) >> (~(~0u) % 32u)));
    var var_1 = _wgslsmith_mult_u32(~(max(arg_3, ~arg_3) | 51186u), 53742u);
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~19915u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13452u, 4294967295u, var_0, 0u) ^ vec4<u32>(79362u, u_input.a, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, 3886u, 144708u), vec4<u32>(4294967295u, 0u, var_0, 1u))), firstTrailingBit(u_input.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_3), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, arg_3) | vec2<u32>(arg_3, u_input.a), ~vec2<u32>(57523u, 4294967295u)))));
    global1 = arg_1;
    return 2147483647i;
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, ~(_wgslsmith_add_i32(global0.x, 7652i) & func_3(true, Struct_2(vec3<f32>(1361f, -1141f, global1.a.x)), Struct_2(vec3<f32>(global1.a.x, -696f, global1.a.x)), 27411u)), global0.x, global0.x), abs(vec4<i32>(-1i) * -vec4<i32>(1i, global0.x, 1i, -16900i)));
    global0 = -vec4<i32>(global0.x, global0.x, 38344i, global0.x);
    let var_0 = (true | all(vec2<bool>(true, true))) != all(vec3<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), false));
    var var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~global0.x, -14616i, 29370i, global0.x), vec4<i32>(global0.x, abs(global0.x), ~(-47377i), global0.x), _wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, global0.x, 1i, global0.x), vec4<i32>(-22230i, global0.x, -18578i, global0.x))), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global0.x, global0.x, global0.x), vec4<i32>(7344i, -13867i, 4923i, -2147483647i))));
    var var_2 = select(!select(select(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, false), false), select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, true), var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, true))), !(!vec3<bool>(var_0, true, var_0)), vec3<bool>(var_0, all(vec3<bool>(false, var_0, var_0)), !var_0)), vec3<bool>(false, all(select(!vec2<bool>(false, var_0), !vec2<bool>(var_0, var_0), vec2<bool>(var_0, true))), !select(var_0, true, -36671i >= global0.x)), false);
    return vec4<i32>(2147483647i, global0.x, -41062i, -(~global0.x));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, global1.a.x) + _wgslsmith_f_op_f32(select(681f, global1.a.x, true))), global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1717f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), global1.a.x));
    global0 = vec4<i32>(firstLeadingBit(-24549i), arg_0, _wgslsmith_mult_i32(-2147483647i, max(_wgslsmith_clamp_i32(global0.x, global0.x, -38105i), -12896i)), -(~0i));
    global0 = min(abs(arg_1), vec4<i32>(global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -23045i), global0.zz), global0.xx), global0.x, global0.x)) ^ arg_1;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-549f, _wgslsmith_f_op_f32(global1.a.x - 128f), var_0.a.x), _wgslsmith_div_vec3_f32(global1.a, vec3<f32>(global1.a.x, var_0.a.x, 416f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1250f, -270f, global1.a.x), var_0.a))))))));
    global0 = vec4<i32>(arg_1.x, 1i, -1i, arg_1.x);
    return select(!select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, false, false)), true), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, all(vec2<bool>(true, true))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false))), vec4<bool>(!((u_input.a >= 26159u) && true), var_0.a.x > _wgslsmith_f_op_f32(min(-147f, _wgslsmith_f_op_f32(sign(global1.a.x)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) - var_0.a.x) != _wgslsmith_f_op_f32(f32(-1f) * -907f)), !(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = select(!vec4<bool>(true, arg_0.x || arg_0.x, all(arg_0.wz), true), func_4(_wgslsmith_mult_i32(-36364i ^ arg_2, _wgslsmith_mod_i32(global0.x, -2147483647i)), func_2()), arg_0.x | arg_0.x);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.a), _wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, 213f, global1.a.x)))))) + arg_1));
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_div_f32(global1.a.x, -1641f)) - -1767f), -1062f, global1.a.x));
    var var_1 = Struct_1(vec2<u32>(countOneBits(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3), vec2<u32>(u_input.a, arg_3)))), 46097u), any(vec4<bool>(false, false, any(arg_0), !(arg_0.x & arg_0.x))));
    var var_2 = arg_1.x;
    return Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_u32(var_1.a, ~(var_1.a >> (var_1.a % vec2<u32>(32u))))), all(!(!(!var_0.xzx))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -755f;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(global0.x, select(firstTrailingBit(-37913i), -(global0.x << (37224u % 32u)), any(select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_2.b, true), vec2<bool>(true, arg_1))))), 0i, _wgslsmith_div_i32(global0.x, 2147483647i), global0.x);
    var var_2 = arg_2.b;
    var var_3 = firstTrailingBit(firstTrailingBit(55695u));
    global0 = var_1;
    return Struct_1(~(~reverseBits(arg_0.a)) >> (vec2<u32>(reverseBits(~u_input.a), ~arg_0.a.x) % vec2<u32>(32u)), arg_2.b);
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(-2147483647i, func_3(select(!arg_1.b, all(vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b)), true), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), global1.a.x, _wgslsmith_f_op_f32(767f * arg_0))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(global1.a))), 1u), 12310i, _wgslsmith_clamp_i32(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~21162i, _wgslsmith_add_i32(global0.x, 75426i), i32(-1i) * -6283i, _wgslsmith_add_i32(global0.x, global0.x)), vec4<i32>(global0.x, ~0i, global0.x, firstLeadingBit(-32678i))), i32(-1i) * -1i));
    let var_1 = -251f;
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-137f, 241f, _wgslsmith_f_op_f32(-arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.x + -1000f), global1.a.x)))), func_5(func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(global1.a.x + -379f), -408f, _wgslsmith_f_op_f32(-global1.a.x)), -2224i, u_input.a), false, Struct_1(firstTrailingBit(~vec2<u32>(u_input.b, u_input.a)), true)));
    var var_0 = 0u;
    var var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -2289f)), Struct_1(vec2<u32>(u_input.b, u_input.a), any(vec2<bool>(true, true))));
    var var_2 = Struct_1(~vec2<u32>(~6725u, ~(~u_input.b)), !((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, -20975i, global0.x), vec4<i32>(-464i, 0i, 0i, global0.x)) <= -2147483647i) & true));
    var var_3 = 4294967295u;
    let var_4 = vec2<bool>(any(!func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -2147483647i, 8960i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, 1i, 1i)), -vec4<i32>(-1i, global0.x, 1i, 2147483647i)).zy), true);
    let x = u_input.a;
    s_output = StorageBuffer(17517u, vec3<u32>(var_2.a.x, reverseBits(~1u), 37895u), 1808f, -vec4<i32>(_wgslsmith_mod_i32(-1i, ~2147483647i), global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(21166i, global0.x, global0.x), global0.xzz), 0i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(-23722i) << (var_2.a.x % 32u), _wgslsmith_dot_vec2_i32(global0.wx, global0.wy)), -2147483647i));
}


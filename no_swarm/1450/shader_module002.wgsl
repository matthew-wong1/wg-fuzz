struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-209f, 767f, -825f, -1379f), vec2<bool>(false, true), vec4<bool>(false, false, true, true), vec3<u32>(8726u, 19838u, 38968u), 23738u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.e, arg_1.d.x >> (u_input.a % 32u)), 17894u, global1.d.x), u_input.c), arg_1.d.yx);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.x, -345f)) - global1.a))), global1.c.wx, !select(!vec4<bool>(global1.b.x, arg_1.c.x, global1.c.x, global1.b.x), select(select(vec4<bool>(global1.c.x, false, arg_1.c.x, arg_1.b.x), vec4<bool>(global1.c.x, global1.b.x, global1.c.x, false), false), vec4<bool>(false, global1.b.x, true, arg_1.b.x), !global1.c), ~global1.e > _wgslsmith_clamp_u32(global1.d.x, 1u, arg_1.d.x)), global1.d, 26085u);
    global0 = arg_1.e;
    let var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(~(~u_input.d), 2147483647i), firstLeadingBit(vec2<i32>(-38119i, u_input.d) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(5364i, u_input.d), vec2<i32>(u_input.d, u_input.d))));
    global0 = ~global1.d.x;
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(-848f))) + _wgslsmith_f_op_f32(2145f - _wgslsmith_f_op_f32(1852f * 138f))) > _wgslsmith_f_op_f32(123f + -1040f), global1.b.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_f_op_vec4_f32(-global1.a)) + global1.a)), !select(select(!arg_1.b, arg_1.c.yy, select(true, true, global1.c.x)), !global1.c.zw, vec2<bool>(true, true)), vec4<bool>(true, all(func_3(_wgslsmith_f_op_vec3_f32(-arg_1.a.wzw), arg_1, _wgslsmith_f_op_f32(abs(global1.a.x)))), (_wgslsmith_div_f32(global1.a.x, 308f) > _wgslsmith_f_op_f32(global1.a.x + 439f)) == func_3(_wgslsmith_f_op_vec3_f32(arg_1.a.xxy - arg_1.a.wwz), Struct_1(vec4<f32>(569f, arg_2, global1.a.x, global1.a.x), vec2<bool>(false, false), vec4<bool>(true, global1.c.x, true, false), global1.d, global1.e), _wgslsmith_f_op_f32(select(global1.a.x, 263f, true))).x, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 808f, arg_2)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1000f, -680f, 212f) + vec4<f32>(1232f, arg_2, 321f, arg_2)), select(arg_1.c.wx, global1.c.yw, vec2<bool>(true, global1.c.x)), !arg_1.c, ~vec3<u32>(1u, 4294967295u, 19933u), arg_1.e), _wgslsmith_f_op_f32(abs(725f))).x), arg_1.d, _wgslsmith_mult_u32(32559u, arg_1.e));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -208f, global1.a.x, var_0.a.x) + arg_1.a))), arg_1.c.x || arg_1.c.x)), var_0.b, !vec4<bool>(all(vec3<bool>(false, arg_1.b.x, false)), var_0.b.x, true, true), global1.d, abs(u_input.c));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(floor(var_0.a.x)), var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(651f, var_0.a.x, false)) - _wgslsmith_f_op_f32(-1749f - arg_1.a.x)), 1908f, -1745f) - vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.a.x, 1212f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_0.a.x)), !select(select(select(vec2<bool>(false, true), vec2<bool>(var_0.c.x, global1.c.x), var_0.b), !vec2<bool>(true, global1.c.x), true), vec2<bool>(false, true), arg_1.c.zy), global1.c, vec3<u32>(global1.d.x, u_input.a, var_0.d.x) & vec3<u32>(4294967295u, arg_1.e, ~var_0.e & arg_1.d.x), arg_1.d.x);
    global1 = var_1;
    global0 = u_input.a;
    return arg_1.c;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(-464f, global1.a.x, global1.a.x, global1.a.x), select(vec4<bool>(global1.c.x, false, false, true), vec4<bool>(global1.b.x, true, false, true), global1.c)))))), !(!global1.b), global1.c, countOneBits(~firstLeadingBit(~vec3<u32>(u_input.a, 1u, 40600u))), 62619u);
    global0 = (_wgslsmith_div_u32(4294967295u, 31519u) | _wgslsmith_div_u32(var_0.d.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, var_0.d.x), 1u))) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(11800u, 29410u, u_input.a, 0u)), vec4<u32>(7743u, 90547u, u_input.c, 78233u)), reverseBits(u_input.b)) % 32u);
    global1 = var_0;
    let var_1 = vec4<i32>(countOneBits(-34200i), -2147483647i, u_input.d >> (~u_input.c % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -1i), vec3<i32>(u_input.d, u_input.d, u_input.d)), _wgslsmith_add_i32(1i, -78666i), 1i), reverseBits(vec4<i32>(_wgslsmith_add_i32(u_input.d, u_input.d), _wgslsmith_mod_i32(u_input.d, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -5424i), vec3<i32>(0i, u_input.d, -1i)), 2147483647i))));
    let var_2 = false;
    return select(vec2<bool>(all(select(vec4<bool>(global1.b.x, true, global1.c.x, false), global1.c, func_2(var_1.x, var_0, -1000f, vec2<i32>(u_input.d, u_input.d)))), false), func_2(u_input.d, var_0, var_0.a.x, select(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(var_1.yy, var_1.zw)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, u_input.d), var_1.wx << (var_0.d.xz % vec2<u32>(32u))), false)).ww, vec2<bool>(var_2, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(~max(global1.d, ~global1.d), global1.d);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(151f))), -159f, 966f, global1.a.x))), global1.b, select(vec4<bool>(false, true, true, true), !global1.c, any(vec3<bool>(true, true, true))), global1.d, 60836u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 535f, global1.a.x, global1.a.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 193f, global1.a.x, global1.a.x) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, 105f, global1.a.x), vec4<f32>(1280f, 1000f, 949f, -797f)))))), !func_1(), vec4<bool>(!global1.b.x, false, global1.a.x <= global1.a.x, func_2(u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 696f, global1.a.x, global1.a.x) - global1.a), vec2<bool>(false, false), !vec4<bool>(false, global1.b.x, true, true), firstLeadingBit(global1.d), ~u_input.a), -397f, _wgslsmith_div_vec2_i32(-vec2<i32>(26829i, 0i), -vec2<i32>(u_input.d, -23375i))).x), select(vec3<u32>(var_0.x, ~_wgslsmith_mod_u32(global1.d.x, var_0.x), _wgslsmith_div_u32(~0u, select(20496u, 4294967295u, global1.b.x))), abs(vec3<u32>(u_input.a, countOneBits(40376u), _wgslsmith_clamp_u32(var_0.x, u_input.a, 1u))), !(var_0.x >= 4294967295u)), 0u);
    var_0 = vec3<u32>(1u, ~(u_input.b | 1u), ~87805u);
    let var_2 = 0i;
    var_0 = var_1.d;
    var var_3 = _wgslsmith_f_op_f32(step(-685f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-274f)), 611f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.d, abs(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, 1u, var_0.x), firstTrailingBit(var_1.d))), min(var_2, u_input.d));
}


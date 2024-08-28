struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(34466u, 4294967295u, 4294967295u, 100795u), vec3<u32>(19930u, 4294967295u, 59206u), vec3<u32>(4294967295u, 1u, 0u), vec4<bool>(false, true, true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, (global0.b.x ^ global0.c.x) & u_input.b, 15401u, global0.b.x), global0.a), vec3<u32>(~(~_wgslsmith_mult_u32(global0.b.x, 44981u)), firstTrailingBit(u_input.b), u_input.b), ~abs(~(vec3<u32>(u_input.b, 4367u, 31756u) & vec3<u32>(4294967295u, u_input.b, u_input.b))), !vec4<bool>(true, true, (global0.b.x > 1u) || global0.d.x, global0.d.x));
    let var_1 = Struct_1(~reverseBits(~var_0.a), global0.b, ~global0.b, !select(vec4<bool>(true, !global0.d.x, true, any(var_0.d)), global0.d, all(!global0.d)));
    var var_2 = all(vec4<bool>(var_0.d.x, var_1.d.x, !any(vec3<bool>(var_0.d.x, true, global0.d.x)) | var_1.d.x, true));
    let var_3 = 1u;
    let var_4 = _wgslsmith_clamp_vec2_i32(~(((vec2<i32>(u_input.a, -36595i) ^ vec2<i32>(-2147483647i, -17743i)) << (var_1.a.yy % vec2<u32>(32u))) >> (var_1.c.yx % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -2147483647i), u_input.a), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (var_0.b.yz % vec2<u32>(32u)), max(vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(43613i, 1i)))));
    return _wgslsmith_dot_vec3_u32(var_0.b, _wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(var_3, 10666u, u_input.b)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.c.x, global0.b.x, var_3), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, 31497u, 42066u), var_0.a.xyz), var_1.b)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(34453u | u_input.b, ~var_0.b.x, ~var_3), ~(global0.a.zyx & vec3<u32>(var_3, u_input.b, 0u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(504f - -231f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1819f + 314f) - _wgslsmith_f_op_f32(856f + 287f)))));
    global0 = Struct_1(vec4<u32>(~0u, ~1u, arg_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(), _wgslsmith_dot_vec2_u32(vec2<u32>(5030u, 11078u), arg_1), global0.c.x << (45775u % 32u), arg_0.b.x), ~(~vec4<u32>(0u, 1u, arg_0.c.x, 51719u)))), global0.a.zwx, vec3<u32>(arg_0.b.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, u_input.b), 1u, 13730u), _wgslsmith_mod_u32(22205u, ~arg_3.a.x)) | (vec3<u32>(_wgslsmith_sub_u32(arg_3.b.x, arg_0.c.x), 54614u, abs(u_input.b)) << (vec3<u32>(1u, _wgslsmith_mod_u32(0u, 4294967295u), 27331u) % vec3<u32>(32u))), vec4<bool>(arg_3.d.x, true & any(global0.d.wwx), true, true));
    let var_1 = !any(arg_0.d);
    var var_2 = arg_0;
    var var_3 = vec2<f32>(-1273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -1649f) * -369f)));
    return select(var_2.d, arg_3.d, !vec4<bool>(!(!var_1), true, true, false || var_1));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = !select(vec2<bool>(global0.d.x, true), select(select(vec2<bool>(true, global0.d.x), global0.d.zz, !vec2<bool>(global0.d.x, true)), select(!global0.d.zz, !global0.d.yw, global0.d.x), true), global0.d.x);
    var_0 = select(!(!vec2<bool>(global0.d.x | true, !var_0.x)), vec2<bool>(!(_wgslsmith_dot_vec4_u32(global0.a, global0.a) != (u_input.b << (u_input.b % 32u))), all(!global0.d.xzx)), global0.d.xz);
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(34617u, 14899u), ~1u) << (vec2<u32>(abs(u_input.b), global0.c.x) % vec2<u32>(32u));
    global0 = Struct_1(global0.a, firstLeadingBit(vec3<u32>(20964u, ~1u, u_input.b)), vec3<u32>(1u, ~(~(8012u & global0.b.x)), ~abs(27012u) << ((4294967295u << (var_1.x % 32u)) % 32u)), select(func_2(Struct_1(~global0.a, global0.c, vec3<u32>(4294967295u, u_input.b, 4294967295u), global0.d), select(~vec2<u32>(60932u, global0.c.x), ~vec2<u32>(0u, 0u), global0.d.yy), -14461i, Struct_1(vec4<u32>(var_1.x, global0.a.x, 0u, global0.c.x), global0.c ^ vec3<u32>(0u, 31099u, var_1.x), vec3<u32>(4294967295u, global0.a.x, 4294967295u), vec4<bool>(false, global0.d.x, global0.d.x, var_0.x))), func_2(Struct_1(firstTrailingBit(global0.a), global0.a.xzw, select(global0.c, vec3<u32>(4294967295u, global0.b.x, global0.c.x), var_0.x), !global0.d), vec2<u32>(var_1.x, global0.c.x), ~(-10236i), Struct_1(vec4<u32>(1u, var_1.x, 4537u, 48370u) << (global0.a % vec4<u32>(32u)), global0.c, ~vec3<u32>(15375u, 0u, 23994u), global0.d)), false));
    return global0.a.yww;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    global0 = Struct_1(vec4<u32>(42101u, _wgslsmith_mult_u32(1u, global0.b.x | 1366u), func_3(), arg_2.x) >> (~(_wgslsmith_mod_vec4_u32(arg_1.a, global0.a) & vec4<u32>(u_input.b, 1510u, 27155u, 1u)) % vec4<u32>(32u)), vec3<u32>(~0u, global0.b.x, u_input.b), vec3<u32>(u_input.b, ~(1u ^ ~arg_2.x), ~64997u), select(vec4<bool>(global0.d.x, true, func_2(Struct_1(vec4<u32>(global0.b.x, u_input.b, 4294967295u, 59176u), vec3<u32>(1u, arg_2.x, u_input.b), vec3<u32>(6020u, arg_1.b.x, 4294967295u), vec4<bool>(false, false, false, true)), func_1(u_input.a).xx, 10087i, Struct_1(global0.a, vec3<u32>(874u, 4294967295u, arg_1.b.x), vec3<u32>(u_input.b, arg_2.x, global0.c.x), vec4<bool>(global0.d.x, arg_1.d.x, false, arg_1.d.x))).x, select(false, !global0.d.x, arg_1.d.x)), func_2(arg_1, _wgslsmith_mod_vec2_u32(global0.a.zz, vec2<u32>(arg_2.x, global0.b.x)), 1i << (min(arg_2.x, 34099u) % 32u), arg_1), true));
    var var_0 = 22959i;
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a & u_input.a, -71255i, abs(-38398i)), vec3<i32>(-abs(-11422i), abs(~0i), _wgslsmith_mod_i32(-2147483647i, u_input.a >> (39438u % 32u))) & vec3<i32>(u_input.a, 1i, u_input.a));
    let var_1 = arg_1;
    var var_2 = global0.b.x;
    return var_1.a;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = (vec4<i32>(-arg_2.b.x ^ _wgslsmith_add_i32(-6242i, u_input.a), -35079i, -24434i, -40850i) | -(~vec4<i32>(u_input.a, u_input.a, arg_2.b.x, u_input.a))) << (~vec4<u32>(func_3(), func_3(), _wgslsmith_add_u32(0u, 1u), arg_2.c.b.x) % vec4<u32>(32u));
    var var_1 = -433f;
    global0 = arg_2.c;
    var_0 = vec4<i32>(min(-1i, _wgslsmith_div_i32(u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(161856u, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.b, global0.b.x, u_input.b)) % 32u), -_wgslsmith_dot_vec2_i32(var_0.zw, var_0.yz))), 47880i, u_input.a, ~(~var_0.x));
    var_1 = _wgslsmith_f_op_f32(step(-1542f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(412f, 126f)))))))));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-588f))), Struct_1(vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(31187u, global0.c.x, u_input.b), global0.b.x, u_input.b & 0u), _wgslsmith_mod_vec3_u32(global0.b | vec3<u32>(1u, 4294967295u, global0.a.x), func_1(26685i)), max(reverseBits(global0.a.wwz), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), vec3<u32>(u_input.b, u_input.b, 4294967295u), global0.b)), global0.d), vec2<u32>((u_input.b ^ 4294967295u) << (reverseBits(u_input.b) % 32u), func_1(-40596i).x)), !global0.d.x, Struct_2(Struct_1(vec4<u32>(countOneBits(u_input.b), u_input.b, 4294967295u, _wgslsmith_add_u32(u_input.b, 1u)), global0.c, ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), global0.a.yxx), select(!global0.d, !global0.d, vec4<bool>(global0.d.x, true, global0.d.x, true))), ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(22784i, 37371i, 18598i)), Struct_1(_wgslsmith_clamp_vec4_u32(max(global0.a, vec4<u32>(global0.b.x, u_input.b, 8246u, 22880u)), vec4<u32>(u_input.b, 4294967295u, global0.c.x, global0.a.x), vec4<u32>(1u, 25803u, u_input.b, 1u) >> (global0.a % vec4<u32>(32u))), global0.c, vec3<u32>(reverseBits(global0.a.x), u_input.b, ~global0.a.x), !global0.d)), select(vec3<bool>(true, !func_2(Struct_1(global0.a, global0.c, vec3<u32>(global0.a.x, 1u, 4294967295u), global0.d), vec2<u32>(1u, u_input.b), u_input.a, Struct_1(global0.a, global0.a.wwx, global0.a.xzy, vec4<bool>(true, global0.d.x, global0.d.x, global0.d.x))).x, select(true, !global0.d.x, !global0.d.x)), vec3<bool>(true, all(vec2<bool>(global0.d.x, global0.d.x)), true), (func_2(Struct_1(vec4<u32>(global0.a.x, global0.c.x, global0.c.x, 1u), global0.c, global0.b, vec4<bool>(false, true, global0.d.x, false)), global0.c.yy, 2147483647i, Struct_1(global0.a, global0.b, global0.c, global0.d)).x & true) != true));
    let var_0 = _wgslsmith_dot_vec4_i32(~(-firstTrailingBit(vec4<i32>(-63277i, 0i, 51639i, -1i) << (global0.a % vec4<u32>(32u)))), -vec4<i32>(2147483647i, -(~37779i), _wgslsmith_div_i32(u_input.a, ~u_input.a), 12920i));
    var var_1 = Struct_2(func_5(_wgslsmith_sub_vec4_u32(~global0.a, vec4<u32>(1u, 0u, 0u, global0.a.x)) ^ global0.a, global0.d.x, Struct_2(func_5(vec4<u32>(global0.c.x, 30720u, global0.a.x, 1u) ^ vec4<u32>(u_input.b, global0.b.x, u_input.b, 39323u), global0.d.x, Struct_2(Struct_1(vec4<u32>(u_input.b, global0.b.x, 0u, 4294967295u), global0.b, vec3<u32>(u_input.b, 61403u, 17233u), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false)), vec3<i32>(-2147483647i, u_input.a, -1i), Struct_1(global0.a, global0.b, global0.b, global0.d)), global0.d.xxy), vec3<i32>(_wgslsmith_div_i32(var_0, -1i), 23546i, i32(-1i) * -19450i), func_5(~vec4<u32>(global0.c.x, u_input.b, u_input.b, global0.c.x), true, Struct_2(Struct_1(vec4<u32>(14740u, 1u, 1u, global0.b.x), global0.c, global0.c, vec4<bool>(false, false, false, true)), vec3<i32>(27072i, -42866i, u_input.a), Struct_1(vec4<u32>(51008u, u_input.b, 56807u, 23914u), global0.b, vec3<u32>(global0.a.x, u_input.b, 50163u), global0.d)), select(global0.d.yxx, global0.d.wyx, false))), vec3<bool>(global0.d.x, any(vec3<bool>(global0.d.x, global0.d.x, global0.d.x)) | true, global0.d.x | all(global0.d.zx))), _wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 31699i, u_input.a), firstTrailingBit(vec3<i32>(-2707i, u_input.a, var_0))), -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, -20955i, u_input.a), vec3<i32>(38999i, u_input.a, 35497i)), vec3<i32>(17249i, var_0, u_input.a), vec3<i32>(var_0, -2147483647i, -13755i))), Struct_1(func_5(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, global0.c.x) & vec4<u32>(u_input.b, u_input.b, 34742u, u_input.b), vec4<u32>(u_input.b, global0.a.x, 0u, 11346u)), global0.d.x | global0.d.x, Struct_2(Struct_1(global0.a, global0.c, global0.a.zxw, global0.d), vec3<i32>(u_input.a, var_0, 5230i) << (vec3<u32>(0u, 1u, u_input.b) % vec3<u32>(32u)), func_5(vec4<u32>(23314u, global0.a.x, u_input.b, global0.b.x), false, Struct_2(Struct_1(vec4<u32>(62369u, 57481u, global0.a.x, 6848u), global0.c, global0.b, global0.d), vec3<i32>(4073i, var_0, var_0), Struct_1(global0.a, vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(global0.b.x, 0u, 4294967295u), global0.d)), global0.d.yyw)), select(!vec3<bool>(false, global0.d.x, true), vec3<bool>(false, true, global0.d.x), global0.d.wxx)).a, select(~global0.b, vec3<u32>(61033u, ~94879u, _wgslsmith_mult_u32(0u, 2052u)), global0.d.x), vec3<u32>(11773u, u_input.b, min(~0u, _wgslsmith_mod_u32(global0.c.x, 4294967295u))), global0.d));
    var_1 = Struct_2(func_5(_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(var_1.c.a, global0.a), vec4<u32>(29379u, u_input.b, var_1.c.c.x, 42373u) << (~vec4<u32>(var_1.a.a.x, 21014u, 4294967295u, global0.a.x) % vec4<u32>(32u))), true || (!var_1.a.d.x | !var_1.a.d.x), Struct_2(func_5(_wgslsmith_mult_vec4_u32(var_1.c.a, vec4<u32>(var_1.a.a.x, 1u, u_input.b, 1u)), false, Struct_2(var_1.c, var_1.b, Struct_1(var_1.c.a, global0.a.xzx, vec3<u32>(var_1.c.a.x, 0u, u_input.b), vec4<bool>(true, global0.d.x, false, true))), !vec3<bool>(true, global0.d.x, global0.d.x)), vec3<i32>(var_0, -2147483647i, abs(-1i)), Struct_1(vec4<u32>(4294967295u, 64216u, var_1.a.a.x, global0.a.x), vec3<u32>(global0.c.x, global0.b.x, 0u), ~vec3<u32>(46914u, 4294967295u, u_input.b), select(var_1.c.d, var_1.a.d, vec4<bool>(true, global0.d.x, global0.d.x, false)))), !global0.d.yww), ~abs(firstLeadingBit(var_1.b) << (var_1.c.b % vec3<u32>(32u))), func_5(var_1.a.a, false, Struct_2(Struct_1(vec4<u32>(global0.a.x, 40661u, 4294967295u, 47833u) >> (vec4<u32>(u_input.b, u_input.b, 0u, global0.a.x) % vec4<u32>(32u)), abs(vec3<u32>(var_1.c.c.x, var_1.c.a.x, 1857u)), global0.c, select(var_1.a.d, global0.d, var_1.c.d)), abs(_wgslsmith_mod_vec3_i32(var_1.b, vec3<i32>(0i, 2147483647i, u_input.a))), func_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.b.x, 1u, var_1.a.a.x, 1u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(var_1.a.b.x, global0.b.x, u_input.b, 25700u)), !var_1.c.d.x, Struct_2(Struct_1(vec4<u32>(4651u, u_input.b, var_1.c.c.x, u_input.b), var_1.a.a.zww, global0.a.yyx, var_1.c.d), vec3<i32>(-42984i, -55827i, var_0), var_1.c), vec3<bool>(global0.d.x, false, var_1.c.d.x))), func_5(~vec4<u32>(0u, var_1.c.b.x, global0.b.x, u_input.b), ~var_1.a.c.x == 4294967295u, Struct_2(Struct_1(var_1.a.a, global0.b, global0.c, global0.d), -vec3<i32>(var_1.b.x, var_1.b.x, u_input.a), var_1.a), vec3<bool>(var_1.a.d.x, var_1.a.a.x >= var_1.c.a.x, all(var_1.a.d.yxz))).d.zxx));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1446f, -709f, -1570f), vec3<f32>(741f, 1488f, 1289f), var_1.a.d.xxz)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1562f, -360f, -350f), vec3<f32>(778f, 1616f, 526f))), !vec3<bool>(true, global0.d.x, var_1.c.d.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(309f, 1000f, 532f))), true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-113f, _wgslsmith_div_f32(-392f, -203f), _wgslsmith_f_op_f32(357f * 700f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1133f, -576f, 277f)))))));
    let var_3 = func_5(vec4<u32>(_wgslsmith_sub_u32(~4294967295u, u_input.b & 32826u) >> (1u % 32u), ~_wgslsmith_mod_u32(~global0.a.x, firstLeadingBit(42559u)), u_input.b, _wgslsmith_dot_vec4_u32(var_1.c.a, ~func_5(vec4<u32>(0u, 1u, 0u, 1u), true, Struct_2(Struct_1(vec4<u32>(global0.b.x, 35030u, 30414u, 4294967295u), vec3<u32>(u_input.b, 33991u, u_input.b), var_1.a.b, vec4<bool>(global0.d.x, var_1.c.d.x, var_1.c.d.x, true)), var_1.b, var_1.a), var_1.c.d.yzy).a)), all(global0.d.yy), Struct_2(var_1.a, var_1.b, var_1.c), global0.d.yyw).d;
    var_1 = Struct_2(func_5(global0.a, func_5(~(vec4<u32>(11539u, var_1.c.c.x, 1u, var_1.a.c.x) >> (vec4<u32>(global0.c.x, var_1.a.a.x, 12819u, u_input.b) % vec4<u32>(32u))), var_3.x, Struct_2(func_5(var_1.a.a, true, Struct_2(Struct_1(var_1.a.a, global0.a.zzx, vec3<u32>(27507u, 1u, 4294967295u), vec4<bool>(global0.d.x, false, false, true)), vec3<i32>(u_input.a, var_0, u_input.a), var_1.a), var_1.a.d.yyx), var_1.b, func_5(vec4<u32>(global0.a.x, u_input.b, u_input.b, global0.c.x), var_3.x, Struct_2(var_1.a, vec3<i32>(var_1.b.x, var_0, var_1.b.x), Struct_1(var_1.a.a, global0.c, vec3<u32>(34856u, global0.b.x, global0.a.x), vec4<bool>(var_1.a.d.x, var_3.x, false, var_3.x))), vec3<bool>(var_3.x, false, var_3.x))), vec3<bool>(true, false && var_3.x, true)).d.x, Struct_2(Struct_1(vec4<u32>(0u, 14771u, 32645u, global0.c.x) & global0.a, vec3<u32>(global0.b.x, 1u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(70869u, var_1.a.a.x, var_1.c.b.x), vec3<u32>(var_1.c.a.x, 1738u, 1u)), !vec4<bool>(true, var_1.a.d.x, true, false)), var_1.b, func_5(~vec4<u32>(3551u, u_input.b, 4294967295u, global0.b.x), var_1.a.d.x, Struct_2(var_1.a, vec3<i32>(-1i, u_input.a, 0i), var_1.a), !global0.d.zxw)), !func_5(var_1.c.a, false, Struct_2(var_1.a, vec3<i32>(2147483647i, 12084i, -2147483647i), Struct_1(vec4<u32>(0u, global0.b.x, global0.b.x, u_input.b), var_1.c.b, vec3<u32>(var_1.c.a.x, global0.a.x, 8679u), vec4<bool>(global0.d.x, var_3.x, false, var_3.x))), vec3<bool>(true, true, var_3.x)).d.yyx), -_wgslsmith_sub_vec3_i32(var_1.b >> (~var_1.c.c % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-80074i, -6296i, 0i), select(var_1.b, vec3<i32>(u_input.a, 15865i, -2147483647i), true))), Struct_1(var_1.a.a, vec3<u32>(var_1.a.c.x, abs(0u), func_3()), var_1.c.a.yzy, !vec4<bool>(any(var_3), true, global0.d.x, all(vec2<bool>(var_1.c.d.x, var_1.a.d.x)))));
    global0 = Struct_1(var_1.a.a >> (~(~(vec4<u32>(1u, 18672u, u_input.b, u_input.b) & vec4<u32>(59711u, global0.c.x, var_1.c.c.x, var_1.c.a.x))) % vec4<u32>(32u)), vec3<u32>(~(~(~global0.a.x)), global0.c.x, global0.a.x), ~(global0.a.yxz << ((vec3<u32>(global0.b.x, 38649u, 108101u) << (var_1.a.b % vec3<u32>(32u))) % vec3<u32>(32u))), !func_5(~(~vec4<u32>(global0.a.x, global0.b.x, global0.c.x, global0.c.x)), var_1.a.d.x, Struct_2(var_1.c, -vec3<i32>(2147483647i, -29876i, var_0), var_1.c), vec3<bool>(true, true, true)).d);
    var var_4 = func_5(vec4<u32>(72187u, ~global0.b.x, reverseBits(~1u), _wgslsmith_clamp_u32(4294967295u >> (u_input.b % 32u), global0.b.x, func_3() | ~var_1.a.b.x)), (var_1.a.d.x & !(!global0.d.x)) && (firstLeadingBit(reverseBits(0i)) <= ~(var_0 >> (27925u % 32u))), Struct_2(func_5(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_1.c.a, var_1.c.a), vec4<u32>(var_1.a.b.x, 0u, 1u, var_1.c.a.x)), global0.d.x, Struct_2(Struct_1(vec4<u32>(4294967295u, var_1.a.c.x, u_input.b, 31302u), vec3<u32>(u_input.b, 4294967295u, global0.a.x), global0.b, vec4<bool>(var_3.x, true, false, true)), reverseBits(vec3<i32>(u_input.a, -1i, -2147483647i)), var_1.a), !(!var_1.a.d.yxy)), max(-vec3<i32>(u_input.a, u_input.a, var_0), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, var_0, var_0), vec3<i32>(u_input.a, 22452i, 0i), true), _wgslsmith_add_vec3_i32(var_1.b, var_1.b))), func_5(~vec4<u32>(9946u, 4294967295u, u_input.b, 41603u), !all(vec4<bool>(false, var_1.c.d.x, global0.d.x, false)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u), var_1.c.b, global0.a.yxw, var_1.c.d), var_1.b | var_1.b, Struct_1(vec4<u32>(5326u, var_1.a.b.x, global0.a.x, u_input.b), vec3<u32>(var_1.c.b.x, 13139u, u_input.b), vec3<u32>(34746u, u_input.b, var_1.a.c.x), var_1.c.d)), func_5(~vec4<u32>(0u, 69059u, u_input.b, var_1.c.b.x), func_5(global0.a, true, Struct_2(Struct_1(vec4<u32>(global0.a.x, u_input.b, u_input.b, u_input.b), vec3<u32>(global0.a.x, var_1.a.a.x, 103795u), vec3<u32>(u_input.b, 72658u, global0.a.x), vec4<bool>(global0.d.x, false, true, var_3.x)), var_1.b, Struct_1(vec4<u32>(var_1.c.b.x, var_1.c.c.x, 4658u, u_input.b), vec3<u32>(13355u, u_input.b, 0u), vec3<u32>(0u, u_input.b, u_input.b), vec4<bool>(var_3.x, false, var_1.a.d.x, var_3.x))), vec3<bool>(false, var_1.a.d.x, false)).d.x, Struct_2(Struct_1(global0.a, global0.c, vec3<u32>(21u, 20245u, u_input.b), vec4<bool>(true, var_3.x, false, true)), var_1.b, Struct_1(vec4<u32>(global0.a.x, 4294967295u, 15452u, 50707u), vec3<u32>(u_input.b, 1u, u_input.b), var_1.a.c, var_3)), !vec3<bool>(global0.d.x, var_1.a.d.x, true)).d.yzw)), !(!vec3<bool>(true, true, !var_1.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_dot_vec3_i32(~(vec3<i32>(9001i, -1i, -12212i) << (global0.b % vec3<u32>(32u))) | abs(-var_1.b), -_wgslsmith_mult_vec3_i32(abs(var_1.b), vec3<i32>(var_1.b.x, 4924i, var_1.b.x))), _wgslsmith_f_op_vec2_f32(sign(var_2.yz)));
}


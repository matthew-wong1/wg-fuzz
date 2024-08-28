struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = 1434f;
    let var_2 = all(vec2<bool>(!var_0.a, !(var_0.a | false))) | (var_0.b <= var_0.b);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(748f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-494f, -506f)), _wgslsmith_f_op_f32(arg_0.x + 624f)))), var_0.b)) * 404f);
    var var_3 = var_0.a;
    return arg_1.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_1(false, arg_1.x, 4294967295u, abs(u_input.d));
    var var_1 = !vec2<bool>(!(!var_0.a) && !(!var_0.a), !any(!vec2<bool>(true, var_0.a)));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-987f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-1655f, 1000f, var_0.b, arg_1.x), Struct_1(true, var_0.b, 1188u, arg_0), arg_1.zxw)))), -704f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(630f * -900f))))));
    let var_3 = vec2<bool>(false, all(vec2<bool>(true, any(!vec3<bool>(var_0.a, true, var_0.a)))));
    let var_4 = abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~var_0.d, vec3<i32>(21459i, -11231i, select(0i, 20380i, var_0.a))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(28797i, -15930i, u_input.d.x), var_0.d) & -var_0.d, ~(~select(arg_0, arg_0, vec3<bool>(var_0.a, true, var_0.a)))));
    return Struct_3(!var_3.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_1(all(select(!select(vec3<bool>(arg_0.a, arg_2.a, false), vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.a, false)), vec3<bool>(all(vec3<bool>(false, arg_0.a, arg_0.a)), true, true), select(!vec3<bool>(true, arg_0.a, true), vec3<bool>(true, false, arg_2.a), select(vec3<bool>(false, arg_2.a, true), vec3<bool>(true, false, arg_2.a), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-545f + arg_1.x), 757f, true)), 675f))), ~u_input.c.x, u_input.d);
    var_0 = Struct_1(var_0.c == _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(1u, u_input.c.x)), vec2<u32>(~u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-var_0.b), u_input.c.x, u_input.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))))) > _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1223f - var_0.b))) + _wgslsmith_f_op_f32(f32(-1f) * -715f)), 0u & var_0.c, _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, var_0.d.x, u_input.d.x) ^ countOneBits(-u_input.d), vec3<i32>(u_input.d.x, 35337i, abs(5645i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 46087i, var_0.d.x, u_input.b.x), vec4<i32>(var_0.d.x, 16267i, var_0.d.x, var_0.d.x)))));
    var_0 = Struct_1(any(vec4<bool>(any(vec4<bool>(false, var_0.a, arg_0.a, var_0.a)) | arg_2.a, ~var_0.d.x == ~39579i, u_input.a >= abs(u_input.d.x), false)), _wgslsmith_f_op_f32(min(-1666f, _wgslsmith_f_op_f32(-265f + -330f))), 0u, vec3<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(6910i, var_0.d.x)), 1i), _wgslsmith_mod_i32(u_input.e, i32(-1i) * -1i)), -max(-2147483647i, reverseBits(-30261i))));
    let var_1 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, -19899i, 0i) & ~u_input.d, -(~vec3<i32>(-30871i, 8080i, 1i))), u_input.e << (_wgslsmith_sub_u32(firstLeadingBit(u_input.c.x), max(4294967295u, var_0.c)) % 32u));
    return vec3<bool>(all(!(!vec2<bool>(arg_2.a, arg_2.a))), arg_0.a, true);
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = ~arg_0.zyx;
    var var_1 = select(vec3<bool>(false, !(~u_input.a > 1i), 1779u >= ((u_input.c.x << (1u % 32u)) << (~0u % 32u))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true && all(vec4<bool>(true, false, false, true)), false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), func_4(Struct_3(all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1865f, -838f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(183f, 277f, -597f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, 1558f, 171f))))), func_2(firstTrailingBit(countOneBits(u_input.d)), _wgslsmith_div_vec4_f32(vec4<f32>(-448f, 929f, -453f, 187f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1300f, 320f, -1000f, -454f)))), _wgslsmith_f_op_f32(f32(-1f) * -154f)));
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, 4294967295u, arg_0.x), vec3<u32>(u_input.c.x, var_0.x, 2571u), var_1.x), max(vec3<u32>(56724u, u_input.c.x, 4294967295u), var_0))) << (arg_0.x % 32u), select(var_0.x, arg_0.x, !(!var_1.x)));
    var var_3 = _wgslsmith_div_vec2_u32(var_0.yy, var_0.yz);
    var_3 = abs(vec2<u32>(~reverseBits(max(var_0.x, u_input.c.x)), var_2.x));
    return func_2(u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-871f, -119f, 1000f, 2608f), vec4<f32>(2040f, -368f, -1334f, -795f)))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_u32(firstLeadingBit(~(~(arg_3.x << (6551u % 32u)))), 26838u);
    var var_1 = arg_3.x | reverseBits(arg_3.x);
    var_1 = u_input.c.x;
    var_1 = 23035u;
    var var_2 = u_input.c.x;
    return !select(vec3<bool>(true, all(vec4<bool>(arg_1.x, true, false, arg_1.x)), !any(vec3<bool>(arg_1.x, false, arg_1.x))), select(!func_4(Struct_3(arg_1.x), vec3<f32>(-811f, arg_2.b, arg_2.b), arg_0, arg_2.b), !select(vec3<bool>(arg_2.a, false, true), vec3<bool>(false, false, false), vec3<bool>(arg_1.x, arg_1.x, arg_2.a)), func_4(func_2(u_input.d, vec4<f32>(-1699f, -1027f, arg_2.b, -602f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b, arg_2.b, -144f), vec3<f32>(arg_2.b, -377f, arg_2.b))), func_1(arg_3), 1497f).x), select(!select(vec3<bool>(arg_0.a, true, arg_1.x), vec3<bool>(true, arg_1.x, false), vec3<bool>(false, arg_0.a, arg_2.a)), !(!vec3<bool>(true, arg_1.x, true)), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_5(func_1(~(vec4<u32>(69375u, 2443u, u_input.c.x, 0u) | vec4<u32>(u_input.c.x, 18446u, u_input.c.x, 81496u))), vec2<bool>(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(2951i, 2147483647i, u_input.b.x), vec3<i32>(u_input.a, u_input.a, 32409i), u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(1342f, -265f, 641f, -1256f) * vec4<f32>(507f, 1000f, 812f, 419f))).a, true), Struct_1(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)), -1000f, _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 0u, 1737u)), max(vec3<u32>(0u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), u_input.d), vec4<u32>(reverseBits(49837u), u_input.c.x, (u_input.c.x & 7465u) ^ ~55716u, select(11832u, u_input.c.x, true))));
    let var_1 = vec4<f32>(363f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(642f)))), _wgslsmith_f_op_f32(-1611f + _wgslsmith_f_op_f32(-618f + 729f)), 1287f);
    var var_2 = func_4(Struct_3(all(vec2<bool>(true, true))), var_1.wxx, func_1(reverseBits(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(-var_1.x)).x & true;
    let var_3 = !func_5(func_2(vec3<i32>(-21641i, u_input.b.x, firstLeadingBit(41275i)), var_1), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), Struct_1(true, 127f, ~abs(22120u), vec3<i32>(2147483647i, ~(-55982i), -1i)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 97095u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), 4294967295u, u_input.c.x, 42069u)).x;
    var_0 = select(true, var_3 || (~u_input.d.x > select(_wgslsmith_add_i32(-9270i, u_input.d.x), min(18101i, -28395i), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)) + 275f), !var_3)), vec2<u32>(u_input.c.x, u_input.c.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 11597u, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.c.x, 1u, 21674u, 0u) % vec4<u32>(32u))), ~vec4<u32>(21226u, u_input.c.x, 16409u, 51663u) ^ (vec4<u32>(u_input.c.x, 5847u, 0u, 76586u) ^ vec4<u32>(u_input.c.x, 48342u, 0u, 9489u)))));
}


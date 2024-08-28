struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 3057i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<i32> {
    global0 = reverseBits(_wgslsmith_add_i32(arg_2.d.x, 11124i));
    global0 = _wgslsmith_mult_i32(arg_2.d.x, _wgslsmith_mult_i32(316i, -38339i));
    var var_0 = select(vec2<u32>(arg_2.c, ~16778u), vec2<u32>(_wgslsmith_clamp_u32(1u, ~18692u, 0u), ~_wgslsmith_mod_u32(4294967295u, arg_2.c)), !select(select(vec2<bool>(false, arg_2.b), arg_1.zx, true), !vec2<bool>(arg_1.x, true), select(arg_1.xy, arg_1.xy, arg_1.xz))) ^ (select(~vec2<u32>(arg_2.c, arg_0), vec2<u32>(0u, arg_2.c), select(arg_1.yy, select(arg_1.yy, vec2<bool>(arg_1.x, arg_1.x), arg_1.xz), !arg_2.b)) >> ((vec2<u32>(min(4294967295u, arg_2.c), _wgslsmith_sub_u32(arg_0, 4294967295u)) & ~vec2<u32>(arg_2.c, 27891u)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-988f, _wgslsmith_f_op_f32(select(-3403f, 721f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1071f, -1072f, true)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(488f, -1000f) * _wgslsmith_f_op_f32(trunc(403f)))), -484f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-820f - -462f))), 1627f)));
    global0 = _wgslsmith_sub_i32(~(i32(-1i) * -min(u_input.a, u_input.a)), firstLeadingBit(-_wgslsmith_div_i32(24474i, abs(-38129i))));
    return abs(-vec2<i32>(2147483647i, -72482i)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(17727i, ~(~arg_2.d.x)), arg_2.d, select(~vec2<i32>(1i, 2147483647i), -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), arg_2.d), vec2<bool>(true, all(vec3<bool>(false, arg_1.x, arg_2.b)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    global0 = min(_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(~max(-68637i, u_input.a), u_input.a)), -22973i);
    let var_0 = Struct_1(true, any(arg_3.yx), arg_0.x, _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, u_input.a), abs(func_3(~arg_0.x, !arg_3, Struct_1(arg_3.x, false, 44656u, vec2<i32>(u_input.a, -2147483647i))))));
    let var_1 = Struct_1(min(59869u, _wgslsmith_dot_vec3_u32(~vec3<u32>(41820u, var_0.c, arg_0.x), ~vec3<u32>(62345u, 0u, 857u))) <= abs(_wgslsmith_dot_vec4_u32(vec4<u32>(23004u, var_0.c, 10785u, 26438u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, var_0.c, arg_0.x, 4294967295u), vec4<u32>(var_0.c, arg_0.x, var_0.c, arg_0.x)))), true, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 31511u, 66366u), vec3<u32>(countOneBits(1u), reverseBits(arg_0.x), ~0u)) << (_wgslsmith_mod_u32(~(~arg_0.x), arg_0.x) % 32u), vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), var_0.d), reverseBits(-var_0.d.x)) ^ ~abs(min(vec2<i32>(1i, var_0.d.x), var_0.d)));
    global0 = ~select(-11447i, _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(13835i, 44248i), 1i, select(false, true, true)), -(u_input.a << (arg_0.x % 32u))), true);
    global0 = -func_3(~arg_0.x, vec3<bool>(any(!arg_3.xx), false, true), Struct_1(_wgslsmith_f_op_f32(-519f * arg_1.x) <= arg_1.x, !(!arg_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u) >> (vec4<u32>(arg_0.x, var_0.c, var_1.c, 74002u) % vec4<u32>(32u)), max(vec4<u32>(1u, arg_0.x, 0u, 0u), vec4<u32>(var_0.c, 39243u, 1u, 28889u))), vec2<i32>(var_0.d.x ^ 1i, u_input.a << (var_0.c % 32u)))).x;
    return var_0.c;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c, func_2(_wgslsmith_div_vec2_u32(max(vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(41581u, arg_1.c)), select(vec2<u32>(arg_1.c, 0u), vec2<u32>(16615u, arg_1.c), vec2<bool>(arg_1.b, true))), vec3<f32>(_wgslsmith_f_op_f32(1399f * -188f), _wgslsmith_div_f32(arg_0, -1469f), 1887f), _wgslsmith_f_op_vec3_f32(vec3<f32>(920f, 1081f, -328f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(-527f, -1068f, 1651f))), vec3<bool>(true, any(vec2<bool>(true, false)), arg_1.c != arg_1.c))), _wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(arg_1.c, arg_1.c) & vec2<u32>(arg_1.c, arg_1.c)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.c, arg_1.c), _wgslsmith_clamp_u32(116547u, arg_1.c, arg_1.c)), 1u)));
    let var_1 = !vec3<bool>(false, true, !(!(1389f > arg_0)));
    global0 = -u_input.a;
    let var_2 = select(!select(vec4<bool>(any(var_1), arg_1.a, select(false, var_1.x, true), any(var_1)), vec4<bool>(select(arg_1.a, arg_1.a, true), arg_1.a & false, !arg_1.a, arg_1.d.x < arg_1.d.x), !select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(arg_1.a, true, false, false), vec4<bool>(arg_1.b, var_1.x, var_1.x, false))), vec4<bool>(true, false, arg_1.b, select(arg_1.b && all(var_1.zz), arg_1.a, (arg_1.d.x > -1697i) || var_1.x)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(291f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1378f))));
    let var_3 = -arg_1.d;
    return _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(arg_1.c, var_0.x | max(56776u, firstTrailingBit(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(55717u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(47196u, 0u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~1u, func_1(200f, Struct_1(true, false, 0u, vec2<i32>(11720i, u_input.a))))) % vec2<u32>(32u)));
    let var_1 = reverseBits(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(~var_0.x, 0u, ~var_0.x)), vec3<u32>(_wgslsmith_mod_u32(~var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x)), ~var_0.x ^ var_0.x, 0u)));
    global0 = u_input.a;
    let var_2 = Struct_1(true || all(vec2<bool>(true, u_input.a >= u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)) + _wgslsmith_f_op_f32(f32(-1f) * -443f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-583f * 637f))), 1059f), 4294967295u ^ (~(~var_0.x) << (1u % 32u)), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 36824i, 38253i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), -19153i));
    var var_3 = ~var_0.x;
    global0 = -_wgslsmith_sub_i32(var_2.d.x, -1i);
    var_0 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, var_0.x), ~min(max(vec2<u32>(1u, var_0.x), var_1.xz), abs(vec2<u32>(var_1.x, 1u)))), var_1.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-575f, 633f, -1000f, -541f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(753f, 1732f, -608f, -462f) * vec4<f32>(-892f, -980f, -104f, -263f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -984f, 1426f, 304f)))))), -(_wgslsmith_mod_i32(1i, 1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d.x, u_input.a, -1i), vec3<i32>(-1i, var_2.d.x, var_2.d.x), vec3<i32>(var_2.d.x, u_input.a, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.x, -56477i, u_input.a), vec3<i32>(var_2.d.x, 0i, 1i)))), ~(-min(vec3<i32>(23461i, var_2.d.x, -1i), vec3<i32>(u_input.a, var_2.d.x, u_input.a))) | vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, u_input.a), var_2.d.x, _wgslsmith_clamp_i32(~1i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.c, var_1.x, 33207u, var_1.x), vec4<u32>(var_2.c, var_0.x, var_1.x, 4294967295u)) ^ reverseBits(vec4<u32>(51958u, 15258u, var_0.x, 1u))), max(select(vec4<u32>(var_0.x, 71470u, 1u, var_1.x), vec4<u32>(1u, var_0.x, var_2.c, 4294967295u), true), ~vec4<u32>(var_1.x, 105017u, 1u, var_0.x)) ^ abs(vec4<u32>(var_0.x, var_0.x, 91122u, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2106f, -1023f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-101f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -465f)))));
}


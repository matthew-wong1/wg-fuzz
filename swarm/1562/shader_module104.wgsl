struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(905f, -1000f)))))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -995f);
    var var_0 = Struct_1(_wgslsmith_div_f32(-1182f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -288f)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(u_input.a != -63731i, false), true), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c.x), u_input.e)), u_input.c.x), vec4<u32>(reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21750u, u_input.c.x, u_input.b.x), u_input.e), _wgslsmith_mult_u32(43935u, u_input.b.x))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_sub_u32(3299u, 0u)), 4294967295u & (0u << (u_input.b.x % 32u)), 23015u), ~(~(~1u)), ~u_input.b.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-715f * _wgslsmith_f_op_f32(sign(var_0.a))), var_0.a) + var_0.a));
    let var_1 = Struct_1(101f, select(var_0.b, vec2<bool>(any(select(vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x), var_0.b.x)), !(!var_0.b.x)), var_0.d.x == max(_wgslsmith_clamp_u32(var_0.c, 1u, 12857u), 27384u)), abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), var_0.d.zyy, vec3<bool>(var_0.b.x, true, var_0.b.x)), u_input.c) << (39634u % 32u)), vec4<u32>(var_0.d.x, 5101u ^ u_input.b.x, 45080u, var_0.c));
    return u_input.d;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: f32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(max(2456f, _wgslsmith_f_op_f32(547f - 224f)));
    global0 = _wgslsmith_f_op_f32(arg_3 * _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_3, 641f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), -185f)));
    let var_0 = vec3<bool>(!(!select(arg_0.x, false, arg_2.x)) & ((i32(-1i) * -3077i) > -_wgslsmith_mod_i32(arg_1, -23054i)), any(vec3<bool>(true, !(arg_3 != 314f), false)), !all(!select(arg_2, vec2<bool>(arg_2.x, arg_2.x), true)));
    var var_1 = false;
    return -vec2<i32>(arg_1, -arg_1);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = select(func_4(!vec2<bool>(true, any(vec4<bool>(true, false, true, true))), _wgslsmith_add_i32(-func_3(), _wgslsmith_clamp_i32(-41110i, 0i, u_input.a | -2147483647i)), select(vec2<bool>(true, all(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true)), 326f), select(-(-vec2<i32>(15386i, -2378i) | select(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.a, 2147483647i), true)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(18355i, u_input.d) & vec2<i32>(-2147483647i, 1072i), vec2<i32>(u_input.d, 4810i)), false), !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, arg_0 == 1085f), all(vec3<bool>(true, false, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(109f * 782f), !select(vec2<bool>(true, u_input.d == -22298i), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec2<bool>(true, true))), vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), u_input.b.x & _wgslsmith_sub_u32(u_input.e.x, ~4294967295u), ~(vec4<u32>(13199u, u_input.e.x, u_input.c.x, 49339u) & (vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.e.x) << (vec4<u32>(0u, 28391u, 0u, 60538u) % vec4<u32>(32u)))) ^ ~(~firstLeadingBit(vec4<u32>(u_input.b.x, 57020u, u_input.e.x, u_input.c.x))));
    var var_2 = var_1.c;
    let var_3 = select(!select(vec4<bool>(var_1.b.x, true & var_1.b.x, 6754u <= u_input.e.x, !var_1.b.x), vec4<bool>(any(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)), var_1.b.x, 1i != var_0.x, any(var_1.b)), true), !vec4<bool>(any(vec3<bool>(var_1.b.x, var_1.b.x, true)), all(vec4<bool>(var_1.b.x, false, true, var_1.b.x)), !var_1.b.x, any(vec3<bool>(false, var_1.b.x, var_1.b.x)) & (u_input.e.x != u_input.c.x)), var_1.b.x);
    var var_4 = vec3<u32>(_wgslsmith_add_u32(~var_1.d.x, 57332u) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(0u, u_input.c.x)), firstTrailingBit(vec2<u32>(24830u, 28375u))) % 32u), _wgslsmith_div_u32(~4294u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), abs(vec2<u32>(16115u, 31603u)))), 36779u) << (vec3<u32>(abs(~abs(0u)), 26929u ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, 123405u, u_input.e.x), var_1.d) >> (u_input.b.x % 32u)), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(47269u, 0u, 34351u), ~u_input.c))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))) + 1f);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(133f)))))), arg_0.a);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -466f)))) * 467f);
    global0 = -557f;
    global0 = arg_0.a;
    var var_1 = vec3<bool>((_wgslsmith_f_op_f32(func_2(1000f)) != -1618f) | !all(!vec3<bool>(arg_0.b.x, arg_0.b.x, false)), true, arg_0.b.x);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(0u & u_input.b.x), u_input.b.x, ~39569u, u_input.e.x), vec4<u32>(~func_1(Struct_1(384f, vec2<bool>(true, true), u_input.c.x, vec4<u32>(4294967295u, 62279u, 0u, 4294967295u))), ~abs(93496u), ~_wgslsmith_add_u32(4294967295u, u_input.c.x), ~(~47654u)), vec4<u32>(_wgslsmith_clamp_u32(14922u, u_input.e.x, u_input.b.x), u_input.b.x, u_input.c.x, u_input.e.x) ^ firstTrailingBit(reverseBits(vec4<u32>(u_input.e.x, 57072u, u_input.b.x, u_input.e.x)))), countOneBits(vec4<u32>(83995u, _wgslsmith_add_u32(_wgslsmith_mod_u32(18527u, u_input.c.x), u_input.e.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 1u), vec4<u32>(0u, 54753u, u_input.c.x, u_input.b.x)), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zz, _wgslsmith_div_vec4_i32(-firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(6726i, u_input.a, -5324i, u_input.d), vec4<i32>(u_input.d, u_input.d, 15459i, -2147483647i))), vec4<i32>(u_input.d, _wgslsmith_sub_i32(func_4(vec2<bool>(true, true), u_input.a, vec2<bool>(false, true), 136f).x, u_input.a ^ 2147483647i), -u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(74251u, u_input.b.x, 44923u), var_0.wxy) % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(81434i, 1i), max(u_input.d, 1i)))));
}


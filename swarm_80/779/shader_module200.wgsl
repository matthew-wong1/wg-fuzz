struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_add_vec4_u32(select(~vec4<u32>(0u, 1u, 1u, u_input.a), vec4<u32>(1u, arg_0.a.a.x, 4294967295u, 50460u) | arg_0.a.a, true), arg_0.a.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1123f)))) == arg_0.b.x), arg_0.b, 1000f);
    let var_1 = ~(firstLeadingBit(vec2<i32>(-1i) * -u_input.e.yz) | (u_input.c.xy << (~vec2<u32>(arg_0.a.a.x, arg_2.x) % vec2<u32>(32u))));
    let var_2 = Struct_5(arg_1, Struct_1(vec4<u32>(~_wgslsmith_mod_u32(arg_2.x, arg_0.a.a.x), 4294967295u, arg_0.a.a.x, 63516u), true));
    let var_3 = firstTrailingBit(_wgslsmith_add_i32(-45295i, _wgslsmith_mod_i32(~u_input.b, _wgslsmith_dot_vec2_i32(var_1, var_1))) ^ -(u_input.c.x | (-51362i | u_input.c.x)));
    let var_4 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~arg_2.x, ~arg_0.a.a.x), 61735u, _wgslsmith_mod_u32(201u, var_2.b.a.x ^ 19951u), 0u), abs(~(var_0.a.a | arg_0.a.a))), true);
    return var_1.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> vec2<f32> {
    let var_0 = min(vec2<i32>(2147483647i, 1i), vec2<i32>(func_3(Struct_3(Struct_1(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 12508u), arg_2), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1091f, -302f))), 238f), false, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.xzw, arg_1.yzy), _wgslsmith_div_vec3_u32(arg_1.zwy, arg_1.wwz)), !vec4<bool>(arg_3, false, false, arg_3)), i32(-1i) * -(-1i << (0u % 32u))));
    var var_1 = Struct_2(Struct_1(arg_1, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, arg_3)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f))), -2147483647i);
    var var_2 = vec2<u32>(18169u, ~18721u);
    var_2 = vec2<u32>(461u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, arg_1.x), arg_1.yww), _wgslsmith_add_u32(arg_1.x, ~0u) << (1u % 32u)));
    var var_3 = all(select(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2), any(vec3<bool>(arg_3, arg_3, true))), select(vec3<bool>(true, var_1.a.b, arg_2), vec3<bool>(true, var_1.a.b, true), !vec3<bool>(arg_2, var_1.a.b, arg_3)), 15662u <= (var_1.a.a.x & var_1.a.a.x))) | !(-min(-2147483647i, u_input.b) < max(countOneBits(u_input.e.x), ~14968i));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -461f));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    var var_0 = Struct_3(Struct_1(countOneBits(vec4<u32>(1u, 58554u, u_input.a, u_input.d) >> (vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.d) % vec4<u32>(32u))) << (~select(vec4<u32>(4803u, u_input.d, 1u, u_input.d), vec4<u32>(u_input.d, u_input.d, 66061u, 741u), arg_0.x) % vec4<u32>(32u)), true), _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(-1i, u_input.e.x), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(63914u, u_input.a, 12902u, 21737u), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1561f, -1051f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1012f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.c)))), var_0.b);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 329f) - -187f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(809f, var_0.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1879f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2265f, -1731f)))), var_0.c));
    let var_2 = !select(!vec4<bool>(arg_1, !var_0.a.b, true, any(vec4<bool>(arg_1, false, arg_0.x, false))), vec4<bool>(true, true, all(arg_0.xz), all(vec3<bool>(false, arg_1, var_0.a.b))), !select(!vec4<bool>(true, var_0.a.b, arg_1, false), !vec4<bool>(arg_1, true, true, arg_0.x), vec4<bool>(arg_1, false, arg_0.x, false)));
    var var_3 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.b.x);
    return _wgslsmith_f_op_f32(var_3.b.x + var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-1898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(972f)) * 1f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2056f), _wgslsmith_f_op_f32(abs(-1000f))))) * _wgslsmith_f_op_f32(func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(false, true, false))), true))), _wgslsmith_f_op_f32(f32(-1f) * -171f));
    var var_1 = var_0.x;
    let var_2 = Struct_5(true, Struct_1(~abs(firstLeadingBit(vec4<u32>(u_input.a, u_input.d, 7486u, 4294967295u))), !(firstTrailingBit(2147483647i) != _wgslsmith_div_i32(u_input.e.x, 25248i))));
    let var_3 = abs(17504i);
    var_1 = -639f;
    var var_4 = Struct_2(Struct_1(vec4<u32>(var_2.b.a.x, (u_input.d << (var_2.b.a.x % 32u)) >> (0u % 32u), _wgslsmith_dot_vec4_u32(max(var_2.b.a, vec4<u32>(4294967295u, 0u, 117850u, var_2.b.a.x)), abs(vec4<u32>(var_2.b.a.x, var_2.b.a.x, 29865u, 19322u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.a.x, 17014u, 4294967295u, 11597u), vec4<u32>(u_input.d, var_2.b.a.x, 2833u, 4294967295u)), abs(vec4<u32>(4294967295u, u_input.d, var_2.b.a.x, u_input.d)))), !(!var_2.a)), _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(_wgslsmith_sub_i32(var_3, var_3), var_3), ~select(var_2.b.a << (var_2.b.a % vec4<u32>(32u)), vec4<u32>(52910u, var_2.b.a.x, u_input.a, 10286u), any(vec4<bool>(var_2.a, var_2.b.b, var_2.b.b, true))), var_2.b.b, all(!vec2<bool>(true, var_2.b.b)))).x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, 957f, 1000f, 166f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, 313f, var_0.x, 857f) - vec4<f32>(1144f, var_0.x, var_0.x, -783f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_4.b, -814f, -1536f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(530f - var_4.b), -574f, _wgslsmith_f_op_f32(floor(320f)), _wgslsmith_f_op_f32(-var_4.b)), vec4<f32>(_wgslsmith_div_f32(var_4.b, -542f), _wgslsmith_f_op_f32(var_4.b + -1350f), var_0.x, var_0.x), vec4<bool>(!var_4.a.b, var_4.b < var_0.x, !var_2.a, true)))), _wgslsmith_f_op_f32(-var_4.b), min(_wgslsmith_div_vec2_i32(~(vec2<i32>(u_input.b, var_4.c) | vec2<i32>(var_3, var_3)), u_input.e.yy), -select(vec2<i32>(-4874i, u_input.b), -u_input.e.yz, any(vec3<bool>(var_2.a, true, false)))));
}


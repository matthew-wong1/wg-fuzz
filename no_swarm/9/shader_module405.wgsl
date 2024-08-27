struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = min(_wgslsmith_add_vec4_i32(vec4<i32>(~(-21598i), ~39424i, ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 35973i, -45753i), vec3<i32>(-1i, 2147483647i, 6738i))), -vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -20146i)) << ((_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.b, u_input.a.x, 32078u, 70346u)), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)) | _wgslsmith_mult_vec4_u32(u_input.a & u_input.a, vec4<u32>(37349u, u_input.b, u_input.b, 4294967295u) | vec4<u32>(u_input.b, u_input.b, 1u, u_input.a.x))) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i));
    let var_1 = Struct_1(var_0.x, ~(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-49000i, -2147483647i, -10695i), var_0.xyy) ^ (i32(-1i) * -592i))), -1137f, vec3<u32>(u_input.b, ~u_input.b, ~select(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.xy), min(5277u, 1u), false)));
    var var_2 = 0u;
    let var_3 = var_1;
    var_2 = u_input.a.x;
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> vec3<bool> {
    var var_0 = any(!(!select(func_3(), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_1 = -_wgslsmith_mult_vec3_i32(reverseBits(-abs(vec3<i32>(-1i, -2147483647i, -50978i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(0i, 0i, -1i)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -128759i), vec3<i32>(10071i, 30391i, 39338i)), abs(2147483647i)), _wgslsmith_div_i32(~(-25444i), 1i)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * arg_1))), vec2<u32>(_wgslsmith_div_u32(abs(u_input.a.x | u_input.b), 1u), 20279u), 1i);
    var var_3 = Struct_1(var_1.x, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(277f))), u_input.a.zxy);
    return vec3<bool>(all(vec2<bool>(true, true)), false && (_wgslsmith_sub_u32(arg_0.x << (180894u % 32u), arg_0.x) > (_wgslsmith_dot_vec3_u32(u_input.a.wzy, arg_0) >> (~arg_0.x % 32u))), all(vec4<bool>(true, func_3().x, _wgslsmith_add_i32(0i, var_1.x) != _wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(var_2.c, var_1.x)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = select(select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, !all(vec4<bool>(true, true, false, false))), func_2(~vec3<u32>(u_input.a.x, u_input.a.x, 24054u), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), vec3<bool>(true || select(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false)), true), false, false && (select(0u, 0u, true) >= 1u)), func_2(~(~max(u_input.a.zxw, u_input.a.wyz)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))))));
    var var_1 = false;
    var_1 = !(all(select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), false), func_2(vec3<u32>(21319u, u_input.b, u_input.b), 562f).yy, vec2<bool>(var_0.x, false))) | var_0.x);
    var var_2 = all(!(!var_0));
    var var_3 = Struct_1(arg_3.x, max(22401i, arg_0), -956f, _wgslsmith_add_vec3_u32(u_input.a.xzw, _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, ~u_input.a.x, 42970u), ~countOneBits(vec3<u32>(1u, arg_1, u_input.a.x)))));
    return func_3().xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_1(25592i, u_input.b, vec4<f32>(-1209f, 1353f, 1676f, 3324f), vec2<i32>(0i, 2314i)), false), !select(true, false, false)));
    var var_1 = ~(-2147483647i) | select(-1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1858i, -1885i), ~vec2<i32>(-2147483647i, 2147483647i)), abs(0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f - 794f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(882f - 1241f))));
    var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -4127i), vec2<i32>(-2147483647i, 4984i)), ~vec2<i32>(18503i, 2147483647i))), select(firstLeadingBit(countOneBits(abs(vec2<i32>(-2147483647i, -35464i)))), reverseBits(vec2<i32>(30461i, select(-2147483647i, -1i, false))), select(!any(vec3<bool>(true, true, false)), true, func_1(2147483647i, u_input.a.x, vec4<f32>(1167f, -1854f, 104f, 334f), vec2<i32>(31937i, -56717i)).x & true)));
    var var_2 = select(vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false)))), select(vec2<bool>(_wgslsmith_clamp_i32(55556i, 1i, 1i) == 23873i, true), vec2<bool>(~u_input.b != abs(36289u), any(vec3<bool>(true, true, true))), false), any(!vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true)));
    var_2 = func_2(vec3<u32>(1u, ~u_input.b, 27596u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1811f))) + -686f) + _wgslsmith_f_op_f32(sign(-816f)))).zy;
    var var_3 = 530f;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-189f, _wgslsmith_f_op_f32(258f + 1293f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), -1839f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-34288i, -1i), -vec2<i32>(26791i, -2147483647i))), _wgslsmith_mod_i32(~2147483647i, -7667i) >> (u_input.a.x % 32u)));
}


struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    let var_0 = vec2<u32>(select(~_wgslsmith_sub_u32(91817u, arg_0.x), ~_wgslsmith_dot_vec3_u32(u_input.a, arg_1.wxw), true), ~5727u) >> (arg_1.zz % vec2<u32>(32u));
    let var_1 = vec4<bool>(!(any(vec4<bool>(true, false, true, true)) && true), true, any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), false), vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, false, false)), true), vec3<bool>(select(false, false, false), true, false))), true);
    var var_2 = Struct_1(!(!vec2<bool>(true, var_1.x)));
    var var_3 = Struct_1(vec2<bool>(false, true));
    var_2 = Struct_1(!select(vec2<bool>(var_1.x && true, true), !vec2<bool>(var_1.x, var_1.x), !(var_2.a.x != false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + arg_2);
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2367f, _wgslsmith_f_op_f32(441f - 379f), true)) - _wgslsmith_div_f32(-1779f, 260f)), 278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1173f + -1239f))) + _wgslsmith_div_f32(-1493f, _wgslsmith_f_op_f32(func_3(vec3<u32>(4294967295u, 61474u, 9317u), vec4<u32>(u_input.d, 58337u, 0u, u_input.a.x), -512f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f - 554f)) + -1000f)));
    let var_1 = vec4<u32>(0u, ~(~min(_wgslsmith_sub_u32(u_input.c.x, 1u), u_input.a.x)), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(139719u, firstLeadingBit(u_input.d)), abs(u_input.c.x)), u_input.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(var_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(-1405f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, vec4<u32>(var_1.x, 3278u, 84453u, u_input.a.x), var_0.x)) * _wgslsmith_f_op_f32(sign(var_0.x))))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(22420i, -22102i, 2147483647i), abs(vec3<i32>(1i, -1i, 0i))), abs(select(vec3<i32>(2147483647i, 35499i, 2147483647i), vec3<i32>(-8716i, 2596i, 35577i), vec3<bool>(false, true, false)))), vec3<i32>(-1i & select(-2147483647i, 0i, true), 0i, -1i)), _wgslsmith_mult_i32(~52890i, -_wgslsmith_div_i32(i32(-1i) * -785i, _wgslsmith_sub_i32(-1i, -2147483647i))));
    var var_4 = var_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    return var_0.xzw;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1337f)), _wgslsmith_f_op_f32(f32(-1f) * -149f)) * vec2<f32>(1f, 1f)));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f + var_0.x)), -1000f))));
    let var_3 = ~_wgslsmith_add_vec2_u32(~u_input.c.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d >> (1u % 32u), ~0u), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yx, u_input.c.yz), ~vec2<u32>(0u, 21324u))));
    var var_4 = reverseBits(select(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1587i, 1i), vec3<i32>(-37346i, -7826i, -241i), vec3<i32>(-45531i, 584i, -2147483647i)), ~vec3<i32>(firstTrailingBit(-1i), 1i, max(-24485i, -21616i)), true));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var_0 = _wgslsmith_add_i32(~func_1() ^ firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(3716i, -61494i, -63331i), select(firstLeadingBit(vec3<i32>(-2147483647i, 15513i, -28445i)), vec3<i32>(-1i, 15163i, 13295i) << (u_input.a % vec3<u32>(32u)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), -(~(-1i))));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(reverseBits(firstTrailingBit(1u))), _wgslsmith_mod_u32(~(~0u), abs(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yz))), _wgslsmith_add_u32(~_wgslsmith_add_u32(28481u, 0u), countOneBits(u_input.c.x)), 0u), countOneBits(vec4<u32>(40931u, 1u, 4294967295u, u_input.d)));
    var var_2 = Struct_2(any(select(vec4<bool>(false, true, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), all(vec2<bool>(true, true))))));
    let var_3 = Struct_2(!(!(!(!var_2.a))));
    var_2 = var_3;
    let var_4 = Struct_1(select(!(!vec2<bool>(false, var_2.a)), select(select(vec2<bool>(true, true), !vec2<bool>(var_3.a, var_2.a), vec2<bool>(true, true)), !vec2<bool>(var_2.a, false), vec2<bool>(all(vec2<bool>(var_2.a, var_2.a)), true)), !var_3.a));
    let var_5 = !(!all(vec4<bool>(var_3.a, true, any(vec2<bool>(false, var_3.a)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(77145u, ~var_1.x));
}


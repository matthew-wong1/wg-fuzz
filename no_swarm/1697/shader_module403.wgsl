struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: i32) -> i32 {
    let var_0 = abs(4294967295u);
    global0 = array<i32, 24>();
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(abs(countOneBits(-vec4<i32>(-1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c, 24u)], u_input.b))), _wgslsmith_add_vec4_i32(countOneBits(max(vec4<i32>(arg_0.x, arg_2, -40749i, u_input.b), vec4<i32>(arg_0.x, arg_0.x, -41929i, arg_0.x))), vec4<i32>(~arg_0.x, 1i, 1i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(31719u, var_0, var_0), 24u)]))), ~(~arg_2), arg_0.zx, 1u);
    let var_3 = _wgslsmith_mult_i32(~(-314i) << (max(30369u, reverseBits(var_0)) % 32u), max(var_2.a.x, abs(firstTrailingBit(-2147483647i))));
    return -((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(18653u, 24u)]), arg_0.xx) ^ _wgslsmith_add_i32(var_3, u_input.b)) >> (~(max(u_input.a, 1u) >> ((u_input.e | var_2.d) % 32u)) % 32u));
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_0 = true;
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, 2088f) + vec2<f32>(267f, -2315f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-895f, -988f))), true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2498f, 258f) + vec2<f32>(-1152f, -2028f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-657f, -354f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, 1044f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1631f), _wgslsmith_f_op_f32(f32(-1f) * -1216f))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = 1u;
    var_0 = u_input.c;
    let var_1 = Struct_1(~arg_0.a, -2147483647i, ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.b, global0[_wgslsmith_index_u32(11174u, 24u)], 24936i) ^ vec4<i32>(28718i, 175i, u_input.d, 1i), ~vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], 21020i, 2147483647i, -2913i)), global0[_wgslsmith_index_u32(~arg_0.d << (~u_input.e % 32u), 24u)]), ~_wgslsmith_sub_u32(arg_0.d, ~min(0u, 0u)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(-862f - -711f)) * _wgslsmith_f_op_f32(f32(-1f) * -1775f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.d, 13715u, u_input.a), vec3<u32>(arg_0.d, 4294967295u, 21060u)))).x - 450f));
    return !arg_1.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<i32, 24>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u ^ u_input.c, ~u_input.e) << (vec2<u32>(76541u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, u_input.c)), ~vec2<u32>(4294967295u, u_input.c)), ~(~vec2<u32>(u_input.a, u_input.e)))), _wgslsmith_mod_u32(~18210u, 4294967295u), _wgslsmith_mult_u32(56269u, 1u >> (~(u_input.e << (u_input.e % 32u)) % 32u)));
    return Struct_1(~select(~vec4<i32>(global0[_wgslsmith_index_u32(29464u, 24u)], -7488i, 31924i, global0[_wgslsmith_index_u32(4294967295u, 24u)]), min(firstLeadingBit(vec4<i32>(0i, u_input.b, u_input.b, 0i)), firstLeadingBit(vec4<i32>(-2147483647i, u_input.d, u_input.d, global0[_wgslsmith_index_u32(u_input.e, 24u)]))), true), -37664i >> (max(u_input.e, 38521u) % 32u), ~(~vec2<i32>(0i, -21197i)), ~49603u);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<f32> {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(func_3(func_4(vec2<f32>(-343f, 2025f), true, vec3<bool>(true, false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec2<bool>(false, false)), true, !(arg_0.b > 0i))), vec4<bool>(!func_3(arg_0, vec2<bool>(true, true)), true && (-u_input.b != -9164i), true & all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true))));
    global0 = array<i32, 24>();
    var_0 = vec4<bool>(var_0.x, var_0.x, false, (true || var_0.x) || (-57675i == arg_1));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1035f))), _wgslsmith_f_op_f32(-501f + -255f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, 505f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(677f, 619f) * vec2<f32>(-642f, 289f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(4294967295u, u_input.c);
    var var_1 = -619f;
    var var_2 = Struct_1(vec4<i32>(~(-11768i), global0[_wgslsmith_index_u32(0u, 24u)], -1i, u_input.d), max(func_1(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 255i), vec3<i32>(2147483647i, -47669i, 39108i))), max(vec3<u32>(u_input.e, 1u, u_input.c), select(vec3<u32>(var_0, 0u, u_input.c), vec3<u32>(u_input.a, 4117u, var_0), true)), -u_input.d | ~(-25579i)), _wgslsmith_mult_i32(~_wgslsmith_div_i32(2147483647i, 1i), u_input.d)), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(8748u, 24u)])), vec2<i32>(1i, u_input.d) << (vec2<u32>(0u, var_0) % vec2<u32>(32u))) | -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(27639i, 3036i))), u_input.a);
    var_2 = Struct_1(max(var_2.a, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(var_2.a, var_2.a, true), var_2.a), -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global0[_wgslsmith_index_u32(var_2.d, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(var_2.d, 24u)]), vec4<i32>(0i, -1i, var_2.b, u_input.b), var_2.a))), -29718i, vec2<i32>(~(-32762i), var_2.c.x), _wgslsmith_div_u32(u_input.a, 61548u));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(170f, 188f) * _wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(var_2.d, 0u, var_2.d))))), func_3(Struct_1(vec4<i32>(var_2.b, -1i, global0[_wgslsmith_index_u32(var_2.d, 24u)], 0i) >> (vec4<u32>(0u, var_2.d, 57529u, u_input.c) % vec4<u32>(32u)), -2147483647i, var_2.a.yz << (vec2<u32>(var_0, 1519u) % vec2<u32>(32u)), ~40067u), vec2<bool>(true, all(vec3<bool>(true, false, true)))), vec3<bool>(all(vec4<bool>(false, false, false, true)), false, true)), -1i, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f) - var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-195f, -891f))), _wgslsmith_div_f32(464f, _wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(1u, var_2.d, u_input.e))).x)) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_f_op_f32(-var_3.x))), var_3.x, var_3.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.x, var_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, -1426f))) * vec2<f32>(305f, -388f)), vec2<f32>(_wgslsmith_div_f32(var_3.x, 1310f), var_3.x)), 991f, min(var_2.a.yyy, var_2.a.xzy), firstTrailingBit(_wgslsmith_mult_u32(~49100u, func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, -137f))), true, select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))).d)));
}


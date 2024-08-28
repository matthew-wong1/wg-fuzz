struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = !any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true));
    var var_1 = false;
    let var_2 = _wgslsmith_clamp_i32(firstTrailingBit(-69981i), _wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -1i, 8057i), arg_1.b.x), ~(~u_input.a.x));
    var var_3 = !(false | ((all(vec4<bool>(false, false, true, false)) | true) || all(vec2<bool>(true, true))));
    var var_4 = vec2<bool>(true, true);
    return firstLeadingBit(abs(abs(~1u)) >> (arg_1.a % 32u));
}

fn func_3() -> vec2<i32> {
    let var_0 = 29356u;
    let var_1 = 4294967295u;
    var var_2 = vec3<i32>(~(-2147483647i), u_input.a.x, countOneBits(-25319i));
    var_2 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(abs(_wgslsmith_mult_i32(0i, -6150i)), var_2.x, ~_wgslsmith_clamp_i32(-23360i, -40661i, var_2.x))), countOneBits(reverseBits(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (~vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)))));
    let var_3 = Struct_1(var_1 ^ firstTrailingBit(23015u), _wgslsmith_mod_vec2_i32(var_2.xz, _wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.a), vec2<i32>(u_input.a.x, 28951i) >> (u_input.b % vec2<u32>(32u))) | ~vec2<i32>(-23800i, var_2.x)), vec4<f32>(289f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f - -1142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)) - _wgslsmith_f_op_f32(-1964f * _wgslsmith_f_op_f32(round(-916f)))), -1000f));
    return _wgslsmith_div_vec2_i32(var_2.yz, _wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(34701i, -1i)), select(vec2<i32>(var_2.x, -24446i), vec2<i32>(-1i, 24511i), false)), -_wgslsmith_div_vec2_i32(u_input.a & var_2.yy, vec2<i32>(-2147483647i, var_2.x))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(~(~u_input.b.x), -_wgslsmith_sub_vec2_i32(vec2<i32>(abs(u_input.a.x), -2147483647i | u_input.a.x), vec2<i32>(_wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_div_i32(8379i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, 1816f, -384f, -977f) - vec4<f32>(1298f, 757f, 191f, 107f)))))));
    var_0 = Struct_1(var_0.a, func_3(), vec4<f32>(-702f, var_0.c.x, var_0.c.x, 371f));
    let var_1 = Struct_1(_wgslsmith_mod_u32(countOneBits(abs(1u)), u_input.b.x), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-8707i, u_input.a.x), var_0.b) << (~u_input.b.x % 32u), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -636f)) - _wgslsmith_f_op_vec4_f32(var_0.c + var_0.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 828f, var_0.c.x, 998f) + var_0.c)) - _wgslsmith_f_op_vec4_f32(-var_0.c))));
    let var_2 = Struct_1(1u, vec2<i32>(~func_3().x, select(countOneBits(i32(-1i) * -1i), _wgslsmith_mult_i32(-6921i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i)), !any(vec4<bool>(false, false, false, true)))), var_0.c);
    var_0 = var_2;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, u_input.b.x < max(reverseBits(~u_input.b.x), _wgslsmith_add_u32(countOneBits(109963u), func_1(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), Struct_1(0u, u_input.a, vec4<f32>(1554f, -205f, 247f, 940f)), vec3<f32>(-373f, 260f, 442f), vec3<f32>(549f, -284f, 947f)))), func_2() != false);
    let var_1 = ~(~(~(u_input.b << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)))) << (_wgslsmith_add_vec2_u32(select(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(88036u, 3138u)), abs(u_input.b), select(vec2<bool>(true, var_0.x), var_0.zy, var_0.zz)), vec2<u32>(u_input.b.x, 0u) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = -(~vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a.x, u_input.a.x), max(vec3<i32>(-2147483647i, u_input.a.x, 26639i), vec3<i32>(42235i, u_input.a.x, u_input.a.x)))));
    let var_3 = Struct_1(759u, vec2<i32>(-1i) * -u_input.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1327f, 170f, 671f, 859f)) - vec4<f32>(1083f, -271f, -1007f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(floor(588f)), 251f, 156f, -938f)))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.x - var_3.c.x) - var_3.c.x) - var_3.c.x) - _wgslsmith_f_op_f32(-var_4.c.x)), -1459f, countOneBits(var_4.b.x));
}


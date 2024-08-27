struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -140f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1249f) + vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 462f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(1867f, -565f)))))));
    var var_1 = Struct_1(false, countOneBits(_wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), u_input.a.x)), vec2<i32>(min(i32(-1i) * -29107i, -2147483647i), abs(-1i)), 8771i, _wgslsmith_add_vec4_u32(vec4<u32>(26852u, ~(~u_input.a.x), ~4294967295u, 28426u), u_input.a));
    return ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(min(reverseBits(0i), -2147483647i), i32(-1i) * -2147483647i, var_1.d), var_1.c.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true & (~(-2147483647i >> (u_input.a.x % 32u)) <= -17461i), u_input.a.x, vec2<i32>(-23433i, -32394i), countOneBits(-2147483647i), u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1068f, -380f)), vec2<f32>(1000f, -442f))))))));
    var var_2 = Struct_1(true, ~(~var_0.b), select(vec2<i32>(-33246i, select(46541i, 0i, true)), vec2<i32>(abs(-1i), min(-57265i, 49199i)), all(select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(var_0.a, var_0.a, false, true), true))) >> (u_input.a.wz % vec2<u32>(32u)), ~_wgslsmith_mod_i32(reverseBits(-2147483647i) >> (1u % 32u), 16172i), vec4<u32>(82663u, 1u, _wgslsmith_mult_u32(var_0.b, var_0.e.x & 51063u), 10875u));
    let var_3 = 51656i;
    let var_4 = _wgslsmith_add_i32(var_3, 1i);
    return Struct_1(false, ~(~0u), vec2<i32>(~(-27484i), func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))))), var_0.c.x, u_input.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = 16836u;
    var var_1 = ~(~4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    let var_3 = func_2();
    var_0 = u_input.a.x;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-727f, _wgslsmith_f_op_f32(-1000f + -725f), true))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) + _wgslsmith_f_op_f32(1578f + -1118f))), _wgslsmith_add_u32(var_0.b, ~1u), var_0.c, arg_0.c.x, vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.e.xxy, min(vec3<u32>(u_input.a.x, 1u, 12465u), var_0.e.xwz)) >> ((var_0.b << (~u_input.a.x % 32u)) % 32u), _wgslsmith_mult_u32(max(4294967295u >> (0u % 32u), ~0u), ~var_0.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41793u, 3530u), vec2<u32>(arg_0.e.x, 1u)), 46591u, 61982u, 0u), max(arg_0.e, vec4<u32>(arg_0.b, u_input.a.x, 4630u, u_input.a.x) | vec4<u32>(arg_0.b, 4294967295u, arg_0.e.x, arg_0.b))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, abs(vec4<u32>(9880u, arg_0.e.x, arg_0.e.x, 13339u))), select(firstLeadingBit(arg_0.e), vec4<u32>(0u, 51137u, u_input.a.x, 8585u), any(vec3<bool>(false, true, arg_0.a))))));
    let var_2 = arg_0;
    let var_3 = func_2();
    var var_4 = func_2();
    return _wgslsmith_clamp_i32(func_2().c.x, abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, var_4.c.x) << (~71176u % 32u), _wgslsmith_div_i32(1i, 1i))), i32(-1i) * -32493i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(max(reverseBits(_wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(17928i, 25910i), 42318i)), abs(-37755i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(62217i, 19437i), countOneBits(1i)), min(vec2<i32>(1i, 1i), vec2<i32>(-1i, -23903i) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)))));
    let var_1 = Struct_1(true, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, 19240u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.xyw), ~reverseBits(select(vec2<i32>(2147483647i, 15163i), vec2<i32>(0i, 0i), false)) | select(firstLeadingBit(vec2<i32>(5362i, 1i)), -vec2<i32>(1i, 1i), all(vec3<bool>(false, false, true))), _wgslsmith_add_i32(_wgslsmith_mult_i32(~21462i, abs(select(0i, -2147483647i, false))), 35589i), vec4<u32>(u_input.a.x, ~_wgslsmith_add_u32(abs(4294967295u), u_input.a.x), ~u_input.a.x, abs(u_input.a.x)));
    var_0 = func_4(Struct_1(true, 110812u, vec2<i32>(~var_1.d, 1i), _wgslsmith_div_i32(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -20706i, 44205i), vec3<i32>(24879i, var_1.d, 0i)), Struct_1(var_1.a, 765u, var_1.c, -84246i, var_1.e)), 0i), ~_wgslsmith_sub_vec4_u32(vec4<u32>(44063u, 4294967295u, 1u, 26531u), ~vec4<u32>(var_1.b, 4294967295u, 12147u, 1u))), var_1.a);
    let var_2 = Struct_1(all(vec2<bool>(var_1.a, true)), ~max(~0u, u_input.a.x), _wgslsmith_add_vec2_i32(~vec2<i32>(abs(var_1.d), var_1.c.x), var_1.c), abs(var_1.d), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, min(59675u, 37416u)), vec2<u32>(_wgslsmith_add_u32(var_1.b, var_1.b), 1u)), 1u, ~((var_1.b << (0u % 32u)) ^ reverseBits(1516u))));
    var var_3 = false;
    let var_4 = var_1;
    let var_5 = 111069u > var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-abs(-var_1.d), var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f))));
}


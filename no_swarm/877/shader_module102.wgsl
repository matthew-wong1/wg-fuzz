struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(~vec4<u32>(reverseBits(u_input.e), ~u_input.b.x, (0u << (u_input.b.x % 32u)) ^ 1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(79150u, 36502u, u_input.e, u_input.e), vec4<u32>(58388u, 0u, u_input.b.x, u_input.e)))), Struct_2(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, -3813i), reverseBits(abs(-16248i)), ~countOneBits(u_input.d.x), _wgslsmith_sub_i32(0i, ~arg_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, _wgslsmith_f_op_f32(select(-1212f, -290f, false)), _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), arg_0.b.x)), countOneBits(-abs(-74455i))), Struct_1(vec2<u32>(u_input.e, min(_wgslsmith_mod_u32(u_input.e, u_input.e), 1u)), min(abs(firstLeadingBit(vec3<u32>(u_input.e, 4294967295u, 18612u))), ~vec3<u32>(0u, u_input.b.x, u_input.e)), u_input.e, abs(_wgslsmith_clamp_i32(54319i, ~2147483647i, _wgslsmith_add_i32(u_input.c.x, 2147483647i)))));
    let var_1 = vec4<bool>(all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true))), select(true, _wgslsmith_div_i32(var_0.c.d, -50904i) > -u_input.d.x, true) || all(vec4<bool>(false, true, arg_0.b.x >= -1512f, true)), any(vec4<bool>(true, true, true, true)), true);
    let var_2 = var_0.c.b.x;
    return var_0.c.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -(~countOneBits(~38095i));
    var_0 = ~_wgslsmith_add_i32(u_input.a.x, -42747i);
    var var_1 = u_input.e;
    var var_2 = -2147483647i;
    var_1 = ~func_3(Struct_2(~(u_input.c | u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-1534f + 937f), _wgslsmith_div_f32(-337f, -152f), -305f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.d));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(541f, 586f));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1612f);
    var var_2 = u_input.c;
    var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + var_0.x)))))));
    var var_3 = Struct_1(u_input.b, abs(_wgslsmith_add_vec3_u32(select(arg_0.b, select(arg_0.b, vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), vec3<bool>(false, true, false)), vec3<bool>(false, true, true)), arg_0.b)), _wgslsmith_mod_u32(~arg_0.c, arg_0.b.x), _wgslsmith_add_i32(2147483647i, u_input.a.x & u_input.c.x));
    return -667f;
}

fn func_5(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(-336f, 1f, !(any(vec4<bool>(true, true, true, true)) & (abs(u_input.c.x) > -66066i))));
    var var_1 = Struct_1(~(~vec2<u32>(32979u, u_input.e)), ~vec3<u32>(4294967295u, select(u_input.b.x, min(u_input.b.x, 11919u), true), u_input.b.x), _wgslsmith_sub_u32(u_input.e, ~firstLeadingBit(4294967295u)), -21741i);
    var_1 = func_2(func_2(func_2(func_2(Struct_1(u_input.b, var_1.b, u_input.b.x, -5783i)))));
    let var_2 = min(func_2(Struct_1(vec2<u32>(4294967295u | var_1.b.x, u_input.e), var_1.b, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(14677u, 0u), var_1.a.x, u_input.b.x), _wgslsmith_div_i32(-u_input.d.x, var_1.d | 8828i))).d, ~select(var_1.d, ~2147483647i, true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + -487f);
    return Struct_2(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -167f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_0, 881f)))))), -27723i);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    let var_0 = select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x | false, arg_0.x), -21349i == _wgslsmith_mod_i32(countOneBits(2147483647i) | arg_1, ~6710i));
    let var_1 = arg_0;
    let var_2 = ~select(abs(~(vec3<u32>(u_input.b.x, 0u, u_input.b.x) >> (vec3<u32>(4294967295u, 1u, 72816u) % vec3<u32>(32u)))), vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.b.x, u_input.e), 0u), !var_0.zwy);
    var var_3 = u_input.c;
    let var_4 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(var_2.yx, vec3<u32>(u_input.b.x, u_input.b.x, var_2.x), 4294967295u, u_input.a.x)))) - -1000f))));
    return 19729u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 608f;
    let var_1 = vec4<u32>(max(_wgslsmith_div_u32(0u, ~1374u), min(select(0u, ~u_input.e, true), _wgslsmith_mult_u32(max(0u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)))), u_input.b.x, select(0u, firstTrailingBit(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, 0u, u_input.e), vec4<u32>(u_input.e, u_input.b.x, u_input.e, u_input.b.x))), true), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, u_input.e, 24441u, u_input.b.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(14730u, 1u, u_input.e, 9723u), abs(vec4<u32>(u_input.b.x, 524u, 80319u, 18529u)))) | _wgslsmith_mult_u32(u_input.b.x, ~(~u_input.e)));
    let var_2 = ~_wgslsmith_add_u32(139701u, 0u);
    var var_3 = all(vec2<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))));
    let var_4 = max(reverseBits(_wgslsmith_mult_u32(var_1.x, ~var_2)), (func_1(vec2<bool>(true, false), ~u_input.a.x) >> ((_wgslsmith_mult_u32(var_1.x, 0u) & _wgslsmith_mod_u32(var_1.x, 23859u)) % 32u)) & 46182u);
    var var_5 = vec4<f32>(-397f, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(func_2(Struct_1(vec2<u32>(1u, var_1.x), var_1.xyz, var_2, 0i)).a, vec3<u32>(16950u, 34621u, 0u), func_1(vec2<bool>(false, false), 0i), u_input.c.x)))), -114f, 1111f);
    var_5 = vec4<f32>(_wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(var_2, 10939u), vec3<u32>(22105u, var_4, 4294967295u), var_4, u_input.d.x))), _wgslsmith_f_op_f32(step(1928f, var_0))))), 674f, var_5.x, _wgslsmith_f_op_f32(exp2(var_0)));
    let var_6 = Struct_2(-firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(22434i, u_input.a.x, u_input.a.x, u_input.d.x), u_input.c, u_input.c), vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.c.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec2<u32>(var_1.x, var_1.x), vec3<u32>(var_2, 0u, 2336u), u_input.e, u_input.d.x)))), _wgslsmith_f_op_f32(abs(var_0)), var_0, _wgslsmith_div_f32(173f, 1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_5.x, var_5.x) + vec4<f32>(1912f, -942f, 1842f, var_5.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_5.x, var_5.x))))))), -6689i);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(firstLeadingBit(var_6.a.xz & u_input.d)), var_0, _wgslsmith_mod_vec3_i32(var_6.a.wwy, min(var_6.a.zzy, vec3<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, -2147483647i), -u_input.a.x))), _wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f) - _wgslsmith_f_op_f32(-407f + -584f))));
}


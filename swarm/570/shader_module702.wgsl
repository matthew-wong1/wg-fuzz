struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.x)), -1000f, false || all(select(vec4<bool>(false, false, arg_1.x, false), vec4<bool>(arg_1.x, false, false, false), arg_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-526f + 1503f))), -1137f));
    var var_1 = arg_0;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-1i << (1u % 32u), u_input.a), u_input.a, -23047i);
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 594f, var_3.a, 1000f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(241f, var_0.x, 635f, var_0.x), arg_2))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_2.x) * -1720f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a, arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-908f, var_3.a)) - _wgslsmith_f_op_f32(3379f - 1762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-967f - -380f) * _wgslsmith_div_f32(var_3.a, 767f)))));
    return 72298u;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = abs(~_wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 1507i, u_input.a), vec3<i32>(arg_0.b, arg_0.b, arg_0.b)), max(-vec3<i32>(24505i, u_input.a, arg_0.b), vec3<i32>(arg_0.b, arg_0.b, 0i) >> (vec3<u32>(arg_2, 4294967295u, 30638u) % vec3<u32>(32u)))));
    let var_1 = arg_0;
    var var_2 = arg_1;
    return ~(~max(func_3(arg_0, vec2<bool>(false, false), vec4<f32>(var_1.a, -798f, arg_3.x, arg_0.a)), ~var_1.c.x) >> (arg_2 % 32u));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_u32(~(~1u), ~func_2(Struct_1(_wgslsmith_f_op_f32(1600f - 996f), abs(u_input.a), vec3<u32>(1u, 1u, 1u)), 134f, ~1u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0))))), ~(countOneBits(2147483647i) | _wgslsmith_div_i32(u_input.a, arg_1.x ^ u_input.a)), vec3<u32>(_wgslsmith_sub_u32(1u, func_2(Struct_1(arg_0, arg_1.x, vec3<u32>(4294967295u, 1u, 4294967295u)), _wgslsmith_f_op_f32(ceil(-115f)), reverseBits(7551u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), 0u, 60834u));
    var_0 = var_1.c.x;
    var_0 = _wgslsmith_mod_u32(~1u << (~var_1.c.x % 32u), select(34225u, countOneBits(0u) & _wgslsmith_div_u32(var_1.c.x, var_1.c.x), true) & var_1.c.x);
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.x, _wgslsmith_div_u32(~var_1.c.x, 29141u), _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(4294967295u), abs(var_1.c.x)), _wgslsmith_sub_u32(func_3(var_1, vec2<bool>(false, false), vec4<f32>(var_1.a, -1156f, arg_0, var_1.a)), 35685u | var_1.c.x)), var_1.c.x), ~vec4<u32>(1u, _wgslsmith_sub_u32(var_1.c.x, max(var_1.c.x, 83437u)), var_1.c.x, var_1.c.x), vec4<u32>(~50559u, var_1.c.x, _wgslsmith_mult_u32(abs(1u), var_1.c.x), var_1.c.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.x, 8014u, var_1.c.x | 1u, 1u), reverseBits(vec4<u32>(1u, var_1.c.x, var_1.c.x, var_1.c.x)) | ~vec4<u32>(1u, 69621u, 2205u, 0u)));
    return -u_input.a == max(-u_input.a, -1260i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1551f, 1701f, -788f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1015f, -1182f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-561f, -1000f, -786f))))))));
    var var_1 = -30822i;
    var var_2 = select(vec3<bool>(!(true & func_1(var_0.x, vec3<i32>(-8729i, u_input.a, u_input.a))), true, any(vec4<bool>(true, true, true, false))), vec3<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u)) <= ~min(0u, 66644u), all(vec2<bool>(true, true)), false), !select(vec3<bool>(0i < u_input.a, true, u_input.a != u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))));
    let var_3 = var_2.x;
    var_1 = ~(-14333i >> (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1102f, var_0.x, var_0.x)))))), _wgslsmith_add_i32(_wgslsmith_sub_i32((u_input.a << (4294967295u % 32u)) << (1u % 32u), _wgslsmith_sub_i32(66537i, 18415i ^ u_input.a)), reverseBits(u_input.a)), 667f, (~_wgslsmith_mult_u32(51607u, 20575u) & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30955u, 1u, 6405u), vec3<u32>(0u, 19531u, 2939u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3515u, 22187u), vec3<u32>(4294967295u, 28832u, 4294967295u)))) | _wgslsmith_mult_u32(1u, ~1u));
}


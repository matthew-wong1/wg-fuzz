struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(598i, 7768i, 6765i), vec3<i32>(i32(-2147483648), -1i, 8i), vec3<i32>(-40542i, i32(-2147483648), -13271i), vec3<i32>(-45599i, 0i, 0i), vec3<i32>(-54483i, -27533i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 8813i), vec3<i32>(1i, 1i, -52634i), vec3<i32>(0i, 5155i, 11271i), vec3<i32>(15673i, i32(-2147483648), 59315i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-2831i, 87121i, 2147483647i), vec3<i32>(-43233i, i32(-2147483648), 1442i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-15606i, 1i, -22092i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<f32>) -> i32 {
    let var_0 = Struct_1(vec2<bool>(true, true), -808f);
    var var_1 = Struct_2((_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, 0u), 81942u) << (1u % 32u)) <= ~1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1479f, var_0.b)), vec2<u32>((~u_input.b.x << (1u % 32u)) >> (75775u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(10538u, u_input.b.x), select(u_input.b.xz, u_input.b.zx, false) ^ u_input.b.ww)));
    global0 = array<vec3<i32>, 18>();
    let var_2 = ~_wgslsmith_dot_vec4_u32(firstTrailingBit(~select(u_input.b, vec4<u32>(u_input.c, var_1.c.x, 0u, u_input.b.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x))), abs(~(~u_input.b)));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(_wgslsmith_sub_i32(arg_1.d, u_input.a)), arg_1.b, arg_1.d, abs(u_input.a)), ~(vec4<i32>(arg_1.a.x, 0i, -43019i, arg_1.b) << (u_input.b % vec4<u32>(32u)))), ~(select(vec4<i32>(arg_1.b, u_input.a, arg_1.d, 1i), vec4<i32>(-1i, -1i, 1i, arg_1.d) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), true) << (~(~u_input.b) % vec4<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(0i, u_input.a, u_input.a)), firstTrailingBit(reverseBits(firstTrailingBit(vec3<i32>(10712i, u_input.a, -2147483647i))))), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(283f, _wgslsmith_f_op_f32(sign(324f)), _wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(1000f + -433f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1007f, 1864f, -567f, -1399f), vec4<f32>(-1516f, -467f, -451f, 149f)))), vec4<bool>(true, false, false, 1u < u_input.b.x)))), -2147483647i);
    global0 = array<vec3<i32>, 18>();
    var var_1 = u_input.b;
    var var_2 = var_0;
    var var_3 = true;
    return arg_1.xz;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = u_input.a;
    global1 = -2403i;
    let var_0 = u_input.b.xx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(946f, -517f)) - _wgslsmith_f_op_f32(-arg_0)))));
    global0 = array<vec3<i32>, 18>();
    return Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), func_4(_wgslsmith_div_i32(abs(86842i), func_3(1287f, Struct_3(global0[_wgslsmith_index_u32(86811u, 18u)], u_input.a, vec4<f32>(arg_0, arg_0, 1123f, arg_0), -1i), vec2<f32>(arg_0, arg_0), vec3<f32>(-1846f, 243f, -2278f))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), firstTrailingBit(~4294967295u)), !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-251f))), arg_0)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 1000f)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(2127u, 1u), firstTrailingBit(u_input.b.wx)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(1u, u_input.b.x))));
    var var_1 = Struct_2(var_0.c.x == 0u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<u32>(4294967295u & _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.c), var_0.c.x), _wgslsmith_dot_vec2_u32(~var_0.c, vec2<u32>(13392u, 20228u))));
    var_1 = Struct_2(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(var_0.b, arg_0.b))) + _wgslsmith_f_op_f32(-arg_0.b)), vec2<u32>(~(~_wgslsmith_div_u32(var_1.c.x, u_input.b.x)), ~(min(9221u, var_1.c.x) | firstTrailingBit(var_0.c.x))));
    global1 = select(~((i32(-1i) * -1i) >> (1u % 32u)), ~func_3(-1000f, Struct_3(-vec3<i32>(-1i, -1i, u_input.a), 50928i >> (0u % 32u), _wgslsmith_div_vec4_f32(vec4<f32>(-1701f, arg_0.b, 334f, var_1.b), vec4<f32>(var_1.b, var_1.b, 1000f, -381f)), min(u_input.a, 0i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) + vec2<f32>(var_1.b, arg_0.b)), vec2<f32>(var_1.b, 1380f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1137f, var_1.b, arg_0.b)))), select(false, any(func_2(-573f).a), any(vec4<bool>(false, true, false, arg_0.a.x))));
    var_0 = Struct_2(true, 661f, ~vec2<u32>(var_0.c.x, 1u));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    var var_0 = arg_2.c.zzy;
    return arg_0.a.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<bool> {
    let var_0 = abs(arg_0);
    global0 = array<vec3<i32>, 18>();
    let var_1 = select(vec4<bool>(true, func_6(func_5(func_2(-192f)), vec2<f32>(1f, 1f), Struct_3(-global0[_wgslsmith_index_u32(u_input.c, 18u)], -12528i, vec4<f32>(1f, 1f, 1f, 1f), ~u_input.a)), 4294967295u <= abs(var_0), false), vec4<bool>(true, func_2(-1588f).a.x && true, all(vec2<bool>(true, true)) & true, true), !all(vec2<bool>(true, true)));
    var var_2 = vec3<f32>(-856f, -1792f, -990f);
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(505f, var_2.x), _wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-var_2.x));
    return func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_2.x, -1305f))) * var_2.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 2147483647i;
    var var_0 = Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), func_1(u_input.c, 22606i), any(vec4<bool>(true, false, false, true))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -132f))));
    var var_1 = u_input.a;
    let var_2 = func_2(_wgslsmith_f_op_f32(-2116f - _wgslsmith_f_op_f32(-698f + var_0.b))).a.x;
    let var_3 = Struct_4(Struct_2(var_0.a.x, var_0.b, vec2<u32>(23535u, u_input.b.x)));
    var_0 = func_5(func_2(1183f));
    let var_4 = var_3.a;
    var var_5 = vec2<u32>(((_wgslsmith_clamp_u32(var_3.a.c.x, var_3.a.c.x, 67677u) ^ max(var_4.c.x, var_3.a.c.x)) | _wgslsmith_sub_u32(var_3.a.c.x ^ var_3.a.c.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x))) | var_3.a.c.x, 23199u);
    var var_6 = var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(max(-countOneBits(u_input.a), u_input.a), ~u_input.a), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b + _wgslsmith_f_op_f32(ceil(var_4.b))) - -729f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_3.a.b, var_0.b, var_3.a.b) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, 1380f, 925f, var_4.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1344f, var_0.b, var_0.b, var_4.b)), var_0.a.x))), 47879i);
}


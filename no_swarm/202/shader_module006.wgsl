struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(2514f, 932f, 319f), vec3<f32>(368f, 1000f, -1565f), vec3<f32>(-525f, 782f, -154f), vec3<f32>(2019f, -807f, -269f), vec3<f32>(-132f, -485f, -1799f), vec3<f32>(1219f, 1337f, -1079f), vec3<f32>(-437f, 485f, -804f), vec3<f32>(-311f, 760f, 1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(1i, 0i | arg_2.b.x), -1i);
    var var_1 = Struct_1((0u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 24742u) ^ u_input.b.yyx, u_input.b.zxw ^ u_input.b.zyx)) <= u_input.a, vec4<f32>(-507f, arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1045f)) * _wgslsmith_f_op_f32(min(1000f, 745f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a)))));
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    return -(~countOneBits(var_0)) | _wgslsmith_sub_vec2_i32(var_0, ~(~(arg_3.b.zy | vec2<i32>(arg_3.b.x, -1i))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0 & vec2<i32>(2147483647i, -45815i), func_3(false, vec2<bool>(false, false), Struct_2(-678f, vec3<i32>(-14937i, -9464i, arg_0.x), Struct_1(true, vec4<f32>(-1006f, 1000f, 1000f, -374f)), -1000f), Struct_2(-1203f, vec3<i32>(-37274i, arg_0.x, 1i), Struct_1(false, vec4<f32>(-413f, 496f, 369f, -488f)), -622f))), -vec2<i32>(-1i, -4005i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(-1212f, -1118f, true)), abs(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), Struct_1(true, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(880f, 1247f)), _wgslsmith_f_op_f32(-557f - 411f), -666f, _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, 963f, 1568f, -523f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1637f)))))));
    let var_2 = select(!(!vec3<bool>(!var_1.c.a, false, var_1.b.x >= 2325i)), !select(!vec3<bool>(var_1.c.a, true, false), !select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.c.a, true), vec3<bool>(var_1.c.a, true, false)), !(arg_0.x != 2147483647i)), arg_0.x != arg_0.x);
    var var_3 = countOneBits(vec3<u32>(abs((0u | u_input.b.x) ^ min(u_input.b.x, u_input.a)), abs(1u), u_input.b.x));
    global0 = array<vec3<f32>, 8>();
    return !(!(!(!vec4<bool>(false, var_2.x, var_1.c.a, false))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    var var_0 = 24714u == u_input.b.x;
    var_0 = !arg_0.c.a;
    var_0 = any(select(vec4<bool>(false && arg_0.c.a, true, arg_0.c.a, !arg_0.c.a), select(!func_2(vec2<i32>(arg_0.b.x, arg_1.x)), vec4<bool>(arg_0.c.a, true, all(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a)), 4294967295u <= u_input.c.x), arg_0.c.a), true));
    return _wgslsmith_f_op_f32(-arg_0.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~31083u, Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(-918f, vec3<i32>(-9184i, 0i, -37572i), Struct_1(true, vec4<f32>(-1045f, -522f, 1771f, 1000f)), -931f), vec3<i32>(1i, -21615i, -40340i))) - 1399f), _wgslsmith_f_op_f32(round(-608f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2153f) - 399f), _wgslsmith_f_op_f32(ceil(-895f)))));
    global0 = array<vec3<f32>, 8>();
    var var_1 = 4294967295u;
    global0 = array<vec3<f32>, 8>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x + -860f) - _wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x)))), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(16970i, 3131i, -10834i, -46091i), vec4<i32>(-29730i, -52994i, -1i, -35276i), vec4<bool>(false, true, false, true)), vec4<i32>(1i, -1i, 2147483647i, -2147483647i)), _wgslsmith_clamp_i32(firstTrailingBit(19031i), _wgslsmith_sub_i32(1i, 1i), abs(-2147483647i)), select(abs(37087i), reverseBits(2147483647i), true))), Struct_1(_wgslsmith_f_op_f32(select(-595f, -2006f, true)) >= _wgslsmith_f_op_f32(f32(-1f) * -261f), vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(1118f)), var_0.b.b.x, 591f)), -1085f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_2.b.x), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(2258u, 13368u), reverseBits(_wgslsmith_sub_u32(var_0.a, 43464u)), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.a), _wgslsmith_clamp_u32(var_0.a, var_0.a, 5216u), ~21230u, select(u_input.c.x, 1u, var_2.c.a)), vec4<u32>(reverseBits(u_input.a), _wgslsmith_mult_u32(1u, u_input.a), u_input.c.x, _wgslsmith_mod_u32(var_0.a, 7176u))), ~1u, 30223u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.b.x, 1f, _wgslsmith_f_op_f32(var_0.b.b.x - var_0.b.b.x), _wgslsmith_f_op_f32(select(var_2.a, var_0.b.b.x, false)))), var_2.c.b)), ~_wgslsmith_sub_u32(var_0.a, max(_wgslsmith_sub_u32(var_0.a, u_input.c.x), 4294967295u)));
}


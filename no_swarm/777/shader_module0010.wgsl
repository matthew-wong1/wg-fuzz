struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_clamp_u32(29189u, 1u, 66795u)), ~(~vec2<u32>(4294967295u, 0u))), firstLeadingBit(abs(~76538u))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(12050u, 49598u)) >> (_wgslsmith_clamp_u32(abs(4294967295u), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(16575u, 101151u, 1u), vec3<u32>(0u, 1u, 4294967295u))) % 32u))), 16u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(max(-671f, arg_2)), _wgslsmith_add_i32(arg_1.x, u_input.a));
    let var_1 = arg_0.d >= _wgslsmith_div_u32(~var_0.b, ~(~arg_0.d));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return Struct_1(vec3<u32>(arg_0.d, 39377u, 0u), abs(var_0.a.x | ~38956u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -693f, -2514f, -1863f)), _wgslsmith_f_op_vec4_f32(-var_0.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-930f, -1000f, 480f, 1284f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, var_0.e, -918f, 1158f)))))), var_0.a.x, 481f);
}

fn func_3() -> u32 {
    let var_0 = func_1(global0[_wgslsmith_index_u32(reverseBits(func_1(global0[_wgslsmith_index_u32(4294967295u, 16u)], -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 32841i, u_input.a, u_input.a), vec4<i32>(-21094i, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1214f))).d), 16u)], vec4<i32>(-48798i, i32(-1i) * -2147483647i, u_input.a, 0i), _wgslsmith_div_f32(-650f, 1582f));
    var var_1 = !(!any(vec2<bool>(true, true)));
    global0 = array<Struct_1, 16>();
    var_1 = !(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, false, false))) & (-946f > _wgslsmith_f_op_f32(-var_0.e)));
    var var_2 = firstTrailingBit(0u);
    return var_0.b | 60432u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(~(~1u), 16u)], vec4<i32>(u_input.a, 55389i, u_input.a, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(230f, _wgslsmith_f_op_f32(max(-1783f, -358f)), false)) + _wgslsmith_div_f32(-1835f, _wgslsmith_f_op_f32(-212f + -1870f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(125f, -487f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = var_0.a;
    var var_2 = var_0;
    let var_3 = select(!select(vec3<bool>(any(vec3<bool>(false, false, true)), false, true), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, true)), false, true), true), vec3<bool>(false, true, 319f <= var_0.c.x));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(_wgslsmith_mult_i32(firstLeadingBit(0i), -26223i), -33825i), _wgslsmith_add_i32(-20805i << (func_3() % 32u), 11463i), -33611i & -u_input.a, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, 2147483647i)), select(vec4<i32>(5125i, -3624i, u_input.a, u_input.a), vec4<i32>(2147483647i, 32826i, 1i, 8286i), vec4<bool>(true, false, true, var_3.x)))), vec4<u32>(1u, 20401u, var_0.b >> (_wgslsmith_sub_u32(var_1.x, firstTrailingBit(4294967295u)) % 32u), var_2.d), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), firstLeadingBit(vec2<u32>(6520u, 4294967295u))), _wgslsmith_div_vec2_u32(min(abs(var_2.a.yy), vec2<u32>(var_0.b, var_1.x)), vec2<u32>(var_0.a.x, var_0.b))));
}


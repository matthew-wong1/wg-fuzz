struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 32546i), vec2<i32>(2147483647i, 1i), vec2<i32>(-2955i, -25346i), vec2<i32>(35082i, 15289i), vec2<i32>(10568i, 35543i), vec2<i32>(-1i, 50191i), vec2<i32>(2147483647i, 879i), vec2<i32>(-24590i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -25655i), vec2<i32>(22033i, i32(-2147483648)), vec2<i32>(5020i, i32(-2147483648)), vec2<i32>(15081i, -10235i), vec2<i32>(-19152i, -30669i), vec2<i32>(-9214i, 7967i), vec2<i32>(8987i, 3005i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(494f)), 1000f, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), -274f, 1000f)), 17930u, -396f > arg_0.x, u_input.d | 0u);
    global0 = array<Struct_2, 23>();
    return vec2<bool>(true, _wgslsmith_f_op_f32(trunc(-1103f)) != arg_0.x);
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 2147483647i), min(-1i, 2147483647i)), _wgslsmith_mod_i32(i32(-1i) * -16112i, -55928i)), ~(-(~(~(-1i)))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-20091i, ~21526i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), _wgslsmith_clamp_vec3_i32(vec3<i32>(-34954i, -16028i, -1i), vec3<i32>(2147483647i, 0i, -34027i), vec3<i32>(-32114i, -3111i, 2147483647i)) >> (abs(arg_0.wxw) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -29339i), global1[_wgslsmith_index_u32(4294967295u, 19u)]) ^ ~0i, countOneBits(reverseBits(2147483647i)), -2147483647i)), select(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1535i, 39862i, -5556i), _wgslsmith_sub_vec3_i32(vec3<i32>(21876i, -48794i, 1i), vec3<i32>(19898i, -1i, -23493i))), ~(~vec3<i32>(0i, 42527i, -16060i))), _wgslsmith_add_i32(40750i, firstLeadingBit(-1i)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1532f, -141f) * vec2<f32>(-1564f, 144f)))))));
    global0 = array<Struct_2, 23>();
    let var_2 = ~arg_0.x;
    return vec2<i32>(-44914i, 16916i) & firstTrailingBit(reverseBits(_wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 19u)], -vec2<i32>(var_0.x, var_0.x))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_4 {
    global0 = array<Struct_2, 23>();
    let var_0 = reverseBits(func_3(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.a, 6815u, 55048u, u_input.a))) & -vec2<i32>(arg_0, -arg_0));
    global0 = array<Struct_2, 23>();
    global1 = array<vec2<i32>, 19>();
    let var_1 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, -465f, -637f))), firstLeadingBit(~u_input.a), true, ~u_input.a), arg_1, abs(global1[_wgslsmith_index_u32(38073u, 19u)] | ~var_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(216f, 1633f, -398f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(614f, -645f, -327f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2065f, 173f, -633f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, 181f, 422f))), !all(vec4<bool>(false, arg_1.x, false, arg_1.x))))));
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<bool>(any(arg_2.c), !(true || func_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.a)).x));
    global0 = array<Struct_2, 23>();
    var var_1 = firstTrailingBit(abs(~(u_input.c.yww & u_input.c.yyx)));
    global0 = array<Struct_2, 23>();
    var var_2 = arg_1.a.d.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-997f + arg_1.a.a.a.x) * _wgslsmith_div_f32(478f, _wgslsmith_f_op_f32(f32(-1f) * -1271f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 273f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(u_input.a, func_2(-2147483647i, select(func_1(vec3<f32>(-222f, -638f, 614f)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(774f, -1462f, 2069f, -830f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1953f, -178f, -577f, -272f))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), false))))));
    global0 = array<Struct_2, 23>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.d, _wgslsmith_mult_u32(u_input.d, ~u_input.c.x)), 19u)];
    let var_2 = ~u_input.d != 12116u;
    global1 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(984f)))))), firstTrailingBit(~u_input.c));
}


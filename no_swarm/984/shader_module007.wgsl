struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 19>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1150f - 772f))))));
    let var_1 = vec4<u32>(abs(arg_1.x), arg_1.x, ~(~firstTrailingBit(1u)), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(arg_1.x, 58701u)), arg_1));
    global0 = arg_3.x ^ -2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1441f + var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-668f))), var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(460f, -320f) - var_0))));
    return Struct_2(true, -abs(vec4<i32>(_wgslsmith_sub_i32(arg_3.x, -20741i), arg_3.x, -u_input.c, -40607i >> (u_input.b.x % 32u))), vec4<i32>(i32(-1i) * -2147483647i, select(~(arg_3.x & 0i), _wgslsmith_mult_i32(2147483647i & u_input.e, abs(21987i)), arg_0.x), arg_3.x, _wgslsmith_clamp_i32(arg_3.x, 0i, select(1i, _wgslsmith_div_i32(-42021i, arg_3.x), false))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1503f + -214f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f - 997f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1132f + var_0.x)))))));
    var var_2 = u_input.b.xwx;
    let var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-var_1);
    return abs(_wgslsmith_mult_vec4_u32(vec4<u32>(10557u, _wgslsmith_mult_u32(var_3, 63955u) ^ var_2.x, u_input.b.x & _wgslsmith_clamp_u32(1378u, u_input.a, 1u), var_2.x), u_input.b));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(-arg_1.a.b.xzw, vec3<i32>(1i, ~(~(~arg_1.a.b.x)), -64313i));
    global0 = 7257i;
    var var_1 = !(!(!vec4<bool>(arg_2 && false, false, !global1[_wgslsmith_index_u32(38914u, 19u)], any(vec2<bool>(true, arg_0)))));
    let var_2 = func_2(arg_1.e, vec2<u32>(select(arg_1.b, arg_1.b, false), countOneBits(_wgslsmith_mod_u32(4301u, countOneBits(3175u)))), arg_1.e.yy, vec3<i32>(var_0, arg_1.c.c.x, ~(~2147483647i) << (_wgslsmith_mult_u32(~arg_1.d.x, 0u) % 32u))).b.x;
    var var_3 = -507f;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f * -762f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-583f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1713f) + -1083f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1434f, 1000f)) - _wgslsmith_f_op_f32(989f + -111f)), -1310f)))));
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(30977u << (_wgslsmith_mult_u32(4294967295u, u_input.d) % 32u), 19u)], Struct_3(func_2(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)], arg_0.a.a), vec2<u32>(50570u, u_input.a), vec2<bool>(arg_0.a.a, true), vec3<i32>(u_input.c, u_input.c, -2615i)), 4294967295u, Struct_2(global1[_wgslsmith_index_u32(51937u, 19u)], arg_0.a.c, arg_0.a.c), func_3(false, vec2<bool>(false, arg_0.a.a), arg_0.a, Struct_1(4294967295u)), !vec3<bool>(true, arg_0.a.a, false)), !arg_0.a.a))), -1358f));
    global1 = array<bool, 19>();
    let var_1 = _wgslsmith_mod_u32(15396u, countOneBits(max(u_input.a, 12258u)));
    var var_2 = _wgslsmith_div_vec4_i32(-(~(~max(vec4<i32>(0i, 0i, 2147483647i, arg_0.a.c.x), arg_0.a.b))), arg_0.a.c);
    var var_3 = Struct_1(4294967295u);
    return _wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1 >> (var_1 % 32u), var_3.a), ~(~var_3.a)), 250u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i & (-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<i32>(-30299i, 1i, -7754i, -2147483647i)) << (func_1(Struct_4(Struct_2(true, vec4<i32>(-31362i, 0i, u_input.c, 12025i), vec4<i32>(2147483647i, 2147483647i, -19772i, 0i)))) % 32u));
    var var_0 = Struct_5(Struct_1(0u), all(vec2<bool>(_wgslsmith_add_i32(u_input.e, -5019i) >= u_input.e, true)));
    let var_1 = -671f;
    let var_2 = 17242i;
    global0 = countOneBits(countOneBits(~(-62769i)));
    var var_3 = Struct_1(reverseBits(13683u));
    var_0 = Struct_5(var_0.a, ~(-1i) > ~(~abs(var_2)));
    global1 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 * -488f), 1468f)), _wgslsmith_f_op_f32(round(-777f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-781f + _wgslsmith_f_op_f32(var_1 + -292f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1)))), -1036f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) - _wgslsmith_div_vec3_f32(vec3<f32>(422f, 507f, 1000f), vec3<f32>(var_1, 1000f, var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 1000f)));
}


struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: array<f32, 18> = array<f32, 18>(-1301f, 975f, 1159f, -1676f, -421f, -923f, 171f, 665f, 1000f, -494f, -2649f, -595f, -1000f, 847f, 271f, -757f, -205f, -1965f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    global0 = array<vec4<bool>, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-643f, _wgslsmith_f_op_f32(sign(arg_0)))), global1[_wgslsmith_index_u32(23385u, 18u)])));
    var var_1 = ~(~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(7224u, 24369u)), _wgslsmith_mod_u32(4294967295u, u_input.d), u_input.e)));
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_div_i32(u_input.b | 1i, abs(~u_input.a)), firstTrailingBit(_wgslsmith_dot_vec3_i32(-u_input.c, -vec3<i32>(-49790i, u_input.c.x, 20102i))), abs(firstTrailingBit(_wgslsmith_mult_i32(u_input.a, u_input.a))), -7768i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(34858u, 18u)], global1[_wgslsmith_index_u32(62228u, 18u)])), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) + -1119f))), u_input.a, reverseBits(~_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -1i, u_input.b, 41185i), abs(vec4<i32>(u_input.b, -2930i, u_input.a, -13854i)))));
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.x, 2308f, arg_1)))), -1176f)), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-471f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(floor(-340f)), arg_1))))), ~_wgslsmith_mod_u32(var_1.x, 1u));
    return _wgslsmith_f_op_f32(-var_3.a.x);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(280f, arg_0.b.x, global1[_wgslsmith_index_u32(u_input.d, 18u)], 2036f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.e, 18u)], 352f, 496f, -850f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, var_0.b.x, arg_0.b.x, global1[_wgslsmith_index_u32(u_input.e, 18u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(488f, -1098f, var_0.b.x, 1191f)))) * vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u | u_input.d, 18u)]), -1089f, _wgslsmith_div_f32(125f, -1000f), var_0.b.x)), ~49182u);
    var var_2 = 1624f;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 627f, -1906f, global1[_wgslsmith_index_u32(u_input.d, 18u)]), vec4<f32>(var_1.a.x, arg_0.b.x, 709f, global1[_wgslsmith_index_u32(4294967295u, 18u)])))))))), var_1.b);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(675f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x * -335f), _wgslsmith_f_op_f32(sign(205f))), _wgslsmith_f_op_f32(floor(-317f)), _wgslsmith_f_op_f32(func_3(arg_0.b.x, u_input.e == var_3.b))), var_1.a)), _wgslsmith_mod_u32(19194u, 1u));
    return Struct_2(var_1.a, ~var_3.b);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec4<i32> {
    global1 = array<f32, 18>();
    global0 = array<vec4<bool>, 10>();
    var var_0 = func_2(Struct_1(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -8264i, u_input.b, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.c.x, -35460i), vec4<i32>(u_input.c.x, u_input.a, 61009i, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, -448f)))))), select(34919i, _wgslsmith_div_i32(~1i, -u_input.b), any(arg_2)), -(vec4<i32>(u_input.b, u_input.a, u_input.b, 22206i) ^ vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b))));
    global1 = array<f32, 18>();
    var var_1 = -286f;
    return vec4<i32>(_wgslsmith_mult_i32(13609i, -42713i), _wgslsmith_clamp_i32(u_input.c.x, -13965i, u_input.a), _wgslsmith_add_i32(~u_input.c.x ^ abs(-26236i), -(i32(-1i) * -32426i)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    var var_0 = Struct_1(func_1(~(~u_input.d), _wgslsmith_f_op_f32(-1896f + global1[_wgslsmith_index_u32(~(~29679u), 18u)]), !global0[_wgslsmith_index_u32(u_input.d, 10u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(694f, 1766f), vec2<f32>(-141f, global1[_wgslsmith_index_u32(u_input.d, 18u)]))))), _wgslsmith_f_op_vec2_f32(exp2(func_2(Struct_1(vec4<i32>(0i, 26953i, -2147483647i, u_input.a), vec2<f32>(1575f, global1[_wgslsmith_index_u32(u_input.e, 18u)]), u_input.b, vec4<i32>(0i, u_input.c.x, u_input.a, 2147483647i))).a.wy)), !all(vec2<bool>(true, true)))), u_input.b, select(vec4<i32>(_wgslsmith_clamp_i32(47548i, 2147483647i << (u_input.d % 32u), ~0i), 42033i | (u_input.c.x & -20861i), -2147483647i ^ u_input.b, _wgslsmith_mod_i32(0i, -34177i)), vec4<i32>(select(u_input.b, u_input.b, false), ~u_input.b, (u_input.b ^ -1i) ^ -60646i, u_input.b), global0[_wgslsmith_index_u32(~2135u, 10u)]));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2035f, 480f, 123f, global1[_wgslsmith_index_u32(u_input.e, 18u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(0u, 18u)], var_0.b.x, 127f, -886f))) + vec4<f32>(1070f, -285f, _wgslsmith_f_op_f32(-580f - -2024f), _wgslsmith_div_f32(322f, 524f)))), u_input.e);
    var var_2 = var_0.d;
    let var_3 = ~u_input.e;
    let var_4 = var_1;
    global1 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(0u, var_4.b)) << (countOneBits(vec2<u32>(_wgslsmith_mod_u32(27046u, var_3), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_4.b, 15065u, var_4.b), vec4<u32>(42125u, u_input.e, 13759u, u_input.d)))) % vec2<u32>(32u)), 1f, var_2.wzw, var_4.a.x, var_4.a.x);
}


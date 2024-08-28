struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(34232u, 0u), vec2<u32>(72330u, 889u), vec2<u32>(18747u, 70065u), vec2<u32>(0u, 1u), vec2<u32>(11859u, 4294967295u), vec2<u32>(4294967295u, 33451u), vec2<u32>(40654u, 1u), vec2<u32>(19979u, 4294967295u), vec2<u32>(53366u, 4294967295u), vec2<u32>(7427u, 0u), vec2<u32>(13764u, 39807u), vec2<u32>(82464u, 35182u), vec2<u32>(80433u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 32674u), vec2<u32>(7417u, 51555u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 65144u), vec2<u32>(0u, 33u), vec2<u32>(21140u, 4294967295u), vec2<u32>(4294967295u, 7775u), vec2<u32>(0u, 0u), vec2<u32>(13708u, 92242u), vec2<u32>(1u, 99869u), vec2<u32>(1u, 50595u), vec2<u32>(4294967295u, 36468u), vec2<u32>(22656u, 42571u));

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    global1 = array<vec2<u32>, 28>();
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(-50380i, _wgslsmith_mod_i32(0i, -1i), -5206i);
    let var_1 = global2[_wgslsmith_index_u32(~(~21262u), 18u)];
    let var_2 = false;
    let var_3 = _wgslsmith_mod_u32(~u_input.c.x, countOneBits(1u << (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), u_input.c.x) % 32u)));
    return 13344u;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = global2[_wgslsmith_index_u32(func_3(select(~(u_input.a ^ u_input.a), abs(u_input.a), (u_input.b <= 46987u) != true) | u_input.a), 18u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - 1308f), _wgslsmith_f_op_f32(-587f + _wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, 328f))), -654f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -2757f, 670f) * vec4<f32>(arg_0, -1034f, -855f, arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -202f, 600f), vec4<f32>(arg_0, arg_0, 578f, -1379f)))))));
    let var_2 = 125351u;
    global1 = array<vec2<u32>, 28>();
    let var_3 = true;
    return firstLeadingBit(vec2<u32>(reverseBits(var_2 & ~var_2), 31426u));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = 0i;
    let var_1 = ~_wgslsmith_mult_vec4_i32(arg_0, select(vec4<i32>(-45607i, arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -8113i, arg_0.x), vec3<i32>(arg_0.x, 2147483647i, arg_0.x)), -1i), arg_0, arg_1.a.x));
    global2 = array<Struct_1, 18>();
    global1 = array<vec2<u32>, 28>();
    let var_2 = 627f;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 2332u, u_input.c.x), vec4<u32>(~49736u, 29963u, 1u, 0u ^ u_input.c.x)), _wgslsmith_dot_vec2_u32(func_2(1000f), global1[_wgslsmith_index_u32(abs(~u_input.d), 28u)]));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    let var_0 = global2[_wgslsmith_index_u32(21721u, 18u)];
    var var_1 = arg_1;
    let var_2 = ~u_input.c;
    return global0[_wgslsmith_index_u32(countOneBits(~1u), 30u)];
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(false | !arg_0, true, true, !(!any(arg_1.a.zx))));
    global1 = array<vec2<u32>, 28>();
    var var_1 = abs(-(u_input.a ^ firstLeadingBit(0i)));
    var var_2 = u_input.a;
    let var_3 = 4294967295u;
    return func_4(func_4(func_4(func_4(func_4(Struct_1(vec4<bool>(true, false, arg_0, true)), global2[_wgslsmith_index_u32(u_input.c.x, 18u)], vec2<i32>(u_input.a, -1i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15402u, var_3), vec3<u32>(arg_2, var_3, u_input.c.x)), 30u)], -vec2<i32>(0i, u_input.a)), Struct_1(select(vec4<bool>(arg_1.a.x, var_0.a.x, true, false), vec4<bool>(true, false, false, true), arg_1.a)), firstTrailingBit(vec2<i32>(u_input.a, 54059i)) | vec2<i32>(u_input.a, u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.c.yzz, u_input.c.wzw), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_3, arg_2), vec3<u32>(0u, u_input.d, u_input.d)))), 30u)], _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), -3956i))), global2[_wgslsmith_index_u32(countOneBits(83054u), 18u)], vec2<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(u_input.a, 24030i)), 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, func_4(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), firstLeadingBit(4294967295u), any(vec4<bool>(true, true, false, false))), _wgslsmith_clamp_u32(~u_input.b, ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), u_input.c.yy)), _wgslsmith_mod_u32(1u, func_1(vec4<i32>(-52991i, u_input.a, 1645i, 2147483647i), Struct_1(vec4<bool>(true, true, true, false)), vec2<i32>(u_input.a, -32519i), true))), 18u)], Struct_1(vec4<bool>(true, any(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, false)))), vec2<i32>(-countOneBits(0i), ~(~u_input.a))), ~16643u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1088f);
    global0 = array<Struct_1, 30>();
    let var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 30u)];
    var var_3 = ~(_wgslsmith_mult_vec3_i32(vec3<i32>(-42352i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -4320i), vec2<i32>(u_input.a, -31638i))), vec3<i32>(u_input.a, u_input.a, _wgslsmith_add_i32(-9577i, u_input.a))) | select(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)) & vec3<i32>(u_input.a, 11007i, 16928i), vec3<i32>(0i, u_input.a, u_input.a << (87376u % 32u)), var_0.a.x != all(vec3<bool>(var_2.a.x, true, true))));
    let var_4 = ~u_input.c;
    let var_5 = var_4.x;
    var var_6 = vec2<u32>(u_input.b, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_div_i32(u_input.a, 17267i) & 0i) | 1i) & (-_wgslsmith_dot_vec2_i32(vec2<i32>(25157i, -2147483647i), var_3.xy) >> (firstTrailingBit(var_4.x) % 32u)));
}


struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(12990u, 4294967295u, 5672u, 10064u), vec4<u32>(1u, 130648u, 200u, 62511u), vec4<u32>(1u, 2649u, 31247u, 1u), vec4<u32>(1u, 0u, 21787u, 8164u), vec4<u32>(4451u, 27950u, 17983u, 7955u), vec4<u32>(0u, 57362u, 0u, 37192u), vec4<u32>(75555u, 23120u, 31163u, 1u), vec4<u32>(7780u, 0u, 1u, 17285u), vec4<u32>(1u, 33325u, 3017u, 4294967295u), vec4<u32>(1u, 0u, 58801u, 81545u), vec4<u32>(0u, 4294967295u, 14965u, 30250u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(1557u, 0u, 68672u, 1u), vec4<u32>(28266u, 4294967295u, 37113u, 33513u), vec4<u32>(1u, 67427u, 46627u, 3327u), vec4<u32>(1u, 8516u, 19703u, 0u), vec4<u32>(1u, 1u, 4294967295u, 62624u), vec4<u32>(26941u, 69964u, 4294967295u, 81733u), vec4<u32>(46273u, 16678u, 23495u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(0u, 13316u, 17375u, 0u), vec4<u32>(0u, 0u, 35266u, 60041u));

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(1u, -464f, 796f);

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = ~global0[_wgslsmith_index_u32(1u, 22u)];
    global0 = array<vec4<u32>, 22>();
    let var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(~max(_wgslsmith_div_u32(var_0.x, max(global2.a, var_0.x)), firstLeadingBit(55574u)), 22u)]);
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(global2.a, var_1.x, var_1.x), select(var_1.wxz | var_1.wwz, vec3<u32>(4294967295u, global2.a, 10571u) & vec3<u32>(0u, 4294967295u, var_0.x), true)), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(var_1.x, 0u, 95138u)), var_0.zxy & select(vec3<u32>(global2.a, var_1.x, var_0.x), var_0.xzx, vec3<bool>(false, false, true)))), vec3<u32>(abs(min(23202u << (0u % 32u), global2.a)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, global2.a, var_1.x), vec4<u32>(var_0.x, global2.a, var_1.x, 4294967295u))), _wgslsmith_add_u32(_wgslsmith_add_u32(~global2.a, ~4294967295u), 1u)));
    var var_3 = vec2<bool>(true, true);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(min(u_input.a.x, u_input.a.x), min(0i, 0i), 2147483647i, firstTrailingBit(u_input.a.x))), min(vec4<i32>(-1i, u_input.a.x, -2147483647i & u_input.a.x, global1.x), vec4<i32>(~2147483647i, global1.x << (global2.a % 32u), -1i, u_input.a.x))) << (global2.a % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_i32(-5543i, 10339i) & _wgslsmith_sub_i32(func_3(), 1i);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(global2.b, 889f), _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.c, arg_2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, -737f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(476f, -1321f) - vec2<f32>(-545f, arg_2.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, -1641f))))))));
    var var_2 = Struct_1(~global2.a, var_1.x, var_1.x);
    var var_3 = !all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), true));
    var var_4 = vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(109f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(f32(-1f) * -864f)) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(410f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.c, 291f))))));
    return arg_0.x;
}

fn func_1() -> i32 {
    let var_0 = select(vec4<bool>(-826f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b + global2.b))), ~(~global2.a) < global2.a, true, (func_2(vec3<u32>(4294967295u, global2.a, 4294967295u), 1i, global3[_wgslsmith_index_u32(global2.a, 9u)]) << ((global2.a >> (global2.a % 32u)) % 32u)) < 14229u), select(vec4<bool>(true, true, false, true), vec4<bool>(_wgslsmith_f_op_f32(-global2.b) <= -1000f, _wgslsmith_f_op_f32(max(global2.c, global2.c)) <= -141f, true, any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true))), !any(vec4<bool>(true, true, true, true)));
    global2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(76682u, _wgslsmith_mult_u32(~(~global2.a), global2.a)), 9u)];
    let var_1 = Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b), global2.c, (global1.x < -2147483647i) == !var_0.x))), global2.b);
    let var_2 = Struct_1(abs(~22934u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(-1641f * global2.c)), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-1889f + var_1.c)), var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(abs(global2.c))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b + -296f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-819f - _wgslsmith_f_op_f32(var_1.b * global2.c))))));
    var var_3 = _wgslsmith_mult_vec4_u32(abs(global0[_wgslsmith_index_u32(48574u, 22u)]), vec4<u32>(countOneBits(select(var_2.a, var_2.a << (9254u % 32u), true)), ~var_1.a, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, var_2.a), var_2.a, _wgslsmith_div_u32(var_1.a, 72u)), 0u));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global2.a, 22u)];
    var var_1 = select(vec3<bool>(false, true, -1i > func_1()), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(false, false, false)))), !vec3<bool>(~var_0.x > countOneBits(4294967295u), true, true));
    let var_2 = global3[_wgslsmith_index_u32(1u, 9u)];
    var var_3 = 1u;
    var var_4 = Struct_1(~select(select(27863u, 4294967295u, var_1.x), global2.a, false) >> (~countOneBits(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 22u)], vec4<u32>(9160u, global2.a, var_0.x, global2.a))) % 32u), 1f, -441f);
    var var_5 = vec3<u32>(0u, ~firstTrailingBit(15939u), firstLeadingBit(94078u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_4.c * 1178f), var_2.c))), min(-2147483647i, func_3()), _wgslsmith_sub_i32(u_input.a.x, -func_1()), 0u, abs(_wgslsmith_mod_u32(~(~0u), var_4.a)));
}


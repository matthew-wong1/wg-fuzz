struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1647f, 541f, -814f, 905f, -434f, 1016f, 1417f, 681f, 541f, -1000f, -241f, 344f, 1206f, 1000f, 270f, 1000f, 617f, -1983f, -1439f, 1000f, -703f, -897f, 746f, 1459f, 1583f, -141f, 321f, -1000f, -428f, -1051f);

var<private> global1: i32 = 3358i;

var<private> global2: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = true;
    global2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13344u, 30u)]), _wgslsmith_f_op_f32(f32(-1f) * -813f), true)), _wgslsmith_f_op_f32(abs(2175f)), -2354f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global2.x, global2.x), vec3<f32>(global2.x, -1624f, -2055f))), vec3<f32>(-795f, global2.x, global2.x), true)))))));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1383f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), global2.x), -1149f));
    global1 = _wgslsmith_dot_vec2_i32(-min(vec2<i32>(-70938i, u_input.a), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-1i, 0i)), vec2<i32>(1i, u_input.a) ^ vec2<i32>(-1i, u_input.a), ~vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(~2147483647i, -(u_input.a ^ 1227i)), min(~vec2<i32>(u_input.a, -15611i), vec2<i32>(u_input.a >> (u_input.b.x % 32u), u_input.a))));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-811f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 30u)])) - global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), global0[_wgslsmith_index_u32(~u_input.b.x, 30u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 77471u), u_input.b), 30u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global2.x) + vec3<f32>(543f, -1867f, -1497f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 728f)))))));
    return reverseBits(_wgslsmith_sub_u32(1u, u_input.b.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> vec3<f32> {
    global1 = u_input.a;
    global0 = array<f32, 30>();
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(func_3(), ~(~(~u_input.b.x))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(~57706u, 6601u, true), ~4294967295u << (0u % 32u)), reverseBits(u_input.b.x)));
    global1 = abs(_wgslsmith_mult_i32(select(2147483647i, u_input.a >> (0u % 32u), any(select(vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, false, true)))), -_wgslsmith_div_i32(min(u_input.a, -20629i), _wgslsmith_dot_vec3_i32(vec3<i32>(55225i, 49735i, 0i), vec3<i32>(-6232i, 1i, -2147483647i)))));
    var_0 = 1u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-308f, -545f, -1231f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global2.x, -714f), arg_1))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1107f, 1220f, 1045f), vec3<f32>(-1000f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1482f, -319f, 1185f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(801f, 271f, global2.x) - vec3<f32>(arg_0.x, 807f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)])))), select(!vec3<bool>(false, arg_1, false), select(vec3<bool>(true, true, true), vec3<bool>(arg_1, true, false), true), !vec3<bool>(arg_1, arg_1, arg_1)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 193f, global0[_wgslsmith_index_u32(19157u, 30u)])))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 269f, arg_0.x) + vec3<f32>(-1748f, 1000f, -467f))) - vec3<f32>(-801f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], arg_0.x)))));
}

fn func_1() -> vec4<bool> {
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(1950f, global0[_wgslsmith_index_u32(4294967295u, 30u)]), true)) + _wgslsmith_f_op_vec3_f32(func_2(global2.zz, false))), vec3<f32>(-497f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)] - -1465f), -886f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(33587u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)])))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, -1000f, -565f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(18440u, 30u)]) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1648f, -2473f, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x * -726f)) * global2.zz)), !any(select(vec2<bool>(true, true), vec2<bool>(false, false), u_input.b.x >= u_input.b.x)))).zz;
    global1 = abs(0i);
    return select(!select(vec4<bool>(true, true, true, any(vec2<bool>(false, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), u_input.b.x == u_input.b.x), vec4<bool>(1u < u_input.b.x, true, true, select(false, true, true))), !(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), global2.x > global0[_wgslsmith_index_u32(9831u, 30u)])) != true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.yz;
    var var_1 = !(true | any(vec4<bool>(true, true, true, any(vec2<bool>(false, false)))));
    var_1 = any(select(select(select(func_1(), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), vec4<bool>(false, (u_input.b.x & 2463u) <= 4294967295u, all(vec3<bool>(false, true, false)) | true, 5937u == ~u_input.b.x), vec4<bool>(true != (1i >= u_input.a), true, true, false)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(global2.xz))))), ~(-1i), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(100490u, u_input.b.x), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_mod_u32(~9716u, _wgslsmith_div_u32(u_input.b.x, ~u_input.b.x)) > _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b.x, 28249u, 53810u)), u_input.b >> (abs(vec3<u32>(94136u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)] - global0[_wgslsmith_index_u32(32193u, 30u)]), _wgslsmith_f_op_f32(select(677f, 316f, true))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0[_wgslsmith_index_u32(0u, 30u)], -812f) + vec3<f32>(global2.x, -1000f, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_div_u32(13592u >> (abs(0u) % 32u), ~u_input.b.x), u_input.b.x), 88828u ^ select(4294967295u, 0u, true));
}


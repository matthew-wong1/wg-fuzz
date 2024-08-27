struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_1(u_input.d == u_input.d, !vec3<bool>(false, all(vec2<bool>(true, false)) | true, true));
    let var_1 = i32(-1i) * -((20307i ^ u_input.d) ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d, u_input.d), i32(-1i) * -54193i));
    var var_2 = _wgslsmith_div_i32(36359i, u_input.d);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -626f)))));
    var var_4 = false;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -418f, _wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(sign(-247f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_f_op_f32(min(137f, 946f)), _wgslsmith_f_op_f32(global0.x + arg_0.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(636f, arg_0.x) * -132f), _wgslsmith_div_f32(-353f, 457f), -316f))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    global2 = array<Struct_1, 28>();
    let var_0 = Struct_1(false | (!all(vec4<bool>(arg_2.a, arg_1.a, arg_2.a, arg_1.a)) || false), !arg_1.b);
    let var_1 = ~reverseBits(0u);
    let var_2 = 1251f;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -825f, global0.x) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-464f, 368f, arg_0) * vec3<f32>(global0.x, -537f, global0.x))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, var_2)))), var_0.b))));
    return _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 18220u, u_input.b, 4294967295u), vec4<u32>(4099u, arg_3, 6717u, arg_3)))), (~max(vec4<u32>(u_input.c, var_1, 1u, var_1), vec4<u32>(u_input.b, var_1, 4294967295u, 55041u)) ^ select(vec4<u32>(30123u, 4294967295u, 14623u, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.b, 0u), !vec4<bool>(false, var_0.b.x, false, arg_2.b.x))) ^ ~((vec4<u32>(24105u, 4294967295u, 0u, 4294967295u) | vec4<u32>(var_1, 17351u, 4294967295u, arg_3)) & (vec4<u32>(arg_3, u_input.c, 4294967295u, 4294967295u) & vec4<u32>(70568u, 87891u, 0u, var_1))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    global1 = array<Struct_1, 6>();
    let var_0 = min(vec4<u32>(u_input.c, _wgslsmith_clamp_u32(func_2(-904f, global1[_wgslsmith_index_u32(u_input.c, 6u)], Struct_1(true, arg_1.b), u_input.b), ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 147587u), vec2<u32>(30251u, 2285u))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 50538u), vec4<u32>(4294967295u, 27815u, 50140u, u_input.c)) % 32u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f - arg_0.x)), global1[_wgslsmith_index_u32(~4294967295u, 6u)], global1[_wgslsmith_index_u32(48031u, 6u)], ~1u), 28104u), vec4<u32>(u_input.c << (~33769u % 32u), 28860u, u_input.b, u_input.a));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1500f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) - global0.x)))));
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    return select(arg_1.b, select(!(!select(vec3<bool>(true, true, arg_1.b.x), vec3<bool>(false, true, true), vec3<bool>(false, arg_1.a, arg_1.b.x))), !select(select(arg_1.b, arg_1.b, arg_1.b.x), arg_1.b, false | arg_1.b.x), !select(select(arg_1.b, arg_1.b, arg_1.b), select(vec3<bool>(false, true, arg_1.a), arg_1.b, true), arg_1.a)), select(!vec3<bool>(true, arg_1.b.x, any(arg_1.b.xx)), select(vec3<bool>(arg_1.b.x & arg_1.b.x, !arg_1.a, true), !select(arg_1.b, vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, false, arg_1.a)), any(arg_1.b)), vec3<bool>(arg_1.b.x, _wgslsmith_f_op_f32(floor(442f)) < _wgslsmith_f_op_f32(var_1 * var_1), !(false || arg_1.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<Struct_1, 6>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-596f)))) + -111f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f * global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1546f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 2113f, arg_0.a)))) + 2028f));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1000f, -1034f) + vec3<f32>(803f, 618f, global0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-645f, 224f, global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) * vec3<f32>(632f, global0.x, -766f))), vec3<f32>(-360f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global1 = array<Struct_1, 6>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 35044u), 6u)];
    return global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, u_input.b) >> (1u % 32u), arg_2.x) & u_input.c, 6u)];
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(174f)), global0.x, -1000f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(134f, 405f, global0.x), vec3<f32>(-1249f, global0.x, -705f)), vec3<f32>(-1074f, -1631f, global0.x)))))));
    global2 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1314f, global0.x))));
    let var_1 = global0.x;
    global1 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2524f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) - _wgslsmith_f_op_f32(-global0.x))))) + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -479f))), arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(false, func_4(Struct_1(false, func_1(_wgslsmith_f_op_vec2_f32(global0.zx * vec2<f32>(1149f, 404f)), global1[_wgslsmith_index_u32(4761u, 6u)])), reverseBits(min(reverseBits(vec3<u32>(u_input.c, 1u, 1u)), countOneBits(vec3<u32>(u_input.c, 61050u, 4294967295u)))), vec4<u32>(reverseBits(4294967295u), 1u, 1u, ~u_input.a)), true, func_4(global1[_wgslsmith_index_u32(~4294967295u, 6u)], _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, 0u, 48099u)), firstTrailingBit(~vec3<u32>(u_input.a, 50277u, 0u))), vec4<u32>(~1u, u_input.a, u_input.c, firstTrailingBit(0u)) & ~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b))));
    global2 = array<Struct_1, 28>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, ~(~min(~4294967295u, _wgslsmith_add_u32(u_input.b, u_input.c)))), 6u)];
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -240f)), -808f, _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(938f, _wgslsmith_f_op_f32(755f * -330f)))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(ceil(-174f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-417f)), 636f, _wgslsmith_f_op_f32(ceil(432f)), 1335f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(156f, var_0, -261f, -545f), vec4<f32>(-243f, global0.x, -1073f, 848f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(1544f)), _wgslsmith_f_op_f32(ceil(-2112f)), var_0, _wgslsmith_f_op_f32(abs(global0.x))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, var_0)), 1000f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))), _wgslsmith_f_op_f32(-var_0));
    global0 = _wgslsmith_f_op_vec3_f32(var_2.yzy * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))), 1360f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1876f)))), _wgslsmith_f_op_f32(-var_2.x)));
    var_2 = vec4<f32>(-717f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global0.x)) - var_3.x), -1349f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 1214f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-234f, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, 163f)) - -1583f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(1000f + global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_div_f32(-1132f, _wgslsmith_f_op_f32(-var_0))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_3.xxw)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(var_2.x, 1053f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.zwx - vec3<f32>(-141f, -414f, var_0)) + _wgslsmith_f_op_vec3_f32(var_3.wyy - var_2.zwy)))));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yyy, abs(reverseBits(~vec4<i32>(26570i, u_input.d, 41254i, -2147483647i) | _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.d, 66552i, u_input.d), vec4<i32>(u_input.d, u_input.d, 40138i, u_input.d)))));
}


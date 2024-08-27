struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1429f, -684f, -539f, -131f);

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(941f, 331f));

var<private> global2: vec3<f32> = vec3<f32>(-691f, 1192f, -1000f);

var<private> global3: array<u32, 19>;

var<private> global4: u32 = 38649u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -167f);
    global4 = _wgslsmith_dot_vec3_u32(u_input.a.zzy, ~vec3<u32>(reverseBits(1u), firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6078u, 19u)], 19u)]), 19u)], 19u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(35077u), ~0u, ~u_input.a.x), 19u)]));
    var var_2 = Struct_1(all(!select(!vec2<bool>(false, var_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, var_0.a), false), true)));
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-551f, _wgslsmith_f_op_f32(f32(-1f) * -440f), global0.x, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, global0.x, var_1, 960f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1162f, -1367f, 1433f, var_1)))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1026f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f), -621f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-962f, var_1), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-3170f, global0.x), vec2<f32>(global0.x, global0.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(!select(false, arg_1.x < -301f, var_0.a));
    global4 = ~(~1u ^ _wgslsmith_add_u32(~64403u, arg_2));
    global3 = array<u32, 19>();
    let var_2 = -firstTrailingBit(select(firstTrailingBit(countOneBits(vec2<i32>(1i, 11503i))), firstTrailingBit(~vec2<i32>(u_input.c, u_input.c)), true | all(vec3<bool>(false, true, var_0.a))));
    return arg_3;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = vec2<u32>(101019u >> (func_4(Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(true), vec3<i32>(u_input.c, u_input.c, 49799i)))), 0u, _wgslsmith_div_u32(u_input.b.x, ~global3[_wgslsmith_index_u32(u_input.a.x, 19u)])) % 32u), max(func_4(Struct_1(arg_0), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(true), -vec3<i32>(1i, u_input.c, u_input.c))), global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 1u), 27901u));
    global4 = max(50578u, u_input.b.x & var_0.x);
    let var_1 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(225f)) - _wgslsmith_f_op_f32(-320f * global0.x)) - 210f)));
    let var_2 = func_4(Struct_1(!any(vec4<bool>(false, arg_0, true, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + global2.zx) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 1187f))), global0.wz))), 70009u, abs(u_input.b.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x)));
    return select(~(~_wgslsmith_mod_u32(~46452u, _wgslsmith_mult_u32(4294967295u, var_0.x))), firstTrailingBit(~var_0.x) & _wgslsmith_div_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(3361u, 19u)], 4294967295u) >> ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)] | 1u) % 32u), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(17091u, global3[_wgslsmith_index_u32(var_0.x, 19u)], var_2), u_input.a.wyz))), arg_0);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = ~vec4<i32>(reverseBits(max(i32(-1i) * -1i, u_input.c)), -abs(u_input.c) | (i32(-1i) * -63773i), u_input.c, 2579i);
    let var_1 = ~vec3<i32>(firstTrailingBit(var_0.x), select(_wgslsmith_div_i32(0i, -2147483647i), u_input.c, arg_0), 2147483647i);
    let var_2 = abs(vec2<u32>(global3[_wgslsmith_index_u32(85697u, 19u)], ~54246u));
    let var_3 = func_2(all(!select(vec4<bool>(false, arg_0, false, arg_0), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), vec4<bool>(false, arg_0, true, true))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-323f, 559f))), _wgslsmith_f_op_f32(ceil(-1333f)), -866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-635f + global2.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 437f, _wgslsmith_div_f32(global0.x, global2.x), _wgslsmith_div_f32(global2.x, -229f)), vec4<f32>(900f, _wgslsmith_f_op_f32(max(-1754f, -657f)), _wgslsmith_f_op_f32(round(global0.x)), 378f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1018f, 225f, global2.x, global0.x)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global2.x, -877f, global0.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.x, global0.x, 1598f))))));
    return Struct_1(arg_0 || arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.a.x;
    let var_0 = func_1(false, min(firstTrailingBit(_wgslsmith_dot_vec2_u32(countOneBits(u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(1u, 19u)]), vec2<u32>(global3[_wgslsmith_index_u32(42595u, 19u)], u_input.a.x)))), ~0u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.xzz);
    var var_2 = func_1(var_0.a, (_wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(var_0.a, var_0.a, true, false)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], u_input.b.x))) & func_2(true)) >> (1u % 32u));
    var var_3 = Struct_1(true | (_wgslsmith_dot_vec3_u32(u_input.a.wxz, vec3<u32>(global3[_wgslsmith_index_u32(0u, 19u)], 0u, u_input.a.x)) != _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 19u)], 4294967295u, u_input.b.x, global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], 19u)], 60180u, 6163u, global3[_wgslsmith_index_u32(4294967295u, 19u)]), u_input.a), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(77072u, global3[_wgslsmith_index_u32(1u, 19u)], 26633u, 46623u)))));
    global4 = ~func_2(false);
    global1 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(1i, u_input.c, u_input.c)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, 1i, 0i), select(vec3<i32>(23344i, -13640i, 1i), vec3<i32>(-2147483647i, 5791i, u_input.c), vec3<bool>(false, var_2.a, var_3.a)))), ~(i32(-1i) * -23723i), max(u_input.c | u_input.c, _wgslsmith_mod_i32(12802i, -1i)) ^ u_input.c), _wgslsmith_f_op_vec2_f32(-var_1.zy), global0.x, global3[_wgslsmith_index_u32(4294967295u, 19u)]);
}


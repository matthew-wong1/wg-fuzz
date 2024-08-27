struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: vec4<f32> = vec4<f32>(305f, -1050f, -665f, 227f);

var<private> global3: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    global1 = true;
    var var_0 = vec2<bool>(!any(select(vec4<bool>(false, false, arg_1, false), select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, arg_1, arg_1, true)), arg_1)), true);
    global2 = vec4<f32>(428f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-208f))))))), -908f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1918f)) + 659f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1637f * global2.x) - _wgslsmith_f_op_f32(abs(508f))))))));
    let var_1 = Struct_1(vec2<u32>(25641u, u_input.c.x), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(~(-1i), _wgslsmith_clamp_i32(24683i, 2147483647i, -2147483647i))), 0i), vec2<f32>(898f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1110f))), -747f)))));
    let var_2 = Struct_2(global2.yzx);
    return _wgslsmith_sub_u32(4294967295u, var_1.a.x);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.a.xx), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.c.zx))), vec2<u32>(u_input.a.x, func_3(Struct_2(vec3<f32>(global3.a.x, 251f, global3.a.x)), false))), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(countOneBits(arg_0) >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, -1i)), -vec4<i32>(0i, arg_0, arg_0, arg_0))), firstTrailingBit(12954i)), global2.xw, global3.a.x);
    var var_1 = Struct_2(global0.a);
    let var_2 = Struct_1(var_0.a, -var_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), global0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.zz * var_0.c) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.a.x, global3.a.x))))), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)))), _wgslsmith_f_op_f32(abs(var_0.c.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yy)) + vec2<f32>(_wgslsmith_f_op_f32(-293f - 1f), -151f)));
    var var_4 = ~abs(~(~vec4<u32>(var_2.a.x, 8323u, var_2.a.x, var_0.a.x)));
    return var_0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 68915u, 0u), _wgslsmith_sub_vec3_u32(u_input.c.zwx, vec3<u32>(0u, 39969u, 31267u))), vec3<u32>(~u_input.c.x, 90194u, arg_1.a.x & 1u));
    global1 = all(vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))) | all(vec3<bool>(true, true, true)), true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)) || all(vec3<bool>(false, false, true)), false));
    var var_1 = arg_1;
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = func_4(~func_2(_wgslsmith_add_i32(1i, max(-2147483647i, 21196i))), Struct_1(vec2<u32>(~(~u_input.c.x), u_input.b.x), firstLeadingBit(_wgslsmith_sub_i32(-19344i, select(-1i, 1i, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -773f) - vec2<f32>(1467f, arg_0.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.a.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1398f, 1328f, global2.x, -2048f), vec4<f32>(307f, global0.a.x, arg_0.a.x, -1033f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, -409f, -268f, global0.a.x) - vec4<f32>(-332f, var_0.d, 205f, var_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global0.a.x, global0.a.x, -487f) * vec4<f32>(arg_0.a.x, global3.a.x, -439f, -1537f))))))));
    let var_1 = vec2<bool>(false, true);
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(~max(vec3<i32>(-9155i, 68088i, var_0.b), vec3<i32>(-8761i, -4922i, var_0.b))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, var_0.b, 1i), ~vec3<i32>(-4367i, var_0.b, -2147483647i), ~vec3<i32>(2147483647i, var_0.b, var_0.b)))), vec3<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, -2147483647i, var_0.b)), ~(vec3<i32>(1i, 2660i, -5616i) | vec3<i32>(var_0.b, var_0.b, -2147483647i))), -func_2(~(-19289i)), ~reverseBits(var_0.b) & (2147483647i << (u_input.c.x % 32u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 629f, 1866f, global0.a.x) + vec4<f32>(-461f, -1000f, arg_0.a.x, -512f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, global2.x, -1605f, var_0.c.x) * vec4<f32>(var_0.c.x, global3.a.x, 742f, var_3.a.x)), vec4<f32>(470f, var_0.d, 754f, global3.a.x), true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(925f, _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -953f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-824f, 3136f, 1000f, 862f), vec4<f32>(global0.a.x, -204f, 118f, arg_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~0u);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, 226f, global2.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1143f, global3.a.x, 490f) * _wgslsmith_f_op_vec4_f32(func_1(Struct_2(global2.wxy))))))) + vec4<f32>(-824f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(func_4(9742i, Struct_1(vec2<u32>(var_0, 31465u), -1228i, global0.a.xz, -1751f)).d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(469f, -655f)) - global3.a.x)), _wgslsmith_f_op_f32(344f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2.x, global0.a.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - 458f))))));
    var var_1 = vec4<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-8498i, 59906i, -12702i), -vec3<i32>(0i, 1i, -36722i)), _wgslsmith_add_i32(5589i, reverseBits(16003i))) & 2147483647i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, _wgslsmith_div_i32(-7650i, -2147483647i))), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-961i, 37237i), -vec2<i32>(-37196i, 4775i)))), -35855i, -abs(2147483647i));
    let var_2 = ~4294967295u != countOneBits(_wgslsmith_clamp_u32(1u >> (~u_input.a.x % 32u), ~min(58676u, 1u), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xzz);
}


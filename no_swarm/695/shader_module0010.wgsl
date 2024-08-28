struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(1i, i32(-2147483648), -1i, -68859i, 8964i, -56859i, i32(-2147483648), -5788i, -35973i, 0i, -1i, 24063i, 0i, 1i, 2147483647i);

var<private> global1: array<Struct_3, 4>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(abs(~6796u), 15u)];
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(abs(279f))), 1i, _wgslsmith_add_vec3_i32(min(vec3<i32>(0i, global0[_wgslsmith_index_u32(8553u, 15u)], 0i), vec3<i32>(2147483647i, 72630i, global0[_wgslsmith_index_u32(u_input.a, 15u)])), -vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 15u)], 0i)), u_input.a, max(-vec4<i32>(global0[_wgslsmith_index_u32(13521u, 15u)], 24875i, -56222i, global0[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], -35478i), vec4<i32>(-42818i, 30665i, 12869i, global0[_wgslsmith_index_u32(u_input.b, 15u)])))), select(firstTrailingBit(-15190i), _wgslsmith_mod_i32(~(-1i), 1i), _wgslsmith_f_op_f32(max(507f, arg_0.x)) < _wgslsmith_f_op_f32(f32(-1f) * -349f)), select(~vec2<u32>(42397u, 0u), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u))), vec2<bool>(any(vec2<bool>(true, true)), true))), 1000f, select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true)), all(vec3<bool>(true, true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(-18488i, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)]), vec3<i32>(1i, -2147483647i, 2147483647i)) < _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], 0i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)]))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), true | all(vec4<bool>(false, true, true, true)));
    global0 = array<i32, 15>();
    var var_2 = _wgslsmith_clamp_vec4_i32(var_1.a.a.e, var_1.a.a.e, _wgslsmith_sub_vec4_i32(reverseBits(~max(var_1.a.a.e, var_1.a.a.e)), max(var_1.a.a.e, firstLeadingBit(var_1.a.a.e >> (vec4<u32>(0u, 1u, u_input.b, 26187u) % vec4<u32>(32u))))));
    var_2 = max(select(select(var_1.a.a.e, vec4<i32>(var_2.x >> (4294967295u % 32u), var_2.x, ~1i, reverseBits(0i)), true), var_1.a.a.e << (vec4<u32>(~u_input.b, 76311u, _wgslsmith_mod_u32(u_input.a, var_1.a.c.x), abs(var_1.a.a.d)) % vec4<u32>(32u)), vec4<bool>(!(var_1.d & false), select(any(var_1.c.zxw), var_1.d, var_1.c.x), !(var_1.d & var_1.d), var_1.a.a.d > ~u_input.b)), vec4<i32>(abs(~(-27704i)), _wgslsmith_dot_vec3_i32(~var_2.zwx, var_1.a.a.e.yzy), global0[_wgslsmith_index_u32(abs(var_1.a.c.x >> (var_1.a.c.x % 32u)), 15u)], -1i) >> (~(~vec4<u32>(0u, var_1.a.a.d, 1u, var_1.a.c.x)) % vec4<u32>(32u)));
    return var_1.a.a.e;
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(arg_0.x, ~(-(global0[_wgslsmith_index_u32(u_input.a, 15u)] & global0[_wgslsmith_index_u32(4294967295u, 15u)])), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], -1i), abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], -35984i, global0[_wgslsmith_index_u32(9537u, 15u)])))), _wgslsmith_mult_u32(u_input.a, abs(1u)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-44995i, -57155i, 1i, global0[_wgslsmith_index_u32(u_input.a, 15u)])), ~vec4<i32>(2147483647i, -1i, 41188i, global0[_wgslsmith_index_u32(u_input.b, 15u)])) | ~func_3(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x))), global0[_wgslsmith_index_u32(u_input.a, 15u)], vec2<u32>(min(5323u, u_input.a), ~_wgslsmith_sub_u32(~u_input.b, 0u & u_input.b)));
    global0 = array<i32, 15>();
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    let var_1 = ~vec2<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.b), var_0.a.d), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(var_0.a.d, 0u, 1u))));
    return _wgslsmith_f_op_vec2_f32(-arg_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1178f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -608f)))), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a) | ~u_input.b, 15u)] >> (u_input.a % 32u), _wgslsmith_add_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(34227u, 15u)], -34157i, arg_1.x)), vec3<i32>(62169i, abs(-543i), arg_1.x)), 5171u, -reverseBits(~vec4<i32>(-13246i, global0[_wgslsmith_index_u32(u_input.a, 15u)], -1i, 8921i))), -arg_1.x, ~(~(vec2<u32>(u_input.b, 23166u) ^ vec2<u32>(35470u, u_input.b)) ^ select(~vec2<u32>(23334u, u_input.a), vec2<u32>(u_input.a, u_input.b) & vec2<u32>(19091u, u_input.a), !vec2<bool>(false, arg_0.x))));
    var var_1 = !(_wgslsmith_div_u32(1u, 1u) <= _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(var_0.c.x, _wgslsmith_mult_u32(var_0.a.d, var_0.a.d)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), var_0.c))));
    let var_2 = false;
    var_1 = var_2;
    global0 = array<i32, 15>();
    return Struct_2(Struct_1(-652f, 61437i, vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -33861i, abs(global0[_wgslsmith_index_u32(72960u, 15u)])), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(52163u, var_0.a.d), 15u)], _wgslsmith_dot_vec2_i32(arg_1, abs(vec2<i32>(var_0.a.c.x, global0[_wgslsmith_index_u32(427u, 15u)])))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(29315u, var_0.a.d & 54555u), ~1u, u_input.b), var_0.a.e), arg_1.x, vec2<u32>(var_0.a.d, u_input.a));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    global1 = array<Struct_3, 4>();
    var var_0 = vec2<f32>(func_4(vec3<bool>(true, false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), vec2<i32>(arg_0.b, 73932i) ^ -(~vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1919f + arg_0.a.a), _wgslsmith_div_f32(arg_0.a.a, arg_0.a.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, 334f)) + vec2<f32>(474f, arg_0.a.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f))))).a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, 900f)))))));
    global0 = array<i32, 15>();
    var var_1 = _wgslsmith_add_vec3_i32(~arg_0.a.e.zxz, -(_wgslsmith_mult_vec3_i32(func_4(vec3<bool>(false, true, true), vec2<i32>(0i, 33036i), vec2<f32>(-848f, -2213f), var_0.x).a.e.xxw, reverseBits(arg_0.a.c)) ^ max(~vec3<i32>(0i, arg_1, arg_0.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(-3198i, arg_1, arg_0.a.e.x), vec3<i32>(arg_0.a.b, -1i, 1i), vec3<i32>(arg_0.b, 1i, 15781i)))));
    var var_2 = 34101u;
    return Struct_4(Struct_2(Struct_1(arg_0.a.a, 0i, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.b, global0[_wgslsmith_index_u32(31806u, 15u)], 34284i) ^ vec3<i32>(global0[_wgslsmith_index_u32(arg_0.c.x, 15u)], -1i, arg_0.a.e.x), reverseBits(vec3<i32>(-12323i, arg_0.a.e.x, var_1.x))), arg_0.a.d, vec4<i32>(select(18258i, -15854i, false), _wgslsmith_div_i32(-17165i, -1i), -1i, ~arg_1)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(1i, -16896i)), global0[_wgslsmith_index_u32(u_input.a, 15u)], reverseBits(arg_1)), _wgslsmith_mod_vec3_i32(~vec3<i32>(60153i, var_1.x, 0i), arg_0.a.c >> (vec3<u32>(65681u, 52737u, 69882u) % vec3<u32>(32u)))), _wgslsmith_div_vec2_u32(vec2<u32>(55892u & arg_0.a.d, 4085u), ~vec2<u32>(0u, arg_0.a.d) | ~vec2<u32>(u_input.b, 17080u))), var_0.x, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false)))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), vec2<bool>(!select(all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, false, true)), false), true), true);
    let var_1 = all(vec3<bool>(all(vec3<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(var_0.x, true, var_0.x)), true)), all(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, true), var_0.x)) != (var_0.x && var_0.x), all(select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), false))));
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    let var_2 = func_5(func_4(vec3<bool>(var_1, true, true), ~reverseBits(vec2<i32>(arg_2.e.x, arg_2.e.x)) ^ vec2<i32>(arg_0.e.b | 9426i, 1i >> (0u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(-1000f, arg_3.x))))), -1301f), _wgslsmith_mult_i32(~(~countOneBits(0i)), -_wgslsmith_clamp_i32(1i, -2147483647i, -2147483647i)));
    return reverseBits(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.a.c.x, 1u) >> (~13425u % 32u), countOneBits(~arg_0.a)), firstTrailingBit(1u), _wgslsmith_mult_u32(~4294967295u, ~arg_2.d)));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = array<i32, 15>();
    global1 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(191f, 836f)), 1119f, _wgslsmith_f_op_f32(f32(-1f) * -848f))))));
    global0 = array<i32, 15>();
    let var_1 = Struct_3(~0u, countOneBits(vec4<u32>(arg_2.x, arg_2.x, ~arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 1492u, u_input.b), arg_2))), u_input.a, Struct_1(arg_1.x, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(7155u, 15u)], -16205i), _wgslsmith_mult_vec2_i32(vec2<i32>(5911i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(arg_2.x, 15u)], global0[_wgslsmith_index_u32(47801u, 15u)])))), abs(min(_wgslsmith_mod_vec3_i32(vec3<i32>(-4586i, -28591i, global0[_wgslsmith_index_u32(u_input.b, 15u)]), vec3<i32>(-2414i, global0[_wgslsmith_index_u32(arg_2.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), vec3<i32>(-1i, -2147483647i, 2147483647i))), u_input.a, vec4<i32>(0i, 0i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(55857u, u_input.a, arg_2.x)), 15u)], ~(-global0[_wgslsmith_index_u32(arg_2.x, 15u)]))), func_4(arg_0, vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b & u_input.b, 61147u), 15u)], _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -31491i, -2147483647i), vec3<i32>(-25587i, 39653i, 2147483647i)) >> (57510u % 32u)), arg_1.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))).a);
    return ~(vec2<u32>(var_1.a, ~(~var_1.d.d)) ^ var_1.b.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1129f))), (_wgslsmith_div_i32(global0[_wgslsmith_index_u32(43936u, 15u)] & -52924i, global0[_wgslsmith_index_u32(abs(u_input.a), 15u)]) & _wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], -52766i, global0[_wgslsmith_index_u32(1u, 15u)], -2666i), vec4<i32>(global0[_wgslsmith_index_u32(13420u, 15u)], -2147483647i, 25195i, -2147483647i) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], 1i, 44509i, -19197i))) & 5091i, abs((select(vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(16010u, 15u)], 0i), vec3<i32>(-15663i, 46918i, 26936i), vec3<bool>(false, false, false)) | firstTrailingBit(vec3<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 15u)], 10972i))) | -(~vec3<i32>(global0[_wgslsmith_index_u32(36239u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], 2147483647i))), u_input.a, _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(~u_input.a, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], abs(global0[_wgslsmith_index_u32(68378u, 15u)]), -global0[_wgslsmith_index_u32(u_input.a, 15u)]), abs((vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], -2147483647i) << (vec4<u32>(0u, u_input.b, 1u, u_input.a) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], -1i, -1584i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(34748i, global0[_wgslsmith_index_u32(u_input.a, 15u)], -2147483647i, 6204i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 0i)) ^ abs(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], -8703i, global0[_wgslsmith_index_u32(u_input.b, 15u)]))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)))), -2771i, var_0.e.yzx, _wgslsmith_div_u32(var_0.d ^ 0u, 0u), var_0.e), 22988i, func_6(vec3<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, var_0.a, -878f, var_0.a))), func_1(Struct_3(0u, vec4<u32>(4294967295u, u_input.a, var_0.d, var_0.d), u_input.a, var_0, var_0), u_input.a, Struct_1(-1000f, -2147483647i, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 2147483647i, 2147483647i), var_0.d, var_0.e), vec3<f32>(-1083f, var_0.a, var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)), func_5(Struct_2(var_0, 54919i, vec2<u32>(1u, var_0.d)), -16706i).c.x & true))), func_5(Struct_2(Struct_1(_wgslsmith_div_f32(-482f, 142f), _wgslsmith_dot_vec2_i32(vec2<i32>(17542i, global0[_wgslsmith_index_u32(u_input.b, 15u)]), var_0.e.zw), vec3<i32>(global0[_wgslsmith_index_u32(var_0.d, 15u)], 27846i, 1i), abs(var_0.d), reverseBits(var_0.e)), -(~0i), ~(~vec2<u32>(var_0.d, u_input.b))), -1i).c, true);
    var var_2 = var_0;
    let var_3 = firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(0u), 1u, ~0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.d, 1u, var_0.d), abs(vec3<u32>(var_2.d, 37336u, var_1.a.c.x))), vec3<u32>(var_2.d >> (45358u % 32u), reverseBits(27262u), ~u_input.b)));
    global1 = array<Struct_3, 4>();
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(469f, var_2.a)))), var_0.a)), var_1.a.a.a, _wgslsmith_f_op_f32(var_0.a + 1000f));
    var var_5 = _wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    var var_6 = func_4(select(var_1.c.zxz, func_5(Struct_2(func_4(var_1.c.wzw, vec2<i32>(var_1.a.a.e.x, var_0.c.x), vec2<f32>(var_2.a, var_2.a), -1402f).a, ~(-52576i), var_1.a.c), global0[_wgslsmith_index_u32(1u, 15u)]).c.zww, !select(!var_1.c.zyz, var_1.c.zxw, true || var_1.c.x)), vec2<i32>(-(~(~var_1.a.b)), 0i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(506f))), _wgslsmith_div_f32(-705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(678f - var_2.a) * var_1.a.a.a))), -992f).a;
    var var_7 = !var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(1u ^ var_3.x, 0u, -661f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.a))));
}


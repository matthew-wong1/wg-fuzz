struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1031f))), 1f, _wgslsmith_f_op_f32(923f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1386f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, 1133f, 2190f, -269f) + vec4<f32>(-722f, -704f, -288f, -494f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-821f, -1000f, -765f, -1454f)))))))));
    var var_2 = arg_2;
    var var_3 = global2.yx;
    var var_4 = select(vec3<bool>(!var_2.a, all(vec3<bool>(true, any(vec2<bool>(var_0.a, global0.a)), false)), any(!select(vec2<bool>(var_0.a, global0.a), vec2<bool>(false, false), var_2.a))), vec3<bool>((_wgslsmith_f_op_f32(-var_1.x) < -2355f) | select(all(vec2<bool>(false, false)), !var_0.a, arg_2.a), true, any(!select(vec4<bool>(false, global0.a, false, false), vec4<bool>(var_2.a, var_0.a, false, arg_2.a), false))), var_1.x >= -236f);
    return vec3<i32>(global1.x, var_3.x, arg_2.b.x);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(true | (u_input.e.x <= 1u), countOneBits(global0.b));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(127f + 968f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-432f * -1000f), -1983f))), _wgslsmith_f_op_f32(-222f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-215f + -1000f)))), _wgslsmith_f_op_f32(round(-1298f))));
    global2 = _wgslsmith_sub_vec3_i32(func_3(~(~max(u_input.e.x, 31924u)), vec4<i32>(-1i, -41085i, i32(-1i) * -17319i, global0.b.x), Struct_1(global0.a, firstTrailingBit(global0.b & global0.b))), global0.b.xyx);
    let var_1 = -502f;
    let var_2 = vec4<bool>(false, global0.a, global0.a, !(~u_input.a > u_input.c.x));
    return Struct_1(all(vec3<bool>(true, global0.a, !(var_2.x && false))), global0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_clamp_vec2_i32(select(func_2().b.wz, ~_wgslsmith_div_vec2_i32(func_3(1u, arg_1.b, Struct_1(arg_3.a, vec4<i32>(global0.b.x, global0.b.x, -2147483647i, global0.b.x))).xz, vec2<i32>(global2.x, arg_3.b.x)), true), vec2<i32>(44339i, max(reverseBits(min(34618i, global1.x)), 0i)), _wgslsmith_mod_vec2_i32(u_input.b, global0.b.xy));
    global1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~arg_1.b.ywx, vec3<i32>(global2.x, 6578i, arg_1.b.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.b.x, arg_3.b.x, u_input.b.x), global0.b.xzx)), -2147483647i);
    var var_0 = arg_3.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, -707f));
    global0 = arg_1;
    return Struct_1(select(any(!select(vec4<bool>(false, global0.a, arg_3.a, global0.a), vec4<bool>(true, true, false, arg_3.a), arg_3.a)), -1i <= min(-arg_1.b.x, abs(1i)), arg_1.a), vec4<i32>(~firstLeadingBit(-2147483647i), firstLeadingBit(global0.b.x), arg_1.b.x, -(~1i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> bool {
    global0 = func_4(u_input.a, Struct_1(global0.a, vec4<i32>(global0.b.x, -2147483647i, -1i, _wgslsmith_clamp_i32(u_input.b.x, -global1.x, abs(-4496i)))), _wgslsmith_f_op_f32(round(1f)), func_2());
    let var_0 = any(vec2<bool>(any(vec4<bool>(true, global0.a, true, func_2().a)), (_wgslsmith_sub_i32(global0.b.x, 1i) >> (1u % 32u)) < global1.x));
    let var_1 = func_4(_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1), min(~arg_1, vec2<u32>(u_input.c.x, arg_1.x)) ^ ~(~vec2<u32>(1u, u_input.d))), func_4(1u, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f))), func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) - _wgslsmith_f_op_f32(-1000f + 1675f)), _wgslsmith_f_op_f32(ceil(-1036f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2372f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1328f), _wgslsmith_f_op_f32(ceil(-439f)))))), Struct_1(false, vec4<i32>(-34263i, _wgslsmith_add_i32(select(global2.x, global0.b.x, var_0), 14280i), ~(-2147483647i), u_input.b.x)));
    global0 = var_1;
    global0 = Struct_1(true, func_2().b);
    return all(vec3<bool>(!all(!vec4<bool>(var_1.a, global0.a, true, true)), !any(vec3<bool>(false, false, false)), all(select(!vec3<bool>(false, false, var_0), select(vec3<bool>(true, global0.a, false), vec3<bool>(false, true, var_0), vec3<bool>(var_1.a, false, var_0)), select(vec3<bool>(true, false, var_1.a), vec3<bool>(false, var_0, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.ywy;
    var var_0 = _wgslsmith_mult_u32(u_input.e.x, u_input.d);
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global2.zx, vec2<i32>(~(global1.x >> (14526u % 32u)), 2147483647i)), global2.yx);
    var var_2 = !select(vec2<bool>(false, 1u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.e.x, 21099u), vec3<u32>(72756u, u_input.e.x, 29341u))), select(vec2<bool>(global0.a && global0.a, true), vec2<bool>(!global0.a, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, false), vec2<bool>(false, global0.a))), vec2<bool>(false, all(select(vec4<bool>(true, true, true, global0.a), vec4<bool>(global0.a, false, false, true), false))));
    let var_3 = abs(-26665i) ^ -select(-1i, u_input.b.x, global0.a);
    var var_4 = select(select(select(vec4<bool>(true, any(vec4<bool>(global0.a, global0.a, false, var_2.x)), !global0.a, func_1(global0.b, u_input.e.yx)), select(select(vec4<bool>(global0.a, false, global0.a, false), vec4<bool>(true, global0.a, true, false), global0.a), !vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(false, true, global0.a, var_2.x), vec4<bool>(false, global0.a, global0.a, var_2.x), vec4<bool>(var_2.x, false, false, true))), true), !select(vec4<bool>(var_2.x, global0.a, global0.a, var_2.x), vec4<bool>(false, true, var_2.x, false), false), select(true, global0.a, var_2.x)), vec4<bool>(true, true, true, true), vec4<bool>(func_2().a, var_2.x, true, any(!vec4<bool>(global0.a, var_2.x, global0.a, global0.a))));
    let var_5 = func_4(0u & _wgslsmith_add_u32(27962u, _wgslsmith_sub_u32(4294967295u, u_input.a)), Struct_1(!global0.a, vec4<i32>(_wgslsmith_sub_i32(~(-4079i), _wgslsmith_mult_i32(0i, 24075i)), var_3, global1.x, ~(-global2.x))), 457f, Struct_1(all(select(select(vec4<bool>(false, var_4.x, false, true), vec4<bool>(true, var_2.x, false, true), vec4<bool>(false, var_4.x, global0.a, false)), select(vec4<bool>(false, global0.a, global0.a, var_2.x), vec4<bool>(false, var_4.x, var_2.x, true), var_4.x), !vec4<bool>(false, true, global0.a, true))), global0.b));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1139f * 419f), -283f, _wgslsmith_f_op_f32(-389f * -342f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(325f, -968f, 1000f) * vec3<f32>(-1280f, -1376f, -959f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1630f, 170f, 1406f) + vec3<f32>(1179f, 1000f, -157f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-414f, 1000f) + _wgslsmith_div_f32(-1337f, 1208f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-748f)))), 1473f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-690f, 926f, 1536f), vec3<f32>(544f, -417f, -1364f)))))), vec4<u32>(~(~(~u_input.e.x)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.e.x, 41963u, u_input.d, u_input.a), ~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x), !var_6.a), ~u_input.e), u_input.a, 46977u), u_input.d & (4294967295u >> ((max(u_input.c.x, u_input.d) ^ u_input.d) % 32u)), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.a, u_input.d, u_input.d)), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.e.x, u_input.d), u_input.e.wyx), reverseBits(46530u), 0u)));
}


struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_4 = Struct_4(-2357f, vec4<i32>(i32(-2147483648), 1i, 0i, -1i), 42936u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global0 = Struct_4(-256f, ~vec4<i32>(max(global0.b.x, global0.b.x), ~30487i, abs(global0.b.x), firstLeadingBit(~u_input.a)), global0.c);
    let var_0 = ~60543u;
    global0 = Struct_4(global0.a, -vec4<i32>(reverseBits(global0.b.x << (var_0 % 32u)), global0.b.x, u_input.a, ~(global0.b.x & global0.b.x)), ~firstTrailingBit(_wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(35299u, var_0, var_0), vec3<u32>(global0.c, global0.c, 7072u)), countOneBits(8057u))));
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f + global0.a)), global0.b, global0.c);
    let var_1 = global0.b;
    return _wgslsmith_clamp_u32(~firstTrailingBit(~global0.c) & 22740u, 0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global0.c >> (27615u % 32u)), 28394u) ^ abs(abs(min(global0.c, var_0))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = !(all(vec2<bool>(true, true)) & !(firstLeadingBit(global0.c) < func_3(true, vec2<bool>(false, true), false)));
    var var_1 = Struct_3(vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-364f))), _wgslsmith_f_op_f32(1406f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - -1000f), global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(-global0.a)))));
    let var_2 = vec3<bool>(!(!(var_0 && true)), (func_3(true, select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), var_0), true) <= _wgslsmith_clamp_u32(global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 0u), vec2<u32>(11265u, global0.c)), func_3(false, vec2<bool>(false, false), var_0))) && var_0, firstLeadingBit(2147483647i) >= firstTrailingBit(~_wgslsmith_clamp_i32(u_input.a, 21076i, global0.b.x)));
    let var_3 = !select(select(select(!vec4<bool>(var_0, var_2.x, var_2.x, true), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_2.x, true, false, var_0), vec4<bool>(var_2.x, var_0, var_0, var_0)), select(vec4<bool>(false, true, var_0, true), vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(true, false, true, true))), !select(vec4<bool>(var_0, false, false, var_2.x), vec4<bool>(var_2.x, false, true, false), var_2.x), !(!vec4<bool>(var_2.x, true, true, false))), vec4<bool>(!var_0, true, -884f <= var_1.a.x, false), select(select(vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, false, var_2.x, false), !vec4<bool>(var_2.x, false, var_0, var_0)), !vec4<bool>(true, false, var_0, true), true && (var_1.a.x > -1821f)));
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(global0.a, -2073f))), -470f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zw)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(636f, global0.a) - vec2<f32>(global0.a, 972f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.a.zz, vec2<f32>(var_1.a.x, var_1.a.x)))))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.a)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, 176f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1570f) * var_1.a.x), arg_0)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = all(vec4<bool>(arg_1.c.b.x, true, true, arg_1.a.b.x));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -183f)));
    let var_2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -157f));
    let var_3 = arg_1;
    let var_4 = ~(~(firstTrailingBit(1u) ^ arg_1.a.a.x)) > _wgslsmith_mod_u32(~(~min(112297u, 1u)), 57747u);
    return ~(~_wgslsmith_sub_u32(~func_3(false, var_3.a.b.wy, false), select(11456u, var_3.a.a.x, true) | firstLeadingBit(4294967295u)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global0 = Struct_4(_wgslsmith_f_op_f32(-global0.a), vec4<i32>(-(~2147483647i), -14208i, u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(-13653i, -64068i), -1i)), ~global0.c);
    let var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec4_u32(~select(vec4<u32>(arg_2.a.a.x, global0.c, global0.c, 53953u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 92703u, 100161u, 35644u), vec4<u32>(71989u, 73154u, 0u, 1u)), vec4<bool>(true, true, true, true)) << (vec4<u32>(55029u, 33688u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, arg_2.b, 131149u), vec3<u32>(0u, 0u, 1u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(668u, arg_0, 0u)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(10740u, global0.c, 38531u, global0.c), vec4<u32>(arg_3.a.a.x, 36519u, global0.c, arg_2.c.c)) >> (1u % 32u)) % vec4<u32>(32u)), vec4<u32>(1u, abs(~(~13830u)), 4590u, arg_2.a.a.x));
    return vec2<u32>(countOneBits(4294967295u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_4(~func_1(vec2<f32>(-977f, 958f), Struct_2(Struct_1(vec2<u32>(global0.c, global0.c), vec4<bool>(true, false, false, true), global0.c), 54431u, Struct_1(vec2<u32>(4294967295u, global0.c), vec4<bool>(false, true, true, false), global0.c), vec4<f32>(-834f, 736f, global0.a, global0.a)), global0.a), func_2(1210f), Struct_2(Struct_1(vec2<u32>(global0.c, global0.c), vec4<bool>(false, true, true, false), 2322u), 0u, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, false, true, false), 85117u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, global0.a, 193f, global0.a))), Struct_2(Struct_1(vec2<u32>(18789u, 22860u), vec4<bool>(false, true, false, false), 0u), ~21583u, Struct_1(vec2<u32>(global0.c, 4294967295u), vec4<bool>(true, false, false, true), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -271f, 1076f)))), !select(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), all(vec3<bool>(false, true, false)) | true), _wgslsmith_sub_u32(~_wgslsmith_div_u32(max(1u, 23759u), 4294967295u), global0.c));
    var var_1 = 1i;
    var var_2 = _wgslsmith_sub_u32(max(46852u, 4294967295u), min(abs(_wgslsmith_sub_u32(firstLeadingBit(var_0.c), ~var_0.a.x)), firstLeadingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(var_0.b.x, vec2<bool>(var_0.b.x, false), false), global0.c);
}


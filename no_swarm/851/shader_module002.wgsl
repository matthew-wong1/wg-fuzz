struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_f32(-1395f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -888f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) * _wgslsmith_f_op_f32(select(147f, 235f, true))) - 1707f)));
    var var_1 = Struct_1(vec4<u32>(reverseBits((u_input.a.x << (18167u % 32u)) & _wgslsmith_add_u32(u_input.c, 1u)), _wgslsmith_mult_u32(0u, 49732u), 0u, abs(4294967295u)), -1249f, vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.a.x), u_input.c, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(1u, 710u)) ^ 8176u) << (vec3<u32>(_wgslsmith_mod_u32(countOneBits(u_input.a.x), ~u_input.a.x), ~_wgslsmith_div_u32(u_input.c, 0u), 10868u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -909f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1311f))))), 1115f);
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    global0 = array<vec3<f32>, 29>();
    let var_0 = Struct_1(vec4<u32>(reverseBits(63021u), 0u, arg_1.a.x, ~u_input.a.x), arg_1.b, abs(vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(8585u, arg_0.c.x, 16387u)), firstTrailingBit(_wgslsmith_sub_u32(4294967295u, arg_0.a.x)), u_input.b)), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - arg_1.e)), arg_3)));
    let var_1 = !vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true && any(vec3<bool>(true, true, true)));
    var var_2 = u_input.d.x;
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.d.x, -1i, -1i)) << (vec4<u32>(1u, 48812u, 0u, u_input.c) % vec4<u32>(32u)), abs(-vec4<i32>(-1i, -53909i, -20449i, u_input.d.x))), select(countOneBits(u_input.d.x | u_input.d.x), firstLeadingBit(-2147483647i) | u_input.d.x, var_1.x)), _wgslsmith_clamp_vec3_i32(max(firstLeadingBit(vec3<i32>(10101i, -60568i, u_input.d.x)), -vec3<i32>(-1i, u_input.d.x, u_input.d.x)), select(countOneBits(vec3<i32>(0i, u_input.d.x, -2147483647i)), -vec3<i32>(-44255i, u_input.d.x, u_input.d.x), false), abs(vec3<i32>(u_input.d.x, -1i, 1i) & vec3<i32>(0i, u_input.d.x, 0i))) << ((arg_0.c | (u_input.a & arg_1.a.wzy)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_2() -> u32 {
    let var_0 = 28342u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec4<u32>(_wgslsmith_clamp_u32(var_0, var_0, 72161u), u_input.b, u_input.c << (u_input.c % 32u), var_0 | 48681u), 1f, u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1017f, -187f) * vec2<f32>(1170f, -101f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), 118f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(u_input.a ^ vec3<u32>(36077u, 0u, u_input.b)), vec3<u32>(0u, _wgslsmith_clamp_u32(1247u, var_0, u_input.a.x), firstTrailingBit(1u))), 30u)], ~var_0 & var_0, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-267f)))))))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -963f)));
    let var_3 = any(select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), u_input.d.x >= -(i32(-1i) * -2147483647i)));
    let var_4 = global1[_wgslsmith_index_u32(~(~u_input.b), 30u)];
    return var_4.a.x;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = func_2();
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_1 = abs(31549u >> (reverseBits(u_input.a.x >> (var_0 % 32u)) % 32u)) & _wgslsmith_mod_u32(countOneBits(var_0), select(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, 1236u, var_0)), ~var_0 << (0u % 32u), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(f32(-1f) * -357f), 579f, _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_1, var_0, 11511u), vec4<u32>(1u, 4294967295u, u_input.b, var_0)), _wgslsmith_f_op_f32(-1211f - 2994f), ~vec3<u32>(var_1, u_input.c, 14474u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-692f, -1000f), vec2<f32>(759f, 1442f))), _wgslsmith_f_op_f32(select(1054f, -803f, true))), Struct_1(~vec4<u32>(4294967295u, var_0, 13970u, 1u), _wgslsmith_f_op_f32(600f * -440f), select(vec3<u32>(u_input.b, u_input.c, 1u), vec3<u32>(18228u, 1u, 0u), vec3<bool>(false, false, true)), vec2<f32>(600f, -1000f), _wgslsmith_f_op_f32(trunc(462f))), ~(~0u), 364f))));
    return _wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.c, 22516u, u_input.c, 4294967295u) << (vec4<u32>(0u, 4294967295u, 1u, 0u) % vec4<u32>(32u))) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(6332u, var_1, 0u, u_input.c), vec4<u32>(var_1, 15236u, 72690u, u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, abs(vec2<u32>(var_0, var_0))) >> (var_1 % 32u), 9613u, var_0, _wgslsmith_clamp_u32(~4150u, (4294967295u | u_input.a.x) & u_input.b, (var_1 >> (21042u % 32u)) & min(var_1, 29791u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 29>();
    var var_0 = Struct_1(~(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.c, u_input.a.x, 26000u, u_input.b), vec4<u32>(476u, 1u, u_input.a.x, 181u)), func_1(u_input.d.x), ~vec4<u32>(4294967295u, u_input.c, 0u, 1u))), -1389f, u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-406f, 981f))), 690f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1420f * -937f) - -247f))));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_add_u32(abs(u_input.c), 21552u & (63633u & u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 8470u, var_0.a.x), vec4<u32>(0u, 4294967295u, var_0.c.x, 13720u)) << (var_0.c.x % 32u), u_input.a.x, 1u), var_0.b, vec3<u32>(~func_1(_wgslsmith_add_i32(-2147483647i, u_input.d.x)).x, u_input.b, max(abs(~17636u), 1u)), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(433f, 849f)))), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + var_0.d.x));
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    var var_2 = vec4<u32>(~var_0.a.x, abs(1u), var_0.c.x, max(var_1.c.x, ~var_1.a.x));
    var var_3 = select(u_input.c, abs(countOneBits(reverseBits(~var_2.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.b, _wgslsmith_sub_u32(var_0.a.x, var_1.a.x)));
}


struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(u_input.c, u_input.b, _wgslsmith_clamp_u32(29148u, ~u_input.c.x, reverseBits(max(4294967295u, 79076u))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f * 676f)), -419f), 494f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f - 146f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1149f)) * _wgslsmith_f_op_f32(-622f * -1290f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(395f, 1122f)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1511f + -1073f))))) * 1f), 448f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1429f - -582f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f - 306f) + _wgslsmith_f_op_f32(step(-802f, -484f))))));
    return !vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), true, true);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> i32 {
    let var_0 = 2147483647i;
    let var_1 = func_3();
    global0 = 490f;
    let var_2 = Struct_1(8138u);
    var var_3 = var_2;
    return -var_0;
}

fn func_1() -> bool {
    let var_0 = func_2(vec3<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true)), (_wgslsmith_mod_u32(u_input.c.x, 4294967295u) == _wgslsmith_div_u32(u_input.c.x, u_input.c.x)) && any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -364f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(175f, -1000f, true))))) - 398f), -210f));
    let var_1 = Struct_1(53079u);
    let var_2 = false;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(673f)))) + _wgslsmith_div_f32(-306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-114f)))));
    return reverseBits(var_1.a ^ 41526u) < countOneBits(~_wgslsmith_div_u32(u_input.c.x, firstLeadingBit(9416u)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_3(vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, _wgslsmith_clamp_u32(arg_1.x & u_input.e.x, ~arg_1.x, 4294967295u & arg_1.x)), arg_1.x, _wgslsmith_add_u32(~15869u ^ u_input.c.x, 10118u), _wgslsmith_sub_u32(abs(min(u_input.e.x, 1u)), reverseBits(u_input.c.x & 0u))), countOneBits(abs(-select(vec3<i32>(1i, u_input.b.x, -12222i), u_input.b, arg_0))), 4294967295u);
    let var_1 = all(vec4<bool>(!any(!vec4<bool>(false, true, arg_0, false)), true, arg_0, all(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, true, arg_2, arg_0), func_1()))));
    let var_2 = var_0.b;
    var var_3 = Struct_1(~(~arg_1.x));
    let var_4 = u_input.b.x;
    return Struct_2(_wgslsmith_div_i32(i32(-1i) * -2147483647i, (_wgslsmith_clamp_i32(var_0.b.x, -1i, 2147483647i) >> (_wgslsmith_div_u32(u_input.e.x, 4294967295u) % 32u)) | (0i << (_wgslsmith_mod_u32(arg_1.x, 49235u) % 32u))), ~u_input.c.ww, vec4<i32>(~max(countOneBits(44693i), ~1i), 0i, _wgslsmith_dot_vec3_i32(u_input.b, var_0.b), -func_2(vec3<bool>(true, true, false), vec2<f32>(-1098f, -1705f)) ^ reverseBits(_wgslsmith_mod_i32(var_0.b.x, var_0.b.x))), ~(~_wgslsmith_add_u32(var_0.c, _wgslsmith_dot_vec2_u32(var_0.a.yw, u_input.c.zw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = u_input.c;
    let var_2 = func_4(!(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), ~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(var_1.x, var_0.x, 1u)), ~vec3<u32>(21u, u_input.c.x, u_input.e.x)) >> ((vec3<u32>(1u, abs(u_input.e.x), 4294967295u) & _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, u_input.c.x) & u_input.c.xxy, vec3<u32>(var_0.x, var_1.x, u_input.e.x))) % vec3<u32>(32u)), true & func_1());
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1339f, 1028f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-140f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1263f, -1409f, -464f, -187f), vec4<f32>(130f, -480f, 1897f, -1127f))))));
    var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(((u_input.c ^ u_input.c) ^ _wgslsmith_mod_vec4_u32(var_0, u_input.c)) & vec4<u32>(~4294967295u, ~123769u, ~0u, 42610u), ~var_0 << (u_input.c % vec4<u32>(32u))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))))), _wgslsmith_div_u32(1u, ~var_0.x), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - 449f))), -1000f, var_3.x));
}


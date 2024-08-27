struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(0u, 10382u), vec2<u32>(0u, 15251u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 3631u), vec2<u32>(10947u, 17796u), vec2<u32>(77456u, 1u), vec2<u32>(11262u, 4294967295u), vec2<u32>(1u, 4530u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = Struct_1(true, 1u, -1i, -abs(firstTrailingBit(firstTrailingBit(arg_0.d))), max(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~_wgslsmith_mult_u32(arg_3, 18013u)));
    let var_1 = var_0;
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    return var_0.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<bool>(1u <= arg_1.e, false, arg_0.a);
    var var_1 = vec4<u32>(arg_1.e, ~(~34478u), ~_wgslsmith_mult_u32(35903u, abs(~arg_0.e)), 1u);
    let var_2 = arg_1;
    let var_3 = arg_0;
    let var_4 = arg_0;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(41775u, 0u, 0u, arg_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0.e, 4294967295u, 0u), vec4<u32>(0u, arg_1.b, arg_1.e, arg_1.b))), select(vec4<u32>(var_1.x, 0u, var_4.b, var_4.e) >> (vec4<u32>(41950u, 10109u, 0u, 43723u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, var_1.x, var_1.x, var_4.b), vec4<bool>(true, var_2.a, true, var_0.x)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.e, 0u, 78511u, arg_0.b), vec4<u32>(4443u, var_2.b, arg_0.e, var_1.x)), min(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(var_3.b, arg_0.b, 0u, 39370u))), vec4<u32>(_wgslsmith_mod_u32(0u, arg_0.b) >> (select(28683u, var_4.e, false) % 32u), 21584u, 0u, 10529u)), ~vec4<u32>(0u, ~(~arg_0.b), var_4.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.e, var_1.x, 25196u, 1u)), ~vec4<u32>(9952u, arg_1.e, var_3.b, arg_1.e))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<vec2<u32>, 8>();
    let var_0 = -max(-_wgslsmith_add_i32(~1i, reverseBits(0i)), _wgslsmith_clamp_i32(i32(-1i) * -23227i, -1i, -53121i));
    var var_1 = Struct_1(any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))), _wgslsmith_dot_vec2_u32(abs(reverseBits(vec2<u32>(8952u, u_input.a.x))), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(4294967295u, 21575u), u_input.a) | global0[_wgslsmith_index_u32(abs(u_input.a.x), 8u)]) & (~u_input.a.x >> (53271u % 32u)), 2147483647i << (~4294967295u % 32u), -vec3<i32>(~var_0, -17686i, -var_0), func_4(Struct_1(func_3(Struct_1(false, 38350u, 54823i, vec3<i32>(0i, 0i, 1i), 48807u), vec4<bool>(true, true, false, false), false, u_input.a.x) >= ~var_0, 1u, ~22766i, ~vec3<i32>(-86950i, 41812i, var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a)), Struct_1(true, 18708u, -var_0, -vec3<i32>(var_0, var_0, 19985i), ~1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, arg_0)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), arg_0));
    var var_3 = vec4<bool>(true, false, any(select(!(!vec4<bool>(var_1.a, true, var_1.a, var_1.a)), !vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(true, any(vec3<bool>(true, false, var_1.a)), true, true))), true);
    return Struct_1(false, var_1.e, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-35887i, 30088i) | _wgslsmith_dot_vec4_i32(max(vec4<i32>(5883i, var_1.d.x, 29041i, var_1.c), vec4<i32>(var_1.c, 0i, 72388i, var_0)), -vec4<i32>(var_1.c, 1i, -54403i, 36072i)), -16146i, ~var_0), var_1.d, ~u_input.a.x);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = func_2(-894f);
    global0 = array<vec2<u32>, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-457f + _wgslsmith_f_op_f32(ceil(-1361f))), _wgslsmith_f_op_f32(-1f)), -556f));
    var var_2 = max(var_0.c, _wgslsmith_add_i32(72757i, _wgslsmith_add_i32(max(2147483647i, select(34824i, -2147483647i, true)), ~abs(arg_0.x))));
    var var_3 = func_2(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1118f, -743f))))));
    return ~2014u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(true, ~(~_wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x)), i32(-1i) * -2147483647i, vec3<i32>(2147483647i, ~1i, firstLeadingBit(min(1i, 53339i))) >> (countOneBits(countOneBits(~vec3<u32>(u_input.a.x, u_input.a.x, 56431u))) % vec3<u32>(32u)), ~37580u | func_1(max(vec4<i32>(-1i, 0i, -1i, 1i) >> (vec4<u32>(4294967295u, 66764u, 4896u, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(2147483647i, -14869i, 16655i, -1214i))));
    var var_1 = Struct_1(false, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, var_0.d.x, 42526i), var_0.d), var_0.c, -65452i), var_0.d), abs(-vec3<i32>(~var_0.d.x, 1i >> (var_0.b % 32u), max(-1i, -2147483647i))), ~var_0.e);
    var var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.b | select(countOneBits(var_0.e), 28816u, !var_0.a), var_1.b), -107f, ~abs(var_0.e) ^ 0u, _wgslsmith_clamp_i32(~(-1i), i32(-1i) * -1i, var_0.d.x), max(var_0.d, _wgslsmith_clamp_vec3_i32(var_1.d, var_0.d & var_1.d, -(~var_0.d))));
}


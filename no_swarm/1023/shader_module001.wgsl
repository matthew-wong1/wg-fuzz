struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool = false;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec2<i32> {
    global1 = any(!vec4<bool>(_wgslsmith_div_u32(u_input.c.x, 0u) != u_input.c.x, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), true));
    return vec2<i32>(abs(1552i), u_input.d);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> bool {
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), ~_wgslsmith_clamp_u32(67898u, u_input.c.x, ~firstTrailingBit(global0.b)), -207f);
    global0 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-172f + arg_0.d), global0.c)))), abs(~(arg_3 >> (79580u % 32u)) ^ arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2096f * _wgslsmith_f_op_f32(-118f * arg_0.b.x))));
    return all(!select(!select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_1, false), arg_0.a, vec4<bool>(arg_1, true, false, false)), select(!arg_0.a, !vec4<bool>(true, true, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_1, true)), any(arg_0.a.wwz)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> Struct_4 {
    global0 = Struct_4(global0.c, u_input.c.x, global0.a);
    var var_0 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, u_input.b.x)), vec2<i32>(u_input.a.x, u_input.d)), _wgslsmith_mult_vec2_i32(u_input.a.zz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, arg_3), vec2<i32>(-794i, 1i)))), ~1i, _wgslsmith_dot_vec3_i32(select(abs(u_input.a.wzy), u_input.a.zxx, select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0), !vec3<bool>(arg_0, true, false), !vec3<bool>(true, arg_0, true))), vec3<i32>(_wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_mult_i32(u_input.d, arg_3) ^ u_input.a.x, -_wgslsmith_mult_i32(0i, arg_3))));
    global1 = any(vec3<bool>(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, 1795i, u_input.a.x, u_input.b.x), u_input.a)) != 2147483647i, true, !arg_0));
    let var_1 = Struct_1(select(vec4<bool>(false, false, !arg_0, true), !(!(!vec4<bool>(arg_0, true, arg_0, arg_0))), true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(392f, global0.a, global0.c)) * vec3<f32>(global0.a, 1978f, global0.a))))), _wgslsmith_mult_i32(u_input.a.x, abs(-_wgslsmith_div_i32(u_input.a.x, u_input.b.x))), global0.a);
    let var_2 = Struct_1(!var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(652f, -216f, -1955f)))) + vec3<f32>(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-383f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(225f * 740f) + 321f))), -23493i, _wgslsmith_f_op_f32(step(global0.c, var_1.b.x)));
    return Struct_4(134f, 0u, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = func_3(true || all(vec4<bool>(select(false, true, false), true, func_2(Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(global0.c, global0.a, global0.c), -15579i, global0.a), false, Struct_3(global0.a, 2147483647i), 4294967295u), true)), 0u, firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x ^ global0.b, u_input.c.x, 5313u), vec3<u32>(40631u, 1u, ~28736u))), var_0.x ^ var_0.x);
    global1 = -2147483647i == _wgslsmith_mod_i32(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(~4442i | _wgslsmith_div_i32(var_0.x, var_0.x), ~(-17573i), -var_0.x));
    var var_1 = func_3(false, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(56254u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.c.x, global0.b)), 4294967295u)), u_input.c.x & ~0u, global0.b), abs(vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(~global0.b, u_input.c.x), _wgslsmith_div_u32(global0.b, 4294967295u))), ~u_input.b.x);
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f)), 1u, 1f);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-997f, global0.a, false)), _wgslsmith_f_op_f32(-var_1.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1968f)) + _wgslsmith_f_op_f32(-2241f - -836f))));
    var_1 = Struct_4(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, var_1.a, any(vec2<bool>(false, false)))))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(33585u, reverseBits(select(4294967295u, 1u, false)), firstTrailingBit(0u)), ~3286u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(293f, _wgslsmith_f_op_f32(f32(-1f) * -1085f))))))));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.d), countOneBits(-23064i), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-8960i, var_0.x, var_0.x, 14094i)))), vec3<i32>(var_0.x, _wgslsmith_mod_i32(-26426i ^ u_input.b.x, 1i), u_input.a.x)) == u_input.b.x;
    var var_4 = vec4<i32>(func_1().x, i32(-1i) * -2147483647i, ((var_0.x << (30727u % 32u)) & -1i) | _wgslsmith_mod_i32(u_input.b.x, var_0.x), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(var_1.b, ~(4294967295u << (global0.b % 32u))), vec2<u32>(var_1.b, reverseBits(~var_1.b)), any(vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec3<bool>(true, false, true))))), vec2<u32>(_wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(global0.b, var_1.b)), 1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, 4294967295u, var_1.b), vec4<u32>(0u, 1u, 116378u, 4294967295u)) % 32u)), ~reverseBits(u_input.c.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c.x, _wgslsmith_mod_u32(1u, u_input.c.x), global0.b), firstTrailingBit(select(vec3<u32>(u_input.c.x, var_1.b, global0.b), vec3<u32>(1u, global0.b, 1u), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -646f, global0.c)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, global0.c, var_2))))))), _wgslsmith_sub_i32(u_input.d, -21297i));
}


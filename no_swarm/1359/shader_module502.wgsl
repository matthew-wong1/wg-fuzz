struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = 0i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_1(select(~abs(firstTrailingBit(arg_0.x)), 36910i & firstTrailingBit(~17904i), false), abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2155i, ~u_input.c, ~arg_0.x), -(~u_input.b))), firstLeadingBit(vec2<u32>(1u, 1u)));
    global1 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(-25170i, -5903i), _wgslsmith_clamp_vec2_i32(u_input.a.yx, vec2<i32>(26940i, var_0.a), vec2<i32>(arg_0.x, -32400i)), arg_1), _wgslsmith_clamp_vec2_i32(vec2<i32>(-6491i, arg_0.x), vec2<i32>(1i, -2147483647i), abs(arg_0.xy))), arg_2);
    let var_1 = max(vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(var_0.c.x, 32611u, 104528u, var_0.c.x)), ~firstLeadingBit(vec4<u32>(1u, var_0.c.x, var_0.c.x, 0u))), var_0.c.x), abs(vec2<u32>(_wgslsmith_div_u32(45179u, var_0.c.x), _wgslsmith_clamp_u32(42524u, var_0.c.x, 16970u))) & countOneBits(countOneBits(vec2<u32>(1u, var_0.c.x))));
    var_0 = Struct_1(var_0.b, u_input.b, countOneBits(abs(~(var_1 >> (vec2<u32>(4294967295u, var_0.c.x) % vec2<u32>(32u))))));
    let var_2 = global0.b;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-280f)), _wgslsmith_f_op_f32(f32(-1f) * -1471f), arg_3.x))) + -1390f), _wgslsmith_f_op_f32(trunc(504f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2041f, _wgslsmith_f_op_f32(step(global0.b.x, -128f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) - _wgslsmith_f_op_f32(func_3(vec4<i32>(14533i, 37872i, u_input.b, u_input.b), arg_0.x, -7524i, vec3<bool>(false, true, false))))))));
    var_0 = _wgslsmith_f_op_f32(-431f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-865f)))))));
    var var_1 = Struct_2(5331u, Struct_1(reverseBits(select(-2147483647i, u_input.a.x, true)) ^ ~(~u_input.c), _wgslsmith_clamp_i32(25653i, -1i, -u_input.c), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(48697u, 17552u, 4294967295u)), ~vec3<u32>(4294967295u, 30037u, 36055u)), 107u)), !all(vec2<bool>(true, true)), vec3<u32>(~1u, ~(~_wgslsmith_mult_u32(0u, 1u)), 3377u), firstLeadingBit(~(~vec3<u32>(0u, 0u, 15748u))));
    var_1 = Struct_2(var_1.b.c.x, var_1.b, all(arg_0.zwz), ~vec3<u32>(var_1.e.x, firstTrailingBit(0u) ^ (0u << (var_1.d.x % 32u)), var_1.d.x), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(var_1.e, vec3<u32>(4294967295u, var_1.e.x, 0u))), var_1.d), select(var_1.d, var_1.e | var_1.d, select(false, arg_0.x, !arg_1.x))));
    global1 = -90221i;
    return vec2<i32>(firstTrailingBit(~u_input.a.x), -1i);
}

fn func_1() -> i32 {
    var var_0 = abs(func_2(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, all(vec2<bool>(true, false)), true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 2147483647i), -vec2<i32>(u_input.c, u_input.b)))) | countOneBits(vec2<i32>(-u_input.b, u_input.b | u_input.a.x));
    var var_1 = ~1u;
    var var_2 = Struct_4(-574f);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, select(9350u, 1u, false), 1u, 1u), ~vec4<u32>(4294967295u, 68438u, 0u, 4294967295u)), max(vec4<u32>(4294967295u, 50971u, 1u, _wgslsmith_add_u32(0u, 4294967295u)), ~vec4<u32>(1u, 1u, 1u, 1u))), 1u);
    let var_4 = (~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, 4294967295u), vec2<u32>(53038u, var_3.x))) << (vec2<u32>(~var_3.x, 4294967295u) % vec2<u32>(32u))) << (~select(select(~vec2<u32>(95464u, var_3.x), select(vec2<u32>(var_3.x, var_3.x), vec2<u32>(1u, var_3.x), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<u32>(var_3.x, 1u), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))) % vec2<u32>(32u));
    return -7170i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~23281u;
    var var_1 = _wgslsmith_f_op_f32(-global0.b.x);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) - global0.b) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x), global0.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x * global0.b.x))), global0.a.x)), global0.b);
    var var_3 = select(u_input.a.yxz, vec3<i32>(-20923i, ~func_1(), _wgslsmith_mod_i32(u_input.c, u_input.b)) << (vec3<u32>(1u, ~var_0, ~min(4061u, 4294967295u)) % vec3<u32>(32u)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(all(vec2<bool>(false, true)), false, true), vec3<bool>(true, u_input.c < firstLeadingBit(-61912i), 1110f < _wgslsmith_f_op_f32(var_2.a.x * global0.b.x))));
    var_3 = u_input.a.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.wy));
}


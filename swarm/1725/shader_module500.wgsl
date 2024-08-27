struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(0i, u_input.c.x);
    let var_1 = vec2<bool>(false, true);
    var var_2 = _wgslsmith_mult_u32(countOneBits(19537u), 1u);
    var_2 = firstTrailingBit(4163u) ^ max(_wgslsmith_div_u32(7560u, 1u), 1u);
    var_2 = 1u;
    return Struct_1(_wgslsmith_f_op_f32(-1704f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-746f, -352f)))), false);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1459f);
    global0 = 65407u;
    global0 = firstTrailingBit(~(~1u));
    global0 = 33101u;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(473f, var_0)), 1889f))), false), Struct_1(-556f, true), var_0, select(false, true, func_2().b));
    return 1i;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = func_2();
    var var_1 = vec4<i32>(-((func_3() << (select(0u, 4294967295u, false) % 32u)) & -max(u_input.b, -42576i)), 2147483647i, u_input.a.x, 2147483647i);
    let var_2 = _wgslsmith_add_u32(1u, ~firstTrailingBit(arg_0)) == ~38494u;
    let var_3 = max(~_wgslsmith_clamp_vec2_i32(countOneBits(arg_1.zy), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.b), vec2<i32>(arg_1.x, arg_1.x)), ~2147483647i), countOneBits(arg_1.yz)), min(_wgslsmith_add_vec2_i32(min(vec2<i32>(-3619i, var_1.x), u_input.c), vec2<i32>(arg_1.x, 1i) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), vec2<i32>(min(min(66670i, arg_1.x), ~u_input.c.x), -u_input.c.x)));
    let var_4 = firstLeadingBit(reverseBits(-var_1.x >> (~arg_0 % 32u))) >> ((~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 9153u, 16754u), vec3<u32>(arg_0, 4294967295u, 1u))) | arg_0) % 32u);
    return vec2<u32>(1830u >> ((arg_0 | _wgslsmith_mod_u32(31603u, arg_0)) % 32u), 1379u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(4294967295u, select(select(vec3<i32>(15707i, -18747i >> (1u % 32u), 42048i), -(vec3<i32>(u_input.a.x, u_input.c.x, 32058i) << (vec3<u32>(4921u, 22089u, 112452u) % vec3<u32>(32u))), true), firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.c.x, 1i))), true));
    var var_1 = true;
    let var_2 = vec3<bool>(true, any(vec4<bool>(true, true, true, true)), func_2().b);
    var_1 = false;
    global0 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-798f, 1078f, -624f), vec3<f32>(291f, -1000f, 485f))), _wgslsmith_div_vec3_f32(vec3<f32>(534f, 768f, -1932f), vec3<f32>(338f, 701f, 203f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1255f, 435f, 1972f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1815f, -644f, 1021f))))))));
    let var_4 = vec3<i32>(max(u_input.b, -7660i) | ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(59114i, 2147483647i, -1i, -23422i)) << (~var_0.x % 32u)), max(-1i, ~firstLeadingBit(32171i)), -_wgslsmith_sub_i32(-2147483647i, select(-u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, u_input.c.x), all(vec3<bool>(false, var_2.x, var_2.x)))));
    var var_5 = vec2<u32>(~_wgslsmith_mod_u32(~var_0.x >> (~6625u % 32u), 1u), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(284f)), 2853f, var_4, 1i, u_input.c);
}


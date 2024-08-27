struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    var var_0 = 9565i;
    global0 = array<Struct_4, 18>();
    return vec3<bool>(false, select(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), false && select(true, any(vec2<bool>(false, false)), false), true), any(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a | 22534u, 18u)];
    var var_1 = var_0.e.xyw;
    var var_2 = arg_3.a.e;
    return _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 105277u, 9998u) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a.e, 18811u, 75574u), var_0.e.xzw), vec3<u32>(u_input.a, var_0.e.x, u_input.a) >> (var_0.e.yxz % vec3<u32>(32u))) >> (~vec3<u32>(~var_1.x, _wgslsmith_mult_u32(1u, var_0.e.x), max(64871u, 16143u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(var_0.e.xzy, ~abs(vec3<u32>(arg_2.a.a, 4294967295u, 0u))));
}

fn func_2() -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-552f * -1006f), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(63206u, u_input.a, 35814u) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(4294967295u, 24598u, 43701u)), func_3(Struct_1(1u, u_input.b.x, vec2<f32>(-490f, 1728f), -310f, 3195u), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(Struct_1(u_input.a, -2147483647i, vec2<f32>(-132f, 1803f), 454f, 0u), vec3<bool>(false, false, true)), Struct_2(Struct_1(u_input.a, -18505i, vec2<f32>(-681f, -479f), -552f, u_input.a), vec3<bool>(false, true, true)))), u_input.b.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1114f)), -805f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(753f, 1663f)) * vec2<f32>(146f, -1153f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-810f, _wgslsmith_f_op_f32(-1360f * 239f), true)))), _wgslsmith_div_u32(u_input.a, func_3(Struct_1(6629u, -18994i, vec2<f32>(-379f, -1396f), 2157f, u_input.a), select(vec2<bool>(false, false), vec2<bool>(true, false), true), Struct_2(Struct_1(u_input.a, 12556i, vec2<f32>(-1602f, -2086f), -522f, 0u), vec3<bool>(false, false, false)), Struct_2(Struct_1(35965u, u_input.b.x, vec2<f32>(519f, 141f), 928f, u_input.a), vec3<bool>(false, false, false))).x)), _wgslsmith_f_op_f32(f32(-1f) * -505f) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-432f, _wgslsmith_f_op_f32(f32(-1f) * -133f))))), Struct_2(Struct_1(~firstLeadingBit(30569u), abs(_wgslsmith_div_i32(1i, 1i)), vec2<f32>(-1229f, _wgslsmith_f_op_f32(f32(-1f) * -287f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(318f, 1312f, true)))), ~_wgslsmith_mult_u32(4294967295u, u_input.a)), vec3<bool>(!any(vec3<bool>(true, false, false)), select(select(false, true, true), true, false), any(vec4<bool>(true, false, true, false)))), vec4<u32>(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), 47227u), u_input.a & _wgslsmith_mult_u32(select(1760u, u_input.a, true), 21272u), 4294967295u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(4294967295u, 16871u, 0u, 30884u), vec4<u32>(u_input.a, u_input.a, u_input.a, 20462u)), abs(vec4<u32>(u_input.a, 1u, u_input.a, 38516u)))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(83952u, countOneBits(u_input.a)), 18u)];
    var var_1 = vec2<bool>(func_1().x, var_0.d.b.x);
    var var_2 = reverseBits(vec2<u32>(87599u, 46425u));
    let var_3 = var_0.d.b.yx;
    return all(var_0.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    var var_0 = true;
    var_0 = any(select(func_1(), vec3<bool>(true, true, true), reverseBits(0u) != firstLeadingBit(u_input.a)));
    var var_1 = Struct_3(true, select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)) == func_2(), true), true), Struct_1(43437u, _wgslsmith_clamp_i32(u_input.b.x, -u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 1i)) << (61272u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(420f, -536f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1536f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~75395u, abs(u_input.a)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 44420u), vec3<u32>(u_input.a, 1u, 15227u)))), Struct_2(Struct_1((u_input.a >> (13544u % 32u)) & 56034u, 12457i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(699f, 1310f))), 1f, ~_wgslsmith_mod_u32(u_input.a, 0u)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    let var_2 = var_1.d.b;
    var_0 = var_1.d.b.x;
    var var_3 = Struct_2(var_1.d.a, vec3<bool>(true, ~176u >= ~u_input.a, false & var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~(~select(vec2<u32>(u_input.a, 5947u), vec2<u32>(24793u, 0u), true)), _wgslsmith_add_vec2_u32(~(vec2<u32>(var_1.d.a.a, var_1.d.a.a) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), select(vec2<u32>(var_1.c.e, var_1.d.a.e), ~vec2<u32>(23735u, 74173u), any(vec2<bool>(var_2.x, false))))), 311f, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.d) - -921f))), -1349f, -318f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.a.c.x, _wgslsmith_f_op_f32(sign(var_1.d.a.d)), !var_2.x)), _wgslsmith_div_f32(-1685f, _wgslsmith_f_op_f32(round(var_1.d.a.c.x))))));
}


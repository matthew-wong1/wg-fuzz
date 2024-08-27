struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec2<bool>(true, false), vec2<bool>(false, true), -1i, Struct_1(vec2<u32>(31417u, 58563u))), Struct_1(vec2<u32>(31080u, 90614u)), false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = Struct_4(arg_0, arg_0.d, !global0.c);
    global0 = Struct_4(global0.a, Struct_1(~(vec2<u32>(arg_0.d.a.x, 0u) | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0.d.a.x), vec2<u32>(1u, 54548u)))), (arg_0.c >> (select(13531u, _wgslsmith_add_u32(arg_0.d.a.x, arg_0.d.a.x), arg_0.a.x) % 32u)) == abs(-31587i));
    global0 = Struct_4(Struct_3(vec2<bool>(all(vec3<bool>(true, global0.c, true)), false), arg_0.a, arg_0.c, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.d.a, vec2<u32>(arg_0.d.a.x, arg_0.d.a.x)), ~25038u))), Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.d.a.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(28046u, global0.a.d.a.x, 1u), vec3<u32>(49232u, arg_0.d.a.x, 33534u))), global0.b.a.x)), 0i >= firstLeadingBit(u_input.a ^ u_input.a));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-549f, 584f)), 1017f)) * _wgslsmith_div_f32(-1000f, 655f)))));
    global0 = Struct_4(Struct_3(vec2<bool>(!(arg_0.b.x | false), !arg_0.b.x), !vec2<bool>(!global0.a.b.x, global0.c), ~(-4503i), arg_0.d), Struct_1(countOneBits(reverseBits(vec2<u32>(72686u, global0.a.d.a.x)))), !(!(!(arg_0.d.a.x >= 1u))));
    return global0.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    let var_0 = ~select(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(u_input.a, -2147483647i, 14763i), vec3<i32>(global0.a.c, arg_2.a.c, u_input.a), select(arg_1, vec3<bool>(true, false, global0.c), true)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global0.a.c, global0.a.c), vec3<i32>(-15416i, 0i, global0.a.c)) & vec3<i32>(arg_2.a.c, 39534i, 36087i)), _wgslsmith_clamp_i32(-22066i, max(arg_2.a.c, u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-33176i, 21659i, u_input.a, -1i), vec4<i32>(arg_2.a.c, arg_2.a.c, arg_2.a.c, 2147483647i)), ~vec4<i32>(u_input.a, -11926i, 0i, global0.a.c))), global0.c);
    var var_1 = abs(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.a.c, 29244i), vec3<i32>(-65844i, -21511i, -65445i)), ~vec3<i32>(var_0, -1i, u_input.a)) & (_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.c, 60697i, var_0), vec3<i32>(-12141i, global0.a.c, u_input.a)) & vec3<i32>(global0.a.c, 2817i, u_input.a))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~14035u & arg_2.b.a.x, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(arg_2.b.a, global0.a.d.a))) | firstLeadingBit(abs(global0.a.d.a)), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_3.x, global0.a.d.a.x), firstTrailingBit(arg_2.b.a)), arg_3, arg_3));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = vec3<bool>(true, true | !global0.c, true);
    let var_1 = ~func_4(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.a.d.a.x, 1u, 25546u), vec4<u32>(arg_2, 82468u, 4294967295u, arg_2)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(global0.a.d.a.x, global0.b.a.x, arg_2, 4294967295u)), ~vec4<u32>(arg_2, 11841u, arg_2, global0.a.d.a.x))), vec3<bool>(arg_0.x, func_3(global0.a), var_0.x), Struct_4(Struct_3(select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), vec2<bool>(var_0.x, global0.c)), select(vec2<bool>(global0.c, true), arg_0, arg_0), arg_1.x, global0.b), Struct_1(global0.b.a), true), ~global0.a.d.a);
    var var_2 = Struct_1(~vec2<u32>(~arg_2 ^ 1u, arg_2));
    let var_3 = u_input.a;
    var var_4 = global0.a;
    return global0.a;
}

fn func_1(arg_0: vec4<bool>) -> Struct_5 {
    var var_0 = global0.a.a;
    let var_1 = 4294967295u;
    return Struct_5(func_2(vec2<bool>(global0.c, true), select(~(~vec2<i32>(-18735i, 104417i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.c, 2147483647i), ~vec2<i32>(global0.a.c, global0.a.c)), _wgslsmith_div_u32(4294967295u, var_1) <= _wgslsmith_mod_u32(global0.b.a.x, var_1)), global0.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_clamp_i32(abs(1i & ~global0.a.c), global0.a.c, u_input.a);
    var var_1 = Struct_5(global0.a);
    var_1 = func_1(!vec4<bool>(!(!var_1.a.a.x), !(!var_1.a.a.x), false, true | select(true, false, false)));
    global0 = Struct_4(global0.a, Struct_1(vec2<u32>(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.a.x, 35898u, 6351u, 26779u), vec4<u32>(global0.a.d.a.x, 18272u, var_1.a.d.a.x, global0.b.a.x)), select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.a.a.x, global0.a.b.x), true), Struct_4(var_1.a, var_1.a.d, global0.a.b.x), vec2<u32>(var_1.a.d.a.x, var_1.a.d.a.x)), countOneBits(~var_1.a.d.a.x))), var_1.a.b.x);
    global0 = Struct_4(Struct_3(var_1.a.a, global0.a.b, ~firstLeadingBit(var_0), Struct_1(~vec2<u32>(84203u, 1u))), Struct_1(~global0.b.a), true);
    var_1 = func_1(select(!(!select(vec4<bool>(false, false, true, var_1.a.b.x), vec4<bool>(true, false, global0.a.b.x, var_1.a.b.x), true)), !(!select(vec4<bool>(false, global0.a.a.x, global0.a.a.x, var_1.a.a.x), vec4<bool>(true, false, var_1.a.b.x, global0.c), vec4<bool>(false, global0.a.b.x, false, global0.c))), select(select(vec4<bool>(global0.c, global0.a.a.x, var_1.a.a.x, true), vec4<bool>(false, global0.a.a.x, true, global0.c), vec4<bool>(var_1.a.b.x, true, var_1.a.a.x, var_1.a.a.x)), select(!vec4<bool>(var_1.a.a.x, false, global0.c, true), vec4<bool>(false, global0.a.b.x, global0.c, global0.a.b.x), var_1.a.b.x), vec4<bool>(true, var_1.a.a.x, true, !global0.c))));
    let var_2 = Struct_4(var_1.a, Struct_1(global0.b.a), !var_1.a.b.x);
    let var_3 = Struct_4(Struct_3(var_2.a.a, var_2.a.b, -(~var_0) >> (~28548u % 32u), var_1.a.d), Struct_1(var_1.a.d.a), true);
    var var_4 = !vec3<bool>(select(true, var_2.a.b.x, _wgslsmith_mult_u32(var_1.a.d.a.x, var_1.a.d.a.x) < _wgslsmith_dot_vec2_u32(var_1.a.d.a, var_1.a.d.a)), true, var_1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_3.a.d.a.x, ~firstLeadingBit(~var_3.a.d.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1323f))), _wgslsmith_f_op_f32(1914f * -1868f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(657f)), 277f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f))), var_2.a.d.a.x);
}


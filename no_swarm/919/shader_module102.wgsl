struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, -1i), vec2<i32>(9674i, -8281i), vec2<i32>(-22700i, 1i), vec2<i32>(0i, 0i), vec2<i32>(24954i, -47114i), vec2<i32>(-24943i, 2147483647i), vec2<i32>(7159i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(44333i, 0i), vec2<i32>(-1854i, 1i), vec2<i32>(-1i, 18995i), vec2<i32>(38996i, -31889i), vec2<i32>(0i, 2147483647i), vec2<i32>(-11193i, 12972i), vec2<i32>(2147483647i, 24102i), vec2<i32>(1i, -24252i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-15154i, -3659i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(27178i, 0i), vec2<i32>(-1i, -47477i), vec2<i32>(-9756i, i32(-2147483648)), vec2<i32>(30768i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(43295i, 19897i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: bool) -> f32 {
    let var_0 = max(~(-33743i), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, arg_1.x, arg_1.x, arg_2.a.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, arg_2.b.c, arg_2.a.c, 889f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 1233f, arg_2.b.c, global0.c), vec4<f32>(global0.c, -1146f, global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 427f, 1241f, 1007f))))));
    var var_2 = vec3<u32>(u_input.c.x, arg_2.a.a.b, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, arg_2.b.d.x), arg_2.b.d.x) << ((u_input.c.x | arg_0.x) % 32u));
    let var_3 = ~vec3<i32>(_wgslsmith_clamp_i32(~global0.a.a.x, u_input.d.x, 2147483647i), -37274i, reverseBits(-arg_2.a.a.a.x) & ~(-16913i));
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c) + _wgslsmith_f_op_f32(var_4.b.c - 949f)) * -100f)), false));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~u_input.c.x, u_input.c.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0.d.x) >> (global0.d.zy % vec2<u32>(32u)), global0.d.yy) % 32u), ~4294967295u, _wgslsmith_add_u32(global0.d.x, ~79125u), u_input.c.x), min(vec4<u32>(~u_input.c.x, 4294967295u, firstLeadingBit(_wgslsmith_add_u32(0u, global0.d.x)), select(~0u, u_input.c.x, true)), vec4<u32>(global0.d.x, 37538u, _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), 1u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.c.x, 1u), vec2<f32>(-1201f, 1855f), Struct_3(Struct_2(Struct_1(vec2<i32>(global0.b.x, 2147483647i), 44484u), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), global0.c, global0.d), Struct_2(global0.a, global0.b, 714f, vec3<u32>(u_input.c.x, 11224u, 6097u))), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(472f))), 623f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -268f, global0.c))) * vec3<f32>(global0.c, global0.c, global0.c)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -412f, 2395f)))))))));
    global0 = Struct_2(global0.a, vec3<i32>(_wgslsmith_add_i32(~(-18122i), global0.a.a.x), u_input.b.x, ~_wgslsmith_mod_i32(~global0.a.a.x, _wgslsmith_sub_i32(16058i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 2174f))), var_0.zzw);
    global1 = array<vec2<i32>, 28>();
    var_0 = ~vec4<u32>(abs(~global0.d.x) | 26450u, ~var_0.x, 58434u, var_0.x);
    return ~firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c, var_0.xz), firstLeadingBit(13864u))) > ~(~(~0u) << (u_input.c.x % 32u));
}

fn func_4(arg_0: bool) -> Struct_2 {
    global1 = array<vec2<i32>, 28>();
    global1 = array<vec2<i32>, 28>();
    let var_0 = _wgslsmith_sub_u32(global0.d.x, 1u | countOneBits(u_input.c.x));
    global1 = array<vec2<i32>, 28>();
    global0 = Struct_2(global0.a, vec3<i32>(abs(~u_input.d.x), i32(-1i) * -1i, abs(max(global0.b.x & global0.b.x, ~u_input.b.x))), 1140f, abs(firstLeadingBit(global0.d)));
    return Struct_2(Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-69408i, -1i), -global0.b.x), reverseBits(_wgslsmith_add_i32(u_input.d.x, global0.a.a.x))), _wgslsmith_mult_u32(0u, 45791u)), vec3<i32>(-global0.a.a.x, u_input.d.x, countOneBits(global0.b.x)), global0.c, ~abs(global0.d & firstLeadingBit(vec3<u32>(46738u, 0u, 58158u))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global1 = array<vec2<i32>, 28>();
    let var_0 = func_4(func_2());
    global1 = array<vec2<i32>, 28>();
    let var_1 = Struct_1(-(~(~min(var_0.a.a, var_0.a.a))), ~0u);
    let var_2 = ~(global0.d ^ firstTrailingBit(vec3<u32>(~4294967295u, abs(var_0.d.x), 0u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<vec2<i32>, 28>();
    let var_1 = var_0;
    global1 = array<vec2<i32>, 28>();
    var var_2 = select(select(vec2<bool>(false, global0.c > _wgslsmith_f_op_f32(global0.c + global0.c)), !vec2<bool>(!var_1, true), select(select(vec2<bool>(var_1, true), select(vec2<bool>(var_1, false), vec2<bool>(true, false), vec2<bool>(var_0, var_1)), !vec2<bool>(var_1, var_0)), vec2<bool>(true, false), false)), select(vec2<bool>(global0.b.x > global0.a.a.x, true), vec2<bool>(min(39304u, u_input.c.x) != 4294967295u, var_0), vec2<bool>(false, !(!var_0))), !(any(vec4<bool>(false, false, true, var_1)) & !var_0) || false);
    let var_3 = select(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, u_input.b.x > 80274i), select(vec2<bool>(var_0, false), vec2<bool>(var_1, false), true)), !vec2<bool>(41991u == global0.a.b, (global0.b.x < 10384i) & !var_2.x), vec2<bool>(var_1, true));
    global0 = func_1(var_3);
    var_2 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-1220f, _wgslsmith_sub_i32(abs(u_input.a), -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(func_2()).c, 525f)), global0.c, abs(vec4<i32>(-41957i, _wgslsmith_clamp_i32(min(1i, u_input.b.x), -1i >> (u_input.c.x % 32u), global0.b.x), 1i, _wgslsmith_add_i32(abs(-1i), ~1i))));
}


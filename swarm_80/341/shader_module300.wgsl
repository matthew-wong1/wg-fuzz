struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    return arg_0;
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = -1i;
    var var_0 = Struct_4(!any(vec2<bool>(true, true)), vec3<bool>(any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true))), arg_0, all(!vec4<bool>(arg_0, arg_0, false, arg_0)) & (-u_input.a.x != (19721i >> (u_input.c % 32u)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(189f, 519f)))), reverseBits(~(-9184i))), Struct_1(-1642f, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 17173i, u_input.a.x), u_input.a) >> (countOneBits(vec3<u32>(14383u, 0u, 6948u)) % vec3<u32>(32u)), select(u_input.a, max(u_input.a, u_input.a), any(vec4<bool>(arg_0, true, true, true))))), -266f);
    let var_1 = Struct_4(true, select(vec3<bool>(var_0.b.x, !(u_input.d <= 35010u), all(!vec4<bool>(false, false, false, var_0.a))), var_0.b, !(!select(vec3<bool>(arg_0, arg_0, true), var_0.b, false))), var_0.c, var_0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(501f, _wgslsmith_div_f32(var_0.c.a, _wgslsmith_f_op_f32(round(-147f))))))));
    var var_2 = 262f;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d.a)) + var_1.d.a)), ~(i32(-1i) * -(~u_input.b.x)));
    return vec4<bool>(true, arg_0, true, any(var_1.b));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a, -792f));
    let var_1 = select(vec2<bool>(true, true), select(vec2<bool>(false, firstTrailingBit(0u) > 4294967295u), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(func_3(false)) && true));
    let var_2 = vec2<bool>(!(!all(vec3<bool>(false, var_1.x, var_1.x))), false);
    global0 = reverseBits(~(-2147483647i));
    global0 = arg_1.a.b;
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.x)), -1185f)), arg_1.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    var var_0 = firstLeadingBit(-11686i);
    let var_1 = !(!func_3(true));
    let var_2 = 235f;
    var var_3 = Struct_4(var_1.x, var_1.wwz, arg_1.b, func_2(u_input.b, Struct_3(arg_1.b, max(4294967295u, u_input.d))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.x, -221f), _wgslsmith_f_op_f32(floor(224f))))));
    var_0 = -arg_1.b.b;
    return 1541f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    var var_0 = u_input.a.x;
    var var_1 = 2147483647i;
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(func_1(1u, vec4<i32>(u_input.a.x, u_input.b.x, 28638i, u_input.a.x)), 4294967295u) >> (1u % 32u), ~56537u) << (vec2<u32>(_wgslsmith_sub_u32(20090u >> ((u_input.c << (u_input.c % 32u)) % 32u), min(u_input.d, u_input.d)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(105916u, u_input.c, 1u, 46223u)), ~(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d) >> (vec4<u32>(51485u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))))) % vec2<u32>(32u));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-806f))), Struct_2(_wgslsmith_f_op_f32(trunc(107f)), Struct_1(-437f, u_input.b.x)), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i), u_input.b), Struct_3(Struct_1(-1108f, u_input.a.x), 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, 517f, 136f, 1000f))))), func_2(firstTrailingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -15311i), u_input.b, vec2<i32>(u_input.a.x, u_input.a.x))), Struct_3(func_2(vec2<i32>(u_input.a.x, 101645i) & vec2<i32>(0i, u_input.a.x), Struct_3(Struct_1(-864f, u_input.a.x), u_input.c)).b, _wgslsmith_div_u32(~1u, min(var_2.x, var_2.x)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_2.x, u_input.c, u_input.d)), vec3<u32>(0u, var_2.x, var_2.x) | vec3<u32>(var_2.x, var_2.x, var_2.x))), vec3<u32>(~u_input.c, _wgslsmith_div_u32(27946u, 1u), reverseBits(~u_input.d))), 1i, u_input.d, vec2<f32>(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-295f)))))), ~(~var_2.x));
}


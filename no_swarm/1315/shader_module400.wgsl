struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: f32 = 330f;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<bool>(true, false), vec2<f32>(547f, -1519f), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, true), vec2<f32>(-729f, 2217f), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, false), vec2<f32>(-558f, -1269f), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, false), vec2<f32>(313f, 1000f), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, true), vec2<f32>(300f, 1285f), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, true), vec2<f32>(835f, -1090f), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), vec2<f32>(-931f, 1000f), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), vec2<f32>(-1997f, 1262f), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, true), vec2<f32>(1786f, -269f), vec3<bool>(true, true, true)));

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global2 = array<Struct_1, 9>();
    var var_0 = vec2<u32>(u_input.b.x, u_input.b.x);
    var var_1 = Struct_1(arg_1.c.yy, global4.b, vec3<bool>(true, all(!select(vec4<bool>(global3.c.x, true, global3.a.x, global3.c.x), vec4<bool>(global4.c.x, arg_1.a.x, global3.c.x, true), true)), any(vec4<bool>(u_input.c < arg_0.x, false, false, all(vec2<bool>(true, true))))));
    global1 = var_1.b.x;
    let var_2 = Struct_1(select(select(global4.c.zz, !select(vec2<bool>(false, true), global3.c.xz, global3.a.x), !(!arg_1.a)), vec2<bool>((true != global3.c.x) && !global4.c.x, true & !var_1.c.x), vec2<bool>(!any(vec4<bool>(var_1.a.x, global3.a.x, var_1.a.x, false)), !(0u >= u_input.b.x))), global4.b, !global3.c);
    return ~var_0.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global4 = Struct_1(vec2<bool>(5685i > abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-16856i, 0i, 0i, arg_0), vec4<i32>(arg_0, 0i, u_input.c, u_input.c))), !(!global4.c.x & all(vec3<bool>(arg_1.a.x, true, true)))), _wgslsmith_f_op_vec2_f32(round(arg_1.b)), vec3<bool>(!select(!global3.a.x, global3.c.x, arg_1.c.x), arg_1.c.x, !any(!global4.c)));
    var var_0 = Struct_1(global3.c.xx, global4.b, vec3<bool>(arg_1.c.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, arg_0, -25183i), vec4<i32>(arg_0, 0i, -38667i, -22434i)) > _wgslsmith_mod_i32(-1i, u_input.c), global3.a.x, true), arg_1.c.x));
    var var_1 = any(vec3<bool>(select(var_0.c.x, arg_1.a.x, true), false, true));
    var var_2 = 271f;
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(87024u, _wgslsmith_div_u32(u_input.b.x, u_input.a))), u_input.b), u_input.a);
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~(_wgslsmith_mod_u32(var_3.x, 50369u) >> ((17443u >> (1u % 32u)) % 32u)), var_3.x), var_3.x), 9u)];
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec2<f32>(-1426f, global3.b.x);
    let var_1 = func_3(firstTrailingBit(u_input.c & u_input.c), global2[_wgslsmith_index_u32(func_2(vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, u_input.c, -2147483647i, 2147483647i)), Struct_1(!vec2<bool>(global3.a.x, global3.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(global4.b.x, arg_0)), vec2<f32>(global3.b.x, var_0.x)), global3.c), _wgslsmith_f_op_f32(floor(-861f))), 9u)]);
    var var_2 = func_3(select(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c, -18746i, 47551i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, 1i), vec4<i32>(-52712i, u_input.c, 45779i, u_input.c)), i32(-1i) * -u_input.c), u_input.c, !(_wgslsmith_f_op_f32(global3.b.x - arg_0) <= -312f)), var_1);
    let var_3 = func_3(u_input.c, Struct_1(select(var_1.a, global3.a, false), var_2.b, var_1.c));
    var var_4 = u_input.c;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a, 4294967295u, u_input.a, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18311u, 0u, 0u, 0u), ~vec4<u32>(u_input.a, u_input.b.x, 36803u, u_input.a)), u_input.a));
    let var_1 = vec2<u32>(~var_0.x, func_1(global4.b.x) | func_2(select(vec4<i32>(20986i, 1454i, u_input.c, 3074i), vec4<i32>(-1i, 9836i, 8103i, 2147483647i), vec4<bool>(true, false, true, true)) ^ ~vec4<i32>(u_input.c, -5347i, u_input.c, 1i), func_3(select(74371i, u_input.c, global4.a.x), global2[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) + _wgslsmith_f_op_f32(-global4.b.x))));
    let var_2 = Struct_1(vec2<bool>(true, all(global4.c.yx)), vec2<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))), !vec3<bool>(!func_3(87674i, Struct_1(global3.a, vec2<f32>(global4.b.x, 267f), vec3<bool>(global4.c.x, global4.a.x, false))).a.x, all(global4.a), any(!global3.c)));
    global0 = array<vec2<i32>, 22>();
    let var_3 = select(-u_input.c, -u_input.c, !(!select(false, true, true)));
    var var_4 = select(select(!(!select(vec4<bool>(var_2.c.x, var_2.c.x, global3.c.x, false), vec4<bool>(false, false, global4.a.x, global4.c.x), vec4<bool>(false, var_2.a.x, true, true))), !select(vec4<bool>(true, false, false, global3.a.x), vec4<bool>(true, true, true, true), var_2.a.x & global3.a.x), !select(true, false, global4.c.x) | !any(global4.a)), !vec4<bool>(any(!global4.c), true, global4.c.x, global3.c.x), !vec4<bool>(true, all(!global3.a), select(global3.c.x, global4.b.x >= 514f, !global3.a.x), u_input.b.x < 13114u));
    global3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((i32(-1i) * -28748i) << (~var_1.x % 32u), ~1i, -1i, select(var_3, firstLeadingBit(_wgslsmith_div_i32(var_3, u_input.c)), all(vec4<bool>(true, var_4.x, global3.a.x, true)))), u_input.c, _wgslsmith_mult_i32(u_input.c, 77273i), 65086u, vec3<u32>(0u, u_input.b.x, ~var_1.x));
}


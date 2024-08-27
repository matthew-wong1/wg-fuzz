struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: bool;

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(29907u, Struct_1(-692f)), Struct_2(38970u, Struct_1(-435f)));

var<private> global3: Struct_1;

var<private> global4: i32 = 88877i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    var var_0 = vec2<i32>(reverseBits(17428i), ~u_input.d.x);
    let var_1 = !vec4<bool>(select(true, 1f > _wgslsmith_f_op_f32(-global3.a), true), true, all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec2<bool>(true, true)));
    global4 = 17611i;
    global0 = _wgslsmith_add_u32(39321u, ~abs(~reverseBits(1u)));
    return _wgslsmith_f_op_f32(sign(877f));
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1437f * -1490f)))))));
    let var_0 = !select(!vec2<bool>(true, 24921u != u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true);
    var var_1 = 42136u;
    var var_2 = global2[_wgslsmith_index_u32(~(~4294967295u), 2u)];
    let var_3 = ~(~u_input.c);
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.b.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_1 {
    global2 = array<Struct_2, 2>();
    global2 = array<Struct_2, 2>();
    global3 = arg_0;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1527f, arg_0.a, arg_2)), _wgslsmith_f_op_f32(arg_0.a * 1489f), 347f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, 2067f, -625f))), vec3<f32>(arg_1.a, arg_0.a, 321f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_0.a) + vec3<f32>(203f, 416f, arg_0.a)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, -753f, -187f)))))));
    global2 = array<Struct_2, 2>();
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_2(0u, func_4(func_2(), Struct_1(global3.a), false, arg_0));
    var var_1 = Struct_2(abs(_wgslsmith_sub_u32(~arg_1.x, _wgslsmith_div_u32(0u, arg_1.x))) << (_wgslsmith_add_u32(u_input.c.x, ~var_0.a) % 32u), Struct_1(_wgslsmith_f_op_f32(ceil(var_0.b.a))));
    global1 = _wgslsmith_clamp_i32(u_input.d.x >> (~(~0u) % 32u), _wgslsmith_div_i32(u_input.d.x, min(2147483647i, u_input.d.x) | u_input.d.x), ~(-16677i)) > 0i;
    var var_2 = false;
    let var_3 = var_0;
    return !(!(!(!all(vec3<bool>(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x));
    let var_1 = global2[_wgslsmith_index_u32(u_input.e.x, 2u)];
    let var_2 = all(vec2<bool>(true, !select(func_1(4294967295u, vec4<u32>(u_input.c.x, 1254u, 70872u, u_input.a)), true, false)));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 1411f, global3.a, var_1.b.a) + vec4<f32>(1035f, -1081f, global3.a, var_1.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, 539f, global3.a, global3.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -2001f, global3.a, global3.a), vec4<f32>(-880f, var_1.b.a, global3.a, var_1.b.a), var_2)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.a, var_1.b.a, global3.a, -318f))))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -1000f), 398f)), 289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f)), _wgslsmith_f_op_f32(f32(-1f) * -1898f))));
    global2 = array<Struct_2, 2>();
    let var_4 = select(var_0, ~var_0, true | !var_2);
    global0 = _wgslsmith_mod_u32(~22843u, max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(51137u, 16356u, 2765u)), u_input.b.wxy), 4294967295u)) | var_1.a;
    global2 = array<Struct_2, 2>();
    global4 = i32(-1i) * -var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(~(-1i), min(var_4, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_4, 2147483647i, -842i), vec4<i32>(2147483647i, u_input.d.x, -8779i, -2519i)))), ~(~abs(2147483647i)), var_0, var_0), var_1.a, _wgslsmith_mult_vec3_u32(~firstLeadingBit(~u_input.c), vec3<u32>(u_input.b.x, _wgslsmith_div_u32(23765u, 43212u), firstTrailingBit(4294967295u)) ^ (vec3<u32>(var_1.a, var_1.a, 0u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(40985u, 28835u, var_1.a), vec3<u32>(13648u, var_1.a, var_1.a), vec3<u32>(var_1.a, 56394u, u_input.c.x)) % vec3<u32>(32u)))), global3.a);
}


struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = true;
    global0 = Struct_2(global0.a, global0.b);
    var var_1 = vec2<bool>(global0.a.x, all(!global0.a.xx));
    let var_2 = var_1.x;
    var_1 = vec2<bool>(any(select(vec2<bool>(var_1.x, !var_1.x), vec2<bool>(true, true), var_1.x | any(global0.a))), !(!(global0.b.a >= global0.b.d)));
    return global0.b.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.wx);
    let var_1 = !vec3<bool>(true, global0.a.x, false);
    global0 = arg_1;
    var var_2 = Struct_3(42269i, arg_1.b, false, global0.b);
    var var_3 = _wgslsmith_add_i32(reverseBits(var_2.a), var_2.a) << (var_2.b.a % 32u);
    return Struct_3(~(-7210i), Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f - 1063f))), _wgslsmith_f_op_f32(f32(-1f) * -536f) >= _wgslsmith_f_op_f32(max(global0.b.e, _wgslsmith_f_op_f32(ceil(arg_1.b.e)))), !select(var_2.d.c, select(var_2.b.c, vec2<bool>(global0.b.c.x, arg_1.a.x), var_2.b.c), !vec2<bool>(global0.b.b, var_2.c)), 105263u, -1501f), global0.a.x, global0.b);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec3<bool> {
    let var_0 = !select(select(arg_0.d.c, func_2(vec2<f32>(global0.b.e, arg_0.d.e), Struct_2(vec3<bool>(false, false, global0.a.x), arg_0.d), firstTrailingBit(vec3<i32>(arg_0.a, 54198i, -14082i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.e, 586f, 1131f, -2190f) + vec4<f32>(global0.b.e, arg_0.b.e, 1612f, global0.b.e))).b.c, vec2<bool>(true, !global0.b.c.x)), select(vec2<bool>(all(arg_0.b.c), false), global0.a.xx, true), false);
    let var_1 = arg_0.a ^ (~54695i >> (max(~(~8915u), firstTrailingBit(~global0.b.d)) % 32u));
    global1 = array<vec2<u32>, 1>();
    global0 = Struct_2(!vec3<bool>(all(global0.a), false, global0.b.c.x), arg_0.d);
    var var_2 = (countOneBits(~3212u) >> (_wgslsmith_mult_u32(arg_0.d.d, 38430u) % 32u)) << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 16556u, arg_1), vec3<u32>(global0.b.a, arg_0.d.a, 77167u)), vec3<u32>(arg_1, arg_1, 71644u)), _wgslsmith_mult_u32(0u, 4294967295u << (0u % 32u))) % 32u);
    return !global0.a;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = any(global0.a);
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), u_input.a);
    global0 = func_5(Struct_2(func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(826f, -846f) - vec2<f32>(global0.b.e, global0.b.e)), Struct_2(vec3<bool>(false, global0.b.c.x, global0.a.x), global0.b), abs(vec3<i32>(-2147483647i, 0i, 11689i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.e, 1025f, global0.b.e, global0.b.e) * vec4<f32>(global0.b.e, global0.b.e, 1833f, global0.b.e))), countOneBits(0u)), Struct_1(~global0.b.d, all(func_4(Struct_3(u_input.a, global0.b, false, global0.b), global0.b.a)), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b.e, 1277f), vec2<f32>(-890f, -718f))), Struct_2(global0.a, global0.b), vec3<i32>(2574i, u_input.a, u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(-780f, -873f, -495f, -234f), vec4<f32>(global0.b.e, -1631f, global0.b.e, -1000f))).d.c, ~global0.b.a, global0.b.e)), select(global0.b.c.x, true != !global0.a.x, 2147483647i < abs(firstLeadingBit(u_input.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(func_2(vec2<f32>(971f, global0.b.e), Struct_2(vec3<bool>(global0.b.c.x, false, false), Struct_1(global0.b.a, global0.b.b, global0.a.zx, global0.b.d, global0.b.e)), vec3<i32>(u_input.a, 63781i, -2147483647i), vec4<f32>(796f, 897f, -1380f, global0.b.e)).b.d << (reverseBits(global0.b.a) % 32u), ~max(global0.b.d, global0.b.d), global0.b.d, _wgslsmith_clamp_u32(global0.b.d, firstLeadingBit(1u), ~63292u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.a, ~14010u, global0.b.a, global0.b.a), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 41620u, global0.b.a, global0.b.a), abs(vec4<u32>(global0.b.a, 4294967295u, 0u, 0u))))));
    var var_1 = global0.b.d;
    var_1 = ~firstTrailingBit(global0.b.d);
    var_0 = u_input.a;
    return func_5(Struct_2(!global0.a, global0.b), all(vec3<bool>(~u_input.a < 41559i, all(vec4<bool>(false, true, false, global0.b.c.x)), global0.a.x & true)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b.a, global0.b.d, global0.b.d, 4294967295u), ~vec4<u32>(39559u, 0u, 1u, global0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<vec2<u32>, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1430f, global0.b.e), vec2<f32>(global0.b.e, -1297f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(630f, global0.b.e))) * vec2<f32>(global0.b.e, 356f))))));
    let var_1 = ~(_wgslsmith_mod_u32(0u << (global0.b.d % 32u), 4294967295u) | func_1().b.a) | global0.b.a;
    var var_2 = Struct_1(var_1, !select(global0.a.x, false, any(!vec4<bool>(true, false, global0.a.x, true))), global0.b.c, 0u, _wgslsmith_f_op_f32(sign(305f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-751f, _wgslsmith_f_op_f32(989f - var_0.x), -1659f, _wgslsmith_f_op_f32(f32(-1f) * -1677f)))))), var_0.x, vec2<u32>(~var_1, 1u), ~(firstTrailingBit(vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) << (abs(select(vec4<u32>(var_2.d, 2781u, var_1, 4294967295u), vec4<u32>(global0.b.d, global0.b.a, var_1, 1u), true)) % vec4<u32>(32u))));
}


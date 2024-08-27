struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_0;
    var var_1 = countOneBits(~vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, global0.c), vec2<i32>(global0.c, -1i)), vec2<i32>(34058i, -2506i)), firstLeadingBit(u_input.e), ~(-1460i), _wgslsmith_add_i32(~arg_3.c, select(-1i, arg_3.c, global0.b))));
    global0 = arg_0;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(arg_0.c), _wgslsmith_dot_vec3_i32(var_1.zyz, var_1.xzx), ~(-1i), _wgslsmith_mod_i32(arg_1, -7942i)), vec4<i32>(-1i) * -vec4<i32>(arg_1, 17215i, -11921i, -2147483647i)), i32(-1i) * -min(-16573i, -1i)) ^ _wgslsmith_dot_vec3_i32(var_1.xxy & var_1.xzy, firstTrailingBit(~var_1.yxz));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(410f)), _wgslsmith_f_op_f32(-1042f - _wgslsmith_f_op_f32(round(-829f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(-1438f, global0.b, -8592i);
    let var_1 = _wgslsmith_f_op_f32(-1000f + 968f);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * 251f), global0.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-401f, -1490f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, var_2.a)), !vec2<bool>(global0.b, false))))) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.a));
    let var_4 = vec4<f32>(-1710f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-778f, true, var_0.c), -2147483647i, _wgslsmith_mod_u32(33047u, min(u_input.c.x, 57635u)), Struct_2(-927f, all(vec4<bool>(var_0.b, global0.b, false, true)), var_0.c >> (u_input.a.x % 32u)))), _wgslsmith_f_op_f32(ceil(var_3.x))), var_2.a, -449f);
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    var var_0 = ~select(u_input.c.x, ~4294967295u, 0i >= global0.c);
    var var_1 = false;
    var var_2 = vec2<i32>(0i, global0.c);
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(-218f + var_3.a), all(vec3<bool>(global0.b, global0.b, global0.b)), u_input.b), _wgslsmith_div_i32(2147483647i, var_2.x) ^ 1i, ~u_input.c.x ^ _wgslsmith_sub_u32(41841u, u_input.c.x), Struct_2(_wgslsmith_f_op_f32(-782f - arg_0.x), any(vec4<bool>(false, global0.b, false, global0.b)), i32(-1i) * -1i))))));
    return -520f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = 1000f;
    let var_1 = u_input.c.x;
    let var_2 = max(abs(-vec2<i32>(u_input.b, u_input.e)) << (vec2<u32>(~var_1, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32((abs(vec2<i32>(u_input.b, global0.c)) | vec2<i32>(global0.c, global0.c)) << (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u)), ~min(vec2<i32>(u_input.e, 12176i), vec2<i32>(0i, u_input.b)) | vec2<i32>(20524i, u_input.b)));
    var var_3 = ~var_1;
    let var_4 = Struct_2(1468f, true, 2147483647i << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.a.x, u_input.a.x)), u_input.d << (vec3<u32>(24107u, 53899u, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_u32(69697u >> (u_input.d.x % 32u), abs(1u), var_1)) % 32u));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(893f, _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(func_1(vec3<f32>(global0.a, global0.a, 119f), 155f))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, _wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_f_op_f32(global0.a - global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(331f, 1494f, 914f) - vec3<f32>(1378f, global0.a, -615f)) + vec3<f32>(328f, 1000f, global0.a)), true))));
    global0 = Struct_2(global0.a, !select(any(select(vec2<bool>(true, global0.b), vec2<bool>(true, global0.b), global0.b)), true, firstTrailingBit(u_input.e) != 1i), (_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.e, -8921i, u_input.e), vec3<i32>(u_input.b, 1i, 22826i)), ~vec3<i32>(u_input.e, -2147483647i, -1i)) ^ ((i32(-1i) * -30997i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 51746u, u_input.c.x), vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.a.x)) % 32u))) & (0i & (1749i | abs(u_input.b))));
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)), -643f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec3<f32>(global0.a, -1221f, -905f), -1710f)), global0.a)))))), true, 1i);
    var var_2 = Struct_1(-1001f);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)) + var_2.a), u_input.d.x > 4294967295u, var_1.c ^ _wgslsmith_clamp_i32(u_input.b | u_input.e, u_input.e, ~(~global0.c)));
    var var_4 = func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1614f, -1000f, var_1.a), vec3<f32>(1092f, -1000f, var_2.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.a, var_1.a, 847f), vec3<f32>(var_1.a, 894f, 3540f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2089f, -1148f, 1197f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, -1000f, 725f), vec3<f32>(392f, var_3.a, 1157f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, var_2.a, -1065f), vec3<f32>(global0.a, var_3.a, -1471f), vec3<bool>(false, true, var_0))), false))))));
    var var_5 = Struct_1(676f);
    let x = u_input.a;
    s_output = StorageBuffer(25569i, 1i);
}


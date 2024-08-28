struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -18102i, 0i), Struct_1(94992u), Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(vec4<i32>(25992i, -31473i, 14067i, -20867i), Struct_1(0u), Struct_1(24366u), Struct_1(4294967295u)), Struct_2(vec4<i32>(16421i, 0i, 5588i, -23781i), Struct_1(0u), Struct_1(1u), Struct_1(130687u)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 35747i, i32(-2147483648)), Struct_1(1u), Struct_1(27493u), Struct_1(0u)), Struct_2(vec4<i32>(0i, -33349i, 1i, 0i), Struct_1(5984u), Struct_1(4294967295u), Struct_1(79549u)), Struct_2(vec4<i32>(1i, -54046i, i32(-2147483648), 0i), Struct_1(1u), Struct_1(1u), Struct_1(63019u)), Struct_2(vec4<i32>(-46744i, -20667i, i32(-2147483648), -3744i), Struct_1(1u), Struct_1(4294967295u), Struct_1(27167u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1309f * -366f) - _wgslsmith_f_op_f32(-1429f - _wgslsmith_f_op_f32(abs(-411f))))));
    var var_1 = Struct_1(~371u);
    let var_2 = global1[_wgslsmith_index_u32(0u, 7u)];
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -533f);
    var var_3 = ~_wgslsmith_mod_u32(firstLeadingBit(var_1.a), max(select(var_2.d.a, 0u, true), ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(27580u, var_1.a))));
    return var_2.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(abs(u_input.a.x & firstTrailingBit(5473u)), 7u)];
    let var_1 = Struct_1(~(~_wgslsmith_sub_u32(func_2(u_input.d.x).a, _wgslsmith_mod_u32(0u, 4294967295u))));
    var var_2 = i32(-1i) * -1i;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-113f - -349f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) * arg_2.x));
    var var_4 = vec3<f32>(var_3.x, 1181f, _wgslsmith_f_op_f32(round(295f)));
    return _wgslsmith_mod_u32(~arg_1.a, var_0.d.a);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 7>();
    global0 = true;
    var var_0 = func_2(~u_input.b.x);
    let var_1 = any(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true)));
    var var_2 = func_2(-162i);
    return func_2(-4006i);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(43334u, 7u)];
    var var_1 = reverseBits(4294967295u);
    let var_2 = func_4(44300u >> (var_0.c.a % 32u), _wgslsmith_mult_vec4_i32(select(~(-vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.d.x)), ~vec4<i32>(0i, var_0.a.x, -27542i, 1i), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), ~(-vec4<i32>(-2147483647i, u_input.d.x, -10785i, u_input.e) & var_0.a)), func_2(u_input.d.x));
    global1 = array<Struct_2, 7>();
    global0 = arg_2.x | arg_2.x;
    return Struct_1(var_0.d.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    global1 = array<Struct_2, 7>();
    var var_0 = func_5(func_4(func_3(Struct_1(~u_input.c), func_2(19560i), arg_0.xzz), ~vec4<i32>(21989i, arg_1.a.x, -23408i, 62480i) >> (vec4<u32>(1u, ~4294967295u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), Struct_1(0u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zwz + arg_0.xww)))), arg_0.zxz, select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), false))), select(select(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true)), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_div_f32(278f, 865f), false, true, any(vec4<bool>(false, true, true, true))), vec4<bool>(all(vec3<bool>(false, false, false)), !all(vec4<bool>(false, false, false, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), any(vec4<bool>(false, false, true, false)))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(92886u, 12098u, arg_1.d.a, u_input.a.x) ^ vec4<u32>(arg_1.d.a, 4121u, arg_1.b.a, arg_1.d.a), ~vec4<u32>(arg_1.c.a, u_input.c, 40758u, 4294967295u)), 41819u >> (u_input.c % 32u), arg_1.d.a));
    global0 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), all(vec3<bool>(true, false, true))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), true));
    global1 = array<Struct_2, 7>();
    let var_1 = u_input.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1942f), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1463f - -1209f) - _wgslsmith_f_op_f32(-1832f + -1000f)), _wgslsmith_f_op_f32(-1233f - _wgslsmith_f_op_f32(sign(358f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-727f)) - _wgslsmith_f_op_f32(min(-1000f, -818f)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, select(u_input.a.x, u_input.a.x, true)), 7u)]);
    global1 = array<Struct_2, 7>();
    let var_0 = 4294967295u;
    global0 = true;
    var var_1 = global1[_wgslsmith_index_u32(var_0, 7u)];
    var var_2 = (_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(u_input.a.x, var_1.b.a, 0u)), vec3<u32>(81126u, 6534u, _wgslsmith_div_u32(var_0, 12327u))) >> (~(vec3<u32>(u_input.c, 4294967295u, u_input.c) << (~vec3<u32>(44010u, var_0, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))) | ~_wgslsmith_div_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 38635u, 86022u), vec3<u32>(var_1.b.a, 4294967295u, var_1.c.a)), vec3<u32>(u_input.c, var_0, var_0) ^ vec3<u32>(var_0, 4294967295u, var_0)), vec3<u32>(0u | u_input.c, 1u, var_0));
    var_1 = global1[_wgslsmith_index_u32(10824u, 7u)];
    global0 = ~u_input.c <= var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2727f), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.c.a, 30998u), firstLeadingBit(4294967295u), var_2.x), ~firstLeadingBit(vec3<u32>(var_0, 4294967295u, 1u)))));
}


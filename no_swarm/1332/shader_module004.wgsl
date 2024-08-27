struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 27686u, 29083u, 0u), vec4<u32>(30688u, 1u, 97272u, 1u));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> f32 {
    global1 = Struct_1(vec2<i32>(countOneBits(~28550i), -8200i), _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(arg_2, arg_2)), firstLeadingBit(~arg_0.ywy));
    global0 = array<vec4<u32>, 2>();
    let var_0 = ~1u;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-976f + _wgslsmith_div_f32(-712f, 331f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2116f + 704f), _wgslsmith_f_op_f32(f32(-1f) * -1831f)))))), 971f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = !vec2<bool>(all(vec3<bool>(true, true, true)), false);
    let var_1 = _wgslsmith_f_op_f32(round(-562f));
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 2u)], false, -47071i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - var_1), var_1))), 607f);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(-2082f, -1091f, false)), _wgslsmith_f_op_f32(f32(-1f) * -123f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(35161u, 1u, 606u, 1u), arg_0, min(0i, -2147483647i))), -208f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-798f, _wgslsmith_f_op_f32(f32(-1f) * -125f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1566f, 962f), vec2<f32>(-262f, -1139f)))))))));
    let var_1 = var_0.x;
    var var_2 = Struct_1(vec2<i32>(-2147483647i, min(max(arg_1.a.x, -1i), abs(min(-1i, u_input.a.x)))), global1.a.x, arg_1.c);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)))));
    global0 = array<vec4<u32>, 2>();
    return Struct_1(global1.a, 4557i, var_2.c ^ arg_1.c);
}

fn func_1() -> vec2<f32> {
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    var var_0 = 1u;
    let var_1 = func_4(all(vec4<bool>(func_2(Struct_1(vec2<i32>(u_input.a.x, 0i), global1.b, vec3<u32>(global1.c.x, 14148u, global1.c.x)), Struct_1(global1.a, -11978i, vec3<u32>(1u, global1.c.x, global1.c.x))) & true, !(global1.c.x != 6073u), ~global1.c.x >= _wgslsmith_dot_vec3_u32(global1.c, global1.c), true)), Struct_1(~(~u_input.a.yy), 25457i, ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.x, global1.c.x, 75867u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.x, global1.c.x, global1.c.x), vec3<u32>(33815u, global1.c.x, global1.c.x)))));
    var var_2 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), -2147483647i != u_input.b.x), false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), !(-2147483647i <= var_1.b)), true), select(vec2<bool>(true, 26767i <= (var_1.b | var_1.a.x)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(true, false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false != all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1159f * 466f), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 2u)], false, 2147483647i))))), vec2<f32>(_wgslsmith_div_f32(-928f, _wgslsmith_f_op_f32(round(-220f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-373f, 321f))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(select(global0[_wgslsmith_index_u32(4294967295u, 2u)] ^ vec4<u32>(global1.c.x, global1.c.x, 4294967295u, global1.c.x), vec4<u32>(var_1.c.x, var_1.c.x, 94660u, 27160u), var_2.x), any(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x))), min(-2147483647i, -1i))), _wgslsmith_f_op_f32(f32(-1f) * -230f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> vec3<u32> {
    global0 = array<vec4<u32>, 2>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1457f * 531f) * _wgslsmith_f_op_f32(-188f * arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -680f))));
    var var_1 = Struct_1(u_input.a.xy >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3, 17394u, 12797u), vec4<u32>(77u, 4294967295u, arg_1.c.x, global1.c.x)), arg_3) % vec2<u32>(32u)), min(0i, 0i), arg_1.c);
    var var_2 = arg_0.x;
    var var_3 = ~(~max(~global0[_wgslsmith_index_u32(arg_1.c.x ^ arg_3, 2u)], _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(arg_3, 2u)], vec4<u32>(global1.c.x, arg_3, global1.c.x, global1.c.x)) << (~vec4<u32>(arg_1.c.x, arg_3, global1.c.x, 1u) % vec4<u32>(32u))));
    return ~var_3.wyx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, 2147483647i, func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))), func_4(_wgslsmith_clamp_u32(19723u, global1.c.x, global1.c.x) >= global1.c.x, func_4(all(vec3<bool>(true, false, false)), Struct_1(vec2<i32>(u_input.b.x, -45569i), -2147483647i, global1.c))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, false, false))), !any(vec2<bool>(false, true))), ~global1.c.x));
    global0 = array<vec4<u32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f + -364f)))) + -2946f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(396f, -534f)))), any(vec2<bool>(true, true))));
    global1 = Struct_1(firstLeadingBit(vec2<i32>(-max(66784i, u_input.c), 0i)), countOneBits(-global1.b), _wgslsmith_div_vec3_u32(vec3<u32>(global1.c.x | 0u, 27661u, _wgslsmith_mod_u32(global1.c.x, global1.c.x)) & abs(global1.c), ~vec3<u32>(1u >> (global1.c.x % 32u), ~4294967295u, _wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(global1.c.x, 1u, 59612u)))));
    global1 = func_4(!all(vec3<bool>(true, false, true)), func_4(true, Struct_1((vec2<i32>(1i, global1.a.x) >> (global1.c.zz % vec2<u32>(32u))) >> (~vec2<u32>(global1.c.x, global1.c.x) % vec2<u32>(32u)), -1i, ~(~vec3<u32>(26848u, 27505u, 0u)))));
    var_0 = 198f;
    var var_1 = u_input.a.x;
    let var_2 = func_4(!func_2(func_4(global1.b == -5007i, Struct_1(u_input.b.zy, u_input.a.x, global1.c)), func_4(false, Struct_1(global1.a, -1i, global1.c))), Struct_1(firstLeadingBit(-u_input.b.yx), -2147483647i, firstLeadingBit(global1.c)));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1993f - 187f), ~u_input.c, global1.c.x);
}


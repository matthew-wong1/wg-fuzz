struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 4294967295u, 11334u, 4294967295u, 14656u, 15888u, 12322u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    var var_1 = arg_1.a.a.x;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_2 = _wgslsmith_f_op_f32(-457f * _wgslsmith_div_f32(_wgslsmith_div_f32(386f, -1000f), var_0.a.c.x));
    return -1148f;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -487f), 1f))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-639f)), -1906f, _wgslsmith_f_op_f32(-1000f * -985f), _wgslsmith_f_op_f32(max(232f, 879f))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.a, u_input.b) & vec4<i32>(u_input.a, 0i, -1i, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-690f - -368f), _wgslsmith_f_op_f32(trunc(641f)), _wgslsmith_div_f32(-850f, -780f))), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(554f, 491f) + vec2<f32>(-868f, -618f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, -3137f)))) - vec2<f32>(_wgslsmith_f_op_f32(select(-1007f, _wgslsmith_f_op_f32(-108f + -1033f), true)), 598f)));
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.a.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * var_0.a)))), var_0.a), Struct_2(var_0.b.a, var_0.b.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1313f, _wgslsmith_f_op_f32(-1117f - var_0.c.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(580f, 2460f), vec2<f32>(220f, var_0.c.x)))))));
    let var_2 = var_1;
    let var_3 = Struct_1(vec4<f32>(var_0.b.a.c.x, var_2.a, 1389f, _wgslsmith_f_op_f32(func_3(firstTrailingBit(vec2<i32>(1799i, var_0.b.a.b.x)), Struct_3(var_2.b.a)))), vec4<i32>(firstTrailingBit(-1i), u_input.a, 1i, -1i), var_1.b.a.c);
    var var_4 = var_1.b.a.b.x;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~8533u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(abs(arg_0), 7u)], abs(1u))), 7u)]);
    global0 = array<u32, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(arg_1.b.a.c.xyy));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(var_1.x, 2256f, var_1.x))) - _wgslsmith_f_op_vec3_f32(var_1 + arg_1.b.a.a.wwy)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.b.a.a.xxx)) - _wgslsmith_f_op_vec3_f32(-var_1))));
    var_2 = func_2().b.a.a.wyw;
    return func_2().b.a;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1482f)))), _wgslsmith_f_op_f32(ceil(-659f))), Struct_2(func_4(~global0[_wgslsmith_index_u32(1u, 7u)], func_2(), true), !vec2<bool>(true, any(vec3<bool>(arg_0, arg_0, false)))), vec2<f32>(-1203f, 967f));
    let var_1 = all(select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, var_0.b.b.x, var_0.b.b.x, true), vec4<bool>(var_0.b.b.x, arg_0, true, var_0.b.b.x))), !select(select(vec4<bool>(true, true, var_0.b.b.x, true), vec4<bool>(false, arg_0, var_0.b.b.x, true), true), select(vec4<bool>(true, arg_0, var_0.b.b.x, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(false, false, arg_0, true)), vec4<bool>(false, arg_0, true, arg_0)), vec4<bool>(all(vec3<bool>(arg_0, arg_0, true)), true, all(vec3<bool>(true, true, true)), all(!vec3<bool>(false, var_0.b.b.x, true)))));
    let var_2 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_sub_u32(select(33808u, u_input.c.x, var_0.b.b.x), u_input.c.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 16298u, 34486u, global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(34373u, 51193u, 18610u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 12503u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(30757u, 7u)], 4294967295u), abs(vec3<u32>(u_input.c.x, 12631u, global0[_wgslsmith_index_u32(42173u, 7u)]))))));
    global0 = array<u32, 7>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a.a)), vec4<i32>(func_4(u_input.c.x, var_0, !select(true, false, var_1)).b.x, func_4(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), var_0, true).b.x ^ (u_input.a ^ 28725i), ~u_input.b, -u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a.c))))));
    return StorageBuffer(u_input.a, firstLeadingBit(-func_2().b.a.b.zx | vec2<i32>(u_input.a, i32(-1i) * -31870i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    let var_0 = _wgslsmith_f_op_f32(403f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3080f - -1207f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = -(~vec4<i32>(u_input.a, u_input.a, u_input.b, ~u_input.b));
    let var_2 = 30633i;
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = func_1((true && (_wgslsmith_f_op_f32(var_0 - 1270f) >= _wgslsmith_div_f32(1460f, -129f))) || (_wgslsmith_f_op_f32(floor(var_0)) >= _wgslsmith_f_op_f32(round(1222f))));
}


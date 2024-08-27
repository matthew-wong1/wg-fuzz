struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32 = -289f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    return _wgslsmith_mult_u32(u_input.a, 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    global0 = vec4<bool>(!(!global0.x || !(arg_1.x | global0.x)), arg_1.x, true, false);
    var var_0 = all(vec4<bool>(arg_1.x, arg_1.x, !arg_1.x, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(925f, -438f), vec2<f32>(177f, -753f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 185f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-969f, 110f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1198f, 765f), vec2<f32>(-321f, -373f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1307f, -1426f) + vec2<f32>(253f, -1783f)), vec2<f32>(-344f, -780f))))));
    var var_2 = abs(-(~6450i)) << (_wgslsmith_mult_u32(u_input.a, arg_0.x) % 32u);
    var_0 = arg_1.x;
    return Struct_1(arg_1.x);
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = func_3(vec3<u32>(func_2(), min(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_clamp_u32(93081u, arg_0.a, arg_0.a)), 8509u >> (~4294967295u % 32u)), 4294967295u), !(!vec4<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), any(vec2<bool>(true, true)), true, global0.x)));
    let var_1 = var_0;
    var var_2 = global0.xwz;
    var var_3 = Struct_2(1u);
    var var_4 = -1000f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = select(vec4<bool>(max(var_0 & u_input.a, 0u) > _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), var_0), false, func_1(Struct_2(u_input.a)), func_1(Struct_2(~var_0))), !select(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x), any(global0.yz)), select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, false, global0.x, global0.x), false)), true), vec4<bool>(false, true, false, any(global0.zx)));
    var var_1 = Struct_2(_wgslsmith_mult_u32(var_0, u_input.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-865f, -923f)), vec2<f32>(-509f, 1063f))))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1172f * 797f), _wgslsmith_f_op_f32(step(369f, 263f)))), _wgslsmith_f_op_f32(f32(-1f) * -626f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * -163f) + -989f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-648f)) + 1f)))));
    var_1 = Struct_2(~4294967295u);
    var var_3 = true;
    let var_4 = !select(vec3<bool>(global0.x, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true), select(select(vec3<bool>(global0.x, global0.x, false), select(global0.xww, vec3<bool>(global0.x, global0.x, global0.x), global0.x), !global0.x), vec3<bool>(global0.x, true, global0.x || global0.x), !global0.x), select(global0.ywy, vec3<bool>(true, !global0.x, false), !global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(-27606i, firstTrailingBit(2147483647i >> (var_0 % 32u)), u_input.c.x), max(firstLeadingBit(u_input.c) >> (~vec3<u32>(1u, 2042u, 1u) % vec3<u32>(32u)), u_input.c)), max(vec4<i32>(0i, ~2147483647i, ~(~38500i), 46837i), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(u_input.b, -21607i, 3449i, u_input.b), vec4<i32>(52106i, u_input.b, u_input.c.x, u_input.c.x), !var_4.x), vec4<i32>(-42403i, u_input.c.x, -2147483647i, -6908i) ^ ~vec4<i32>(-17266i, u_input.b, u_input.c.x, -68523i))));
}


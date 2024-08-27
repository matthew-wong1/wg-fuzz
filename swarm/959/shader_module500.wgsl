struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = ~abs(-u_input.a.x);
    global0 = vec2<u32>(~global0.x, ~(~4294967295u));
    var_0 = 3657i;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2213f, -994f)) - _wgslsmith_f_op_f32(trunc(-1230f)));
    return arg_0.yx;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1164f, -1014f, arg_1.x)) - _wgslsmith_f_op_f32(select(-563f, -249f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-354f + -181f), 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-386f, 738f)))))));
    let var_1 = vec2<bool>(true, all(select(vec4<bool>(arg_0 | arg_0, false, arg_1.x || false, true), vec4<bool>(arg_0, 33715u > u_input.c.x, arg_1.x & true, any(vec3<bool>(false, arg_0, false))), !arg_1.x == arg_0)));
    let var_2 = -13008i;
    global0 = vec2<u32>(0u, ~(~abs(u_input.c.x)));
    var var_3 = vec2<bool>(true, true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1350f, -146f, 810f, 569f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 380f, -625f, -774f) - vec4<f32>(593f, -1295f, 515f, 321f)))))), reverseBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.x, 1u), 4294967295u, 58096u), u_input.c.x & ~global0.x)), !var_1.x);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = u_input.b;
    var var_1 = func_3(!arg_3.x, !func_2(arg_3));
    global0 = max(vec2<u32>(~abs(~41149u), var_1.b), arg_1.ww);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -861f), arg_0, _wgslsmith_f_op_f32(floor(var_1.a.x)));
    let var_3 = u_input.c;
    return 1982f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(global0.x, 1u);
    var var_0 = !vec3<bool>(true, countOneBits(1i >> (global0.x % 32u)) > u_input.b, !(!any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -481f), reverseBits(vec4<u32>(82434u, 85877u, 4294967295u, global0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -301f, -1989f, 918f), vec4<f32>(205f, -488f, -556f, 332f), var_0.x)), !(!vec4<bool>(var_0.x, false, false, var_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1294f)) + _wgslsmith_f_op_f32(max(577f, 1000f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1329f), ~vec4<u32>(12606u, u_input.c.x, 1u, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, 813f, 812f, 1000f)), vec4<bool>(var_0.x, true, true, var_0.x)))) - -434f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-993f, -1151f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1152f, -289f, false)))))));
    global0 = u_input.c.zx;
    let var_3 = global0.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1871f);
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(func_3(var_0.x, select(vec2<bool>(var_0.x, var_0.x), !select(var_0.zy, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)), var_0.yx)).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1395f, var_4.x, -993f))))), var_4.x, select(~(firstTrailingBit(u_input.c.zy) << ((u_input.c.yy << (vec2<u32>(16590u, global0.x) % vec2<u32>(32u))) % vec2<u32>(32u))), ~abs(~u_input.c.xx), select(select(vec2<bool>(true, true), !var_0.xx, !var_0.x), !func_2(vec4<bool>(true, true, true, true)), any(var_0.xy))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.x))), u_input.c.x & 72043u);
}


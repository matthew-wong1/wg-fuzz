struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global0 = array<vec2<u32>, 11>();
    let var_0 = abs(~_wgslsmith_sub_u32(u_input.a.x, ~0u));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_0, u_input.a.x, u_input.a.x)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 23519u, var_0), u_input.a, vec4<u32>(var_0, var_0, var_0, var_0)), u_input.a), false);
    let var_2 = vec4<bool>(true, var_1.b, any(!vec4<bool>(true, true | arg_1, var_1.b, all(vec2<bool>(arg_1, arg_1)))), !(!select(var_1.b, true, false)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-105f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + _wgslsmith_f_op_f32(ceil(-833f)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    var var_0 = arg_0;
    let var_1 = -(~(-vec4<i32>(10449i, 20861i, -21830i, 4898i) << (vec4<u32>(u_input.a.x << (0u % 32u), max(arg_0.x, u_input.a.x), 34562u, reverseBits(0u)) % vec4<u32>(32u))));
    var_0 = vec2<u32>(u_input.a.x, abs(u_input.a.x));
    return _wgslsmith_f_op_f32(283f - -1263f);
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(1i, 1i, 1i) ^ select(vec3<i32>(-1193i, -24054i, 0i), vec3<i32>(-47941i, 1i, 0i), false), true)), 993f));
    global0 = array<vec2<u32>, 11>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~min(u_input.a.yz, u_input.a.xy) << (u_input.a.zy % vec2<u32>(32u)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1991f))));
    var_0 = _wgslsmith_f_op_f32(-1f);
    global0 = array<vec2<u32>, 11>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(~(vec3<i32>(-1i, -27586i, 3920i) << (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u))), false)))), 273f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1()), true, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-28438i, -109519i, -30425i, 0i), min(vec4<i32>(-1i, -6782i, -14764i, 0i), vec4<i32>(0i, -31644i, 0i, -2147483647i)), vec4<i32>(0i, -1033i, 0i, -39002i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 0i, -2147483647i, 2024i), vec4<i32>(-7808i, -315i, -1i, 1i))), select(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), 1u < u_input.a.x, true, true), vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)), Struct_1(u_input.a, true));
    global0 = array<vec2<u32>, 11>();
    var_0 = Struct_2(var_0.a, all(vec3<bool>(true, false, var_0.b)), var_0.c, !vec4<bool>(var_0.e.b, all(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), true, var_0.b), var_0.e);
    let var_1 = 19102u;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.c.yy, _wgslsmith_f_op_vec3_f32(func_1()).zx);
}


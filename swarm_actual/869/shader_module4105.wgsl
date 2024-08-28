struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec3<i32>(0i, 1i, 0i));

var<private> global1: f32 = 1000f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_2(select(!select(!global0.a, vec2<bool>(global0.a.x, global0.a.x), select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(true, true), global0.a)), select(select(!vec2<bool>(true, global0.a.x), global0.a, global0.a), vec2<bool>(global0.a.x, true), true), !any(select(global0.a, global0.a, true))), select(global0.b, ~vec3<i32>(u_input.d, global0.b.x, 3293i) & (select(global0.b, vec3<i32>(u_input.e.x, u_input.e.x, 1i), vec3<bool>(global0.a.x, false, global0.a.x)) ^ select(vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(global0.b.x, 1i, 0i), global0.a.x)), true));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1073f, 729f)) + _wgslsmith_f_op_f32(f32(-1f) * -1233f)))), _wgslsmith_mod_u32(~select(u_input.a, u_input.a, false), u_input.c.x), _wgslsmith_dot_vec3_i32((u_input.b & -u_input.b) >> (_wgslsmith_add_vec3_u32(u_input.c, u_input.c | vec3<u32>(u_input.a, u_input.a, u_input.c.x)) % vec3<u32>(32u)), vec3<i32>(~(-u_input.e.x), _wgslsmith_dot_vec3_i32(global0.b, ~vec3<i32>(global0.b.x, 0i, 28211i)), ~u_input.e.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(0u, 26504u, u_input.c.x)) % 32u))), vec3<bool>(!(!all(vec3<bool>(global0.a.x, false, global0.a.x))), true, true), true);
    var_0 = Struct_1(var_0.a, var_0.b, reverseBits(~2147483647i << (u_input.a % 32u)), var_0.d, !select(all(vec3<bool>(true, global0.a.x, false)), true, true) | (any(!vec4<bool>(var_0.e, global0.a.x, global0.a.x, false)) & var_0.d.x));
    var var_1 = vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1298f, var_0.a, false)))) * var_0.a)), 804f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1876f, var_1.x, -3132f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -219f, var_0.a), vec3<f32>(-611f, var_1.x, 1717f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, -933f, var_1.x)))))));
    return !global0.a;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f + 154f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(855f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-713f, 636f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1452f) + _wgslsmith_f_op_f32(2150f * 649f))), 961f), select(vec2<bool>(true, true), !func_3(), all(!vec2<bool>(global0.a.x, true)))));
    var var_1 = Struct_2(global0.a, vec3<i32>(_wgslsmith_div_i32(-2147483647i, u_input.d), 1i, ~global0.b.x) ^ u_input.b);
    var var_2 = Struct_2(!vec2<bool>(abs(12645u) <= ~u_input.a, true), vec3<i32>(-(~(~var_1.b.x)), global0.b.x, -13477i));
    let var_3 = vec4<i32>(u_input.d, ~min(var_2.b.x, ~countOneBits(9424i)), reverseBits(2147483647i), var_2.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * -1105f))))));
}

fn func_1() -> bool {
    let var_0 = vec2<f32>(561f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-524f, 1244f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())))), -280f));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1995f, var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1006f, var_0.x) * vec3<f32>(-436f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, 527f, 261f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -898f, var_0.x))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(114f + 1222f), _wgslsmith_f_op_f32(round(var_0.x))))), vec3<bool>(global0.a.x | (true || !global0.a.x), false, any(!(!vec3<bool>(global0.a.x, global0.a.x, false))))));
    let var_2 = vec2<i32>(reverseBits(-31067i), 1i);
    let var_3 = Struct_2(global0.a, global0.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2808f)), _wgslsmith_f_op_f32(func_2())))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(999f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0.x, 1185f), vec3<f32>(var_1.x, var_0.x, var_0.x))))));
    return func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1203f)));
    let var_0 = vec4<bool>(!(!all(select(vec2<bool>(global0.a.x, true), global0.a, vec2<bool>(global0.a.x, global0.a.x)))), !(global0.a.x && (true | all(vec4<bool>(false, global0.a.x, global0.a.x, true)))), true, func_1());
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1004f)), u_input.c.x, u_input.b.x | -3668i, select(select(select(vec3<bool>(false, false, global0.a.x), var_0.wzy, var_0.ywy), select(!var_0.yxw, var_0.xyz, vec3<bool>(var_0.x, global0.a.x, var_0.x)), all(!vec4<bool>(var_0.x, global0.a.x, var_0.x, var_0.x))), select(!vec3<bool>(var_0.x, false, false), select(select(var_0.xwx, var_0.wwz, global0.a.x), select(var_0.yww, var_0.wwy, var_0.xyx), global0.a.x), true), global0.a.x), !var_0.x);
    var var_2 = Struct_2(vec2<bool>(global0.a.x, false), vec3<i32>(firstLeadingBit(global0.b.x & u_input.d), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-75307i), var_1.c, 1i), _wgslsmith_clamp_i32(abs(-23210i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.c), global0.b.yz), ~global0.b.x)), ~37084i));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) * var_1.a), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4967i, global0.b.x, global0.b.x, var_2.b.x), vec4<i32>(u_input.e.x, 23226i, var_2.b.x, 0i)), global0.b.x) == 0i))));
    var var_3 = u_input.d;
    var var_4 = _wgslsmith_f_op_f32(min(var_1.a, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-417f, var_1.a, 1306f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1317f, var_1.a, -164f)), vec3<bool>(var_0.x, true, global0.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a, -653f) * vec3<f32>(var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 204f) * vec3<f32>(999f, 263f, 187f))), var_1.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(172f, -375f, var_1.a), vec3<f32>(2015f, var_1.a, -1111f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, 1291f))))));
}


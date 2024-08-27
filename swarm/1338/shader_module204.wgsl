struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = !(!vec3<bool>(true, global0.x, any(!vec3<bool>(global0.x, false, false))));
    var var_0 = Struct_1(vec2<i32>(-28888i, countOneBits(u_input.a)), !(!select(select(vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, global0.x), global0.x), !vec3<bool>(false, global0.x, global0.x), !global0.x)), true);
    global0 = vec3<bool>(true, select(global0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1391f))) > -1000f), false);
    let var_1 = Struct_2(~(-41934i), Struct_1(var_0.a, select(select(var_0.b, !vec3<bool>(global0.x, var_0.b.x, var_0.c), true), var_0.b, global0.x), true), true, vec4<bool>(select(global0.x, -u_input.b > _wgslsmith_add_i32(var_0.a.x, 39593i), true), !(var_0.c && true), global0.x, any(select(!var_0.b.zx, global0.xx, global0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-369f, 386f) * vec2<f32>(-799f, 313f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2236f, 710f))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(387f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -325f))))));
    return false;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global0 = vec3<bool>(true, true, true);
    global0 = vec3<bool>(!global0.x, global0.x, select(select(true, all(vec2<bool>(true, global0.x)), true), all(vec2<bool>(true, false)), !(func_3(vec4<i32>(5322i, arg_0, arg_0, -8607i)) || global0.x)));
    global0 = select(select(!vec3<bool>(true, any(vec2<bool>(true, false)), !global0.x), !select(!vec3<bool>(false, global0.x, global0.x), !vec3<bool>(false, true, global0.x), global0.x || global0.x), false), !select(!vec3<bool>(true, global0.x, true), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, global0.x)), false), global0.x);
    var var_0 = Struct_2(~(-4537i), Struct_1(select(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.a, u_input.b))), firstTrailingBit(vec2<i32>(58690i, arg_0) | vec2<i32>(arg_0, u_input.a)), global0.x), vec3<bool>(global0.x & true, global0.x, all(vec3<bool>(true, true, false))), global0.x), !(_wgslsmith_f_op_f32(step(1136f, 1951f)) <= -202f), vec4<bool>(global0.x, true, true, (arg_0 >> (4294967295u % 32u)) <= countOneBits(u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(341f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1279f * 186f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(250f + 221f), 788f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -345f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(1129f * -440f), -467f, -134f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -679f), -1317f, -759f, _wgslsmith_f_op_f32(floor(1193f)))))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2597f, var_1.x, -425f, var_1.x) - vec4<f32>(-2005f, var_1.x, -1000f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -866f, var_1.x, 231f) * vec4<f32>(851f, var_1.x, 815f, var_1.x)), false))), vec4<f32>(_wgslsmith_f_op_f32(max(-166f, _wgslsmith_f_op_f32(trunc(-2681f)))), var_1.x, var_1.x, _wgslsmith_f_op_f32(-753f - 1170f))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f + -988f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -664f), 683f, any(arg_0.d.zxy))) * 226f), -1815f, -691f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -785f, var_0.x, -1000f))))) + vec4<f32>(var_0.x, -175f, _wgslsmith_f_op_f32(max(-244f, _wgslsmith_f_op_f32(f32(-1f) * -178f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(-466f * 2867f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(2710f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-395f * 443f), 828f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(-1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_div_f32(1758f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1566f + _wgslsmith_f_op_f32(var_0.x - 1000f)))));
    let var_2 = arg_0.b.a.x;
    var_0 = _wgslsmith_f_op_vec4_f32(func_2(u_input.b));
    let var_3 = -(~(-min(vec2<i32>(arg_0.b.a.x, arg_0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.a.x, -1i), vec2<i32>(-38344i, arg_0.a)))));
    return ~max(abs(-min(16865i, u_input.a)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(true, global0.x, all(vec3<bool>(true, global0.x, false)))), !vec3<bool>(true, !select(global0.x, false, global0.x), false), true);
    global0 = select(vec3<bool>(false, false, var_0.x), !(!select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, global0.x), true), vec3<bool>(global0.x, true, global0.x))), true);
    var_0 = vec3<bool>(var_0.x, false, true);
    global0 = !vec3<bool>(func_1(Struct_2(u_input.b, Struct_1(vec2<i32>(0i, -2147483647i), vec3<bool>(true, true, false), true), global0.x, vec4<bool>(var_0.x, global0.x, var_0.x, global0.x)), true | global0.x) < _wgslsmith_div_i32(func_1(Struct_2(0i, Struct_1(vec2<i32>(58063i, -8309i), vec3<bool>(global0.x, var_0.x, true), true), true, vec4<bool>(false, global0.x, false, var_0.x)), global0.x), abs(-1696i)), var_0.x, true);
    global0 = select(select(!vec3<bool>(u_input.c == u_input.e.x, any(vec4<bool>(false, var_0.x, var_0.x, false)), global0.x & global0.x), select(vec3<bool>(all(vec2<bool>(var_0.x, global0.x)), var_0.x, !global0.x), vec3<bool>(true, global0.x, all(vec2<bool>(false, false))), select(vec3<bool>(global0.x, false, true), select(vec3<bool>(global0.x, var_0.x, var_0.x), vec3<bool>(true, true, true), global0.x), global0.x)), any(vec4<bool>(all(vec4<bool>(true, global0.x, global0.x, false)), true, false & global0.x, any(vec3<bool>(false, global0.x, global0.x))))), vec3<bool>(var_0.x, var_0.x, min(1i, -2147483647i << (u_input.e.x % 32u)) > _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, -2147483647i), firstLeadingBit(u_input.b))), any(vec2<bool>(true, global0.x)));
    let var_1 = Struct_2(_wgslsmith_sub_i32(u_input.a, 36517i), Struct_1(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.a, u_input.b)), -vec2<i32>(50572i, u_input.a), select(vec2<i32>(27444i, 24716i), vec2<i32>(82610i, u_input.b), global0.x)), select(select(select(vec3<bool>(false, var_0.x, global0.x), vec3<bool>(global0.x, true, var_0.x), vec3<bool>(global0.x, global0.x, var_0.x)), !vec3<bool>(false, true, global0.x), vec3<bool>(true, true, true)), !vec3<bool>(var_0.x, global0.x, global0.x), select(vec3<bool>(var_0.x, var_0.x, global0.x), select(vec3<bool>(global0.x, var_0.x, false), vec3<bool>(var_0.x, false, false), vec3<bool>(true, false, global0.x)), 0i <= u_input.b)), !all(vec3<bool>(global0.x, var_0.x, true))), false, select(!vec4<bool>(true, false, all(vec4<bool>(true, var_0.x, global0.x, var_0.x)), var_0.x), vec4<bool>(global0.x, all(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(global0.x, global0.x, var_0.x, false), var_0.x)), true, false), !var_0.x != false));
    let x = u_input.a;
    s_output = StorageBuffer(-584f, select(u_input.d, ~min(4294967295u, _wgslsmith_mod_u32(1u, 62268u)), select(global0.x, (90296u >= u_input.e.x) && var_0.x, var_0.x)));
}


struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    let var_0 = vec4<bool>(all(select(select(select(vec2<bool>(false, arg_0.a.x), vec2<bool>(global0.c.x, arg_3), true), vec2<bool>(false, global0.a.x), vec2<bool>(arg_0.c.x, arg_3)), select(!global0.c, !global0.c, arg_3 & arg_3), false)), !(true || global0.a.x), all(!(!select(vec3<bool>(arg_0.c.x, true, arg_3), vec3<bool>(true, true, arg_3), global0.c.x))), false);
    var var_1 = any(select(vec2<bool>(arg_1.x > -1293f, arg_1.x >= -2288f), global0.c, select(var_0.xx, select(arg_0.c, vec2<bool>(var_0.x, arg_3), var_0.zz), true))) | (arg_1.x <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(934f, arg_1.x, arg_0.c.x)), _wgslsmith_f_op_f32(-arg_1.x), true)))));
    var var_2 = !var_0.wzw;
    var var_3 = arg_0;
    let var_4 = abs(2147483647i);
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = any(select(select(select(vec4<bool>(true, true, global0.c.x, false), vec4<bool>(true, false, arg_0.x, arg_2.c.x), true), vec4<bool>(false, !arg_0.x, arg_0.x, true), all(select(vec4<bool>(global0.c.x, true, true, false), vec4<bool>(arg_0.x, true, false, global0.c.x), vec4<bool>(true, false, false, true)))), vec4<bool>(true, true, global0.a.x, !arg_0.x), true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_2, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1219f, 3178f, -2142f))), abs(~global0.d.yxw), arg_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-137f)) - -1351f));
    var var_2 = arg_2;
    let var_3 = arg_2;
    var var_4 = !(!select(select(select(vec4<bool>(var_3.a.x, true, arg_0.x, arg_2.c.x), vec4<bool>(false, var_2.a.x, arg_2.c.x, var_3.c.x), vec4<bool>(false, true, var_2.c.x, arg_0.x)), select(vec4<bool>(arg_0.x, global0.a.x, true, true), vec4<bool>(false, true, arg_2.a.x, false), false), true), !select(vec4<bool>(false, var_3.c.x, true, true), vec4<bool>(arg_0.x, false, arg_0.x, var_3.a.x), vec4<bool>(false, var_3.c.x, true, false)), vec4<bool>(arg_0.x, global0.a.x, var_3.a.x == var_3.c.x, true)));
    return vec2<bool>(arg_2.a.x, false);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_1(select(!global0.c, func_2(global0.c, _wgslsmith_mult_u32(~4294967295u, 4294967295u & global0.b), Struct_1(global0.c, firstTrailingBit(42584u), global0.c, ~global0.d)), vec2<bool>(global0.a.x, u_input.a == _wgslsmith_add_u32(u_input.b.x, 4294967295u))), u_input.b.x, !global0.a, _wgslsmith_div_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, 4294967295u, global0.b, 32658u), ~vec4<u32>(4294967295u, global0.b, u_input.a, 0u)), vec4<u32>(max(23946u, 1u), global0.d.x & u_input.a, ~1870u, _wgslsmith_add_u32(global0.d.x, 4294967295u))), ~firstTrailingBit(global0.d | vec4<u32>(global0.d.x, u_input.a, 9567u, global0.d.x))));
    var_0 = Struct_1(select(select(select(global0.c, var_0.a, !var_0.a), vec2<bool>(true, select(false, global0.c.x, false)), vec2<bool>(true, select(var_0.c.x, var_0.a.x, var_0.a.x))), vec2<bool>(true, select(select(false, global0.c.x, true), true, all(global0.a))), var_0.c), ~u_input.a, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) >= arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 236f) + arg_0.x) <= arg_0.x), ~firstTrailingBit(~var_0.d));
    let var_1 = all(select(!(!func_2(var_0.a, u_input.b.x, Struct_1(var_0.c, var_0.d.x, vec2<bool>(true, true), global0.d))), func_2(!select(global0.c, vec2<bool>(var_0.a.x, global0.a.x), var_0.a.x), u_input.a, Struct_1(global0.c, var_0.b, vec2<bool>(global0.c.x, global0.c.x), var_0.d)), func_2(global0.c, countOneBits(0u), Struct_1(vec2<bool>(var_0.c.x, global0.a.x), _wgslsmith_div_u32(u_input.a, 1u), !var_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 21904u, 4294967295u, 4294967295u), var_0.d)))));
    var_0 = Struct_1(select(!func_2(!vec2<bool>(false, var_1), max(var_0.d.x, u_input.b.x), Struct_1(var_0.a, 0u, var_0.c, vec4<u32>(global0.b, u_input.a, var_0.d.x, global0.b))), vec2<bool>(var_0.a.x, true), global0.c), 0u, !vec2<bool>(global0.c.x, global0.c.x), vec4<u32>(abs(_wgslsmith_sub_u32(var_0.d.x, max(global0.b, var_0.d.x))), ~48067u, ~_wgslsmith_clamp_u32(~46067u, global0.d.x, 0u), firstLeadingBit(u_input.b.x << (~4294967295u % 32u))));
    global1 = var_0.b;
    return func_2(!func_2(global0.c, 0u, Struct_1(!var_0.a, 0u, !var_0.c, select(vec4<u32>(var_0.b, 18633u, 1u, u_input.a), var_0.d, false))), ~(~1u), Struct_1(vec2<bool>(all(!vec3<bool>(global0.c.x, true, global0.a.x)), var_0.a.x), 4195u, var_0.a, abs(var_0.d ^ vec4<u32>(global0.b, u_input.a, global0.b, global0.d.x)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, var_0.d.x, u_input.a, global0.b), vec4<u32>(u_input.a, global0.b, 26291u, u_input.b.x)) & global0.d) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!select(vec2<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, global0.a.x))), vec2<bool>(true, true), global0.c.x), 0u, !func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-564f, 387f)), _wgslsmith_f_op_f32(-1f)), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.b.x, global0.b), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 44781u)))));
    let var_0 = Struct_1(!(!(!global0.c)), 1u, !global0.a, max(global0.d, _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(global0.d, vec4<u32>(4294967295u, u_input.a, 0u, global0.b)), _wgslsmith_sub_vec4_u32(global0.d, global0.d) & global0.d)));
    global1 = ~_wgslsmith_mod_u32(1u, ~26687u);
    var var_1 = Struct_1(vec2<bool>(true, global0.c.x), 2970u, global0.c, select(countOneBits(global0.d), ~var_0.d, vec4<bool>(global0.a.x, var_0.c.x | false, ~11395u == _wgslsmith_add_u32(4317u, u_input.b.x), false)));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(0u, ~var_0.d.x, var_0.d.x), vec3<u32>(45359u | var_0.b, ~u_input.a, _wgslsmith_mod_u32(var_0.d.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, var_0.b, 70141u), vec3<u32>(0u, 0u, var_0.d.x)), abs(var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f - 273f) * -350f))), var_0.d.yzy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 369f), _wgslsmith_f_op_f32(f32(-1f) * -624f), var_0.a.x)), ~(_wgslsmith_mult_u32(~67511u, ~4294967295u) >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, 4294967295u, var_0.b), global0.d), global0.d.x) % 32u)), _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(3622i, -44385i), -vec2<i32>(56083i, -11601i), max(vec2<i32>(19787i, 19436i), vec2<i32>(0i, 0i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-67160i, -1i), vec2<i32>(1i, 1i)), vec2<i32>(abs(7171i), -1i), vec2<i32>(1i, 1i))));
}


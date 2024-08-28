struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = !all(!(!(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))));
    var_0 = arg_1.x;
    let var_1 = !select(select(vec3<bool>(true, arg_1.x, false), !(!vec3<bool>(true, arg_1.x, false)), arg_1.x), !select(!vec3<bool>(false, false, arg_1.x), !vec3<bool>(true, arg_1.x, false), any(vec2<bool>(true, arg_1.x))), !vec3<bool>(arg_1.x || false, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 919f) + vec2<f32>(742f, global0.a.x))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-658f, global0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1385f, global0.a.x))))))));
    var var_2 = countOneBits(~(_wgslsmith_sub_i32(firstLeadingBit(0i), arg_0 & u_input.c.x) & arg_0));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~u_input.d.yx ^ vec2<u32>(0u, u_input.d.x)), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, u_input.d.x)))), 1u);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -614f))));
    let var_0 = 1i;
    let var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-2442f)), 894f)), 2078f, Struct_1(global0.a));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(func_3(-20372i, vec2<bool>(all(vec3<bool>(true, true, false)), false)), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.d.wwz, u_input.d.ywy, vec3<u32>(84095u, arg_0, 0u)), ~countOneBits(u_input.d.zzw))), arg_0);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_1.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.zx)) - vec2<f32>(-618f, arg_1.x))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - var_1.b), global0.a.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!vec4<bool>(!(u_input.b > -29753i), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), all(vec2<bool>(false, false)), min(u_input.d.x, 8624u) <= _wgslsmith_sub_u32(65760u, u_input.d.x)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)))))));
    let var_1 = vec4<i32>(u_input.a, u_input.b, _wgslsmith_mult_i32(-u_input.c.x, 0i), u_input.c.x);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-u_input.a), 37470i, _wgslsmith_mod_i32(u_input.a, u_input.c.x)), select(vec3<i32>(u_input.c.x, 51645i, i32(-1i) * -22912i), u_input.c, select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), var_0.wzy, false))) ^ u_input.b;
    var var_3 = select(!all(select(var_0.xz, vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false))), true, !all(!(!vec2<bool>(var_0.x, true))));
    return func_2(33384u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.x, global0.a.x, -609f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1073f * -1000f), 693f, global0.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = !select(select(!select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false)), select(vec4<bool>(arg_1, arg_1, false, arg_1), !vec4<bool>(arg_1, true, true, true), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, false))), !vec4<bool>(arg_1, arg_1, true, arg_1)), select(select(select(vec4<bool>(true, true, false, arg_1), vec4<bool>(true, false, true, arg_1), vec4<bool>(false, arg_1, false, arg_1)), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, true, false), false), true), vec4<bool>(arg_1 && arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !arg_1, !arg_1), vec4<bool>(global0.a.x < -1061f, arg_1 | arg_1, all(vec3<bool>(true, arg_1, false)), any(vec4<bool>(arg_1, true, true, true)))), select(any(select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, false), false)), false, any(select(vec2<bool>(arg_1, false), vec2<bool>(false, false), vec2<bool>(true, arg_1)))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, ~u_input.d.x, u_input.d.x, 0u), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(~(u_input.d.x | 0u), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, u_input.d.x), ~u_input.d.x), 4294967295u, select(30529u, u_input.d.x | 140059u, all(var_0.wwy)))));
    var var_2 = arg_0;
    var var_3 = firstLeadingBit(u_input.d.xw);
    var var_4 = -(~vec4<i32>(-58680i, max(1i, max(26565i, -2147483647i)), u_input.b, -1i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-892f)) + _wgslsmith_f_op_f32(round(322f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(), -284f, Struct_1(global0.a)), true);
    let var_1 = vec2<i32>(61682i, u_input.c.x);
    let var_2 = ~u_input.d.x;
    let var_3 = Struct_2(func_1(), 1000f, Struct_1(var_0.a));
    var_0 = var_3.c;
    let var_4 = -u_input.b & _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, 1i), -(i32(-1i) * -12470i), max(_wgslsmith_mod_i32(33294i, var_1.x), ~var_1.x)), countOneBits(max(-vec3<i32>(u_input.b, -1i, -10215i), u_input.c)));
    var_0 = func_2(68560u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, 825f, 976f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, var_0.a.x, 696f))))));
    var var_5 = _wgslsmith_f_op_f32(-var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f - _wgslsmith_f_op_f32(f32(-1f) * -590f))), _wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(f32(-1f) * -528f)), 938f, _wgslsmith_div_f32(func_4(var_3, true).a.x, func_4(var_3, true).a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_3.a.a.x, global0.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(444f, 297f, 131f), vec3<f32>(global0.a.x, -1196f, var_3.c.a.x))))));
}


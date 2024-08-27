struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(true, u_input.a, vec2<f32>(_wgslsmith_f_op_f32(select(-373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c.x))), !all(vec4<bool>(false, global0.a, true, false)))), 1190f));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = func_2();
    var var_0 = Struct_1(arg_2.a & (global0.b.x < arg_1.x), ~vec3<u32>(17499u << (countOneBits(u_input.a.x) % 32u), _wgslsmith_mod_u32(~u_input.a.x, 73597u), ~(~99629u)), _wgslsmith_f_op_vec2_f32(global0.c * global0.c));
    let var_1 = func_2();
    return !(!vec4<bool>(var_1.a, false, select(!global0.a, any(vec4<bool>(true, true, var_1.a, false)), false), true));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!(!(!all(vec3<bool>(false, true, false)))));
    global0 = func_2();
    let var_1 = select(select(!(!func_3(vec3<bool>(global0.a, true, global0.a), vec4<u32>(global0.b.x, 41592u, u_input.a.x, 4294967295u), Struct_1(true, global0.b, vec2<f32>(-793f, -682f)))), func_3(select(!vec3<bool>(true, false, global0.a), !vec3<bool>(false, var_0, true), vec3<bool>(global0.a, false, false)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(18353u, global0.b.x, u_input.a.x, 58768u), vec4<u32>(u_input.a.x, 17767u, 4294967295u, 14873u), vec4<u32>(4294967295u, global0.b.x, global0.b.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(global0.b.x, u_input.a.x, global0.b.x, global0.b.x))), func_2()), true), !(!vec4<bool>(var_0, true, all(vec4<bool>(global0.a, global0.a, var_0, true)), global0.a | global0.a)), vec4<bool>(true, global0.a, var_0, any(!(!vec2<bool>(true, var_0)))));
    global0 = Struct_1(false, vec3<u32>(~global0.b.x, _wgslsmith_mod_u32(global0.b.x, 0u << (~u_input.a.x % 32u)), ~global0.b.x), vec2<f32>(967f, global0.c.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, global0.c.x, global0.c.x), vec3<f32>(-570f, global0.c.x, 1400f), var_0)), _wgslsmith_div_vec3_f32(vec3<f32>(567f, -1442f, 1285f), vec3<f32>(global0.c.x, 730f, -213f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 1236f, global0.c.x) + vec3<f32>(-2122f, global0.c.x, 1277f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1007f - -595f), _wgslsmith_div_f32(global0.c.x, 343f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c.x)))))));
    return Struct_1(any(!var_1.wxz) | true, _wgslsmith_mod_vec3_u32(func_2().b, select(vec3<u32>(abs(u_input.a.x), ~u_input.a.x, global0.b.x ^ u_input.a.x), abs(vec3<u32>(47878u, u_input.a.x, global0.b.x)) ^ vec3<u32>(0u, 4294967295u, u_input.a.x), false)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -216f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> vec2<bool> {
    let var_0 = vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(407f)), arg_0.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), -1285f))), _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-122f)) * -140f))) - _wgslsmith_f_op_f32(-global0.c.x)));
    var var_1 = !(!vec4<bool>(false, !arg_0.a, true, false));
    global0 = func_2();
    var_1 = !func_3(var_1.xxy, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_0.b.x, 1u), vec4<u32>(27824u, 46999u, global0.b.x, 14992u), vec4<u32>(u_input.a.x, 13621u, 7008u, 96024u)), ~vec4<u32>(global0.b.x, 4294967295u, 45703u, arg_0.b.x)) | _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(78242u, 1u, u_input.a.x, 19985u)), vec4<u32>(49897u, 46296u, 41422u, 0u)), Struct_1(false, global0.b, var_0.wy));
    var var_2 = -vec2<i32>(0i, -countOneBits(~(-77911i)));
    return var_1.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -24826i;
    let var_1 = !func_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.x, -1168f, 483f), vec3<f32>(-721f, global0.c.x, global0.c.x), vec3<bool>(true, global0.a, global0.a))) * vec3<f32>(588f, 1224f, 846f))), true);
    global0 = func_1();
    var var_2 = 1i;
    global0 = func_2();
    global0 = Struct_1(true, ~vec3<u32>(4294967295u, 62927u, 23322u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.c)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), 750f), _wgslsmith_f_op_f32(func_1().c.x - _wgslsmith_f_op_f32(global0.c.x * global0.c.x)))));
    global0 = func_1();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(887f, _wgslsmith_f_op_f32(-1108f + global0.c.x), _wgslsmith_f_op_f32(global0.c.x + global0.c.x), -237f)))) + vec4<f32>(116f, -389f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1354f)) + -261f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_3 - var_3), firstLeadingBit(vec4<i32>(1i ^ ~var_0, reverseBits(-8705i), 2147483647i, 27470i)), min(countOneBits(global0.b.zy), u_input.a.zy), global0.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, var_3.x, global0.c.x)) * var_3.zyz), var_3.yyz));
}


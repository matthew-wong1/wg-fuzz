struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2150f, 514f, 293f);

var<private> global1: array<i32, 18> = array<i32, 18>(12203i, 0i, 0i, -22810i, -24888i, 8776i, 1i, i32(-2147483648), i32(-2147483648), -47630i, -1i, -18501i, 2147483647i, 15371i, 7698i, 1369i, -55631i, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(0i, vec4<u32>(50114u, 16604u, 4294967295u, 11779u), 1u, vec3<f32>(-153f, 430f, -1319f), 58096u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~(~vec4<u32>(u_input.b.x & ~1u, 45103u, ~(~u_input.b.x), global2.e));
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.d.yy - arg_3.d.xy));
    let var_3 = abs(arg_3.b);
    let var_4 = arg_3;
    return _wgslsmith_f_op_f32(abs(global2.d.x));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(global2.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-649f - 845f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d.x), -978f, arg_1))))), true));
    var_0 = global2.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1254f, -988f, global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, -1998f, 1424f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, global0.x, arg_2))))));
    let var_2 = select(-1i, 35533i, true) >= u_input.d.x;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -448f, _wgslsmith_f_op_f32(var_1.x + global0.x)) * var_1) - vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(arg_2, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.d.x)) * _wgslsmith_f_op_f32(253f - global0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(abs(4294967295u), 18u)], firstTrailingBit(59589i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 511f, global0.x, 1557f)))), Struct_1(u_input.e, u_input.b, select(52390u, u_input.b.x, arg_0), vec3<f32>(global2.d.x, var_1.x, global0.x), _wgslsmith_mod_u32(4294967295u, global2.e)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 18u)] & -1i, vec4<u32>(u_input.b.x, global2.c, 0u, global2.c) >> (vec4<u32>(75172u, 548u, 1u, 19416u) % vec4<u32>(32u)), 1u, global2.d, abs(102151u))))));
    return global2.e;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = ~(~vec2<u32>(func_4(true, any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(33922u, 18u)], vec4<f32>(-1291f, -435f, 1265f, 1037f), Struct_1(arg_1.a, vec4<u32>(global2.c, 7993u, arg_1.b.x, 4294967295u), 15707u, global2.d, 8335u), Struct_1(-64592i, global2.b, arg_1.c, vec3<f32>(491f, arg_1.d.x, -609f), global2.e)))), ~0u));
    var var_1 = vec3<bool>(true, true, !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)));
    let var_2 = abs(arg_1.b.zyz);
    global2 = arg_1;
    var var_3 = ~global2.b;
    return _wgslsmith_f_op_f32(-3072f + _wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(abs(1550f))));
}

fn func_1() -> Struct_1 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(0i, global2.a, 1i), Struct_1(u_input.e, u_input.b, 1u, global2.d, 0u))) - _wgslsmith_f_op_f32(trunc(1036f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f * _wgslsmith_f_op_f32(279f - global0.x)) - -1161f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)));
    let var_0 = any(select(vec3<bool>(false, true, true), vec3<bool>(true, !all(vec3<bool>(true, false, false)), true), all(vec2<bool>(true, true))));
    global0 = global2.d;
    let var_1 = vec4<bool>(var_0, !(0i > -select(-1i, 0i, var_0)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.d.x)) - _wgslsmith_f_op_f32(global2.d.x + global2.d.x)) * _wgslsmith_div_f32(-475f, _wgslsmith_f_op_f32(max(1002f, -330f)))) < global0.x);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], vec4<f32>(global0.x, global0.x, -1113f, global0.x), Struct_1(-1i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), 1u, global2.d, 0u), Struct_1(1i, vec4<u32>(u_input.b.x, global2.e, global2.b.x, u_input.b.x), u_input.b.x, vec3<f32>(-929f, global0.x, 1000f), global2.b.x)))) + -1067f))));
    return Struct_1(reverseBits(global2.a), vec4<u32>(firstLeadingBit(28923u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.c & u_input.b.x, ~23956u), 1u), ~u_input.b.x & 1u, global2.b.x), global2.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.d.x + 1037f), 1773f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - 1000f) + -355f)), global2.d), 50626u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, var_1.d.x, -1000f, 1451f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -700f, var_0.d.x, 854f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1381f, 461f, -1302f, 866f)))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -486f, var_1.d.x, global2.d.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.d.x, global0.x, 1631f)) - vec4<f32>(-1262f, _wgslsmith_f_op_f32(f32(-1f) * -1154f), global2.d.x, _wgslsmith_f_op_f32(min(643f, global0.x))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f + _wgslsmith_f_op_f32(sign(1466f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))));
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~select(6229u, _wgslsmith_add_u32(20505u, 1u), var_1.a != 2592i), 65797u), _wgslsmith_f_op_f32(func_3(var_1.a, _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(_wgslsmith_f_op_f32(176f - var_2.x), _wgslsmith_f_op_f32(func_3(global2.a, var_2, var_0, var_4)), _wgslsmith_f_op_f32(max(var_3, global2.d.x)), 364f)), func_1(), func_1())), u_input.b.wy);
}


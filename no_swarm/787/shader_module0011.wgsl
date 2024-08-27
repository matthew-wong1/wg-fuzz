struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec3<i32>(-1i, -10881i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    return ~(-arg_2.b.x);
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = -305f;
    let var_1 = 143f;
    let var_2 = 4294967295u;
    global0 = Struct_1(min(global0.a, _wgslsmith_add_i32(global0.b.x << (min(1u, var_2) % 32u), max(func_3(Struct_1(u_input.e, vec3<i32>(arg_0, global0.a, 0i)), Struct_1(arg_0, global0.b), Struct_1(arg_0, global0.b)), ~arg_0))), global0.b);
    let var_3 = !select(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, true, true))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(!(var_2 >= 15146u), !(arg_1 < 225f)));
    return Struct_1(1i, vec3<i32>(~(-10691i), -arg_0, arg_0));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> bool {
    let var_0 = Struct_2(func_2(u_input.b, -997f), !(!(arg_2.x & arg_2.x) & !arg_2.x));
    var var_1 = 20762i;
    var var_2 = Struct_1(-_wgslsmith_mult_i32(firstLeadingBit(arg_1.a >> (arg_0.x % 32u)), global0.a), ~(~var_0.a.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, 502f) + vec2<f32>(1000f, -343f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(743f, 894f) - vec2<f32>(-321f, 2120f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(621f, 653f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-324f, 1000f), vec2<f32>(-1087f, 286f), arg_2.wy)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-482f, 654f), vec2<f32>(246f, -169f), vec2<bool>(false, arg_2.x))))))), arg_2.wx));
    global0 = var_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-920f + var_3.x) - 1046f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))) <= _wgslsmith_f_op_f32(f32(-1f) * -707f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = global0.b.x;
    var var_2 = select(select(select(vec2<bool>(true, u_input.d.x <= u_input.d.x), vec2<bool>(true, true), select(true, all(vec4<bool>(true, true, false, true)), func_1(u_input.d.zz, Struct_1(u_input.c.x, vec3<i32>(u_input.b, -35220i, -51855i)), vec4<bool>(false, false, true, true), 36067u))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), false), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, true)), true)), vec2<bool>(_wgslsmith_add_i32(43147i, 30608i) > abs(global0.b.x), true)), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), u_input.d.x >= ((4294967295u | u_input.d.x) << (u_input.d.x % 32u))), select(select(vec2<bool>(true, true), vec2<bool>(select(true, true, true), true), true), vec2<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), select(func_1(u_input.d.yw, Struct_1(u_input.e, vec3<i32>(11273i, -2147483647i, u_input.e)), vec4<bool>(false, true, true, true), 5369u), true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(false, false)), true)));
    var var_3 = Struct_2(func_2(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)))), true);
    var var_4 = var_2.x;
    var var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(-36586i, -u_input.b), func_2(35951i, -251f).b.x << (67800u % 32u)) >> (u_input.d.yz % vec2<u32>(32u)), -var_3.a.b.zx);
    var var_6 = vec2<bool>(true | var_2.x, var_2.x);
    var var_7 = Struct_2(func_2(u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2135f, -914f))))), !all(!select(vec2<bool>(false, var_6.x), vec2<bool>(false, false), vec2<bool>(true, var_6.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 43611u, 0u);
}


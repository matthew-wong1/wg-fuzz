struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_0 = Struct_2(Struct_1(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), true), 14962i, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), -765f), select(select(vec3<bool>(true, false, 0u > u_input.b.x), vec3<bool>(true, true, any(vec2<bool>(true, false))), all(vec2<bool>(true, true))), vec3<bool>((u_input.b.x | 53019u) <= (0u >> (u_input.b.x % 32u)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(4294967295u != u_input.b.x)), _wgslsmith_f_op_f32(1000f - arg_0) <= arg_0), Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), vec3<bool>(true, true, true)), ~firstLeadingBit(min(u_input.a.x, -21818i)), vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(arg_0 - 1213f) >= _wgslsmith_f_op_f32(sign(139f)), true, !all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1332f) + _wgslsmith_f_op_f32(step(-1000f, -1000f)))));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    return var_0.b.xy;
}

fn func_2() -> Struct_3 {
    let var_0 = select(!(!func_3(_wgslsmith_f_op_f32(round(-965f)))), !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, select(true, false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), true)), vec2<bool>(any(vec2<bool>(true, true)), !((u_input.b.x < 0u) && any(vec3<bool>(true, false, false)))));
    var var_1 = Struct_2(Struct_1(!vec3<bool>(true, false, var_0.x), min(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(72416u, 22u)]), -2147483647i) ^ -2330i, vec4<bool>(var_0.x, all(!vec3<bool>(false, var_0.x, false)), true, (3419i != global0[_wgslsmith_index_u32(1u, 22u)]) & any(vec4<bool>(true, true, var_0.x, var_0.x))), _wgslsmith_f_op_f32(-1f)), select(!vec3<bool>(var_0.x, all(vec2<bool>(var_0.x, var_0.x)), all(var_0)), vec3<bool>(var_0.x, true && var_0.x, true), !vec3<bool>(func_3(299f).x, var_0.x, false & var_0.x)), Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, false), var_0.x)), global0[_wgslsmith_index_u32(~u_input.b.x, 22u)] << (4294967295u % 32u), select(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), select(vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(false, var_0.x, false, false)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f)))));
    var var_2 = -(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u << (u_input.b.x % 32u), 22u)], -39227i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-781f, var_1.a.d)), 894f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d)))) - vec4<f32>(-665f, -610f, 669f, 1222f));
    global0 = array<i32, 22>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, 1653f, var_3.x), var_3.zyy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, 1338f, 228f)))))), Struct_2(var_1.c, var_1.a.c.wwy, var_1.c));
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_0 = 40137i;
    let var_1 = func_2();
    global0 = array<i32, 22>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 22>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f - 417f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(-267f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -133f)))), func_1());
    var var_1 = ~firstTrailingBit(abs(~(vec2<u32>(u_input.b.x, 22853u) & vec2<u32>(4294967295u, u_input.b.x))));
    global0 = array<i32, 22>();
    var var_2 = var_0.b;
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.c.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 1000f)), var_0.a.x), var_2.a.d, _wgslsmith_f_op_f32(exp2(var_0.b.c.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.d, var_3.b.a.d, -499f, var_3.a.x), vec4<f32>(var_2.a.d, 461f, 260f, -573f), vec4<bool>(true, var_0.b.a.a.x, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-440f, 1124f, -1000f, var_2.a.d) * vec4<f32>(var_2.a.d, var_3.b.a.d, var_3.b.c.d, var_3.a.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.a.d), _wgslsmith_f_op_f32(min(2548f, -1421f))), _wgslsmith_f_op_f32(-1501f - _wgslsmith_f_op_f32(select(-537f, -1569f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f) + _wgslsmith_div_f32(594f, 502f)), ~firstLeadingBit(abs(vec4<u32>(u_input.b.x, 42436u, u_input.b.x, var_1.x))));
}


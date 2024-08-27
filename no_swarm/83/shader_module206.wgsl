struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    var var_2 = -u_input.c;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1289f, var_1.b.x)), _wgslsmith_f_op_f32(-2095f + 818f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec2<bool>(!(u_input.b > 4294967295u) | true, !all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1251f), vec2<f32>(-404f, -988f)), vec2<f32>(-434f, -758f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1421f, -536f), vec2<f32>(-210f, 182f)))), vec2<f32>(_wgslsmith_f_op_f32(min(1369f, -574f)), _wgslsmith_f_op_f32(floor(-416f))))))));
    var_0 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(365f, var_0.b.x)))));
    var var_2 = vec2<u32>(~u_input.b, u_input.b | u_input.b) | ~(~(~(~vec2<u32>(u_input.b, u_input.b))));
    let var_3 = global0[_wgslsmith_index_u32(18883u, 30u)];
    return var_3.a.x;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(!(!vec2<bool>(func_3(), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(759f * -1242f), -929f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-743f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1361f, -119f))))));
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_1(!var_0.a, vec2<f32>(var_0.b.x, var_0.b.x));
    let var_2 = Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b))))));
    var var_3 = var_2.a;
    return false;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> StorageBuffer {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1850f, 689f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-688f, _wgslsmith_f_op_f32(-2453f - 171f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) * _wgslsmith_f_op_f32(-942f - 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(387f, -308f))))));
    global0 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x) * -1044f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f + var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -180f))))));
    return StorageBuffer(-44371i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, 1563f, var_0.x, -387f) + vec4<f32>(var_0.x, -750f, var_0.x, var_1))))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(937f, -1055f, -1966f) + vec3<f32>(1000f, 1002f, 353f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1348f, 664f, 1496f)) + vec3<f32>(-835f, 1356f, -642f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.c.x, -840i), vec4<bool>(true, false, false, false))), -1974f, -480f)))));
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = func_4(~(~vec2<u32>(u_input.b, 48009u) << (~vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) & (~(vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) | select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 49386u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, 4294967295u), vec2<bool>(true, true))), vec4<bool>(func_2(-23852i), !select(true, any(vec2<bool>(false, false)), true), all(vec3<bool>(true, true, true)), -2147483647i == _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-26248i, -21630i, -25249i)))));
}


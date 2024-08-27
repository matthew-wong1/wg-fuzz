struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_2(Struct_1(277f)), 23094i, Struct_2(Struct_1(-1260f))), Struct_4(Struct_2(Struct_1(199f)), -1i, Struct_2(Struct_1(760f))), Struct_4(Struct_2(Struct_1(-1000f)), i32(-2147483648), Struct_2(Struct_1(-792f))), Struct_4(Struct_2(Struct_1(-464f)), -23485i, Struct_2(Struct_1(592f))), Struct_4(Struct_2(Struct_1(-767f)), 1i, Struct_2(Struct_1(-1036f))), Struct_4(Struct_2(Struct_1(-1446f)), -28740i, Struct_2(Struct_1(-1462f))), Struct_4(Struct_2(Struct_1(709f)), -43976i, Struct_2(Struct_1(-1156f))), Struct_4(Struct_2(Struct_1(141f)), 2147483647i, Struct_2(Struct_1(-330f))), Struct_4(Struct_2(Struct_1(2137f)), -1i, Struct_2(Struct_1(1232f))), Struct_4(Struct_2(Struct_1(-1277f)), 15480i, Struct_2(Struct_1(662f))), Struct_4(Struct_2(Struct_1(523f)), i32(-2147483648), Struct_2(Struct_1(1927f))), Struct_4(Struct_2(Struct_1(1101f)), 0i, Struct_2(Struct_1(152f))));

var<private> global1: bool = false;

var<private> global2: array<i32, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(round(1637f)));
    return any(!select(vec4<bool>(true, any(vec2<bool>(false, false)), select(false, true, false), any(vec3<bool>(false, false, false))), vec4<bool>(false, false, all(vec4<bool>(false, false, false, false)), true), true));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    global2 = array<i32, 7>();
    global1 = func_2(abs(firstTrailingBit(abs(~48968u))));
    global0 = array<Struct_4, 12>();
    var var_0 = true;
    let var_1 = Struct_1(-2142f);
    return var_1;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> i32 {
    global0 = array<Struct_4, 12>();
    let var_0 = Struct_4(Struct_2(func_1(global0[_wgslsmith_index_u32(u_input.e, 12u)], ~44179u)), 2147483647i, Struct_2(func_1(global0[_wgslsmith_index_u32(max(1u, u_input.e), 12u)], ~37073u)));
    let var_1 = ~abs(vec4<u32>(u_input.e, ~1u, ~(~14666u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 72655u, 27581u, 12004u)), ~vec4<u32>(u_input.e, 39793u, u_input.e, u_input.e))));
    var var_2 = min(var_1.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 37832u, var_1.x) & vec4<u32>(2108u, 60084u, u_input.e, var_1.x), var_1)));
    let var_3 = 1i;
    return ~var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(5430u, 12u)], _wgslsmith_add_u32(~4294967295u, ~u_input.e));
    let var_1 = firstTrailingBit(func_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))) ^ 63754i;
    var var_2 = vec4<bool>(!((all(vec2<bool>(true, true)) && true) != true), any(vec4<bool>(true, true, true, true)), false, !all(vec3<bool>(true, true, true)));
    var var_3 = Struct_5(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -430f)), vec3<u32>(1u, 1u, 1u), func_1(Struct_4(Struct_2(Struct_1(-143f)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1, var_1, -20954i), vec4<i32>(0i, u_input.b, u_input.c.x, 2831i))), Struct_2(func_1(global0[_wgslsmith_index_u32(0u, 12u)], 23891u))), u_input.e).a, Struct_2(Struct_1(-255f)));
    let var_4 = Struct_2(Struct_1(1439f));
    let var_5 = !select(!var_2.yzw, var_2.xwx, true);
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1215f)) + _wgslsmith_f_op_f32(floor(376f))))));
    var var_7 = !vec3<bool>(false, true == any(vec2<bool>(var_2.x, var_5.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.a)), -561f, 1000f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_3.a.a, var_4.a.a), vec3<f32>(var_0.a, var_3.a.a, var_0.a)))))));
}


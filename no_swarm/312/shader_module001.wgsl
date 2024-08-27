struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, -45393i, 2147483647i, i32(-2147483648), 84539i, 57328i, 1i, -37819i, 2147483647i, 0i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(true);
    let var_1 = Struct_2(var_0, var_0, var_0);
    let var_2 = !(!(!(var_1.c.a & !var_0.a)));
    global0 = array<i32, 11>();
    let var_3 = vec4<i32>((16690i | -global0[_wgslsmith_index_u32(101373u, 11u)]) & firstTrailingBit(select(global0[_wgslsmith_index_u32(1u, 11u)], 1i, true) | global0[_wgslsmith_index_u32(1u, 11u)]), u_input.c, 0i, -(_wgslsmith_mod_i32(0i, u_input.a) & 1i) >> (1u % 32u));
    return max(49203u, 4294967295u);
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = ~_wgslsmith_sub_u32(~(~func_3(vec4<i32>(-26422i, u_input.b, arg_0.x, 36602i), vec2<f32>(814f, -735f), -790f)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(44892u, 1u), vec2<u32>(26633u, 10841u))));
    let var_1 = Struct_1((true | any(vec4<bool>(false, true, true, false))) | true);
    let var_2 = select(vec3<bool>(any(vec3<bool>(any(vec3<bool>(var_1.a, var_1.a, true)), true, var_1.a)), !(~4294967295u < select(0u, 0u, var_1.a)), any(!(!vec3<bool>(true, var_1.a, false)))), vec3<bool>(true, true, true), select(select(!vec3<bool>(var_1.a, var_1.a, var_1.a), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a || false), vec3<bool>(true, !var_1.a, !var_1.a)), select(!vec3<bool>(true, var_1.a, true), !(!vec3<bool>(var_1.a, false, true)), false), vec3<bool>(false, true, var_1.a)));
    let var_3 = Struct_3(abs(~_wgslsmith_mult_u32(var_0, 50201u) << (~var_0 % 32u)), Struct_1(all(var_2.yy)), ~11032u);
    global0 = array<i32, 11>();
    return arg_0.x & -(~2147483647i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_3(min(72870u, _wgslsmith_clamp_u32(abs(1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(77788u, 5862u, 0u, 32695u)), min(vec4<u32>(4294967295u, 45350u, 0u, 12448u), vec4<u32>(28068u, 1u, 70387u, 8067u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(26173u, 1u)), 0u))), Struct_1(true), 1u);
    global0 = array<i32, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_1))))))));
    let var_2 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(var_0.c, 6535u)), vec2<u32>(4294967295u, var_0.a)), func_3(max(vec4<i32>(1i, 2147483647i, -3753i, 1i), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(var_0.a, 11u)], arg_0, arg_0, -50216i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1, var_1)) - var_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(596f, var_1.x) - -1000f)), var_0.c | var_0.a, 43604u);
    let var_3 = Struct_2(Struct_1(!(false | var_0.b.a)), var_0.b, var_0.b);
    return Struct_2(Struct_1(!var_0.b.a), Struct_1(any(!select(vec4<bool>(false, var_3.c.a, var_3.b.a, true), vec4<bool>(false, var_3.a.a, var_0.b.a, true), vec4<bool>(var_3.a.a, var_0.b.a, var_0.b.a, var_0.b.a)))), Struct_1(var_0.b.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(select(-3280i, func_2(abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 49183i), vec2<i32>(-23173i, u_input.a)))), true & any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * 2811f), -1483f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))));
    var var_1 = ~abs(_wgslsmith_sub_u32(~max(0u, 27365u), min(~0u, 0u >> (0u % 32u))));
    var var_2 = !(!(!vec2<bool>(var_0.b.a, 923f != arg_1.x)));
    var_2 = select(!vec2<bool>(all(vec4<bool>(true, var_0.c.a, var_2.x, true)) && (false != var_0.b.a), false), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, -2113f)) + _wgslsmith_f_op_f32(-arg_0.x)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(1070f, -578f))), var_2.x), select(vec2<bool>(true, func_4(~global0[_wgslsmith_index_u32(65793u, 11u)], _wgslsmith_f_op_f32(-1000f * 296f), arg_0.x).c.a), vec2<bool>(true, true), vec2<bool>((var_0.a.a | var_0.b.a) || any(vec4<bool>(var_0.a.a, false, var_2.x, false)), var_0.c.a | false)));
    var var_3 = false;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(any(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(-1429f + _wgslsmith_f_op_f32(trunc(625f))) <= _wgslsmith_f_op_f32(trunc(-243f))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, -808f, -463f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(207f, 2470f, 1141f, -680f) - vec4<f32>(-487f, 788f, 739f, 915f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(538f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1123f, -1611f) * _wgslsmith_f_op_f32(round(846f))), -1001f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -970f))))));
    let var_1 = !select(select(!select(vec4<bool>(var_0.b.a, var_0.b.a, var_0.a.a, var_0.b.a), vec4<bool>(var_0.c.a, false, var_0.c.a, var_0.c.a), vec4<bool>(true, true, var_0.a.a, false)), vec4<bool>(true, true, true == var_0.a.a, true), var_0.c.a), select(select(vec4<bool>(false, false, true, var_0.b.a), vec4<bool>(var_0.a.a, var_0.b.a, false, var_0.b.a), true), vec4<bool>(var_0.b.a, any(vec2<bool>(var_0.c.a, false)), global0[_wgslsmith_index_u32(56213u, 11u)] <= 2147483647i, !var_0.a.a), var_0.a.a), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(-851f, 255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(888f, -117f), vec2<f32>(1764f, 215f)))))))));
    let var_3 = var_0;
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    var var_4 = Struct_3(_wgslsmith_mult_u32(43907u, abs(1u)), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(10484u, 18737u), 11u)], global0[_wgslsmith_index_u32(11618u, 11u)]), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(2104i, global0[_wgslsmith_index_u32(1u, 11u)])), firstLeadingBit(vec2<i32>(-2147483647i, u_input.c)))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 1519f)))).c, ~(~11310u));
    global0 = array<i32, 11>();
    var var_5 = Struct_1(var_0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, 0i, _wgslsmith_div_vec3_i32(select(select(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 45372i), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(79613u, 11u)], 4406i)), vec3<i32>(1i, 2147483647i, -12295i), vec3<bool>(true, true, var_0.b.a)), vec3<i32>(98876i, u_input.c, -25998i) ^ (vec3<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(24551u, 11u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(0u, 11u)], 0i, u_input.c)), var_1.x & var_4.b.a), -abs(vec3<i32>(global0[_wgslsmith_index_u32(var_4.a, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(42577u, 11u)]))), _wgslsmith_f_op_f32(-var_2.x), select(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_4.c, var_4.a)), ~vec3<u32>(var_4.c, 20155u, var_4.a)), var_5.a));
}


struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-333f, -1000f), vec2<f32>(-718f, -1701f), vec2<f32>(-122f, 1158f), vec2<f32>(-262f, -333f), vec2<f32>(-107f, -419f), vec2<f32>(-1000f, 102f));

var<private> global1: Struct_1 = Struct_1(15198u);

var<private> global2: f32 = -1040f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    return arg_1;
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_4(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.e))));
    global0 = array<vec2<f32>, 6>();
    var var_1 = ~(~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, -18238i), firstLeadingBit(u_input.b)), u_input.b, arg_0.d, func_3(arg_0, -arg_0.d)));
    var_0 = Struct_4(arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -608f, _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))))));
    global2 = -514f;
    return _wgslsmith_f_op_f32(trunc(-121f));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1551f - _wgslsmith_f_op_f32(trunc(arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(true, 1u, Struct_1(26205u), u_input.a.x, vec4<f32>(arg_0, -472f, 853f, -1000f)))))), -1250f), arg_0));
    global2 = arg_0;
    var var_1 = Struct_2(any(vec3<bool>(false, u_input.b <= ~(-1i), all(vec2<bool>(false, false)))));
    let var_2 = arg_0;
    var_0 = -1473f;
    return Struct_2(!(any(vec2<bool>(true, var_1.a)) && true));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.d.x;
    var var_1 = firstLeadingBit(select(vec2<u32>(_wgslsmith_add_u32(~u_input.c.x, 27040u), ~1u), abs(vec2<u32>(~global1.a, ~global1.a)), true));
    let var_2 = Struct_3(arg_2, abs(u_input.e.x), Struct_1(10820u), ~u_input.b, _wgslsmith_div_vec4_f32(arg_3, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, -363f, 671f, 1229f), _wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(arg_3.x, -588f, 240f, -258f))))));
    let var_3 = u_input.d;
    var var_4 = !arg_0;
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(true, ~countOneBits(u_input.d.x) == u_input.e.x), func_1(_wgslsmith_f_op_f32(exp2(1f))), true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(trunc(-507f)))), -1174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-469f, -491f)) * _wgslsmith_div_f32(1070f, 216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1618f, -831f)), _wgslsmith_f_op_f32(ceil(-895f)))))));
    var var_1 = !select(select(select(vec2<bool>(true, false), !vec2<bool>(var_0.a, var_0.a), false), !(!vec2<bool>(var_0.a, true)), vec2<bool>(var_0.a, !var_0.a)), vec2<bool>(true, true), false);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(10746u, ~(~u_input.d.x))));
    var var_3 = u_input.e.x;
    var var_4 = select(select(!vec4<bool>(var_0.a, global1.a < u_input.c.x, var_1.x & var_0.a, true), vec4<bool>(var_1.x, func_4(!vec2<bool>(var_1.x, var_0.a), Struct_2(false), any(vec3<bool>(false, false, var_0.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-971f, -1750f, -812f, 1157f), vec4<f32>(-1644f, 1070f, 295f, -358f)))).a, !all(vec4<bool>(var_0.a, var_1.x, false, true)), select(true, true, all(vec4<bool>(var_0.a, var_1.x, false, var_1.x)))), vec4<bool>(true, !(u_input.c.x == global1.a), _wgslsmith_clamp_u32(12447u, global1.a, 4294967295u) < ~var_2.a, false)), vec4<bool>(true, true, all(vec4<bool>(false, u_input.b != u_input.a.x, true, true)), false), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-581f, -452f) - _wgslsmith_f_op_f32(f32(-1f) * -344f))), _wgslsmith_f_op_f32(select(-1062f, _wgslsmith_f_op_f32(844f - _wgslsmith_f_op_f32(f32(-1f) * -387f)), true)), 239f, 966f), _wgslsmith_div_vec3_f32(vec3<f32>(1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-219f, 555f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1125f - 152f), _wgslsmith_f_op_f32(min(1359f, 1728f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, 1000f, -799f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(248f, -1663f, 551f), vec3<f32>(-2711f, 468f, -1478f))))))), ~4294967295u, vec2<i32>(_wgslsmith_add_i32(func_3(Struct_3(var_0.a, 23257u, Struct_1(6470u), -1016i, vec4<f32>(-1000f, 719f, 1335f, 669f)), _wgslsmith_add_i32(u_input.b, u_input.a.x)), _wgslsmith_add_i32(u_input.a.x & u_input.b, -u_input.b)), u_input.a.x));
}


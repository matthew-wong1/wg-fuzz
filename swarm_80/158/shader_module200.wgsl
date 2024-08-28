struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<vec3<u32>, 9>;

var<private> global2: array<vec3<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = !(!vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), false));
    var var_1 = 6901u;
    var var_2 = u_input.a;
    global0 = array<vec4<f32>, 24>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -805f)), vec2<bool>(true, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -204f), select(var_0.wwz, var_0.yxx, !(!(!vec3<bool>(true, var_0.x, false)))), true);
    return _wgslsmith_div_u32(~1u, ~_wgslsmith_div_u32(~25643u, 4294967295u) & select(0u, 1u, any(!vec3<bool>(true, false, var_0.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    global1 = array<vec3<u32>, 9>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) * -137f);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + arg_3.a)), !select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), true), vec2<bool>(arg_2, false), select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), false)), arg_3.a, vec3<bool>(any(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, true, false))), any(vec4<bool>(false, arg_2, true, arg_2)), (arg_3.a == -1238f) | arg_2), (u_input.a | reverseBits(43403i)) == _wgslsmith_sub_i32(abs(u_input.a), -1i)), vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(-2147483647i, u_input.a), _wgslsmith_add_i32(~(-1i), arg_0.x)), ~_wgslsmith_add_i32(~arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 65686i), arg_0.wwy)), _wgslsmith_div_i32(-(-15119i & u_input.a), _wgslsmith_mod_i32(-u_input.a, u_input.a))), -7322i, Struct_2(arg_3, !vec2<bool>(all(vec4<bool>(arg_2, arg_2, true, false)), arg_2), _wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(-arg_3.a)), vec3<bool>(true, any(vec3<bool>(false, false, arg_2)) | true, true), arg_2));
    var var_2 = var_1.a;
    global1 = array<vec3<u32>, 9>();
    return vec2<bool>(!select(true, any(var_1.a.d.xz), u_input.a != reverseBits(u_input.a)), any(!vec2<bool>(all(vec2<bool>(var_1.a.e, false)), all(vec4<bool>(false, true, var_1.a.e, false)))));
}

fn func_2(arg_0: i32) -> bool {
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    let var_0 = _wgslsmith_add_i32(i32(-1i) * -1i, -72571i);
    let var_1 = 1312f;
    var var_2 = vec3<bool>(true, true, !any(vec2<bool>(true, true)));
    return any(!func_4(vec4<i32>(_wgslsmith_add_i32(arg_0, 14636i), _wgslsmith_mult_i32(var_0, var_0), u_input.a, firstTrailingBit(arg_0)), _wgslsmith_sub_u32(func_3(), 1u), var_2.x, Struct_1(_wgslsmith_f_op_f32(min(1509f, var_1)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = !all(select(arg_2.d.zx, select(!vec2<bool>(arg_1.d.e, arg_2.b.x), !vec2<bool>(false, arg_1.d.d.x), !vec2<bool>(arg_0.a.d.x, true)), select(!arg_1.a.b, !arg_0.a.d.zy, !arg_1.a.b)));
    let var_1 = vec2<bool>(true, func_2(-1i));
    var var_2 = ~4294967295u;
    var var_3 = arg_0.d.a;
    var_0 = true;
    return select(!vec3<bool>(any(select(var_1, var_1, vec2<bool>(arg_0.a.e, false))), arg_2.d.x, !arg_2.b.x), arg_0.a.d, true != all(select(vec3<bool>(arg_0.a.e, arg_1.a.d.x, true), vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(true, arg_0.d.b.x, arg_2.e), arg_2.d, arg_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(-1050f), vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-523f - 858f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f + 1926f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-722f - 876f), _wgslsmith_f_op_f32(sign(-1777f)))))), !(!(!func_1(Struct_3(Struct_2(Struct_1(-381f), vec2<bool>(true, false), 1718f, vec3<bool>(true, false, true), true), vec3<i32>(-43550i, u_input.a, u_input.a), -34426i, Struct_2(Struct_1(-554f), vec2<bool>(true, false), -1000f, vec3<bool>(false, false, false), false)), Struct_3(Struct_2(Struct_1(1000f), vec2<bool>(true, false), -550f, vec3<bool>(false, true, true), true), vec3<i32>(16914i, u_input.a, u_input.a), 1i, Struct_2(Struct_1(1402f), vec2<bool>(false, true), 941f, vec3<bool>(false, false, true), true)), Struct_2(Struct_1(-525f), vec2<bool>(true, false), 1107f, vec3<bool>(true, false, true), false), Struct_1(-376f)))), false);
    global2 = array<vec3<u32>, 18>();
    global0 = array<vec4<f32>, 24>();
    let var_1 = var_0.a;
    var var_2 = Struct_3(var_0, vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -2147483647i), vec3<i32>(u_input.a, 2147483647i, -1i)), i32(-1i) * -35373i, u_input.a), -(max(u_input.a, -23526i) | _wgslsmith_sub_i32(~56104i, i32(-1i) * -50255i)), var_0);
    var var_3 = -var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(~1u), ~93936u, 11635u));
}


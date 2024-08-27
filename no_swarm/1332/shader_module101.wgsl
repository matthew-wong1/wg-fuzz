struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(127f, 1i, vec2<i32>(64658i, i32(-2147483648)));

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(4438i, -53978i, -42010i), vec3<i32>(85132i, 0i, i32(-2147483648)), vec3<i32>(-46189i, -8731i, 2147483647i), vec3<i32>(-70726i, -23224i, 46963i), vec3<i32>(2147483647i, 0i, -2844i), vec3<i32>(3871i, -58259i, 10710i), vec3<i32>(0i, -45228i, 43787i), vec3<i32>(-24373i, 9694i, -14590i), vec3<i32>(0i, 36147i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 36050i), vec3<i32>(0i, 10512i, 36392i), vec3<i32>(14984i, 11682i, 6987i), vec3<i32>(53802i, -1i, 45013i), vec3<i32>(2147483647i, 45543i, 42971i), vec3<i32>(7507i, -1i, 27404i), vec3<i32>(1i, 1i, 0i), vec3<i32>(i32(-2147483648), 1i, -21059i), vec3<i32>(829i, 13644i, 76379i), vec3<i32>(0i, 10967i, i32(-2147483648)), vec3<i32>(0i, 0i, 1i), vec3<i32>(-1i, 1i, 25007i), vec3<i32>(-13528i, -60037i, -41014i), vec3<i32>(59007i, 1i, 0i), vec3<i32>(i32(-2147483648), 67308i, -35299i), vec3<i32>(-1i, 15301i, 12253i), vec3<i32>(0i, 0i, -1437i), vec3<i32>(-1i, -1i, -5499i), vec3<i32>(2147483647i, 52813i, 22640i), vec3<i32>(-57788i, 1i, 4364i), vec3<i32>(2147483647i, -7750i, -22340i));

var<private> global2: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> i32 {
    global1 = array<vec3<i32>, 30>();
    return -1i;
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = Struct_1(-1941f, global0.b, abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, 20109i), global0.c)));
    global0 = var_0;
    let var_1 = vec3<bool>(any(select(select(select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.a, 18u)], arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), arg_0), arg_0), !global2[_wgslsmith_index_u32(u_input.a, 18u)], vec2<bool>(true, select(false, false, true)))), all(!(!vec3<bool>(arg_0, true, true))) || any(vec4<bool>(any(vec4<bool>(false, arg_0, false, arg_0)), true, true, !arg_0)), arg_0);
    var var_2 = Struct_1(var_0.a, global0.c.x, vec2<i32>(i32(-1i) * -31350i, -6005i));
    var var_3 = Struct_1(_wgslsmith_div_f32(-1017f, _wgslsmith_f_op_f32(abs(-1574f))), -5273i, -max(u_input.b.yy, ~reverseBits(vec2<i32>(2147483647i, -15233i))));
    return _wgslsmith_div_i32(reverseBits(max(-12872i, -10902i)), abs(var_0.c.x)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), min(4294967295u, u_input.a)), u_input.a), vec3<u32>(_wgslsmith_div_u32(36931u, _wgslsmith_mod_u32(u_input.a, 52735u)), u_input.a, 37428u)) % 32u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    let var_0 = !(!(!vec3<bool>(any(vec2<bool>(false, true)), false, false)));
    let var_1 = -global0.b;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-1000f + -577f)))), ~1i, arg_0.c);
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2375f)))), arg_0.a), arg_0.c.x, vec2<i32>(_wgslsmith_mod_i32(var_2.b, 37101i), func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, var_2.b), var_2.c) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -53976i), arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1949f)) - 1116f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = vec4<i32>(-1i) * -abs(vec4<i32>(6415i, func_1(global0.a, vec3<bool>(false, false, false), false, u_input.a), global0.c.x << (19592u % 32u), u_input.b.x & u_input.b.x));
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(abs(global0.a)), true))), var_1.x, select(_wgslsmith_mult_vec2_i32(-var_1.xw, -vec2<i32>(global0.c.x, 47670i)), ~(~vec2<i32>(var_1.x, var_1.x)), false)));
    var var_3 = _wgslsmith_f_op_f32(1034f - global0.a);
    let var_4 = func_2(Struct_1(var_2.a, 27845i, abs(firstTrailingBit(vec2<i32>(42938i, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1197f, 187f))))));
}


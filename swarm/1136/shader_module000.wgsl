struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool = true;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_3(Struct_2(Struct_1(-218f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1489f, 1420f) * vec2<f32>(global0.x, -685f)))), arg_0.x, vec4<bool>(global2.x, global2.x, select(true, global2.x, false), !global2.x), 16031i)), u_input.a);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-248f, _wgslsmith_f_op_f32(-global0.x))), 1000f));
    var var_1 = Struct_5(Struct_3(var_0.a, arg_0.x));
    var_1 = Struct_5(Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(-2763f, -800f), _wgslsmith_f_op_vec2_f32(round(var_0.a.a.b)), -u_input.a, var_0.a.a.d, var_0.a.a.e)), 0i));
    var var_2 = !(false & select(true, var_1.a.a.a.d.x, true)) | true;
    return var_0.a.a.b;
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), i32(-1i) * -33996i), vec2<i32>(-31813i, 1i) & firstTrailingBit(vec2<i32>(8380i, u_input.a)), vec2<i32>(_wgslsmith_mult_i32(26748i, u_input.a), _wgslsmith_mod_i32(u_input.a, -2147483647i))), vec2<i32>(~5512i, -1i))));
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1656f, _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(-u_input.a, 7436i))).x), vec2<f32>(-485f, _wgslsmith_f_op_vec2_f32(func_2(abs(select(vec2<i32>(-2147483647i, -12180i), vec2<i32>(-1i, 2147483647i), arg_0)))).x), select(vec2<bool>(true, true), select(select(global2.xx, select(vec2<bool>(true, true), global2.zw, global2.wx), vec2<bool>(false, arg_0)), vec2<bool>(arg_0, any(vec4<bool>(false, arg_0, global2.x, arg_0))), true), false)));
    let var_0 = _wgslsmith_div_i32(~(-57727i << (_wgslsmith_mult_u32(select(89806u, 0u, false), 0u) % 32u)), i32(-1i) * -u_input.a);
    var var_1 = Struct_5(Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(global0.x, 536f), vec2<f32>(global0.x, -1532f), -2147483647i, select(vec4<bool>(arg_0, arg_0, global2.x, global2.x), vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, false, true, global2.x)), i32(-1i) * -12990i)), u_input.a));
    let var_2 = global2.x;
    return var_1.a;
}

fn func_3() -> vec4<bool> {
    global1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(306f, 1375f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 106f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f + global0.x) + global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.x, 398f, true)), global0.x, true)))));
    global2 = select(vec4<bool>(!(!(global2.x || true)), !(!(!global2.x)), global2.x, true), vec4<bool>(false, true, true, global2.x), any(select(vec2<bool>(true, true), func_1(any(global2.yxy)).a.a.d.yx, vec2<bool>(global2.x, u_input.a <= u_input.a))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(642f, global0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1241f, global0.x) - vec2<f32>(global0.x, global0.x)))))));
    var var_0 = func_1(true);
    return vec4<bool>(true, true || select(-u_input.a != -u_input.a, !global2.x, all(vec3<bool>(false, var_0.a.a.d.x, false))), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(i32(-1i) * -(u_input.a ^ u_input.a), u_input.a, -u_input.a);
    var var_1 = Struct_5(func_1((global2.x | true) & global2.x));
    global0 = vec2<f32>(127f, 319f);
    let var_2 = Struct_2(var_1.a.a.a);
    var var_3 = func_1(any(func_3())).a.a.d.zwy;
    let var_4 = var_1.a.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, 4294967295u & _wgslsmith_sub_u32(1u, ~_wgslsmith_clamp_u32(1515u, 1u, 61395u)));
}


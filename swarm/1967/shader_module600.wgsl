struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: bool = true;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: bool;

var<private> global4: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    global3 = false;
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(655f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f - -1000f))), -366f), 2365f, select(select(arg_0, vec2<bool>(true, true), any(arg_0) || global2.x), !vec2<bool>(!global2.x, global2.x), vec2<bool>(1i <= firstTrailingBit(-1i), true)), u_input.a.x, vec3<bool>(any(select(select(vec4<bool>(arg_0.x, true, global2.x, true), vec4<bool>(true, false, global2.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x)), select(vec4<bool>(true, false, true, global2.x), vec4<bool>(global2.x, true, arg_0.x, arg_0.x), vec4<bool>(true, global2.x, true, false)), arg_0.x & true)), !(u_input.b.x <= u_input.b.x), true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), var_0.a);
    global0 = array<vec3<u32>, 22>();
    let var_2 = i32(-1i) * -22732i;
    return reverseBits(arg_1);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = firstTrailingBit(i32(-1i) * -1i);
    let var_1 = ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, ~func_3(vec2<bool>(global2.x, false), 36594u)), 1u, u_input.b.x), 22u)];
    var var_2 = !select(!vec4<bool>(global2.x, global2.x, true, !global2.x), !(!select(vec4<bool>(false, false, true, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, true, false))), select(vec4<bool>(-30835i < u_input.a.x, select(true, true, global2.x), true, global2.x), select(!vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, true, false, false), true), select(!vec4<bool>(true, true, true, global2.x), !vec4<bool>(global2.x, true, global2.x, global2.x), global2.x || false)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-445f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-427f, -1199f)) - -873f), all(var_2.wzw)))), arg_1.x, select(select(vec2<bool>(false, any(vec4<bool>(true, true, var_2.x, true))), !var_2.yw, true), var_2.yw, !var_2.x), _wgslsmith_div_i32(u_input.a.x, ~min(u_input.a.x, countOneBits(0i))), vec3<bool>(true, all(select(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(global2.x, var_2.x, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(false, false, var_2.x, true), var_2.x), var_2.x | true)), global2.x));
    let var_4 = true;
    return _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -717f));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = arg_1;
    let var_1 = i32(-1i) * -1i;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = -min(-(~vec2<i32>(u_input.a.x, -28436i)), -(u_input.a.xx & arg_0.xy)) | u_input.a.yz;
    global4 = arg_1.a;
    var var_1 = any(arg_1.e);
    let var_2 = arg_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(-638f, -447f, var_2.b, var_2.b), vec2<f32>(var_2.a, arg_1.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * -378f) + _wgslsmith_f_op_f32(trunc(984f)))), ~(~u_input.a.yy ^ _wgslsmith_div_vec2_i32(u_input.a.xz, u_input.a.xy)), !arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + -264f)), vec2<bool>(arg_2.x, any(arg_1.e)), -54927i, vec3<bool>(true, !var_2.c.x, !all(vec3<bool>(false, true, false))));
    return arg_1.b;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.b, -756f, vec2<bool>(!select(!var_0.c.x, any(vec4<bool>(false, var_0.c.x, false, true)), all(vec4<bool>(false, arg_0.e.x, global2.x, false))), any(!select(vec4<bool>(false, var_0.e.x, false, false), vec4<bool>(arg_0.c.x, arg_0.c.x, var_0.e.x, global2.x), vec4<bool>(arg_0.e.x, true, arg_0.e.x, arg_0.c.x)))), ~u_input.a.x, vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(61797i, arg_0.d), 40124i) <= var_0.d, var_0.e.x, true));
    let var_1 = u_input.b;
    let var_2 = -arg_0.d;
    var var_3 = ~(-var_2);
    return !(-(~11898i) < _wgslsmith_mod_i32(_wgslsmith_add_i32(27851i, 9824i | var_0.d), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = array<vec3<u32>, 22>();
    global3 = func_5(Struct_1(-615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a.x, -25897i, 76347i, -2147483647i), Struct_1(443f, 691f, vec2<bool>(global2.x, true), u_input.a.x, vec3<bool>(global2.x, global2.x, false)), vec2<bool>(false, global2.x))))), select(select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), global2.x), true), !select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, true), global2.x), true), u_input.a.x, vec3<bool>(false, any(vec2<bool>(true, true)), !global2.x & global2.x)));
    var var_1 = u_input.a.x;
    let var_2 = select(vec2<bool>(false, true), !select(vec2<bool>(select(global2.x, false, false), false), vec2<bool>(all(vec3<bool>(global2.x, false, global2.x)), !global2.x), -756f > _wgslsmith_f_op_f32(sign(358f))), false);
    let var_3 = (_wgslsmith_clamp_u32(1u, var_0, ~15119u) == var_0) | true;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1452f, -1237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -191f))))), vec2<bool>(func_5(Struct_1(_wgslsmith_f_op_f32(floor(-254f)), _wgslsmith_f_op_f32(f32(-1f) * -305f), select(vec2<bool>(false, global2.x), vec2<bool>(var_3, true), vec2<bool>(true, var_3)), u_input.a.x, select(vec3<bool>(var_3, false, true), vec3<bool>(var_3, true, true), global2.x))), global2.x), u_input.a.x, !vec3<bool>(global2.x, true, all(select(vec4<bool>(false, global2.x, false, var_2.x), vec4<bool>(true, global2.x, false, global2.x), true))));
    var var_5 = _wgslsmith_f_op_f32(-var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, var_4.d, reverseBits(-u_input.a), _wgslsmith_f_op_f32(floor(var_4.a)));
}


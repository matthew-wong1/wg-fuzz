struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = !vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))));
    let var_2 = i32(-1i) * -75502i;
    let var_3 = u_input.c.ww;
    var var_4 = -956f;
    return -1i;
}

fn func_2() -> u32 {
    var var_0 = countOneBits(u_input.a);
    var var_1 = select(vec3<bool>(!all(vec3<bool>(true, false, false)), !(!any(vec4<bool>(true, false, false, false))), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))), vec3<bool>(select(true, false, all(vec4<bool>(true, false, true, false))) | false, true, select(any(vec3<bool>(true, false, false)) & true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)))), select(vec3<bool>(false, true, select(select(true, false, true), true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -56022i)) >= u_input.b.x));
    var var_2 = Struct_4(false, Struct_2(reverseBits(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -750f), u_input.c.zw, min(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -103f), 1i);
    var var_3 = u_input.c.wyx;
    var var_4 = vec2<f32>(-595f, -501f);
    return var_2.b.c.x;
}

fn func_3(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.a;
    return Struct_2(~u_input.b.x, _wgslsmith_div_f32(757f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-240f, 385f)))))), min(~vec2<u32>(0u, 0u), vec2<u32>(89387u, 17591u)), -1949i);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_4(true, func_3(true, 24965i), 1f, ~max(22654i, -11284i));
    var var_1 = -_wgslsmith_mod_i32(countOneBits(arg_1), -(~(-arg_1)));
    var var_2 = _wgslsmith_f_op_f32(-1f);
    var_1 = abs(-(~(-1i)));
    let var_3 = arg_2;
    return var_0.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(vec4<i32>(1i, -arg_0.x, arg_0.x, _wgslsmith_div_i32(arg_1.d, -2147483647i)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_0, abs(vec3<i32>(52093i, 0i, -6424i))), arg_0));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b + 2015f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1054f), arg_1, -1172f, 8206i);
    var_1 = Struct_4(true, var_1.b, arg_1.b, select(var_1.d, -4923i, true));
    var var_2 = Struct_3(arg_1.d);
    var var_3 = vec3<bool>(true, any(!vec4<bool>(true, any(vec3<bool>(true, false, true)), false, true)), !(false & select(var_1.a && var_1.a, arg_1.c.x < 60440u, u_input.c.x < arg_1.c.x)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(vec3<i32>(countOneBits(u_input.b.x) & _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x, 11627i)), func_4(0i, select(1i | u_input.b.x, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(1240f, 1000f, -722f), vec3<f32>(-1874f, 531f, 1520f))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), func_3(0u <= func_2(), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, 1111f, 584f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, 958f, 2391f)), var_0)) + vec3<f32>(-1000f, -354f, func_4(1i, u_input.b.x, Struct_2(u_input.b.x, -1657f, vec2<u32>(u_input.c.x, 73488u), u_input.b.x)).b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-206f, func_4(-2147483647i, u_input.b.x, Struct_2(u_input.b.x, -1297f, vec2<u32>(u_input.c.x, 0u), 1i)).b, -238f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-684f, 533f, -410f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, -507f, -231f)), func_5(vec3<i32>(-26999i, u_input.b.x, u_input.b.x), Struct_2(u_input.b.x, 375f, vec2<u32>(u_input.a, u_input.c.x), 1i)))))), func_3(true, i32(-1i) * -1i).b);
}


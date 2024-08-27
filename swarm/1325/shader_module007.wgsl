struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-41393i, -14186i), true, vec4<f32>(1396f, 1000f, -1189f, 863f)), vec3<bool>(true, true, false), Struct_1(vec2<i32>(0i, 13441i), true, vec4<f32>(1586f, 513f, 666f, -320f)), 2147483647i);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> bool {
    global0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xx | vec2<i32>(u_input.b.x, u_input.b.x), global0.a.a), -1i), false, global0.c.c), !(!vec3<bool>(any(vec2<bool>(false, true)), global0.a.c.x >= -119f, false)), global0.c, max(~abs(u_input.b.x), global0.d));
    global0 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(-global0.c.a.x, u_input.b.x)), select(global0.c.a.x < -global0.c.a.x, true, !global1.x), _wgslsmith_f_op_vec4_f32(trunc(global0.a.c))), global0.b, global0.c, global0.a.a.x);
    let var_0 = global0.c;
    global1 = global0.b;
    global0 = Struct_2(global0.c, !vec3<bool>(true, false, -var_0.a.x <= var_0.a.x), global0.a, 1i);
    return global0.c.b;
}

fn func_2() -> Struct_2 {
    return Struct_2(global0.a, vec3<bool>(func_3(u_input.a.x, 916f, vec2<f32>(_wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(global0.a.c.x - -685f))), global0.b.x, 944f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c.x * global0.c.c.x))), Struct_1(u_input.b.zy, !(!all(vec3<bool>(global0.c.b, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.c))), ~(_wgslsmith_dot_vec2_i32(~global0.c.a, global0.a.a >> (vec2<u32>(u_input.a.x, 31305u) % vec2<u32>(32u))) << (0u % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_2(func_2().c, !(!arg_3.b), Struct_1(abs(_wgslsmith_div_vec2_i32(global0.a.a, arg_1.c.a)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, arg_1.a.c.x, arg_0.c.c.x, arg_1.c.c.x))) + global0.c.c)), ~arg_3.c.a.x);
    var var_0 = _wgslsmith_f_op_f32(sign(-174f));
    var_0 = _wgslsmith_f_op_f32(round(arg_3.c.c.x));
    var var_1 = global0.a;
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> i32 {
    let var_0 = arg_1.xx;
    let var_1 = _wgslsmith_div_vec2_f32(global0.c.c.yz, global0.c.c.yw);
    var var_2 = func_4(func_2(), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f * global0.c.c.x)), Struct_2(func_2().c, select(global0.b, vec3<bool>(!global0.b.x, var_1.x >= -1672f, true), all(select(vec4<bool>(global0.a.b, false, global0.b.x, false), vec4<bool>(false, false, true, global1.x), true))), Struct_1(-max(u_input.b.yz, vec2<i32>(global0.d, u_input.b.x)), true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-159f, var_1.x, 555f, global0.a.c.x)))))), 0i));
    global0 = func_4(func_4(func_2(), func_2(), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-755f - _wgslsmith_f_op_f32(-var_2.a.c.x)))), func_2()), Struct_2(func_2().a, global0.b, func_4(Struct_2(Struct_1(vec2<i32>(global0.a.a.x, arg_0.x), true, global0.c.c), !vec3<bool>(false, var_2.b.x, global1.x), global0.c, 2147483647i << (var_0.x % 32u)), Struct_2(func_4(Struct_2(Struct_1(vec2<i32>(var_2.d, var_2.a.a.x), false, var_2.a.c), vec3<bool>(true, global1.x, global0.b.x), var_2.c, arg_0.x), Struct_2(Struct_1(global0.a.a, var_2.c.b, var_2.a.c), vec3<bool>(global1.x, global0.b.x, var_2.b.x), Struct_1(vec2<i32>(1i, global0.a.a.x), global1.x, vec4<f32>(global0.c.c.x, global0.c.c.x, var_2.c.c.x, var_2.a.c.x)), 47860i), var_1.x, Struct_2(global0.a, global0.b, Struct_1(vec2<i32>(0i, var_2.c.a.x), global1.x, vec4<f32>(global0.c.c.x, 353f, var_2.c.c.x, var_2.a.c.x)), arg_0.x)).a, !var_2.b, Struct_1(vec2<i32>(global0.c.a.x, -35044i), global1.x, global0.a.c), 65313i), _wgslsmith_f_op_f32(step(230f, _wgslsmith_f_op_f32(f32(-1f) * -814f))), Struct_2(func_2().c, select(vec3<bool>(var_2.b.x, true, var_2.a.b), global0.b, global0.c.b), Struct_1(vec2<i32>(arg_0.x, u_input.b.x), global0.b.x, var_2.a.c), _wgslsmith_mult_i32(0i, arg_0.x))).c, countOneBits(var_2.c.a.x)), var_1.x, Struct_2(func_2().a, var_2.b, var_2.c, ~reverseBits(global0.c.a.x)));
    let var_3 = select(select(vec4<bool>(true, (var_2.a.a.x | -44380i) >= _wgslsmith_mult_i32(arg_0.x, 59104i), func_2().b.x, !global1.x), !vec4<bool>(!global1.x, !var_2.a.b, false, all(vec3<bool>(true, global1.x, true))), !(!select(vec4<bool>(global0.a.b, global0.b.x, false, global0.b.x), vec4<bool>(false, global0.a.b, var_2.a.b, global1.x), vec4<bool>(true, global1.x, global0.a.b, global0.b.x)))), select(select(vec4<bool>(true, true, !global1.x, true || global0.c.b), !(!vec4<bool>(true, false, true, global0.c.b)), !select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, true, false, var_2.b.x), false)), select(!select(vec4<bool>(var_2.a.b, global1.x, false, global1.x), vec4<bool>(true, true, var_2.c.b, false), global0.c.b), !select(vec4<bool>(false, global0.a.b, global1.x, true), vec4<bool>(global1.x, false, true, var_2.c.b), vec4<bool>(global0.a.b, global0.a.b, true, false)), var_2.a.b), select(!vec4<bool>(global1.x, global0.c.b, global0.c.b, true), !vec4<bool>(global0.b.x, global1.x, global1.x, false), any(!var_2.b))), select(!vec4<bool>(all(vec2<bool>(true, var_2.b.x)), 41801i != u_input.b.x, true, !global1.x), !(!select(vec4<bool>(false, true, var_2.c.b, global0.a.b), vec4<bool>(false, global0.c.b, global1.x, var_2.a.b), global0.a.b)), vec4<bool>(true, global1.x, global0.d >= (global0.a.a.x | var_2.c.a.x), select(any(vec3<bool>(false, var_2.c.b, var_2.c.b)), false, !global0.b.x))));
    return ~_wgslsmith_mod_i32(u_input.b.x, -firstLeadingBit(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.b;
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -18940i), max(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yx, u_input.b.zz), vec2<i32>(-40410i, global0.a.a.x)), vec2<i32>(func_1(u_input.b.yxy, u_input.a.wxy), global0.a.a.x))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c.x * global0.a.c.x)), _wgslsmith_f_op_f32(round(global0.a.c.x)), 1690f)));
    var var_2 = true;
    let var_3 = global0.c.c;
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<i32>(var_1.a.x >> (u_input.a.x % 32u), -13477i, ~(-1i))), u_input.a.wy, ~(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
}


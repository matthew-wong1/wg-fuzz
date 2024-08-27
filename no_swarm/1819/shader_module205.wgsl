struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(5498i, -253f);

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.e, global0.b), Struct_1(-39000i, _wgslsmith_f_op_f32(f32(-1f) * -606f)), true, _wgslsmith_dot_vec3_u32((firstTrailingBit(u_input.d) << (~vec3<u32>(59269u, arg_0.x, arg_0.x) % vec3<u32>(32u))) << (vec3<u32>(11694u, _wgslsmith_mod_u32(u_input.c.x, 54800u), ~arg_0.x) % vec3<u32>(32u)), firstTrailingBit(u_input.c.xxz)));
    let var_1 = global1.x;
    let var_2 = Struct_3(-192f);
    var var_3 = Struct_1(-11033i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1473f, _wgslsmith_f_op_f32(sign(var_0.b.b)))), 1561f)));
    var_3 = Struct_1(-20603i, -490f);
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = u_input.e;
    let var_1 = (arg_0 ^ 0u) >> ((func_3(u_input.c.zyz, _wgslsmith_div_f32(global0.b, 676f), !(!vec4<bool>(false, true, global1.x, global1.x))) >> (_wgslsmith_dot_vec3_u32(u_input.d, ~(~u_input.c.xwy)) % 32u)) % 32u);
    let var_2 = Struct_1(_wgslsmith_add_i32(firstTrailingBit(1i) & _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 57122i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, u_input.e, -36310i), vec3<i32>(u_input.e, 45710i, u_input.e))), var_0), -536f);
    global1 = vec4<bool>(true, true, any(!vec2<bool>(global1.x, any(global1.xxz))), global1.x);
    var var_3 = 2147483647i <= u_input.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) * global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(996f - -1067f) - _wgslsmith_f_op_f32(abs(arg_2))))));
}

fn func_1() -> Struct_3 {
    global1 = !vec4<bool>(_wgslsmith_f_op_f32(func_2(abs(17809u), 1u, global0.b)) >= _wgslsmith_f_op_f32(f32(-1f) * -461f), false, global1.x, false);
    global1 = !select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, global1.x, false, false), false), vec4<bool>(true, global1.x, global1.x, true), !global1.x), select(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(true, false, false, global1.x), true), vec4<bool>(true, global1.x, global1.x, true), select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(true, global1.x, true, true))), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, true, true, global1.x), all(vec3<bool>(global1.x, true, false)))), vec4<bool>(true, all(global1.xx), any(select(vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, true, global1.x, global1.x), true)), all(select(vec4<bool>(false, true, global1.x, false), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, false)))), vec4<bool>(true, !(!global1.x), false, any(!vec3<bool>(global1.x, global1.x, global1.x))));
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~abs(select(vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.d.x), u_input.c, vec4<bool>(global1.x, true, global1.x, global1.x))), ~max(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), u_input.c)), 11576u);
    var var_1 = ~min(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-52059i, 1i), vec2<i32>(10761i, u_input.e)), -vec2<i32>(0i, global0.a)), -max(vec2<i32>(u_input.b, 1i), -vec2<i32>(-2861i, 2147483647i)));
    var var_2 = 4294967295u;
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.b, -773f))))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(~_wgslsmith_mult_i32(var_0, arg_1), 1193f), Struct_1(firstTrailingBit(12077i), global0.b), all(!(!global1.wz)), 4294967295u);
    global0 = Struct_1(~(-arg_1), arg_2.a);
    global0 = var_1.b;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1().a), _wgslsmith_f_op_f32(-var_1.a.b))));
    return vec4<bool>(!any(!vec4<bool>(true, var_1.c, false, false)), arg_0, any(vec4<bool>(global1.x, true, arg_0, true)), !all(vec3<bool>(-1i > var_1.b.a, false, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global1.wzy, vec3<bool>(true, true, any(!vec2<bool>(false, global1.x))), all(select(func_4(any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_add_i32(1i, u_input.e), func_1()), !vec4<bool>(true, true, global1.x, global1.x), !select(true, true, false))));
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(~(~vec2<i32>(global0.a, u_input.e))), vec2<i32>(global0.a, i32(-1i) * -2147483647i)), -295f);
    var var_1 = !select(global1.wz, vec2<bool>(false | (var_0.x | var_0.x), any(!vec4<bool>(false, var_0.x, false, global1.x))), any(select(vec3<bool>(false, var_0.x, true), global1.zzy, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f * _wgslsmith_f_op_f32(max(1093f, 2343f))))));
    let var_3 = Struct_2(Struct_1(-reverseBits(-2738i), -935f), Struct_1((i32(-1i) * -1i) >> ((~0u | u_input.c.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f))), var_1.x && false, ~min(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.d.x, u_input.c.x)), select(27597u, 26180u, true) | 11320u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.xx, var_2.yz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, global0.b))))), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.x - global0.b), _wgslsmith_f_op_f32(283f - var_3.a.b), _wgslsmith_f_op_f32(var_2.x + var_2.x)))));
}


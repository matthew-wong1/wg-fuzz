struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 57431u;

var<private> global1: Struct_3 = Struct_3(19453u, vec4<f32>(-1771f, -626f, 762f, -473f), Struct_2(true, -1541f, Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true))), Struct_1(vec2<bool>(true, false)), false);

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_1(!global2.a);
    global2 = Struct_1(select(!(!arg_0.a), select(vec2<bool>(all(vec3<bool>(arg_0.a.x, false, true)), true), var_0.a, select(!global2.a, vec2<bool>(var_0.a.x, arg_3.d.a.x), !vec2<bool>(global2.a.x, global1.d.a.x))), false));
    let var_1 = any(vec3<bool>(all(!(!vec3<bool>(true, false, global1.e))), any(vec3<bool>(var_0.a.x, true, !global1.e)), true));
    global2 = global1.c.c;
    var var_2 = _wgslsmith_mod_i32(1545i, arg_2.x);
    return any(!vec3<bool>(var_0.a.x, arg_0.a.x, any(vec2<bool>(true, true))));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global1.b.x));
    let var_2 = select(select(vec4<bool>(true, (var_1 < 1892f) || all(vec4<bool>(global1.c.c.a.x, false, arg_0, global1.e)), !(true | arg_0), abs(0u) <= ~u_input.a), !select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, global1.e, global1.e), global1.a <= global1.a), select(vec4<bool>(!global2.a.x, all(global2.a), !global1.d.a.x, func_3(global1.c.d, global1.b.zzx, vec4<i32>(arg_1, 2147483647i, 2147483647i, 8116i), Struct_3(29221u, global1.b, global1.c, Struct_1(global2.a), true))), select(vec4<bool>(false, true, true, global2.a.x), vec4<bool>(true, true, true, true), arg_0), arg_1 <= firstLeadingBit(1i))), vec4<bool>(true, arg_0, global1.c.d.a.x, arg_0), vec4<bool>(any(!(!vec4<bool>(global1.e, arg_0, false, arg_0))), !(!(!global1.e)), false, any(!select(vec4<bool>(global1.d.a.x, false, false, true), vec4<bool>(arg_0, global2.a.x, true, global2.a.x), global1.d.a.x))));
    let var_3 = global1.c;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(719f * var_3.b), _wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b) - -761f))), -712f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(-var_3.b)), var_1)), _wgslsmith_f_op_f32(-var_1)));
    return Struct_1(vec2<bool>(global1.c.c.a.x, any(select(vec2<bool>(var_2.x, global2.a.x), vec2<bool>(var_2.x, false), true || arg_0))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 4294967295u;
    global1 = Struct_3(_wgslsmith_div_u32(74437u, abs(min(0u, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -1997f)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(965f)), _wgslsmith_f_op_f32(-global1.c.b), 1f, _wgslsmith_f_op_f32(abs(843f))))), global1.c, global1.c.d, arg_0.a.x);
    global0 = u_input.a;
    var var_1 = global1.b.xyy;
    global0 = _wgslsmith_dot_vec4_u32(~(~(~(~vec4<u32>(var_0, var_0, u_input.a, 4294967295u)))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, global1.a, 0u, u_input.a), ~vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(global1.a, u_input.a, 1u, var_0))));
    return func_2(global2.a.x | select(func_2(func_3(global1.c.c, global1.b.ywy, vec4<i32>(79105i, 0i, 2147483647i, -1i), Struct_3(global1.a, global1.b, Struct_2(arg_1.a.x, var_1.x, Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(global2.a.x, arg_0.a.x))), Struct_1(vec2<bool>(arg_0.a.x, global2.a.x)), false)), -2147483647i).a.x, global1.c.d.a.x, func_3(func_2(global2.a.x, 20068i), global1.b.wwz, vec4<i32>(43305i, -1i, -43702i, 22196i), Struct_3(4294967295u, vec4<f32>(global1.c.b, 989f, -1029f, 545f), global1.c, Struct_1(global1.c.d.a), true))), _wgslsmith_div_i32(select(1i, _wgslsmith_mult_i32(-16374i, -1i), arg_1.a.x), (4943i >> (u_input.a % 32u)) & _wgslsmith_mult_i32(1i, 39488i)) << (u_input.a % 32u));
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(global1.c.c, func_2(true, -countOneBits(1i)));
    var var_1 = !(!(!vec3<bool>(all(vec4<bool>(true, global2.a.x, global2.a.x, true)), all(vec2<bool>(global1.e, false)), all(vec2<bool>(false, false)))));
    var_1 = !vec3<bool>(true, global2.a.x, false);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.c.b, global1.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(ceil(global1.b.x)))), _wgslsmith_f_op_vec2_f32(exp2(global1.b.wz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.b.yw)), global1.b.xx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.xx)) * global1.b.zz)));
    let var_3 = global1.c.a;
    return Struct_3(1u, global1.b, global1.c, global1.d, any(!(!select(vec4<bool>(global1.c.c.a.x, global1.e, var_0.a.x, true), vec4<bool>(global2.a.x, true, false, global1.e), true))));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> u32 {
    let var_0 = global2.a.x != !(!arg_1.e);
    let var_1 = Struct_2(arg_1.b.x != -466f, _wgslsmith_f_op_f32(sign(1f)), func_2(~(~global1.a) > ~(~u_input.a), 53004i), Struct_1(func_1().c.d.a));
    let var_2 = 0i;
    let var_3 = !(!vec3<bool>(all(select(vec3<bool>(true, global1.c.a, var_1.d.a.x), vec3<bool>(global1.e, true, arg_1.d.a.x), false)), all(vec4<bool>(true, arg_1.d.a.x, arg_1.e, global1.e)), arg_1.d.a.x || global1.e));
    let var_4 = var_1;
    return ~abs(4294967295u >> (func_1().a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global0 = 38219u;
    var_0 = func_5(u_input.a, func_1());
    var var_1 = global1.c.d;
    let var_2 = ~vec2<u32>(~_wgslsmith_div_u32(0u, u_input.a), _wgslsmith_clamp_u32(~(~u_input.a), global1.a, global1.a));
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(567f, 1000f, global1.b.x, -463f) + global1.b)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1981f * global1.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), 194f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.b.x, 511f))))), global1.c, global1.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global1.c.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(global1.c.b - global1.c.b)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(global1.b, vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_div_f32(1295f, 369f), global1.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(164f, _wgslsmith_f_op_f32(f32(-1f) * -1416f), global1.b.x, 1709f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(1671f, global1.b.x, -1217f, global1.b.x)) - _wgslsmith_f_op_vec4_f32(-global1.b))))));
}


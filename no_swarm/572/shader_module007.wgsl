struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(min(-1525f, 1000f)));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-129f + global0.b))))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b, -218f, 554f, global0.a.c.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.a - global0.a.a))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1222f, 1789f, true)) * _wgslsmith_div_f32(-1518f, global0.a.c.a.x)))) < -169f, Struct_1(global0.a.c.a, vec2<f32>(global0.a.c.b.x, _wgslsmith_div_f32(global0.b, 153f)), u_input.a.zz, min(countOneBits(countOneBits(u_input.b.wzz)), abs(u_input.b.wxy))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x * -1081f)), 917f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(597f)) * _wgslsmith_f_op_f32(var_0.a.x + -416f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.c.b.x, var_0.c.a.x, var_0.a.x, -978f)), vec4<f32>(797f, global0.a.c.a.x, -788f, global0.a.c.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(505f, 211f, global0.b, global0.b)) - vec4<f32>(global0.b, var_0.c.a.x, var_0.a.x, var_0.c.b.x)), ~global0.a.c.c.x > (41124u >> (var_0.c.c.x % 32u)))), var_0.b)), !(var_0.b || all(select(vec3<bool>(false, global0.a.b, global0.a.b), vec3<bool>(var_0.b, true, global0.a.b), var_0.b))), Struct_1(vec2<f32>(-1000f, 135f), _wgslsmith_f_op_vec2_f32(select(global0.a.c.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-769f, var_0.a.x))), any(!vec3<bool>(var_0.b, true, global0.a.b)))), global0.a.c.c, global0.a.c.d));
    let var_2 = var_0.c.d;
    return select(select(!select(!vec3<bool>(false, global0.a.b, true), select(vec3<bool>(false, var_0.b, var_1.b), vec3<bool>(false, true, true), var_0.b), any(vec4<bool>(true, global0.a.b, true, true))), vec3<bool>(true, -331f > global0.b, false), select(select(vec3<bool>(false, true, global0.a.b), vec3<bool>(var_0.b, true, var_1.b), select(vec3<bool>(var_1.b, global0.a.b, false), vec3<bool>(var_0.b, false, global0.a.b), vec3<bool>(global0.a.b, false, false))), select(select(vec3<bool>(true, true, global0.a.b), vec3<bool>(false, var_0.b, true), vec3<bool>(true, true, var_0.b)), !vec3<bool>(var_1.b, false, true), !vec3<bool>(false, global0.a.b, true)), !(!global0.a.b))), !(!select(select(vec3<bool>(global0.a.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, false), global0.a.b), !vec3<bool>(global0.a.b, var_0.b, true), var_0.b)), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(var_1.b, true, true), vec3<bool>(true, var_0.b, true), vec3<bool>(var_1.b, var_1.b, var_1.b)), vec3<bool>(true, true, true), !vec3<bool>(var_0.b, true, true)), select(vec3<bool>(all(vec4<bool>(global0.a.b, true, var_0.b, var_0.b)), any(vec4<bool>(var_0.b, true, true, var_1.b)), true), !select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(!var_1.b, false, false))));
}

fn func_2() -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1125f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.b.x) * global0.b)) + _wgslsmith_f_op_f32(global0.a.c.b.x - global0.b)), _wgslsmith_f_op_f32(-global0.b));
    var_0 = global0.a.c.a;
    let var_1 = !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, global0.a.b, global0.a.b), vec3<bool>(false, false, false)), vec3<bool>(true, global0.a.b, any(vec4<bool>(true, false, global0.a.b, false))), !(global0.a.b || false)), select(vec3<bool>(global0.a.b, true, !global0.a.b), !(!vec3<bool>(false, global0.a.b, true)), !vec3<bool>(global0.a.b, global0.a.b, global0.a.b)), func_3());
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-global0.a.c.b.x));
    var_0 = vec2<f32>(global0.b, global0.a.c.a.x);
    return global0.a.c.b.x;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.a.a.x, global0.a.c.a.x)), arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -2813f), global0.a.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-538f * global0.b) - arg_0)), global0.a.b, Struct_1(global0.a.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 170f))), u_input.a.xx, -_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.c.d.x, u_input.b.x, -1860i), vec3<i32>(global0.a.c.d.x, u_input.b.x, -23772i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 1429f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), arg_0)))));
    let var_1 = 89798i;
    var var_2 = func_3().x | select(global0.a.b & (any(vec4<bool>(var_0.a.b, global0.a.b, false, var_0.a.b)) == var_0.a.b), global0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(344f - 1181f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.b)));
    var var_3 = all(vec3<bool>(!var_0.a.b, all(!select(vec2<bool>(global0.a.b, true), vec2<bool>(global0.a.b, true), vec2<bool>(var_0.a.b, false))), !(var_1 <= (i32(-1i) * -36140i))));
    let var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a.a, vec4<f32>(1166f, -339f, global0.b, -1241f))) - _wgslsmith_f_op_vec4_f32(-global0.a.a)), any(vec3<bool>(any(vec4<bool>(false, true, false, var_0.a.b)), false, var_0.a.b || false)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.a.c.b.x) + var_0.a.c.b) - _wgslsmith_f_op_vec2_f32(-var_0.a.a.yz)), vec2<f32>(arg_0, 805f), var_0.a.c.c, _wgslsmith_sub_vec3_i32(max(u_input.b.zzx, u_input.b.ywx), vec3<i32>(var_1, 11200i, 2147483647i)))), -2738f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a.c.b)), var_4.a.a.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1170f)), global0.a.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b, 115f))) - vec2<f32>(global0.b, var_4.a.c.a.x)))), select(vec2<u32>(1u, 10494u), var_4.a.c.c, !(!vec2<bool>(true, var_0.a.b))), abs(~(var_4.a.c.d >> (u_input.a.wwz % vec3<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.c.b.x), arg_1.a.x, _wgslsmith_f_op_f32(3309f * _wgslsmith_f_op_f32(arg_1.a.x * -1101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) + -744f)), true, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(1221f - -387f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1512f, 462f), global0.a.c.a.x) * global0.b)));
    var var_0 = true;
    var var_1 = vec3<bool>(arg_1.b, !func_3().x, true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.c.a.x - _wgslsmith_f_op_f32(arg_1.c.a.x * global0.b)), _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.c.a.x)), global0.b)), vec2<f32>(-1000f, global0.b))), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<u32>(77713u, arg_1.c.c.x), all(vec4<bool>(arg_1.b, arg_1.b, false, var_1.x))), arg_1.c.c), global0.a.c.d);
    var var_3 = global0.a;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_1(u_input.b.x, global0.a), _wgslsmith_f_op_f32(-1000f + global0.a.a.x));
    global0 = Struct_3(func_1((_wgslsmith_add_i32(global0.a.c.d.x, u_input.b.x) | 2147483647i) & -1i, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, global0.b, 212f, global0.b) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.a.x, -381f, global0.a.c.b.x, 1105f)))), global0.a.b, func_4(1241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1032f - 836f))))));
    var var_0 = global0.a.a;
    let var_1 = global0.a.c.c;
    global0 = Struct_3(func_1(global0.a.c.d.x, global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1458f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * 646f))))));
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, var_0.x, -476f, -639f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, global0.b, -2069f, -1327f) - global0.a.a)))), false, global0.a.c), _wgslsmith_f_op_f32(abs(var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a.a * vec4<f32>(var_0.x, 198f, global0.a.a.x, global0.a.a.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, global0.a.c.a.x, -488f, global0.b))))) + _wgslsmith_f_op_vec4_f32(-global0.a.a)) * vec4<f32>(592f, -216f, var_0.x, global0.b));
    let var_2 = var_0.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_2.x, firstLeadingBit(vec4<u32>(min(~u_input.a.x, _wgslsmith_mod_u32(61119u, global0.a.c.c.x)), 1u, u_input.a.x, min(var_1.x, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1094f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.b.x * var_0.x) - var_0.x)), (_wgslsmith_div_i32(~u_input.b.x, 1i) << ((1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.c.c.x, 0u, u_input.a.x), vec4<u32>(0u, 10158u, 0u, 1u)) % 32u)) % 32u)) ^ (u_input.b.x >> (_wgslsmith_mult_u32(u_input.a.x << (4294967295u % 32u), max(27401u, var_1.x)) % 32u)));
}


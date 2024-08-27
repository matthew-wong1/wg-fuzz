struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> bool {
    global0 = Struct_3(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, select(global0.a.x, global0.a.x, true), -1i), u_input.c), global0.b, _wgslsmith_f_op_f32(1000f - 1211f));
    var var_0 = ~_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.b.a.b, 1u), ~0u);
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(global0.b.a.a * _wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(max(1150f, -480f))))), 32417u, select(!(-arg_3 == ~arg_3), true, all(select(vec4<bool>(global0.b.a.c, global1.x, arg_2.c, true), vec4<bool>(false, false, true, true), global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-569f + -586f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(347f)))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-808f)), -671f, _wgslsmith_f_op_f32(abs(509f)), arg_2.d)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-197f, arg_0.x, 937f, var_1.a), vec4<f32>(arg_2.a, global0.c, var_1.d, arg_0.x))), vec4<f32>(509f, -1093f, global0.b.a.d, -624f)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(arg_2.a, -791f)) - -834f) - _wgslsmith_div_f32(_wgslsmith_div_f32(-508f, -685f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2.d)), _wgslsmith_f_op_f32(var_2.x * 388f))))), _wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.a.b, 1u), arg_1.x), any(vec2<bool>(true & var_1.c, !(arg_2.c && false))), _wgslsmith_f_op_f32(f32(-1f) * -1663f));
    return true;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global1 = select(vec2<bool>(global1.x, true), vec2<bool>(!(!(global1.x || global1.x)), global0.b.a.c), select(vec2<bool>(func_3(vec3<f32>(936f, 2310f, 654f), _wgslsmith_div_vec2_u32(u_input.b, u_input.b), global0.b.a, -4232i << (global0.b.a.b % 32u)), !(u_input.c.x <= -2147483647i)), select(select(vec2<bool>(true, global0.b.a.c), !vec2<bool>(global1.x, global0.b.a.c), func_3(arg_0.yzy, u_input.b, global0.b.a, -2147483647i)), !select(vec2<bool>(global0.b.a.c, true), vec2<bool>(global0.b.a.c, false), vec2<bool>(global0.b.a.c, true)), !(!vec2<bool>(global1.x, false))), vec2<bool>(global0.b.a.c & global0.b.a.c, global1.x)));
    global1 = !select(select(!vec2<bool>(global1.x, true), !select(vec2<bool>(true, true), vec2<bool>(false, global0.b.a.c), vec2<bool>(false, global0.b.a.c)), any(select(vec3<bool>(global0.b.a.c, false, false), vec3<bool>(true, global1.x, global0.b.a.c), vec3<bool>(global0.b.a.c, global0.b.a.c, global0.b.a.c)))), select(vec2<bool>(global0.b.a.c, any(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(global0.b.a.c, global0.b.a.c), vec2<bool>(true, global0.b.a.c), false), vec2<bool>(true, true), vec2<bool>(false, global0.b.a.c)), global1.x), vec2<bool>(true, true));
    global0 = Struct_3(firstLeadingBit(_wgslsmith_clamp_vec3_i32(max(-vec3<i32>(global0.a.x, u_input.d, global0.a.x), abs(vec3<i32>(global0.a.x, 2147483647i, global0.a.x))), global0.a, countOneBits(vec3<i32>(global0.a.x, global0.a.x, u_input.a)))), global0.b, _wgslsmith_f_op_f32(min(1026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.x, global0.c))))))));
    let var_0 = -267f;
    global0 = Struct_3(vec3<i32>(-u_input.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, global0.a.x), global0.a.x), ~(-52261i << (u_input.b.x % 32u))), 33483i), Struct_2(Struct_1(-106f, ~u_input.b.x, true, _wgslsmith_f_op_f32(f32(-1f) * -1979f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = max(func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -765f), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1372f, 1298f)) * global0.c), _wgslsmith_f_op_f32(f32(-1f) * -283f))), firstLeadingBit(u_input.b.x));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1020f))))), 4294967295u, global0.b.a.c, global0.c));
    let var_2 = !(!(!vec3<bool>(all(vec4<bool>(false, true, var_1.a.c, global1.x)), -1020f > global0.b.a.d, true)));
    var var_3 = Struct_3(-global0.a, global0.b, _wgslsmith_f_op_f32(global0.c - _wgslsmith_div_f32(-1996f, var_1.a.d)));
    let var_4 = global0.b.a;
    return var_3.b.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(func_1(), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(32762u, u_input.b.x, 77347u)), countOneBits(vec3<u32>(4294967295u, 4294967295u, 23860u))), 66506u >> (0u % 32u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x) & u_input.b.x) >> (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u));
    global1 = vec2<bool>(global0.b.a.c, true);
    global1 = !vec2<bool>(false, false && (global0.a.x < (global0.a.x >> (u_input.b.x % 32u))));
    global1 = select(select(vec2<bool>(global0.b.a.c, !global1.x), vec2<bool>(global1.x, any(vec4<bool>(false, global1.x, global0.b.a.c, global0.b.a.c))), vec2<bool>(true, global0.b.a.c)), select(vec2<bool>(false, true), select(!vec2<bool>(global1.x, global0.b.a.c), select(vec2<bool>(false, true), !vec2<bool>(global1.x, global1.x), global0.b.a.c), select(vec2<bool>(false, false), select(vec2<bool>(global0.b.a.c, true), vec2<bool>(false, global0.b.a.c), vec2<bool>(true, global1.x)), vec2<bool>(false, false))), !select(vec2<bool>(false, global0.b.a.c), !vec2<bool>(global0.b.a.c, true), vec2<bool>(true, global0.b.a.c))), select(select(select(!vec2<bool>(global1.x, false), !vec2<bool>(global0.b.a.c, true), select(global0.b.a.c, global1.x, true)), select(select(vec2<bool>(false, false), vec2<bool>(global1.x, global0.b.a.c), global0.b.a.c), vec2<bool>(global1.x, global0.b.a.c), select(vec2<bool>(global1.x, global0.b.a.c), vec2<bool>(global1.x, global1.x), global0.b.a.c)), !(!vec2<bool>(global0.b.a.c, global0.b.a.c))), !vec2<bool>(any(vec4<bool>(false, true, global1.x, global0.b.a.c)), u_input.c.x < -1i), !select(vec2<bool>(true, global0.b.a.c), select(vec2<bool>(true, true), vec2<bool>(global0.b.a.c, false), vec2<bool>(global1.x, global1.x)), !vec2<bool>(false, global1.x))));
    var var_1 = !(!select(!select(vec2<bool>(global1.x, true), vec2<bool>(global0.b.a.c, global1.x), vec2<bool>(true, global0.b.a.c)), select(vec2<bool>(false, false), vec2<bool>(false, false), !vec2<bool>(false, global1.x)), false));
    var var_2 = Struct_3(countOneBits(global0.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.a.d)) - -1236f), ~_wgslsmith_mult_u32(global0.b.a.b, 10806u), !all(vec4<bool>(global0.b.a.c, global0.b.a.c, var_1.x, global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1221f, -118f, false)), 1000f, any(vec4<bool>(global1.x, false, global0.b.a.c, true)))))), _wgslsmith_f_op_f32(f32(-1f) * -376f));
    let var_3 = Struct_3(global0.a, global0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.b.a.d)))));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-860f, 1366f))))) <= _wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(-464f * -128f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, 34327i, var_2.a.x), 0i, var_3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-390f * global0.b.a.a), var_2.b.a.a), -703f), -686f, var_2.b.a.c)));
}


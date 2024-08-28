struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    global1 = all(select(!select(!vec2<bool>(global0.b, false), vec2<bool>(arg_0, global0.b), global0.b), !select(select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, true), vec2<bool>(true, false)), !vec2<bool>(true, arg_0), arg_2.x >= arg_2.x), select(!vec2<bool>(global0.b, arg_1.b), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, global0.b), arg_1.b), vec2<bool>(true, arg_0)), !select(vec2<bool>(false, false), vec2<bool>(arg_1.b, arg_1.b), arg_1.b))));
    var var_0 = Struct_1(~arg_1.c.x, !select(false, arg_1.b, any(!vec4<bool>(global0.b, arg_1.b, arg_1.b, false))), u_input.b);
    var var_1 = 29376u;
    global1 = 52496u >= ~(~var_0.c.x);
    var_0 = arg_1;
    return vec4<bool>(!(!arg_0), true || (true | (_wgslsmith_f_op_f32(arg_2.x - arg_2.x) <= -928f)), false, any(vec2<bool>(-20689i > u_input.a.x, !arg_0)) & true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = !(!(!select(select(vec2<bool>(global0.b, arg_0.b), vec2<bool>(arg_0.b, true), true), !vec2<bool>(global0.b, arg_0.b), !arg_0.b)));
    let var_2 = 10710u;
    var var_3 = arg_0;
    var var_4 = arg_0;
    return Struct_1(14693u, all(func_3(all(vec4<bool>(false, var_3.b, global0.b, var_1.x)), Struct_1(63258u, false, vec4<u32>(global0.a, var_2, 39385u, 18643u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1043f, -1261f, -288f, 352f))))) == var_4.b, _wgslsmith_add_vec4_u32(var_4.c, arg_0.c) & max(var_4.c, vec4<u32>(33506u, firstTrailingBit(global0.a), ~var_4.c.x, 1u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> bool {
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, countOneBits(1u), ~u_input.b.x, ~33713u), _wgslsmith_div_vec4_u32(u_input.c >> (arg_0.c % vec4<u32>(32u)), ~vec4<u32>(arg_0.a, u_input.b.x, global0.a, arg_0.a)))), arg_0.b, arg_0.c);
    global1 = false;
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(var_0.a, u_input.b.x), 7274u, var_0.a, ~65193u), ~(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, 95122u, arg_0.c.x, arg_0.c.x), arg_0.c) & ~vec4<u32>(arg_0.c.x, u_input.c.x, 28416u, 0u))), !func_3(true, func_2(arg_0), vec4<f32>(_wgslsmith_div_f32(arg_1.x, 1248f), _wgslsmith_f_op_f32(abs(-240f)), arg_1.x, -442f)).x, firstLeadingBit(countOneBits(vec4<u32>(37045u, 1u, global0.c.x, _wgslsmith_mult_u32(arg_0.c.x, 0u)))));
    let var_3 = vec3<i32>(~27769i, arg_2, arg_2) & vec3<i32>(_wgslsmith_sub_i32(~0i, -u_input.d.x), 15362i << (~_wgslsmith_add_u32(1u, arg_0.c.x) % 32u), 0i);
    return var_2.b == (arg_2 != -2147483647i);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = select(vec3<bool>(!func_4(func_2(arg_1), vec2<f32>(arg_0, arg_0), 5152i << (arg_1.a % 32u)), any(!select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, false, global0.b), vec3<bool>(global0.b, true, false))), global0.b), vec3<bool>(!global0.b, arg_1.b, global0.b), arg_1.b);
    var_0 = !select(select(!func_3(global0.b, arg_1, vec4<f32>(arg_0, 326f, -373f, arg_0)).zwy, select(select(vec3<bool>(arg_1.b, arg_1.b, var_0.x), vec3<bool>(true, false, true), false), vec3<bool>(true, arg_1.b, global0.b), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(true, false && arg_1.b, true)), select(!vec3<bool>(arg_1.b, global0.b, false), vec3<bool>(all(vec3<bool>(global0.b, false, var_0.x)), arg_1.b && global0.b, var_0.x), arg_1.b), select(!func_3(arg_1.b, Struct_1(arg_1.c.x, global0.b, global0.c), vec4<f32>(arg_0, arg_0, arg_0, arg_0)).wyy, vec3<bool>(arg_1.b, select(var_0.x, false, false), arg_1.b), true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))) + -756f);
    let var_2 = Struct_1(45083u, u_input.a.x == u_input.a.x, u_input.b);
    global0 = Struct_1(arg_1.a, func_2(func_2(var_2)).b, u_input.b);
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global0.b, true, !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -194f))) < _wgslsmith_f_op_f32(f32(-1f) * -630f)));
    global1 = var_0.x;
    let var_1 = vec3<i32>(11209i, -_wgslsmith_sub_i32(max(-13805i, u_input.a.x) & reverseBits(20285i), ~u_input.d.x), 0i);
    var var_2 = _wgslsmith_div_u32(u_input.c.x, func_1(_wgslsmith_f_op_f32(-213f - _wgslsmith_f_op_f32(max(713f, _wgslsmith_f_op_f32(-1000f * -1855f)))), Struct_1(~(4294967295u ^ u_input.b.x), true, ~global0.c << (firstTrailingBit(global0.c) % vec4<u32>(32u)))));
    let var_3 = vec3<i32>(var_1.x << ((~u_input.b.x << (abs(u_input.b.x) % 32u)) % 32u), select(abs(~var_1.x), ~abs(countOneBits(u_input.d.x)), select(any(!vec4<bool>(true, var_0.x, false, false)), global0.b, !var_0.x)), -max(var_1.x, _wgslsmith_add_i32(-u_input.d.x, -var_1.x)));
    let var_4 = ~(~vec2<u32>(firstTrailingBit(global0.c.x), func_1(-358f, Struct_1(u_input.c.x, global0.b, vec4<u32>(u_input.b.x, global0.c.x, 4294967295u, u_input.b.x)))) ^ (~_wgslsmith_mult_vec2_u32(vec2<u32>(9264u, 0u), vec2<u32>(29573u, global0.a)) ^ u_input.c.zx));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u));
}


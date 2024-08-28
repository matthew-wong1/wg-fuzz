struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = true;
    var var_0 = Struct_2(Struct_1(~0u | firstLeadingBit(~u_input.b), u_input.b, !all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), select(vec2<bool>(true, any(vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, 58266u <= arg_0.x), false)));
    let var_1 = false;
    let var_2 = var_0.a.d.x && var_1;
    let var_3 = vec3<i32>((u_input.a & -(u_input.a << (4294967295u % 32u))) ^ -1i, _wgslsmith_dot_vec4_i32(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, 2147483647i, u_input.a), vec4<i32>(-46372i, u_input.a, -47689i, -9778i)), abs(vec4<i32>(0i, u_input.a, -11947i, u_input.a))), ((vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 0i, -3760i)) & max(vec4<i32>(19498i, -643i, u_input.a, u_input.a), vec4<i32>(17820i, u_input.a, 0i, 23479i))) ^ vec4<i32>(u_input.a, u_input.a, firstTrailingBit(-1i), -20389i)), -_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, 25516i), ~(u_input.a >> (29658u % 32u))));
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~abs(_wgslsmith_sub_u32(var_0.a.b, 0u))), 26530u);
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_4(func_3(u_input.c.zx) & (abs(~4294967295u) & u_input.c.x));
    var_0 = Struct_4(~var_0.a);
    var var_1 = select(vec4<bool>(arg_0.x, true, true, all(select(arg_0, select(arg_0, arg_0, arg_0.x), select(vec3<bool>(false, arg_0.x, false), arg_0, arg_0)))), vec4<bool>(true, all(vec2<bool>(true, false)), arg_0.x, any(vec3<bool>(true && arg_0.x, any(vec3<bool>(arg_0.x, true, arg_0.x)), true))), !select(select(vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(false, false, arg_0.x, arg_0.x), true), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), false));
    var var_2 = false;
    var_0 = Struct_4((~(~28644u) ^ _wgslsmith_dot_vec3_u32(u_input.c, u_input.c >> (vec3<u32>(0u, var_0.a, u_input.c.x) % vec3<u32>(32u)))) | (u_input.c.x ^ (min(4294967295u, u_input.c.x) >> (23814u % 32u))));
    return var_1.xzx;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = any(vec2<bool>(!all(select(vec2<bool>(true, arg_1.d.x), arg_0.a.d, arg_1.e.zx)), arg_1.c));
    var_0 = arg_2 >= _wgslsmith_f_op_f32(exp2(arg_2));
    let var_1 = Struct_4(reverseBits(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 1u)));
    var_0 = any(vec2<bool>(true, true));
    var_0 = all(!select(func_2(vec3<bool>(arg_1.d.x, true, false)), arg_0.a.e, true));
    return vec2<bool>(arg_0.a.c, any(arg_1.e.yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(321f, 788f))));
    let var_2 = Struct_3(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(Struct_2(Struct_1(20623u, u_input.c.x, false, vec2<bool>(true, false), vec3<bool>(false, false, true))), Struct_1(u_input.b, u_input.c.x, true, vec2<bool>(true, false), vec3<bool>(false, false, false)), _wgslsmith_div_f32(1883f, var_1), ~vec3<i32>(u_input.a, -13992i, var_0)), true), select(func_2(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))).yx, vec2<bool>(all(vec4<bool>(true, true, true, true)), true), func_1(Struct_2(Struct_1(u_input.b, u_input.c.x, true, vec2<bool>(false, true), vec3<bool>(true, false, true))), Struct_1(1u, 4294967295u, true, vec2<bool>(false, false), vec3<bool>(true, true, false)), 1049f, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 0i, var_0), vec3<i32>(-21050i, 2147483647i, u_input.a)))), !(_wgslsmith_sub_i32(-5551i, var_0) >= (-1i >> (u_input.c.x % 32u)))), ~_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_0, -39338i, 2147483647i, 1i)), vec4<i32>(u_input.a, 30907i, -2147483647i, 28038i), countOneBits(vec4<i32>(-2147483647i, 0i, var_0, var_0))) & vec4<i32>(2147483647i, -(~0i), -1i, ~var_0));
    var var_3 = var_2;
    let var_4 = Struct_1(max(3510u, u_input.c.x), u_input.c.x, any(vec3<bool>(!var_2.a.x, var_3.a.x, any(!vec4<bool>(false, true, var_2.a.x, false)))), vec2<bool>(all(select(vec3<bool>(var_2.a.x, var_3.a.x, var_3.a.x), vec3<bool>(var_2.a.x, false, var_3.a.x), false)) & true, any(select(vec4<bool>(false, false, var_3.a.x, true), vec4<bool>(var_3.a.x, true, var_2.a.x, var_3.a.x), var_2.a.x && false))), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_3.a.x, false), var_2.a.x), !vec3<bool>(true, true, var_3.a.x), true), !func_2(vec3<bool>(false, true, var_3.a.x)), var_3.a.x));
    var var_5 = false;
    var var_6 = !(!func_1(Struct_2(var_4), Struct_1(1u, var_4.a, true, var_3.a, select(var_4.e, vec3<bool>(var_4.c, false, true), var_3.a.x)), _wgslsmith_div_f32(var_1, -284f), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(32041i, var_2.b.x, 56076i), var_2.b.yzz))).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(36270u, ~var_4.b >> (_wgslsmith_add_u32(~53725u, 1u) % 32u)), -var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}


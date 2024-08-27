struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = 1i;
    let var_2 = -var_0.b;
    var var_3 = arg_0;
    return !select(!select(vec3<bool>(arg_0.c, var_0.c, arg_0.c), vec3<bool>(false, false, var_3.c), select(true, false, var_3.c)), !(!(!vec3<bool>(false, true, var_0.c))), vec3<bool>(false, false, !(false && var_3.c)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x << (0u % 32u), 2149u, ~u_input.d.x, 11355u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(36069u, u_input.b.x, arg_0.x, u_input.b.x), u_input.b ^ vec4<u32>(4294967295u, arg_0.x, arg_0.x, 1u)), (vec4<u32>(u_input.b.x, arg_0.x, u_input.c, arg_0.x) << (vec4<u32>(arg_0.x, 1u, 4294967295u, u_input.d.x) % vec4<u32>(32u))) >> (vec4<u32>(arg_0.x, arg_0.x, 1u, u_input.d.x) % vec4<u32>(32u)))), abs(1u));
    var_0 = ~arg_0.zz;
    var var_1 = reverseBits(abs(~vec4<i32>(5687i, u_input.a, 18798i, -1i) >> (arg_0 % vec4<u32>(32u)))) | vec4<i32>(-_wgslsmith_add_i32(u_input.a, -14745i), arg_1.b, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i << (u_input.c % 32u), -26105i), ~select(arg_1.b, arg_1.b, true)), ~(-reverseBits(-1i)));
    let var_2 = select(vec4<bool>(false, ~(var_0.x ^ 1u) >= firstLeadingBit(arg_0.x), all(select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(true, arg_1.c, false), true), select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(true, false, true), false))), any(vec2<bool>(true, -2147483647i <= u_input.a))), vec4<bool>(arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.e)), _wgslsmith_f_op_f32(arg_1.d - -772f)) < arg_1.e, arg_1.c, (u_input.b.x <= ~var_0.x) & any(func_1(arg_1))), any(select(vec4<bool>(!arg_1.c, !arg_1.c, 25913u == arg_0.x, any(vec2<bool>(arg_1.c, true))), select(select(vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c), vec4<bool>(true, arg_1.c, true, arg_1.c), vec4<bool>(arg_1.c, false, arg_1.c, false)), select(vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c), vec4<bool>(false, false, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, false, true, false)), true), vec4<bool>(true, true | arg_1.c, arg_1.c && true, any(vec4<bool>(false, arg_1.c, false, arg_1.c))))));
    var var_3 = vec3<bool>(!(!any(select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x)))), false, !func_1(arg_1).x);
    return ~u_input.a << (37954u % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1517f + 654f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-564f, 1037f), _wgslsmith_f_op_f32(363f + -1460f))), 132f, -1337f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-847f, _wgslsmith_f_op_f32(-588f - -2671f), _wgslsmith_f_op_f32(-507f + -113f), _wgslsmith_f_op_f32(floor(-213f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1520f, 1962f, -233f, 252f), vec4<f32>(-133f, 274f, 490f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1906f, -1534f, -1000f, -846f) + vec4<f32>(-146f, -308f, 816f, -571f)))))), -(_wgslsmith_add_i32(abs(u_input.a), func_3(vec4<u32>(u_input.b.x, arg_1.x, 0u, arg_1.x), Struct_1(vec4<f32>(-572f, -1315f, -751f, -500f), 2147483647i, arg_0.x, 1518f, 892f))) << (~u_input.c % 32u)), arg_0.x, _wgslsmith_f_op_f32(sign(221f)), 281f);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, var_0.a)), 17213i, false, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_f_op_f32(var_0.e - _wgslsmith_div_f32(-1485f, var_0.d))))), -2118f);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(386f, var_0.a.x, var_0.d, -1486f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, 1198f, var_0.d, -933f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, _wgslsmith_f_op_f32(var_0.a.x + var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -1086f), _wgslsmith_f_op_f32(max(1149f, var_0.d)))))), _wgslsmith_div_i32(8179i, min(12377i, ~countOneBits(u_input.a))), true, _wgslsmith_f_op_f32(ceil(-206f)), _wgslsmith_f_op_f32(floor(-439f)));
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a), vec4<f32>(_wgslsmith_f_op_f32(289f - var_0.a.x), 1000f, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(exp2(var_0.a.x)))), var_0.a), u_input.a, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - -504f), _wgslsmith_f_op_f32(round(var_0.d)));
    var var_1 = u_input.b.x;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-987f, countOneBits(~vec2<i32>(-u_input.a, ~u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), func_1(Struct_1(vec4<f32>(1000f, 1179f, -254f, 784f), u_input.a, false, 297f, 1000f)), all(vec2<bool>(true, true))), ~(~u_input.b.zyz))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f + -496f) - _wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1071f, 1711f, false)) - _wgslsmith_f_op_f32(ceil(285f)))))));
}


struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(14828u);
    return select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(select(false, false, true), true, any(vec3<bool>(false, false, false)))), true, true), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(u_input.a.x < 85878u, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)))), false));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(4294967295u);
    global0 = Struct_1(0u);
    var var_0 = !(!(!select(vec3<bool>(false, true, true), func_3(2147483647i, 1089f, 4328u), true)));
    var_0 = !vec3<bool>(true, false, var_0.x);
    let var_1 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_1(arg_2.a);
    let var_1 = func_3(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(662f)))), func_2(Struct_1(~u_input.a.x)).a).zz;
    var var_2 = func_2(func_2(func_2(Struct_1(61502u))));
    return -(min(vec4<i32>(arg_1.x, 2147483647i, arg_3.x, arg_3.x) ^ (arg_3 | vec4<i32>(-11399i, 1i, -23796i, arg_3.x)), arg_3) >> (max(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a, 3120u, 57591u, global0.a)), vec4<u32>(1u, 43529u, 4294967295u, var_0.a)), abs(u_input.a)) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, global0.a)));
    var var_1 = -2147483647i;
    return func_2(func_2(var_0));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = func_5(select(~_wgslsmith_add_vec4_i32(vec4<i32>(-12347i, -1930i, -31319i, -2147483647i), vec4<i32>(-14634i, arg_1, 2147483647i, arg_1)) << ((~vec4<u32>(arg_0.a, arg_2.a, arg_2.a, arg_2.a) & _wgslsmith_add_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u)), func_4(Struct_1(~global0.a), vec3<i32>(_wgslsmith_mult_i32(12438i, 2560i), i32(-1i) * -34349i, ~4563i), func_2(Struct_1(1u)), vec4<i32>(arg_1, ~arg_1, -arg_1, arg_1)), !all(vec3<bool>(false, false, false))));
    let var_0 = func_2(func_2(arg_0));
    var var_1 = select(any(!vec2<bool>(func_3(-10833i, -180f, 3237u).x, true)), true, true);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3, -580f)));
    global0 = Struct_1(1u);
    return reverseBits(57371u);
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(4294967295u)).a;
    let var_1 = func_5(vec4<i32>(~_wgslsmith_sub_i32(-27995i, -53031i), _wgslsmith_div_i32(select(1i, 0i, true), -31707i >> (u_input.a.x % 32u)), select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -4620i, -4123i), vec3<i32>(36688i, 2147483647i, -7988i)), true), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-3780i, 0i), countOneBits(47061i))) << (((min(vec4<u32>(4294967295u, global0.a, 2512u, 2272u), vec4<u32>(0u, u_input.a.x, var_0, 1u)) | vec4<u32>(96741u, u_input.a.x, 0u, 80667u)) >> (vec4<u32>(1u, 1u, _wgslsmith_div_u32(global0.a, var_0), arg_2.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(global0.a | 17064u, 87133u << (var_1.a % 32u)) >> (~countOneBits(15730u) % 32u));
    var var_3 = arg_0;
    global0 = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(4285i, firstLeadingBit(func_4(Struct_1(var_0), vec3<i32>(19251i, 1i, 1i), var_1, vec4<i32>(-2147483647i, -1i, 1i, 0i)).x), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 62075i, 1i), vec3<i32>(-53038i, -53647i, 26399i)) >> (~var_0 % 32u)), -vec4<i32>(-1i, -1i, -17647i, -27746i) ^ vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 15876i), vec3<i32>(1i, -38524i, 2147483647i)), 1i, _wgslsmith_div_i32(2147483647i, -21627i))));
    return var_1;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(vec4<bool>(false, !all(vec2<bool>(true, true)), ((-41095i << (u_input.a.x % 32u)) << (~1u % 32u)) > -1i, true));
    let var_1 = reverseBits(_wgslsmith_mod_i32(-29305i, ~0i));
    let var_2 = reverseBits(_wgslsmith_add_vec3_u32(select(select(vec3<u32>(arg_0.a, arg_0.a, 21295u), vec3<u32>(u_input.a.x, 31527u, 0u), var_0) >> (abs(u_input.a.xyy) % vec3<u32>(32u)), countOneBits(abs(u_input.a.wyz)), true), u_input.a.wyz << (abs(~vec3<u32>(global0.a, 1u, 27978u)) % vec3<u32>(32u))));
    var var_3 = 842f;
    global0 = Struct_1(abs(global0.a << (~arg_0.a % 32u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(round(-527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1140f)))), Struct_1(abs(func_1(Struct_1(u_input.a.x), 1i, Struct_1(global0.a), 277f)))));
    var var_1 = func_2(Struct_1(reverseBits(func_5(vec4<i32>(2147483647i, -8747i, 44132i, 1i)).a)));
    global0 = var_0;
    var_1 = var_0;
    var var_2 = abs(-vec3<i32>(firstLeadingBit(1i), 1i, -select(36142i, 0i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_2.x, 57446i)), ~(vec2<i32>(var_2.x, 0i) << (u_input.a.ww % vec2<u32>(32u)))) | var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1022f)))));
}


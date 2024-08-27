struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    global0 = !select(!select(vec2<bool>(global0.x, false), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), !vec2<bool>(global0.x, false), all(vec4<bool>(global0.x, global0.x, global0.x, true))), !select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x)));
    var var_0 = !vec3<bool>(global0.x, any(!select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true))), !(!global0.x));
    var var_1 = global0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-444f + -608f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1726f) * -1432f), 1139f))), vec2<bool>((max(u_input.b, 15719u) != u_input.a) | global0.x, true), firstTrailingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-2147483647i, -8991i)))));
    var var_3 = var_2;
    return ~vec3<u32>(1u, ~0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 47152u), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 12344u), vec2<u32>(u_input.b, 0u))), 1u));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(60869i, arg_2.c.x, -1i, 0i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.c.x, arg_0.c.x, 21335i, -32115i) << (~vec4<u32>(0u, arg_1, u_input.b, 43434u) % vec4<u32>(32u)), vec4<i32>(36108i, arg_2.c.x, arg_0.c.x, arg_2.c.x) << (abs(vec4<u32>(4294967295u, 1u, arg_1, u_input.b)) % vec4<u32>(32u)))), vec4<i32>(-2147483647i, min(abs(-45912i), -2147483647i) >> (arg_1 % 32u), countOneBits(abs(-43159i)), arg_2.c.x));
    var_0 = -(~_wgslsmith_add_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(39716i, arg_0.c.x, 0i, arg_2.c.x), vec4<i32>(-79706i, arg_0.c.x, 0i, var_0.x), vec4<i32>(-2147483647i, -8692i, var_0.x, arg_0.c.x))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_0.x, 38712i), vec4<i32>(8719i, arg_0.c.x, 2147483647i, 0i), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_2.c.x))));
    var var_1 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(18542u, 4294967295u, 4294967295u)), func_3());
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), 1000f, 1564f));
    var_0 = min(~countOneBits(~(vec4<i32>(0i, var_0.x, -1i, 48861i) ^ vec4<i32>(4402i, 28240i, -1i, 0i))), firstLeadingBit(firstLeadingBit(vec4<i32>(-51274i, firstTrailingBit(var_0.x), -arg_0.c.x, 2147483647i))));
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = select(!arg_1.b, arg_1.b, vec2<bool>(!global0.x, !(!func_2(Struct_1(vec3<f32>(230f, arg_1.a.x, -1276f), arg_1.b, arg_1.c), u_input.b, arg_1))));
    let var_0 = arg_1.c.x;
    global0 = select(!(!(!arg_1.b)), vec2<bool>(_wgslsmith_mod_i32(-var_0, _wgslsmith_clamp_i32(arg_1.c.x, arg_1.c.x, -2147483647i)) <= ~_wgslsmith_add_i32(arg_1.c.x, -2147483647i), global0.x), arg_1.b.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1281f, 809f, -1081f);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-965f * _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), arg_1.a.x, 1233f), !vec2<bool>(all(select(vec4<bool>(false, false, true, arg_1.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, global0.x), vec4<bool>(arg_1.b.x, true, true, global0.x))), (arg_0.x << (0u % 32u)) <= (arg_0.x >> (arg_0.x % 32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~arg_1.c, vec2<i32>(select(arg_1.c.x, var_0, false), arg_1.c.x)), -abs(_wgslsmith_div_vec2_i32(arg_1.c, vec2<i32>(arg_1.c.x, -15602i))), -arg_1.c));
    return Struct_1(var_1.xxw, select(arg_1.b, vec2<bool>(var_2.b.x, true), arg_1.b), ~(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(arg_1.c, var_2.c)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1(vec2<u32>(3623u, u_input.a), Struct_1(vec3<f32>(arg_0, var_0.a.x, -1755f), vec2<bool>(false, arg_2.b.x), vec2<i32>(arg_2.c.x, var_0.c.x))).a) - arg_2.a))), arg_2.b, vec2<i32>(firstLeadingBit(1i) ^ arg_2.c.x, -34213i));
    global0 = select(vec2<bool>(!all(select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(false, arg_2.b.x, false), arg_1.xxx)), true), func_1(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 12093u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.b))), func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(2976u, 48025u), vec2<u32>(u_input.a, 0u))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(arg_0, -276f, -1018f)), select(vec2<bool>(false, false), vec2<bool>(false, arg_1.x), var_0.b), countOneBits(arg_2.c)))).b, !func_2(arg_2, 1u, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a)), !arg_1.wy, -vec2<i32>(36683i, 58029i))));
    var_0 = arg_2;
    var var_1 = global0.x;
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, 0u))), ~38344u, u_input.b), vec3<u32>(0u, ~48928u, u_input.b) << ((select(vec3<u32>(u_input.a, 15795u, 0u), vec3<u32>(34704u, u_input.a, 16706u), vec3<bool>(global0.x, global0.x, global0.x)) & ~vec3<u32>(u_input.b, u_input.a, 13181u)) % vec3<u32>(32u))), vec3<u32>(u_input.b, u_input.a, 0u), vec3<bool>(!global0.x, false, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f * 1763f) + _wgslsmith_f_op_f32(f32(-1f) * -292f)), select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, false), !vec4<bool>(true, global0.x, global0.x, false)), func_1(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<f32>(-145f, -548f, -685f), vec2<bool>(global0.x, true), vec2<i32>(2147483647i, -13777i))))));
    let var_1 = vec3<bool>(!global0.x, !func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2074f)) - -1016f), vec4<bool>(true, select(global0.x, false, global0.x), global0.x, true), Struct_1(vec3<f32>(287f, -2107f, 1612f), !vec2<bool>(global0.x, false), vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(-673f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2848f, 1641f)) + _wgslsmith_f_op_f32(ceil(-868f)))) <= -1000f);
    let var_2 = vec2<u32>(~(~u_input.a), 0u);
    global0 = vec2<bool>(!var_1.x, global0.x);
    let var_3 = max(vec3<u32>(var_0.x, 1u, _wgslsmith_add_u32(0u, var_2.x)), (~vec3<u32>(29519u, 7616u, 45370u) << (vec3<u32>(~var_2.x, countOneBits(9796u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20772u), vec2<u32>(1u, var_2.x))) % vec3<u32>(32u))) << (~(~vec3<u32>(u_input.a, 10240u, 44623u)) % vec3<u32>(32u)));
    var var_4 = func_1(abs(vec2<u32>(~var_3.x << (var_0.x % 32u), u_input.a & var_0.x)), func_1(min(~var_2, _wgslsmith_mod_vec2_u32(firstLeadingBit(var_3.xz), var_2)), func_1(var_2 & abs(vec2<u32>(var_0.x, 4294967295u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1120f, -520f, 259f) - vec3<f32>(-1000f, 867f, 667f)), vec2<bool>(true, var_1.x), vec2<i32>(1i, 1i)))));
    var var_5 = Struct_1(var_4.a, vec2<bool>(false, func_2(func_1(var_3.xx, Struct_1(vec3<f32>(-478f, var_4.a.x, -393f), vec2<bool>(var_1.x, global0.x), var_4.c)), 6437u, Struct_1(_wgslsmith_div_vec3_f32(var_4.a, var_4.a), func_1(vec2<u32>(0u, var_3.x), Struct_1(var_4.a, var_4.b, vec2<i32>(-6817i, var_4.c.x))).b, var_4.c << (var_3.xz % vec2<u32>(32u))))), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec2_i32(var_5.c, -var_5.c), var_4.c.x ^ (_wgslsmith_dot_vec2_i32(var_4.c, vec2<i32>(var_5.c.x, -2147483647i)) ^ -2147483647i), var_5.c);
}


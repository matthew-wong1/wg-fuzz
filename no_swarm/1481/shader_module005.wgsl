struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> i32 {
    let var_0 = vec4<i32>(-108563i, u_input.c.x, 30940i, _wgslsmith_mod_i32(-1402i, 61514i));
    global0 = array<vec2<bool>, 14>();
    let var_1 = Struct_2(select(arg_2.b, _wgslsmith_sub_vec2_u32(~(vec2<u32>(arg_2.b.x, 10085u) & vec2<u32>(1u, arg_2.a.a)), arg_2.b), arg_1), Struct_1(_wgslsmith_mod_u32(arg_2.a.a ^ u_input.a, 0u), any(select(arg_2.d, vec4<bool>(arg_3.x, false, false, true), arg_2.d)) & true), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-111268i, 12578i), vec2<i32>(var_0.x, var_0.x)), abs(_wgslsmith_clamp_i32(-17902i, -22918i, 0i) & _wgslsmith_mult_i32(var_0.x, u_input.b)), -_wgslsmith_mod_i32(var_0.x, _wgslsmith_sub_i32(-10866i, -55196i)), -47023i));
    global0 = array<vec2<bool>, 14>();
    var var_2 = -2147483647i;
    return max(abs(u_input.c.x), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_1.c.zxx, vec3<i32>(-2147483647i, 7349i, u_input.b)), -var_1.c.x) ^ ~var_0.x);
}

fn func_2() -> vec3<u32> {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1339f);
    let var_2 = _wgslsmith_f_op_f32(select(274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-838f * -1000f))), 1f, true))), (_wgslsmith_sub_u32(~1u, 34254u) << ((_wgslsmith_mod_u32(u_input.a, u_input.a) >> (u_input.a % 32u)) % 32u)) != firstTrailingBit(~1u)));
    var var_3 = vec3<i32>(u_input.c.x, -(~(u_input.b & u_input.b)), max(u_input.b, 36810i));
    let var_4 = Struct_1(~(~23558u), ~(~func_3(var_2, false, Struct_3(Struct_1(4294967295u, true), vec2<u32>(52682u, u_input.a), vec3<f32>(var_2, var_2, 714f), vec4<bool>(true, false, false, false)), vec3<bool>(false, true, true))) <= u_input.b);
    return firstTrailingBit(~vec3<u32>(~var_4.a, ~(18529u | var_4.a), ~(~var_4.a)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(-63439i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5815i, -18439i, 29586i), vec3<i32>(0i, u_input.c.x, u_input.c.x)), u_input.c.x, 0i));
    let var_1 = countOneBits((vec3<i32>(max(u_input.b, -1i), u_input.b, 2147483647i >> (arg_1.x % 32u)) ^ firstTrailingBit(vec3<i32>(-2147483647i, -16282i, 2147483647i))) << (func_2() % vec3<u32>(32u)));
    var_0 = var_1.yx;
    var var_2 = Struct_2(vec2<u32>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, 4294967295u, 1u, 22689u)), vec4<u32>(6123u, u_input.a, 30172u, 1u) & vec4<u32>(29819u, 2977u, 4294967295u, u_input.a)), max(_wgslsmith_sub_u32(1u, arg_1.x & 0u), _wgslsmith_mod_u32(select(4294967295u, u_input.a, false), abs(0u)))), Struct_1(_wgslsmith_mod_u32(arg_1.x, u_input.a), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))))), (vec4<i32>(-u_input.b, ~1i, i32(-1i) * -18316i, -var_0.x) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) << (abs(~(vec4<u32>(24447u, 12659u, u_input.a, 0u) | vec4<u32>(4294967295u, 50401u, 4294967295u, 82561u))) % vec4<u32>(32u)));
    let var_3 = var_2.b;
    return Struct_3(var_2.b, ~vec2<u32>(0u, ~u_input.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-466f, arg_0, arg_0))), vec3<f32>(1203f, -1832f, _wgslsmith_f_op_f32(-529f * 695f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1621f, -1580f) - vec3<f32>(arg_0, -168f, arg_0)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, -1616f, arg_0)))), select(select(vec3<bool>(var_3.b, false, false), select(vec3<bool>(var_2.b.b, true, true), vec3<bool>(true, true, true), var_2.b.b), false), vec3<bool>(var_2.b.b, var_3.b, u_input.a < 0u), any(!vec3<bool>(true, var_3.b, false))))), vec4<bool>(!(_wgslsmith_f_op_f32(arg_0 + -1384f) == arg_0), false, false, false));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = arg_2.a;
    let var_1 = Struct_1(~firstLeadingBit(1u), func_1(_wgslsmith_f_op_f32(-arg_2.c.x), vec2<u32>(abs(abs(u_input.a)), min(59358u, _wgslsmith_add_u32(40549u, arg_2.b.x)))).a.b);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -558f);
    var var_3 = _wgslsmith_f_op_f32(floor(arg_2.c.x));
    var_3 = -666f;
    return vec4<u32>(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(~4294967295u), select(arg_3.c.a.x, arg_3.c.b.a, var_1.b), ~arg_2.b.x), arg_0), 47328u, firstLeadingBit(~(var_0.a << (18811u % 32u))) | ((var_1.a | firstLeadingBit(36008u)) << (~(~u_input.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 14>();
    global0 = array<vec2<bool>, 14>();
    global0 = array<vec2<bool>, 14>();
    global0 = array<vec2<bool>, 14>();
    var var_0 = select(vec4<u32>(42413u, abs(15206u), 13051u, ~(~(u_input.a | u_input.a))), func_4(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 19784u) ^ vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 1u)), ~vec4<i32>(-2147483647i, 13876i, u_input.b, 41996i) & firstLeadingBit(~vec4<i32>(-26279i, u_input.b, -1i, u_input.b)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f * -894f) + -758f), ~(~vec2<u32>(0u, u_input.a))), Struct_4(func_1(_wgslsmith_f_op_f32(1000f + 612f), func_1(913f, vec2<u32>(u_input.a, 14653u)).b).d.yxz, ~(~vec3<i32>(u_input.c.x, 3321i, u_input.b)), Struct_2(reverseBits(vec2<u32>(100029u, 0u)), Struct_1(u_input.a, true), vec4<i32>(6279i, -6435i, -2147483647i, -1i)))), all(vec2<bool>(any(vec2<bool>(true, true)), true)));
    var_0 = ~_wgslsmith_add_vec4_u32(~countOneBits(func_4(var_0.zxz, vec4<i32>(u_input.c.x, u_input.b, -2147483647i, 39703i), Struct_3(Struct_1(var_0.x, false), var_0.zz, vec3<f32>(1142f, -903f, -432f), vec4<bool>(false, true, false, false)), Struct_4(vec3<bool>(false, true, false), vec3<i32>(u_input.b, u_input.b, 1i), Struct_2(vec2<u32>(18586u, u_input.a), Struct_1(4294967295u, true), vec4<i32>(u_input.c.x, u_input.b, -1i, 64089i))))), abs(vec4<u32>(u_input.a, u_input.a, 9456u, 16301u)));
    var var_1 = u_input.c.x;
    let var_2 = Struct_4(vec3<bool>(false, true, !all(vec2<bool>(true, true))), countOneBits(-_wgslsmith_add_vec3_i32(vec3<i32>(0i, -33908i, 5480i), vec3<i32>(-15492i, -68731i, u_input.c.x))) << (var_0.wwz % vec3<u32>(32u)), Struct_2(var_0.yy, func_1(-148f, var_0.wy).a, _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(226f, true, Struct_3(Struct_1(4294967295u, true), var_0.wy, vec3<f32>(1264f, 1000f, 258f), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, true)), u_input.c.x, 35006i, 35725i >> (u_input.a % 32u)), vec4<i32>(-2147483647i, max(u_input.c.x, u_input.c.x), func_3(-813f, false, Struct_3(Struct_1(var_0.x, false), var_0.wz, vec3<f32>(-790f, 624f, 1000f), vec4<bool>(true, false, true, false)), vec3<bool>(false, false, true)), u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.b));
}


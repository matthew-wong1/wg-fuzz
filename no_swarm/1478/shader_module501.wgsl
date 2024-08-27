struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(54996u, 17113u, 55768u, 0u), vec4<u32>(31095u, 37126u, 1677u, 0u), vec4<u32>(73917u, 30210u, 1u, 4294967295u), vec4<u32>(12988u, 0u, 1u, 1504u), vec4<u32>(4294967295u, 1779u, 0u, 0u), vec4<u32>(15825u, 68637u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 38054u, 4294967295u), vec4<u32>(79482u, 46748u, 0u, 1u), vec4<u32>(16758u, 28626u, 1u, 66211u), vec4<u32>(1u, 137436u, 4294967295u, 1u), vec4<u32>(1u, 58952u, 4749u, 4294967295u), vec4<u32>(0u, 47828u, 0u, 36126u), vec4<u32>(0u, 0u, 4294967295u, 19795u), vec4<u32>(4294967295u, 24686u, 1u, 0u), vec4<u32>(64741u, 0u, 4294967295u, 94982u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-874f)), _wgslsmith_f_op_f32(f32(-1f) * -528f), any(vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_2(Struct_1(var_0, ~vec3<u32>(max(u_input.a, u_input.a), 0u ^ arg_0.b.x, arg_0.b.x)), arg_0);
    let var_2 = arg_0;
    let var_3 = Struct_2(Struct_1(1f, arg_0.b), var_2);
    let var_4 = var_3;
    return -436f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), arg_2.b), (~vec4<i32>(arg_1.x, 19905i, arg_1.x, -6284i) & abs(vec4<i32>(-1i, -25843i, 606i, arg_1.x))) ^ vec4<i32>(0i, arg_1.x & 20292i, arg_1.x ^ arg_1.x, countOneBits(-9627i)), _wgslsmith_f_op_f32(552f + -124f))), ~arg_0.b);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -669f))), -143f), vec3<u32>(arg_3.b.x, 83994u, ~firstTrailingBit(1u)));
    return var_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, true), any(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, false)) & true)));
    global0 = array<vec4<u32>, 15>();
    let var_1 = select(select(select(vec3<bool>(var_0.x, var_0.x & true, var_0.x || true), !var_0, !(!var_0)), vec3<bool>(!any(vec4<bool>(var_0.x, true, var_0.x, false)), true, any(!vec2<bool>(true, var_0.x))), false), !vec3<bool>(all(vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_div_u32(arg_1.b.x, arg_1.b.x) > 4294967295u, true), true | (var_0.x | true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.a, arg_3.b.a, arg_1.a));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-170f * var_2.x), 1f));
    return arg_1.b.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<vec4<u32>, 15>();
    let var_0 = all(vec4<bool>(true, !any(vec3<bool>(true, true, true)), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_1 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(0u, 4294967295u, arg_1.b.x, arg_1.b.x)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(2448i, -16591i, -945i, -22073i)), ~min(vec4<i32>(1i, -11709i, -10413i, -1i), vec4<i32>(2147483647i, 5031i, 2147483647i, -7276i)) >> (~firstLeadingBit(vec4<u32>(u_input.a, 31560u, 25145u, 11148u)) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(-980f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) + arg_1.a) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(121f, arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -582f))))), _wgslsmith_mod_vec3_u32(arg_0.yxz, select(countOneBits(vec3<u32>(arg_2, 24684u, u_input.a)) | firstTrailingBit(vec3<u32>(arg_2, u_input.a, u_input.a)), arg_1.b << (_wgslsmith_div_vec3_u32(arg_1.b, vec3<u32>(6103u, 7652u, arg_0.x)) % vec3<u32>(32u)), vec3<bool>(true, false, true && var_0))));
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_0 = func_5(vec4<u32>(countOneBits(0u << ((arg_0 ^ 39366u) % 32u)), func_4(~vec4<u32>(12406u, u_input.a, u_input.a, 32939u) | global0[_wgslsmith_index_u32(~4294967295u, 15u)], Struct_1(-434f, ~vec3<u32>(arg_0, 7957u, 30516u)), firstLeadingBit(max(vec4<i32>(35345i, 1i, 2147483647i, -41173i), vec4<i32>(-6264i, -3617i, -66219i, -1i))), Struct_2(Struct_1(-270f, vec3<u32>(u_input.a, u_input.a, 3554u)), func_2(Struct_1(1087f, vec3<u32>(3640u, 37122u, 1u)), vec3<i32>(-23030i, 1i, 1i), Struct_1(139f, vec3<u32>(u_input.a, arg_0, 1u)), Struct_1(-316f, vec3<u32>(19292u, arg_0, 17453u))))), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_0, 116704u), vec2<u32>(arg_0, 48551u), vec2<bool>(arg_1, arg_1)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(54160u, 4294967295u)) ^ firstLeadingBit(vec2<u32>(0u, u_input.a))), ~(~u_input.a)), func_2(Struct_1(_wgslsmith_f_op_f32(-108f + _wgslsmith_div_f32(1118f, -1000f)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 78788u, u_input.a), vec3<u32>(arg_0, arg_0, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 40837u), vec3<u32>(arg_0, arg_0, u_input.a)))), vec3<i32>(-2147483647i, firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 5439i), vec2<i32>(1i, -2147483647i))), func_2(func_2(Struct_1(-477f, vec3<u32>(u_input.a, 0u, u_input.a)), countOneBits(vec3<i32>(28260i, 1i, -10379i)), func_2(Struct_1(-882f, vec3<u32>(1u, 4294967295u, arg_0)), vec3<i32>(-54747i, -2147483647i, 15414i), Struct_1(150f, vec3<u32>(12691u, u_input.a, 60396u)), Struct_1(512f, vec3<u32>(u_input.a, u_input.a, u_input.a))), Struct_1(2228f, vec3<u32>(4294967295u, 1u, 1u))), vec3<i32>(abs(-1i), _wgslsmith_mult_i32(-8670i, -3848i), select(56362i, -2147483647i, arg_1)), Struct_1(266f, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, arg_0), vec3<u32>(arg_0, u_input.a, 4294967295u), vec3<u32>(arg_0, u_input.a, arg_0))), func_2(Struct_1(769f, vec3<u32>(u_input.a, 20600u, u_input.a)), countOneBits(vec3<i32>(1i, -8352i, -32208i)), Struct_1(-325f, vec3<u32>(u_input.a, 1u, 47869u)), Struct_1(-424f, vec3<u32>(4294967295u, 4294967295u, arg_0)))), func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -728f), ~vec3<u32>(u_input.a, arg_0, 0u)), vec3<i32>(1i, 1i, 1i) >> (func_2(Struct_1(376f, vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(-2147483647i, 2147483647i, 1i), Struct_1(-378f, vec3<u32>(arg_0, arg_0, 14763u)), Struct_1(578f, vec3<u32>(arg_0, arg_0, 39282u))).b % vec3<u32>(32u)), Struct_1(-546f, ~vec3<u32>(52099u, 135987u, arg_0)), Struct_1(_wgslsmith_f_op_f32(188f + -560f), vec3<u32>(1u, arg_0, arg_0) & vec3<u32>(40236u, u_input.a, arg_0)))), 48563u);
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-20963i, -2147483647i))), ~1i, 1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(61285i), 0i), countOneBits(10683i))) & vec4<i32>(9464i, min(select(_wgslsmith_mod_i32(56554i, 2147483647i), max(30434i, 25198i), !arg_1), ~1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 1i, 0i, -2147483647i), firstLeadingBit(vec4<i32>(26821i, 9032i, -2147483647i, -29588i))), min(1i, 2147483647i) << (firstLeadingBit(firstLeadingBit(92471u)) % 32u));
    var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(-max(select(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x), vec4<bool>(arg_1, true, true, false)), max(vec4<i32>(48031i, var_1.x, var_1.x, 9077i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(var_1.x, var_1.x)) ^ -1i, 2147483647i, -2147483647i, var_1.x) >> (~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, arg_0, u_input.a, 48495u), abs(global0[_wgslsmith_index_u32(arg_0, 15u)])) % vec4<u32>(32u)));
    return var_1.x & (0i >> (_wgslsmith_mod_u32(14560u, var_0.b.x ^ var_0.b.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(817f + -1182f))))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(900u, 1u), _wgslsmith_clamp_u32(~70851u, u_input.a, 1u)), u_input.a, u_input.a));
    global0 = array<vec4<u32>, 15>();
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(~_wgslsmith_div_i32(1i, -1i)), ~func_1(firstTrailingBit(var_0.b.x), any(vec2<bool>(true, false)))), 1i);
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(select(vec4<i32>(1i, -4842i, 0i, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, 0i), vec4<bool>(true, true, true, false)) | (vec4<i32>(var_1.x, 0i, 0i, -1i) | vec4<i32>(var_1.x, -10390i, var_1.x, var_1.x)), vec4<i32>(select(var_1.x, var_1.x, true), -1i, var_1.x, -14714i)), ~max(vec3<i32>(var_1.x, 0i, var_1.x), firstTrailingBit(vec3<i32>(var_1.x, var_1.x, var_1.x))) << (~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_2.b.x, var_0.b.x) << (vec3<u32>(var_2.b.x, var_0.b.x, 52077u) % vec3<u32>(32u)), var_2.b) % vec3<u32>(32u)), var_1 ^ var_1);
}


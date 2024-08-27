struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-444f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var_0 = -434f;
    global0 = array<Struct_2, 4>();
    var var_1 = arg_3.a.b;
    var var_2 = 1082f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(415f, _wgslsmith_f_op_f32(f32(-1f) * -1044f))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 10057u, (u_input.c.x & u_input.c.x) << (~u_input.c.x % 32u)) >> (~reverseBits(vec3<u32>(1705u, 0u, u_input.c.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(0u, u_input.c.x)), 30921u), 16932u, _wgslsmith_mod_u32((1u >> (u_input.c.x % 32u)) ^ _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.c.x)));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-arg_3 | -24520i, u_input.a, -u_input.a), min(vec3<i32>(arg_1.b, max(abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, 2976i, u_input.b, -30816i), vec4<i32>(2147483647i, 68175i, -3133i, 13904i))), 37509i), min(abs(vec3<i32>(arg_3, u_input.b, -42929i)), select(-vec3<i32>(-1i, 0i, 0i), -vec3<i32>(64667i, -2147483647i, arg_1.b), true))));
    global0 = array<Struct_2, 4>();
    let var_2 = !(!(!vec2<bool>(true, all(vec3<bool>(arg_1.c, true, arg_1.a)))));
    let var_3 = select(vec3<bool>(true, var_1.x > _wgslsmith_clamp_i32(var_1.x & u_input.b, -51978i, -2147483647i << (u_input.c.x % 32u)), any(select(vec2<bool>(false, true), !vec2<bool>(arg_1.a, arg_1.c), !var_2))), vec3<bool>(all(select(vec4<bool>(true, var_2.x, arg_1.a, var_2.x), vec4<bool>(true, arg_1.c, var_2.x, var_2.x), arg_1.c)), var_2.x, var_2.x), !select(select(select(vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.c, var_2.x, true), vec3<bool>(true, arg_1.c, var_2.x)), !vec3<bool>(true, true, var_2.x), var_2.x), vec3<bool>(!arg_1.c, true, true), !vec3<bool>(true, var_2.x, false)));
    return 2147483647i;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, func_4(_wgslsmith_f_op_f32(func_2(vec2<u32>(0u, 19475u), true, false, Struct_2(Struct_1(vec3<bool>(true, true, false), 0i), u_input.c))), Struct_3(true, -16970i, false), _wgslsmith_f_op_f32(-2268f - 1091f), -u_input.a)), vec2<i32>(i32(-1i) * -2397i, firstTrailingBit(20646i)) << (~(u_input.c >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.c >> (u_input.c % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.c, u_input.c), vec2<u32>(0u, u_input.c.x))), _wgslsmith_div_vec2_u32(~u_input.c, u_input.c ^ u_input.c) ^ u_input.c) % vec2<u32>(32u));
    let var_1 = vec2<bool>(true, true);
    let var_2 = abs(abs(vec3<i32>(~abs(1i), -_wgslsmith_add_i32(var_0.x, -11431i), ~(~4834i))));
    global0 = array<Struct_2, 4>();
    let var_3 = ~vec2<i32>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(466f * 415f) + _wgslsmith_f_op_f32(round(1324f))), Struct_3(var_1.x, firstTrailingBit(57773i), !var_1.x), -795f, var_2.x), var_2.x);
    return Struct_4(Struct_1(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, var_1.x), all(vec3<bool>(var_1.x, var_1.x, false))), var_3.x), var_1.x);
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = vec2<i32>(max(max(u_input.a, u_input.b), 1i), arg_0.a.b);
    var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~(vec2<i32>(-2147483647i, u_input.a) >> (vec2<u32>(u_input.c.x, 46924u) % vec2<u32>(32u))), vec2<i32>(var_0.x, -arg_0.a.b)), min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(41238i, u_input.b, var_0.x), vec3<i32>(7881i, -1i, arg_0.a.b)), 1i), firstLeadingBit(~vec2<i32>(1i, arg_0.a.b)))) >> (~u_input.c % vec2<u32>(32u));
    let var_1 = select(vec2<bool>(true, (true && arg_0.a.a.x) && arg_0.b), vec2<bool>(arg_0.a.a.x, false), arg_0.a.a.yx);
    let var_2 = func_1().a;
    var var_3 = arg_0;
    return Struct_2(Struct_1(func_1().a.a, ~u_input.a), vec2<u32>(0u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1());
    var var_1 = -u_input.b;
    let var_2 = -2346f;
    var var_3 = ~2147483647i;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1571f, var_2, var_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_2, var_2) - vec3<f32>(var_2, -123f, var_2))) * vec3<f32>(874f, var_2, var_2)))));
    let var_5 = -4288i;
    global0 = array<Struct_2, 4>();
    var var_6 = func_1();
    let var_7 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(-1i) * -vec4<i32>(var_5, 610i, 7329i, 2147483647i)) ^ select(~vec4<i32>(var_5, -2147483647i, var_5, -2147483647i) << (abs(vec4<u32>(1u, 54748u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(var_0.a.b >> (u_input.c.x % 32u), -49041i, _wgslsmith_mult_i32(var_5, -2147483647i), select(u_input.b, 0i, false)), select(vec4<bool>(var_6.a.a.x, var_6.a.a.x, var_6.b, var_6.b), !vec4<bool>(var_6.b, var_0.a.a.x, false, false), select(vec4<bool>(var_6.a.a.x, false, true, false), vec4<bool>(var_6.a.a.x, var_0.a.a.x, var_6.b, var_0.a.a.x), var_6.a.a.x))), var_0.b.x, -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_5, var_5, -3660i, 1i), ~vec4<i32>(-4134i, 2147483647i, var_0.a.b, 2147483647i), select(vec4<i32>(var_6.a.b, 1i, 6929i, var_0.a.b), vec4<i32>(2147483647i, 38301i, -18589i, 1i), vec4<bool>(true, false, var_0.a.a.x, true))), vec4<i32>(_wgslsmith_add_i32(-61791i, 4468i), var_6.a.b, ~var_5, var_5)), u_input.c.x);
}


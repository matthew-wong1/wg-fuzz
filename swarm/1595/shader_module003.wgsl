struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    global0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, global0.x, 1u) & _wgslsmith_dot_vec2_u32(global0.xy, global0.wy), u_input.b.x, 1u, 30697u), (~vec4<u32>(0u, 1u, global0.x, 4294967295u) >> (~vec4<u32>(global0.x, u_input.b.x, 16284u, u_input.a) % vec4<u32>(32u))) << (~(vec4<u32>(u_input.b.x, 1u, 23051u, 4294967295u) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 1u)) % vec4<u32>(32u)), vec4<u32>(1u, 59873u, reverseBits(~4294967295u), u_input.a));
    return _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(global0.wyx, max(~vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(2189u, 35682u, global0.x))), vec3<u32>(_wgslsmith_clamp_u32(global0.x & 15687u, u_input.a, 1u), global0.x, firstTrailingBit(global0.x)));
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.c.x) * -1521f) - -614f)))));
    let var_1 = min(0u, _wgslsmith_div_u32(abs(max(reverseBits(arg_0.b.b.a.x), arg_0.b.a.a.x)), 22937u));
    global0 = select(vec4<u32>(arg_0.b.b.b, var_1, arg_0.b.a.b, countOneBits(arg_0.b.a.a.x) >> (max(arg_0.b.a.a.x, 1u) % 32u)) ^ ~vec4<u32>(1u, _wgslsmith_clamp_u32(14236u, 4294967295u, 4294967295u), u_input.b.x ^ 4294967295u, _wgslsmith_clamp_u32(u_input.a, 7979u, 0u)), reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(9247u, u_input.a, arg_0.b.b.a.x, 0u) | reverseBits(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)), vec4<u32>(u_input.a, min(4294967295u, 4294967295u), _wgslsmith_div_u32(31439u, 26635u), arg_0.b.b.a.x))), !(false | (true & arg_0.b.c)));
    let var_2 = Struct_2(vec2<bool>(arg_0.b.c, true), -568f, Struct_1(~(select(arg_0.b.b.a, global0.yww, false) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.a.a.x, var_1, 4294967295u), arg_0.b.a.a)), global0.x), arg_0.b.a, arg_0.b.b);
    let var_3 = vec2<i32>(arg_0.b.d, _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)));
    return Struct_1(~_wgslsmith_add_vec3_u32(abs(arg_0.b.a.a) << (func_3(vec2<i32>(u_input.d.x, 1i)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(var_2.d.a << (vec3<u32>(1u, global0.x, 1u) % vec3<u32>(32u)), min(global0.zyx, global0.wzx))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20293u, u_input.a, 1u), arg_0.b.a.a) << (~(global0.x ^ global0.x) % 32u), 53254u));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -vec2<i32>(u_input.d.x, arg_1);
    global0 = ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(23947u, 4294967295u, arg_0.d.b, 4294967295u)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.e.a.x, global0.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.c.b, u_input.a, 0u), vec4<u32>(arg_0.d.b, u_input.b.x, 38076u, 1u)))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -592f), 593f, false))))), arg_0.e);
    let var_2 = arg_0.e.a;
    let var_3 = Struct_1(max(vec3<u32>(50688u, var_1.b.b, ~abs(19613u)), min(min(vec3<u32>(4294967295u, u_input.a, 6147u), vec3<u32>(16358u, u_input.b.x, 51298u)), min(vec3<u32>(var_2.x, u_input.b.x, 63308u), var_2)) << (~(global0.wxy >> (var_2 % vec3<u32>(32u))) % vec3<u32>(32u))), select(~(~0u ^ _wgslsmith_mult_u32(3931u, var_2.x)), ~abs(0u), false));
    return func_2(Struct_5(var_1.a, Struct_3(Struct_1(firstTrailingBit(vec3<u32>(u_input.b.x, arg_0.d.b, u_input.a)), u_input.a), func_2(Struct_5(-1923f, Struct_3(Struct_1(vec3<u32>(56008u, 0u, arg_0.e.b), var_1.b.a.x), var_1.b, arg_0.a.x, 10424i), vec4<f32>(-1428f, arg_2.x, -1000f, arg_2.x), 1076f)), arg_0.a.x, arg_1), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, arg_2.x, var_1.a, arg_2.x)))), _wgslsmith_f_op_f32(917f * -841f)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = false;
    let var_1 = ~(vec3<i32>(-1i) * -u_input.d.zyx);
    var var_2 = ~u_input.b;
    var var_3 = Struct_1(func_4(Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1389f) * arg_1.x), func_2(Struct_5(-1428f, Struct_3(arg_0.b, arg_0.b, false, 2147483647i), vec4<f32>(-1409f, arg_0.a, 611f, 211f), -827f)), arg_0.b, func_4(Struct_2(vec2<bool>(true, true), 1368f, Struct_1(vec3<u32>(u_input.b.x, var_2.x, global0.x), var_2.x), Struct_1(global0.wxy, 4294967295u), arg_0.b), var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_2.x, 412f)))), -_wgslsmith_sub_i32(var_1.x, ~28715i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-arg_1.x), arg_2.x) * arg_1.wyw)).a, u_input.a);
    var var_4 = abs(min(~var_1.zx, vec2<i32>(firstTrailingBit(u_input.d.x), ~0i)));
    return Struct_4(_wgslsmith_f_op_f32(max(166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)))), Struct_1(vec3<u32>(34723u, u_input.a, ~var_2.x), firstTrailingBit(~var_3.b) & var_2.x));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_5) -> bool {
    let var_0 = arg_3.b.c;
    let var_1 = func_5(Struct_4(_wgslsmith_f_op_f32(trunc(1090f)), func_4(Struct_2(select(vec2<bool>(arg_0.b.c, true), vec2<bool>(true, var_0), false), arg_2.x, func_2(Struct_5(1426f, arg_0.b, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_3.c.x), arg_2.x)), func_2(arg_3), func_2(Struct_5(-2029f, Struct_3(Struct_1(global0.zxy, 0u), arg_3.b.a, var_0, arg_3.b.d), vec4<f32>(892f, arg_0.a, 1021f, 1000f), -293f))), _wgslsmith_mult_i32(firstLeadingBit(arg_0.b.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -16609i, 79645i, -25743i), u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 106f, -2622f) + vec3<f32>(arg_0.d, arg_2.x, 1000f)) - arg_0.c.yyz))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1016f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - arg_3.c.x)))), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.x, arg_2.x) - _wgslsmith_f_op_f32(arg_0.a * arg_3.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.a)) * 1000f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c * arg_3.c), _wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c)) - arg_3.c))));
    global0 = ~select(vec4<u32>(arg_3.b.b.b, func_2(arg_0).b, global0.x, func_4(Struct_2(vec2<bool>(var_0, var_0), var_1.a, arg_0.b.b, Struct_1(global0.yzy, u_input.b.x), var_1.b), u_input.d.x << (12630u % 32u), _wgslsmith_f_op_vec3_f32(select(arg_0.c.yww, arg_0.c.xxw, vec3<bool>(true, arg_0.b.c, arg_3.b.c)))).b), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(9655u, arg_3.b.b.b, 3563u, global0.x)), vec4<u32>(arg_1.x >> (arg_0.b.b.a.x % 32u), min(22312u, 4294967295u), ~4294967295u, 4294967295u << (arg_0.b.a.b % 32u))), any(vec3<bool>(any(vec4<bool>(arg_3.b.c, arg_0.b.c, false, true)), arg_3.b.c, select(arg_3.b.c, arg_3.b.c, true))));
    global0 = ~(~(vec4<u32>(~global0.x, 10657u, ~1u, u_input.a) ^ max(~vec4<u32>(0u, 9985u, 0u, var_1.b.a.x), vec4<u32>(0u, 1u, var_1.b.b, 1869u))));
    global0 = _wgslsmith_sub_vec4_u32(~(~(~max(vec4<u32>(arg_1.x, global0.x, global0.x, 1u), vec4<u32>(62389u, arg_0.b.a.a.x, 48359u, 67898u)))), abs(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 15387u, 4294967295u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(12901u, arg_1.x, u_input.a, 24850u), vec4<u32>(43962u, arg_3.b.a.a.x, u_input.b.x, arg_1.x))), abs(firstTrailingBit(vec4<u32>(arg_0.b.a.a.x, 29919u, 17890u, 57484u))), !(!vec4<bool>(arg_3.b.c, false, var_0, arg_3.b.c)))));
    return select(any(select(vec2<bool>(var_0 == arg_0.b.c, arg_0.b.c), !select(vec2<bool>(false, false), vec2<bool>(arg_0.b.c, true), false), all(vec2<bool>(true, arg_3.b.c)))), (!any(vec3<bool>(true, false, arg_0.b.c)) && !var_0) || true, global0.x > 24912u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(u_input.d.zwx, vec3<i32>(u_input.c.x, ~u_input.c.x, u_input.c.x) & vec3<i32>(-33753i, ~(~u_input.d.x), -(~u_input.c.x)));
    global0 = vec4<u32>(~global0.x, 102068u | ~(~_wgslsmith_sub_u32(42086u, global0.x)), ~(~max(17006u, ~global0.x)), global0.x);
    let var_1 = select(select(vec3<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), any(vec3<bool>(true, true, true))), vec3<bool>(firstLeadingBit(28898u) <= u_input.b.x, false, true), false), !vec3<bool>(!func_1(Struct_5(2070f, Struct_3(Struct_1(global0.zwy, global0.x), Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.b.x), global0.x), true, u_input.d.x), vec4<f32>(281f, -129f, -1000f, -317f), -420f), global0.ww, vec2<f32>(902f, -1189f), Struct_5(1092f, Struct_3(Struct_1(global0.xwy, global0.x), Struct_1(global0.yxw, u_input.a), false, u_input.d.x), vec4<f32>(783f, 457f, -586f, -826f), -1226f)), ~global0.x < 29727u, u_input.c.x <= 1i), select(vec3<bool>(!any(vec3<bool>(false, true, false)), u_input.b.x > _wgslsmith_mult_u32(4294967295u, 0u), false & any(vec2<bool>(true, true))), select(vec3<bool>(true, func_1(Struct_5(-111f, Struct_3(Struct_1(vec3<u32>(u_input.a, 103658u, 0u), 4294967295u), Struct_1(global0.wxx, u_input.a), true, var_0.x), vec4<f32>(229f, -1000f, 933f, 814f), 1000f), global0.ww, vec2<f32>(459f, 180f), Struct_5(1132f, Struct_3(Struct_1(vec3<u32>(1u, u_input.a, u_input.b.x), 0u), Struct_1(global0.wxz, u_input.a), true, var_0.x), vec4<f32>(640f, 558f, -1000f, 1550f), -1071f)), true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, true, false)), func_1(Struct_5(1000f, Struct_3(Struct_1(global0.wxw, 1u), Struct_1(global0.xxy, 4294967295u), false, var_0.x), vec4<f32>(900f, 1876f, 426f, 2558f), -751f), global0.ww, vec2<f32>(361f, 1229f), Struct_5(-116f, Struct_3(Struct_1(global0.zyw, 0u), Struct_1(global0.xyz, global0.x), true, var_0.x), vec4<f32>(-825f, 1682f, -987f, -645f), 972f)))), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_2(select(select(vec2<bool>(var_1.x, true), var_1.zz, false), vec2<bool>(var_1.x, var_1.x), !var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(663f))), Struct_1(~vec3<u32>(4294967295u, 27765u, 1u), max(global0.x, 0u)), func_2(Struct_5(1000f, Struct_3(Struct_1(global0.xzy, 96u), Struct_1(vec3<u32>(61721u, 33217u, global0.x), global0.x), false, 5688i), vec4<f32>(-390f, -591f, 1004f, 955f), 786f)), Struct_1(vec3<u32>(4294967295u, 39720u, 0u), u_input.b.x >> (1u % 32u))), _wgslsmith_mod_i32(~(-26613i), ~(var_0.x >> (global0.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(505f, 440f) + _wgslsmith_f_op_f32(f32(-1f) * -1455f)), 2168f, func_5(Struct_4(408f, Struct_1(global0.wyw, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, 1000f, -1201f, -758f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, -1580f, -205f, 488f))).a)).a);
}


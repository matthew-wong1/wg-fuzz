struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 57886u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = arg_0.a.x;
    global1 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.d.x, 41999u, 1u))), vec3<u32>(14969u, _wgslsmith_sub_u32(arg_0.d.b.x, ~1u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(11615u, arg_1.b.x, arg_3.x, u_input.d.x), vec4<u32>(arg_3.x, arg_0.d.b.x, 73998u, arg_1.b.x), arg_3), arg_3 ^ arg_3), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_3.x, arg_3.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, arg_3.x, u_input.a.x, arg_3.x)), arg_3))));
    var_0 = countOneBits(~_wgslsmith_mult_i32(27522i, max(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), ~2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, arg_0.b.a.x));
    var var_2 = Struct_5(~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(arg_3.x), u_input.a.x, _wgslsmith_sub_u32(arg_1.b.x, 0u), arg_0.b.b.x), vec4<u32>(~u_input.d.x, 69779u, _wgslsmith_mult_u32(arg_1.b.x, 10770u), 1u)), vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.d.c), arg_1.c), !vec2<bool>(false, arg_1.c), !vec2<bool>(false, arg_0.d.c))), any(!vec4<bool>(arg_1.c, arg_0.c.c, arg_1.c, true)), !any(!vec3<bool>(true, arg_0.b.c, true))));
    return select(vec4<bool>(arg_0.d.c, any(select(select(var_2.b, vec4<bool>(arg_1.c, true, false, arg_1.c), arg_0.d.c), vec4<bool>(true, false, var_2.b.x, arg_0.b.c), true)), true, all(var_2.b)), select(select(select(!vec4<bool>(var_2.b.x, false, false, true), vec4<bool>(true, var_2.b.x, false, true), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, false)), !(!vec4<bool>(arg_0.c.c, true, false, var_2.b.x)), true), vec4<bool>(arg_1.c, arg_1.c, var_2.b.x, var_2.b.x), false), var_2.b.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec4<bool> {
    return select(select(!vec4<bool>(false, true, 6170u < u_input.a.x, false), !func_3(Struct_2(vec2<i32>(arg_0.x, u_input.c.x), Struct_1(vec2<f32>(-1000f, 504f), u_input.d, false), Struct_1(vec2<f32>(1000f, -438f), u_input.d, true), Struct_1(vec2<f32>(-1682f, 715f), vec2<u32>(53971u, arg_1), true)), Struct_1(vec2<f32>(1191f, 353f), u_input.a.xz, true), vec2<u32>(1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 77499u, u_input.a.x, 26730u), vec4<u32>(23893u, u_input.a.x, u_input.a.x, arg_1))), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, all(func_3(Struct_2(u_input.c.yy, Struct_1(vec2<f32>(386f, -1000f), vec2<u32>(u_input.d.x, 16138u), false), Struct_1(vec2<f32>(1948f, -191f), u_input.a.zz, false), Struct_1(vec2<f32>(-290f, 1077f), vec2<u32>(arg_1, 0u), true)), Struct_1(vec2<f32>(-1251f, 1000f), vec2<u32>(4294967295u, u_input.d.x), true), u_input.a.yz, vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)).wzx), false), true);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(~vec4<i32>(~2147483647i & u_input.c.x, 17666i, _wgslsmith_div_i32(u_input.b, 31609i), u_input.b), _wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.d.x)), 59255u));
    var var_1 = !func_2(~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.c.x), vec4<i32>(2147483647i, 1i, u_input.b, u_input.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(57968i, -2147483647i, 0i, 0i), vec4<i32>(-1i, -2147483647i, 1i, u_input.c.x))), ~1u).yxz;
    let var_2 = Struct_4(firstLeadingBit(_wgslsmith_add_i32(30020i, u_input.c.x)));
    var_1 = select(vec3<bool>(~var_2.a != 86223i, all(func_2(abs(vec4<i32>(-45207i, -3757i, u_input.b, u_input.b)), ~0u).zx), var_1.x), vec3<bool>((i32(-1i) * -2147483647i) >= _wgslsmith_mod_i32(~1i, ~u_input.c.x), false, false), select(any(var_0.xw), var_1.x, !var_1.x));
    let var_3 = var_0.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1580f, arg_0) * vec2<f32>(arg_0, arg_0))))), select(~u_input.d, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(1639u, u_input.a.x), u_input.d)), any(func_3(Struct_2(u_input.c.zx, Struct_1(vec2<f32>(arg_0, arg_0), u_input.d, var_0.x), Struct_1(vec2<f32>(116f, -1125f), u_input.a.yy, var_1.x), Struct_1(vec2<f32>(1000f, 537f), vec2<u32>(u_input.a.x, 13762u), var_3)), Struct_1(vec2<f32>(-1444f, arg_0), vec2<u32>(u_input.a.x, u_input.a.x), var_1.x), u_input.a.xz & u_input.a.yx, ~vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u)).xzw)), !var_1.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, ~arg_1.b.x, countOneBits(u_input.d.x), 25485u), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 93909u, arg_1.b.x, u_input.a.x), vec4<u32>(1u, 1u, 0u, u_input.d.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 60364u, 62187u, u_input.a.x), vec4<u32>(arg_1.b.x, 4294967295u, arg_1.b.x, 37250u)), ~(~vec4<u32>(43655u, 88314u, u_input.a.x, 4294967295u))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.d.x, 16250u, arg_1.b.x) | vec4<u32>(1u, 13754u, 4294967295u, arg_1.b.x)), abs(vec4<u32>(arg_1.b.x, 1u, 1u, arg_1.b.x) | vec4<u32>(21465u, 4294967295u, 62992u, 28456u)), min(max(vec4<u32>(u_input.d.x, u_input.d.x, arg_1.b.x, 16840u), vec4<u32>(4294967295u, 4294967295u, arg_1.b.x, 45245u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 1700u, arg_1.b.x, arg_1.b.x), vec4<u32>(1u, 32530u, 24831u, u_input.a.x))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, arg_1.b.x, arg_1.b.x), ~(~vec4<u32>(0u, 82541u, 4294967295u, 1u))), vec4<u32>(1u, min(arg_1.b.x | u_input.a.x, 4294967295u), u_input.a.x >> (~38039u % 32u), abs(1u)), vec4<u32>(1u, _wgslsmith_add_u32(~arg_1.b.x, abs(arg_1.b.x)), ~(~63824u), u_input.d.x)));
    global0 = u_input.b;
    let var_1 = Struct_3(u_input.c, func_1(_wgslsmith_f_op_f32(-arg_1.a.x)).a.x);
    let var_2 = 0u;
    var var_3 = var_1;
    return func_2(~vec4<i32>(var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, 0i) ^ var_1.a.xy, ~arg_3.zw), -2147483647i, arg_0.a), ~_wgslsmith_mult_u32(var_2, ~var_0.x << (_wgslsmith_div_u32(u_input.a.x, 1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-310f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-2745f, 135f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2041f - 138f)))), _wgslsmith_f_op_f32(1328f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -689f))))));
    let var_1 = -1i;
    let var_2 = u_input.d.x >> (reverseBits(_wgslsmith_mod_u32(~u_input.a.x, 1u)) % 32u);
    let var_3 = vec3<u32>(reverseBits(var_2), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_mult_u32(23875u, u_input.d.x)), firstLeadingBit(~4294967295u), 4294967295u), vec3<u32>(8506u, 29497u, u_input.a.x)), u_input.d.x);
    var var_4 = all(func_4(Struct_4(2147483647i), func_1(-1171f), abs(~select(vec4<i32>(var_1, var_1, -2147483647i, var_1), vec4<i32>(var_1, var_1, u_input.c.x, u_input.c.x), vec4<bool>(true, true, false, false))), -min(vec4<i32>(u_input.c.x, 0i, -8571i, 14280i), vec4<i32>(0i, -15047i, 2147483647i, -70358i))));
    var var_5 = u_input.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(var_5.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f * -1581f) + _wgslsmith_f_op_f32(f32(-1f) * -1182f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1501f)) + 1533f), 1871f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(603f, _wgslsmith_f_op_f32(abs(-576f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2107f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-452f, -250f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(612f, 467f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2537f, 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 1048f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f * -136f)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1049f), true)), _wgslsmith_f_op_f32(-815f * 297f), -189f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-270f)), _wgslsmith_f_op_f32(ceil(-2022f)))), u_input.c.xx);
}


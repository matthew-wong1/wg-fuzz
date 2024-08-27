struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = vec2<u32>(abs(reverseBits(1u << (arg_2.c.a.x % 32u))), 7061u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * -967f));
    var var_1 = arg_2;
    global0 = _wgslsmith_div_f32(-1285f, var_1.a);
    var var_2 = var_0;
    return arg_0.c;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(249f, select(arg_1.a.c, select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, arg_1.a.b, 34389i), arg_1.a.c, vec4<i32>(u_input.a, arg_1.a.b, 1i, -44164i)), _wgslsmith_mult_vec4_i32(vec4<i32>(23406i, 1i, 22465i, 16551i), arg_1.a.c)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-4254i, 0i, 2147483647i, arg_1.a.b), func_3(arg_1.a, Struct_2(Struct_1(vec2<u32>(91985u, 4294967295u), arg_1.a.c.x, vec4<i32>(2147483647i, -28480i, arg_1.a.c.x, -2147483647i), arg_1.c, -1768f), vec3<bool>(true, true, true), -257f, arg_1.b), Struct_3(-322f, arg_1.a.c, Struct_1(vec2<u32>(arg_1.a.a.x, 19135u), arg_1.a.b, vec4<i32>(2147483647i, arg_1.a.b, 3736i, arg_1.a.c.x), -290f, -1528f), arg_1.a.e, Struct_1(arg_1.a.a, 1i, vec4<i32>(u_input.a, arg_1.a.c.x, -33903i, u_input.a), arg_1.c, arg_1.a.d)), vec3<i32>(-41503i, -25068i, 38416i))), vec4<bool>(false, all(vec4<bool>(false, arg_1.b.x, arg_1.d.x, true)), !arg_1.b.x, true)), any(select(!vec4<bool>(arg_1.d.x, arg_1.d.x, false, arg_0), !vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_1.d.x, arg_1.d.x, true, true)))), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + 1151f)) + _wgslsmith_f_op_f32(trunc(123f)))), Struct_1(~_wgslsmith_add_vec2_u32(arg_1.a.a, arg_1.a.a), (firstTrailingBit(1i) | -u_input.a) >> (0u % 32u), vec4<i32>(u_input.a << (~arg_1.a.a.x % 32u), arg_1.a.b, arg_1.a.b, ~arg_1.a.b & -1i), _wgslsmith_f_op_f32(-arg_1.c), -1041f));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(245f * 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -245f))), arg_1.c)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1130f, _wgslsmith_f_op_f32(trunc(var_0.e.e)))) + 1060f);
    global0 = -173f;
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, var_0.c.a.x, var_0.e.a.x, 0u) >> (vec4<u32>(0u, 0u, arg_1.a.a.x, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, 4294967295u, var_0.e.a.x), ~vec4<u32>(arg_1.a.a.x, var_0.e.a.x, arg_1.a.a.x, arg_1.a.a.x), firstTrailingBit(vec4<u32>(4294967295u, var_0.e.a.x, arg_1.a.a.x, 1u))), vec4<u32>(arg_1.a.a.x, 36197u, var_0.e.a.x, var_0.c.a.x) | vec4<u32>(11696u, arg_1.a.a.x, 84072u, var_0.c.a.x))), countOneBits(countOneBits(firstLeadingBit(~vec4<u32>(4294967295u, 11909u, 1u, var_0.e.a.x)))));
    return var_0.b;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(-31576i, u_input.a, u_input.a, -10247i) ^ func_2(arg_1, Struct_2(Struct_1(vec2<u32>(9201u, 42661u), u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -1000f, 497f), vec3<bool>(arg_1, false, true), -553f, vec3<bool>(false, true, arg_3.x))))), ~(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a, -25074i, u_input.a, 0i)), reverseBits(vec4<i32>(u_input.a, 11010i, -37182i, u_input.a))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(35125u, arg_2.x, arg_2.x, 77687u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_0, 1u, 5328u), vec4<u32>(arg_2.x, 43u, arg_0, 60171u))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1069f * -1172f) - 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2486f))))))));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~var_0, -_wgslsmith_sub_i32(countOneBits(var_0), u_input.a), var_0, 44820i), abs(~vec4<i32>(var_0, 1i | u_input.a, u_input.a, -var_0)), abs(vec4<i32>(1i, _wgslsmith_clamp_i32(var_0, 1i, var_0), u_input.a << (1u % 32u), u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 1u, 8782u, 13359u), ~vec4<u32>(arg_0, 0u, 162u, 18851u)) % vec4<u32>(32u))));
    let var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1046f);
    return Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(max(arg_0, 36499u), ~4294967295u), ~_wgslsmith_mult_u32(arg_0, 30224u))), max(var_2.x, var_2.x), -reverseBits(-vec4<i32>(var_2.x, var_0, 0i, var_0)) | vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(var_2.x, -21419i)), -var_0, u_input.a, _wgslsmith_div_i32(var_0, 1i) | select(var_0, u_input.a, arg_3.x)), -217f, 302f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = any(vec4<bool>(!(!select(true, false, true)), all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true)))), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)), all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)))));
    global0 = -677f;
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(0i, -22370i, u_input.a), ~arg_1.b), -2147483647i, -func_1(1u, false, arg_0.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)).c.x);
    let var_2 = Struct_2(Struct_1(select(~vec2<u32>(0u, arg_1.a.x) ^ ~vec2<u32>(arg_1.a.x, arg_0.a.x), ~(~vec2<u32>(arg_0.a.x, 4294967295u)), vec2<bool>(false, true)), func_1(func_1(72598u, true, reverseBits(arg_0.a), vec4<bool>(true, false, false, false)).a.x, true, arg_0.a, vec4<bool>(true, true, true, true)).c.x, _wgslsmith_div_vec4_i32(~(~arg_1.c), _wgslsmith_add_vec4_i32(arg_1.c, arg_1.c)), arg_0.d, 255f), !select(vec3<bool>(any(vec2<bool>(true, false)), arg_0.c.x == u_input.a, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), arg_0.e, !(!vec3<bool>(true, all(vec2<bool>(false, false)), false)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(~(-47249i), _wgslsmith_div_i32(u_input.a, u_input.a), ~(-22127i), -var_2.a.c.x)), func_2(any(var_2.b.zx), var_2)), func_1(0u, select(true, !(true || var_2.b.x), !all(var_2.b.yy)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_1.a.x, ~arg_0.a.x), vec2<u32>(1u, _wgslsmith_mod_u32(0u, 20822u)), arg_1.a), select(vec4<bool>(var_2.b.x, arg_0.a.x > var_2.a.a.x, true, var_2.b.x), !(!vec4<bool>(var_2.b.x, true, true, var_2.b.x)), !select(vec4<bool>(true, var_2.d.x, var_2.b.x, false), vec4<bool>(var_2.d.x, var_2.b.x, true, var_2.b.x), vec4<bool>(var_2.d.x, true, var_2.b.x, var_2.b.x)))), -868f, arg_1);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_sub_u32(~19362u, 0u), any(vec3<bool>(false, true, true)), ~reverseBits(vec2<u32>(36110u, 18957u)), vec4<bool>(true, true, true, true)), func_1(37183u, true, vec2<u32>(1u, 1u), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(482f + -626f) + 1627f), -502f));
    let var_1 = func_1(countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 0u)), vec2<u32>(32642u, 4294967295u)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(29300u, 61782u)))), _wgslsmith_f_op_f32(func_4(func_1(4294967295u, all(vec4<bool>(false, false, false, false)), vec2<u32>(1u, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), func_1(25643u, any(vec4<bool>(false, true, false, false)), abs(vec2<u32>(51994u, 41253u)), vec4<bool>(false, true, true, true)))) == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, var_0))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 59196u), vec4<u32>(4294967295u, 2209u, 4294967295u, 28081u)), reverseBits(4294967295u)) | (~44519u >> (_wgslsmith_clamp_u32(78895u, 4294967295u, 14784u) % 32u)), _wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(0u, 64929u))), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(23214u, 75834u), vec2<u32>(63215u, 0u), vec2<u32>(1u, 46064u)), abs(vec2<u32>(1u, 4294967295u))))), vec4<bool>(!all(vec3<bool>(true, true, true)), false, true, true)).a;
    var var_2 = _wgslsmith_sub_vec2_u32(func_1(var_1.x, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), var_1, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), true)).a, vec2<u32>(abs(var_1.x), func_1(reverseBits(0u), false, _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_1.x, var_1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 0u), var_1)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), true)).a.x));
    var var_3 = vec4<bool>(all(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true)), true, true, (all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)) && true) & !(!any(vec4<bool>(false, false, false, true))));
    var_3 = select(!(!vec4<bool>(var_3.x == var_3.x, 28708i > u_input.a, true, var_0 != -1472f)), !select(vec4<bool>(-40832i != u_input.a, true, true, true), vec4<bool>(select(var_3.x, false, var_3.x), !var_3.x, var_0 == var_0, u_input.a <= u_input.a), vec4<bool>(any(vec3<bool>(var_3.x, false, var_3.x)), all(vec4<bool>(true, true, true, false)), !var_3.x, !var_3.x)), vec4<bool>(all(!vec2<bool>(false, var_3.x)), false, false, any(!vec4<bool>(var_3.x, true, true, false)) & !any(var_3.zy)));
    var var_4 = func_1(reverseBits(_wgslsmith_mod_u32(var_1.x ^ reverseBits(61283u), _wgslsmith_mod_u32(4294967295u, var_1.x))), var_3.x, var_1, vec4<bool>(var_3.x, all(var_3.xxz) || true, true, -79512i <= (_wgslsmith_sub_i32(u_input.a, u_input.a) >> (4839u % 32u))));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(-1943f - 213f), vec4<i32>(countOneBits(func_2(var_4.a.x > var_1.x, Struct_2(Struct_1(vec2<u32>(var_2.x, 33361u), u_input.a, vec4<i32>(var_4.b, 15072i, var_4.b, u_input.a), 902f, var_4.d), var_3.wwx, var_4.d, vec3<bool>(var_3.x, true, false))).x), min(-8330i, 1i), _wgslsmith_div_i32(var_4.b & u_input.a, var_4.c.x) ^ reverseBits(func_1(var_1.x, true, vec2<u32>(var_1.x, 16303u), vec4<bool>(true, var_3.x, true, var_3.x)).c.x), u_input.a), func_1(~(~var_4.a.x), any(select(var_3.ywz, var_3.zxx, var_3.x)) && !(u_input.a == -1i), ~abs(~var_1), select(!vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(true, !var_3.x, 1u > var_1.x, -5957i <= u_input.a), select(!vec4<bool>(var_3.x, false, var_3.x, var_3.x), select(vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false)), !vec4<bool>(var_3.x, var_3.x, var_3.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -1031f)) + _wgslsmith_f_op_f32(sign(var_4.d))), func_1(abs(~4294967295u), any(select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, false, true), true)) | !var_3.x, countOneBits(var_1 ^ firstLeadingBit(vec2<u32>(var_1.x, var_4.a.x))), vec4<bool>((u_input.a & u_input.a) < u_input.a, 1u >= ~var_2.x, var_3.x, !all(vec2<bool>(var_3.x, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1252f, -5619i, ~reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(97868u, var_1.x, var_1.x, 1u), select(vec4<u32>(var_1.x, var_4.a.x, 1u, var_1.x), vec4<u32>(1u, 0u, var_5.c.a.x, 24019u), true), vec4<u32>(35618u, 0u, var_2.x, 86571u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.e.e, -2192f, 1000f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.d, -966f, -364f) + vec3<f32>(var_4.e, 725f, 297f)))))));
}


struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(1533f)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -451f), vec4<i32>(1i, ~1i, abs(reverseBits(-1i)), _wgslsmith_mult_i32(1i, 1i)), ~(_wgslsmith_sub_i32(30210i, -52607i) << (~u_input.a % 32u)), vec3<u32>(~u_input.a, ~_wgslsmith_div_u32(26386u, 1696u), u_input.a), firstLeadingBit(1i)), vec2<bool>(arg_0, arg_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-921f)))), -(~(~vec4<i32>(1i, 2147483647i, -2147483647i, -19372i))), ~1i, vec3<u32>(4294967295u, abs(37560u) >> ((u_input.a << (u_input.a % 32u)) % 32u), _wgslsmith_add_u32(u_input.a, ~63664u)), -2144i));
    var var_2 = select(_wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.c, var_1.a.c), var_1.a.b.yy)), _wgslsmith_dot_vec2_i32(var_1.a.b.yw, var_1.c.b.yx)), -(-var_1.a.e | _wgslsmith_add_i32(2147483647i, var_1.c.b.x)) >> (var_1.c.d.x % 32u), var_1.b.x);
    let var_3 = -5518i;
    var var_4 = var_1.c.b;
    return ~vec3<u32>(u_input.a, firstTrailingBit(1u), 1u >> (_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.d.x, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 144439u)), 4294967295u) % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = !(!vec3<bool>(false, (arg_0.x != arg_0.x) & (arg_2.x | false), true));
    let var_1 = ~firstTrailingBit(min(func_3(true), ~max(vec3<u32>(arg_1, 4294967295u, 37695u), vec3<u32>(arg_1, arg_1, 1u))));
    return !select(arg_2.xx, !(!var_0.xy), vec2<bool>(var_0.x, false));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(-1063f, arg_0, true)), _wgslsmith_f_op_f32(-215f + -1965f), -727f), vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(arg_0)), -436f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-853f + arg_0), _wgslsmith_f_op_f32(-arg_0)))), u_input.a, !(!vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), true)));
    var_0 = vec2<bool>(any(select(!(!vec3<bool>(false, var_0.x, var_0.x)), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x)), !vec3<bool>(true, var_0.x, false), any(vec3<bool>(true, false, true))), select(vec3<bool>(var_0.x, false, false), !vec3<bool>(var_0.x, true, false), vec3<bool>(true, true, true)))), true);
    let var_1 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(-2147483647i, -25399i), vec2<i32>(1i, 1i), any(vec3<bool>(var_0.x, !var_0.x, all(vec4<bool>(var_0.x, true, true, var_0.x))))), abs(~(vec2<i32>(-1i) * -vec2<i32>(17138i, 24565i))));
    var_0 = vec2<bool>(true, true);
    let var_2 = Struct_2(false, u_input.a, ~max(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.a)), reverseBits(vec2<u32>(arg_1, u_input.a))), vec2<u32>(abs(arg_1), countOneBits(u_input.a))), u_input.a, Struct_1(-1274f, _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(-2147483647i, -1i, var_1.x, 2147483647i)), ~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x, select(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(arg_1, 294u, u_input.a))), ~vec3<u32>(4294967295u, arg_1, 7256u) ^ ~vec3<u32>(arg_1, arg_1, u_input.a), !(!vec3<bool>(true, var_0.x, var_0.x))), 17761i));
    return 34263u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(~u_input.a, func_1(-1491f, 168u), _wgslsmith_sub_u32(u_input.a, u_input.a))) & _wgslsmith_add_vec3_u32(~vec3<u32>(51425u, 4294967295u, 4294967295u), vec3<u32>(58401u, u_input.a, 1u) & reverseBits(vec3<u32>(19080u, u_input.a, u_input.a))), ~(vec3<u32>(~u_input.a, ~u_input.a, ~1u) | vec3<u32>(_wgslsmith_clamp_u32(70461u, 4841u, u_input.a), _wgslsmith_mult_u32(1u, u_input.a), firstLeadingBit(26203u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-226f))), -(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)) << (select(select(vec4<u32>(u_input.a, 4971u, 1u, 0u), vec4<u32>(var_0.x, 6646u, 4294967295u, 21784u), vec4<bool>(true, false, false, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 76791u, u_input.a, 0u), vec4<u32>(var_0.x, 69765u, u_input.a, u_input.a)), true) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(30049i, 7100i), abs(2147483647i)), reverseBits(vec2<i32>(firstLeadingBit(15343i), _wgslsmith_sub_i32(-18073i, 8473i)))), vec3<u32>(~(~(~28236u)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2589f + 1653f) - 372f), 23859u), 4294967295u), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-22094i, 41965i, 0i, 20580i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 53690i, -10820i, 2147483647i), vec4<i32>(2147483647i, 83143i, -2147483647i, 5759i), vec4<i32>(2147483647i, -2147483647i, 2147483647i, -1i)), max(vec4<i32>(0i, 21210i, -29919i, -1i), -vec4<i32>(2147483647i, 26514i, -1i, 0i))), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_2 = var_1.a;
    let var_3 = select(vec2<bool>(!func_2(vec3<f32>(var_2, var_2, var_2), reverseBits(0u), vec3<bool>(true, true, true)).x, func_2(vec3<f32>(465f, _wgslsmith_f_op_f32(var_2 - 189f), _wgslsmith_f_op_f32(-556f - var_1.a)), 1u, !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))).x), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), true);
    let var_4 = Struct_2(var_3.x, 0u & var_0.x, max(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_1.d.xz, var_1.d.xx), var_0.yz)), vec2<u32>(var_0.x, 8272u)), 4294967295u, var_1);
    let var_5 = Struct_3(Struct_1(var_1.a, var_1.b, -var_4.e.c, ~(~(~var_4.e.d)), i32(-1i) * -12364i), !(!(!select(vec2<bool>(var_4.a, var_3.x), vec2<bool>(true, false), false))), var_1);
    var_0 = vec3<u32>(var_1.d.x, 27587u, _wgslsmith_sub_u32(var_1.d.x, _wgslsmith_sub_u32(var_4.d >> (1u % 32u), 9901u)));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -284f), true)), _wgslsmith_f_op_f32(abs(921f)))), ~select(countOneBits(vec4<i32>(15364i, var_5.c.c, var_5.a.c, -70210i)), var_5.a.b, vec4<bool>(var_1.d.x == var_1.d.x, -603f != var_1.a, true, var_3.x)), var_1.b.x, vec3<u32>(35615u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_1.d.x), ~vec3<u32>(74894u, 6342u, 1u))), func_3(var_4.a).x), var_4.e.e);
    var var_7 = _wgslsmith_add_vec2_u32(var_0.xx, _wgslsmith_add_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), var_4.c)), vec2<u32>(_wgslsmith_sub_u32(~var_0.x, reverseBits(4294967295u)), 35345u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_6.d.x, 77685u), vec3<u32>(var_0.x, var_6.d.x, u_input.a)) | countOneBits(var_0.x), func_1(var_2, var_5.c.d.x), 1u, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1993f, var_4.e.a)) * var_4.e.a) - var_4.e.a));
}


struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(select(vec2<bool>(arg_0, arg_2.b.x != arg_2.b.x), select(vec2<bool>(arg_0, true), vec2<bool>(!arg_0, false), vec2<bool>(true, true)), !select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), vec2<bool>(false, true)))), firstLeadingBit(_wgslsmith_mod_i32(arg_2.a & countOneBits(0i), -2147483647i)));
    var var_1 = 1037f;
    let var_2 = Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(firstTrailingBit(-arg_2.a), _wgslsmith_mod_i32(~arg_2.a, _wgslsmith_div_i32(-26870i, -3657i))), -((-1i << (u_input.a.x % 32u)) & (var_0.b >> (arg_2.c % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * 842f) * arg_1), Struct_2(var_0.a, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(var_0.b, arg_2.a, var_0.b)), vec3<i32>(min(var_0.b, -31206i), var_0.b, -arg_2.a))));
    var var_3 = 1u | (u_input.a.x ^ 4294967295u);
    var var_4 = 28527u;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(1i, 1i) << (countOneBits(u_input.a.zz) % vec2<u32>(32u))), -_wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(-2147483647i, var_0.b)), -vec2<i32>(42190i, arg_2.a) | vec2<i32>(arg_2.a, arg_2.a)));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true), _wgslsmith_add_i32(-(0i << (u_input.a.x % 32u)), i32(-1i) * -30975i) >> ((u_input.a.x ^ 0u) % 32u));
    var var_1 = Struct_3((1i ^ min(func_3(var_0.a.x, -1132f, Struct_1(-1i, vec2<f32>(386f, 638f), u_input.a.x)), 0i)) | 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1689f, 268f))) - _wgslsmith_f_op_f32(max(-386f, 1262f))), Struct_2(var_0.a, var_0.b));
    return ~(~_wgslsmith_mult_i32(_wgslsmith_div_i32(min(var_0.b, 4038i), -var_1.a), firstLeadingBit(var_0.b)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = Struct_3(-(~var_0.b) & _wgslsmith_add_i32(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 2147483647i), ~(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-394f, -1201f))), arg_0);
    let var_2 = Struct_1(((min(arg_0.b, var_1.c.b) | 0i) << (firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 47153u)) % 32u)) | ~abs(_wgslsmith_div_i32(-33001i, -25444i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_f_op_f32(trunc(var_1.b)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b, 253f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) - var_1.b)))), ~(~abs(u_input.a.x & 0u)));
    let var_3 = select(vec2<bool>(true, var_1.c.a.x), var_1.c.a, false);
    let var_4 = firstTrailingBit(u_input.a.x << ((0u | u_input.a.x) % 32u));
    return Struct_2(vec2<bool>(false || !(!var_3.x), any(vec3<bool>(var_0.a.x, true, var_1.c.a.x & false))), var_1.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f - arg_0.x) + _wgslsmith_f_op_f32(arg_0.x * 966f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)) * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.x, 234f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1295f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(arg_0.x, 141f)))) + _wgslsmith_f_op_f32(round(arg_0.x))));
    let var_1 = func_4(Struct_2(!vec2<bool>(!arg_1.a.x, arg_2.a.x), _wgslsmith_mod_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, arg_2.b), vec3<i32>(1i, arg_1.b, arg_2.b)), ~(-1i)), firstLeadingBit(_wgslsmith_div_i32(arg_2.b, -2147483647i)))));
    var var_2 = func_4(func_4(func_4(Struct_2(!vec2<bool>(arg_2.a.x, true), arg_2.b))));
    var_2 = Struct_2(var_2.a, firstTrailingBit(countOneBits(-var_1.b) & (var_1.b << (u_input.a.x % 32u))));
    var var_3 = ~(~reverseBits(~vec2<u32>(1u, arg_3))) ^ ~(u_input.a.yx >> (_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(0u, arg_3)) % vec2<u32>(32u)));
    return Struct_1(var_1.b, arg_0, 15451u);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = false;
    var var_1 = !var_0;
    var var_2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_2.b.x)), Struct_2(select(func_4(Struct_2(vec2<bool>(false, var_0), -38248i)).a, vec2<bool>(all(vec3<bool>(var_0, false, var_0)), true), !var_0), arg_0), Struct_2(select(!vec2<bool>(var_0, true), !func_4(Struct_2(vec2<bool>(true, var_0), 1i)).a, var_0), arg_2.a), ~0u);
    var var_3 = _wgslsmith_mult_vec2_u32(~(~u_input.a.xy), u_input.a.zz);
    var_2 = func_5(arg_2.b, Struct_2(vec2<bool>(true, true), max(-2147483647i << (var_2.c % 32u), ~2147483647i)), Struct_2(select(func_4(func_4(Struct_2(vec2<bool>(false, var_0), -1i))).a, vec2<bool>(var_0, var_0), true), max(var_2.a, -10454i)), ~458u);
    return func_4(Struct_2(vec2<bool>(true, true), var_2.a));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_2))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(686f)), true)) + _wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1609f + -1000f), any(vec2<bool>(true, true))))));
    let var_1 = func_6(-(~_wgslsmith_div_i32(arg_1, 8611i) >> (_wgslsmith_mult_u32(1u, 17795u) % 32u)), 0u, func_5(arg_2, func_4(Struct_2(vec2<bool>(false, true), func_2())), func_4(Struct_2(vec2<bool>(true, true), -arg_1)), arg_3.x));
    let var_2 = Struct_3(~1i, arg_0, var_1);
    let var_3 = func_6(~(-10426i), u_input.a.x, Struct_1(_wgslsmith_mult_i32(var_2.c.b, _wgslsmith_clamp_i32(2147483647i, 1i, 0i)) ^ max(_wgslsmith_sub_i32(0i, 2114i), -var_1.b), vec2<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-618f - 523f), _wgslsmith_f_op_f32(sign(-1069f))))), min(_wgslsmith_div_u32(39810u, arg_3.x) << (85352u % 32u), ~_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, arg_3.x)))));
    let var_4 = u_input.a;
    return Struct_1(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(564f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1542f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, arg_0))) * vec2<f32>(_wgslsmith_div_f32(-2266f, -1444f), 162f))), max(_wgslsmith_mod_u32(1u, ~_wgslsmith_mod_u32(var_4.x, u_input.a.x)), _wgslsmith_add_u32(func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2400f, -2431f))), var_2.c, func_4(var_3), 22768u >> (0u % 32u)).c, var_4.x)));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = -12194i;
    var_0 = arg_0.a;
    var var_1 = Struct_3(-29083i, _wgslsmith_f_op_f32(arg_2 + arg_0.b.x), func_6(countOneBits(_wgslsmith_div_i32(arg_0.a, i32(-1i) * -2147483647i)), 37946u, func_5(func_5(func_5(arg_0.b, Struct_2(vec2<bool>(true, false), -6876i), Struct_2(vec2<bool>(true, true), 1i), 40386u).b, Struct_2(vec2<bool>(true, true), arg_0.a), Struct_2(vec2<bool>(true, true), 2147483647i), ~arg_0.c).b, func_6(~25322i, u_input.a.x, Struct_1(arg_0.a, arg_0.b, 1u)), Struct_2(vec2<bool>(true, true), 1i), _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), ~arg_1.x, 58164u))));
    var var_2 = vec4<f32>(var_1.b, 1019f, var_1.b, arg_2);
    var var_3 = Struct_2(select(var_1.c.a, func_6(arg_0.a, 1u, arg_0).a, vec2<bool>(false, var_1.c.a.x)), _wgslsmith_add_i32(-firstLeadingBit(arg_0.a & arg_0.a), ~(-4318i)));
    return var_1.c;
}

fn func_8(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = arg_1;
    var var_1 = arg_2;
    var_1 = true;
    let var_2 = func_6(arg_0.c.b, _wgslsmith_dot_vec4_u32(u_input.a, min(u_input.a, ~(~u_input.a))), func_1(var_0.c, var_0.e, func_1(_wgslsmith_f_op_f32(-arg_0.b), func_3(false, _wgslsmith_f_op_f32(abs(arg_0.b)), Struct_1(arg_1.a, vec2<f32>(arg_1.c, arg_1.c), u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, arg_1.c))), ~vec2<u32>(4294967295u, 1u)).b, u_input.a.zx));
    let var_3 = u_input.a.wx << (vec2<u32>(select(36175u << (arg_1.b % 32u), ~1u, arg_2), 1u) % vec2<u32>(32u));
    return var_2.b ^ ~19383i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -min(_wgslsmith_add_i32(1i, 1i), _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(2147483647i, 2147483647i))) | func_8(Struct_3(-2147483647i, -935f, func_7(func_1(1000f, 46555i, vec2<f32>(-130f, -1006f), u_input.a.wz), vec2<u32>(u_input.a.x, 44084u), _wgslsmith_f_op_f32(f32(-1f) * -1152f))), Struct_4(~func_2(), 1u << ((u_input.a.x | u_input.a.x) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1449f, 1228f, false)), _wgslsmith_f_op_f32(ceil(-752f)))), -vec4<i32>(1i, 1i, 1i, 1i), (32285i << (u_input.a.x % 32u)) & _wgslsmith_mult_i32(0i, -1i)), func_7(Struct_1(_wgslsmith_mod_i32(-76256i, -23896i), func_5(vec2<f32>(-1075f, 979f), Struct_2(vec2<bool>(false, false), 2147483647i), Struct_2(vec2<bool>(false, false), 0i), 13358u).b, _wgslsmith_sub_u32(u_input.a.x, 4294967295u)), vec2<u32>(u_input.a.x, 26604u) >> (vec2<u32>(45333u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-func_1(266f, -1i, vec2<f32>(499f, -927f), u_input.a.xx).b.x)).a.x);
    let var_1 = -1138f;
    var var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-459f, var_1), vec2<f32>(2379f, -2258f))) * vec2<f32>(163f, var_1))), Struct_2(vec2<bool>(true, u_input.a.x >= u_input.a.x), ~min(var_0, var_0)), func_7(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), func_7(Struct_1(1i, vec2<f32>(-1727f, 392f), u_input.a.x), vec2<u32>(54527u, 0u), 524f), Struct_2(vec2<bool>(true, false), -32216i), abs(u_input.a.x)), vec2<u32>(~48985u, 0u), _wgslsmith_f_op_f32(abs(1000f))), abs(_wgslsmith_dot_vec3_u32(u_input.a.wyx, u_input.a.wxw) >> (~1u % 32u))).b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, func_5(vec2<f32>(531f, var_1), Struct_2(vec2<bool>(true, true), var_0), Struct_2(vec2<bool>(false, false), -8806i), 45285u).b.x)) + func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, 1078f), vec2<f32>(var_1, var_1))), Struct_2(vec2<bool>(true, false), var_0), Struct_2(vec2<bool>(true, true), var_0), ~1u).b.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f));
    var var_4 = Struct_3(-_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(var_0, 0i, 16994i, 5947i)), vec4<i32>(_wgslsmith_mod_i32(var_0, 0i), reverseBits(2147483647i), _wgslsmith_add_i32(-3976i, var_0), min(-2147483647i, var_0))), _wgslsmith_f_op_f32(-694f * var_1), func_4(func_4(Struct_2(vec2<bool>(true, true), firstLeadingBit(var_0)))));
    let var_5 = select(_wgslsmith_mult_i32(-28732i, func_2()), 2147483647i, false && func_7(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b, var_4.b) - vec2<f32>(var_1, var_4.b)), func_4(Struct_2(var_4.c.a, 0i)), var_4.c, abs(u_input.a.x)), select(~vec2<u32>(62201u, 1u), u_input.a.zy, !var_4.c.a.x), -544f).a.x);
    let var_6 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>((-59769i & var_5) & _wgslsmith_dot_vec4_i32(vec4<i32>(53598i, -31279i, 2147483647i, 17256i), vec4<i32>(var_5, 1i, -1i, var_4.a)), var_5 >> (u_input.a.x % 32u), 49652i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 1i), vec3<i32>(-1i, var_4.a, var_5)))), _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(1i, var_0, var_0, 1i)), min(vec4<i32>(-2147483647i, var_4.a, -2147483647i, 2730i) | (vec4<i32>(var_0, var_0, 1i, var_4.c.b) & vec4<i32>(var_0, var_5, -1478i, var_0)), abs(vec4<i32>(var_4.c.b, 30806i, 12168i, 9269i)) | firstLeadingBit(vec4<i32>(-2147483647i, var_0, 12225i, 1i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-28554i, var_0, 2147483647i) | vec3<i32>(28364i, -2147483647i, var_4.c.b), vec3<i32>(var_0, 0i, var_5)), vec3<i32>(~21554i, _wgslsmith_mult_i32(var_0, 1i), _wgslsmith_div_i32(0i, 31604i))), var_0, var_0, 1i));
    var var_7 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_5(vec2<f32>(var_4.b, var_1), var_4.c, Struct_2(var_4.c.a, -33104i), u_input.a.x).b.x), 144f, _wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.b, var_1, var_4.b), vec3<f32>(496f, 865f, var_1)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.b, -501f, var_1)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-2146f)), -1639f, 222f))));
    let var_8 = _wgslsmith_f_op_f32(148f + var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_7.zx + _wgslsmith_f_op_vec2_f32(-var_7.zx))) + _wgslsmith_f_op_vec2_f32(-var_7.zy)), max(var_6.wx, var_6.zw), 111340u, select(~_wgslsmith_div_i32(~22149i, _wgslsmith_sub_i32(43581i, var_0)), _wgslsmith_dot_vec3_i32(reverseBits(var_6.zwz), var_6.yyw), false != var_4.c.a.x), var_5);
}


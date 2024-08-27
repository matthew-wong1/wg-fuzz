struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = ~(~_wgslsmith_add_u32(~(~35534u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(48686u, 64399u, 1u, 29542u))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-304f)), 214f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1387f, 1634f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1171f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-210f)) + _wgslsmith_div_f32(748f, -1267f))), 1569f));
    let var_2 = Struct_4(var_0);
    var var_3 = vec2<bool>(var_2.a >= var_0, true);
    let var_4 = Struct_2(reverseBits(vec4<i32>(~0i, u_input.a.x, -72787i, _wgslsmith_add_i32(u_input.b, u_input.a.x | u_input.b))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 1f, -352f), vec4<i32>(i32(-1i) * -2348i, ~_wgslsmith_div_i32(u_input.b, u_input.a.x), 2147483647i, -1i)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(909f, var_1.x, -317f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, var_1.x, var_1.x) - vec3<f32>(var_1.x, -851f, 892f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 458f, var_1.x)), var_3.x))), vec4<i32>(-1i) * -(vec4<i32>(47272i, -41667i, u_input.b, u_input.a.x) & vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))));
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = !(!vec4<bool>(!any(vec3<bool>(true, true, false)), true, any(vec3<bool>(false, false, true)), true));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f)) + 1270f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f * 1f)))));
    var var_2 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(75990i), -37735i), ~(~(~(-11082i))), 0i, _wgslsmith_dot_vec2_i32(abs(u_input.a), -u_input.a) >> (_wgslsmith_mult_u32(func_3(), 1u) % 32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1 - 1494f), _wgslsmith_f_op_f32(643f + _wgslsmith_f_op_f32(step(154f, 1000f))), 871f), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(~u_input.a, -vec2<i32>(u_input.a.x, u_input.b)), 13362i, reverseBits(u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, 2228f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1274f, -1000f)))), max(~vec4<i32>(-1i, u_input.b, u_input.b, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)) ^ ~vec4<i32>(0i, 1617i, u_input.a.x, -8436i))));
    var var_3 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(41106u, 44671u)), _wgslsmith_div_vec2_u32(vec2<u32>(7553u << (0u % 32u), _wgslsmith_sub_u32(4294967295u, 0u)), vec2<u32>(1u, 1u)) >> (vec2<u32>(select(min(1527u, 25802u), ~54570u, all(vec3<bool>(var_0.x, false, var_0.x))), 0u) % vec2<u32>(32u)));
    let var_4 = var_0.x;
    return Struct_2(vec4<i32>(_wgslsmith_mult_i32(min(abs(13556i), max(28675i, u_input.a.x)), max(_wgslsmith_mult_i32(var_2.a.x, -2147483647i), 69803i)), ~u_input.b & 1i, u_input.b, -2147483647i), var_2.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-915f, var_2.c.a.x, 2584f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.a.x, var_2.b.a.x, -323f), var_2.c.a, var_0.x)))), -var_2.a));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5) -> i32 {
    let var_0 = Struct_5(all(select(select(select(vec3<bool>(true, arg_1.a, true), arg_0.d.zzw, false), !arg_0.e.xwz, true), arg_0.d.zyx, vec3<bool>(arg_0.e.x & arg_0.e.x, true, false))), arg_1.b);
    let var_1 = func_2();
    var var_2 = _wgslsmith_sub_vec3_i32(arg_0.b.c.b.xxz << (firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.a, var_0.b.a, arg_1.b.a), vec3<u32>(0u, arg_1.b.a, var_0.b.a))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.c.b.x << (var_0.b.a % 32u), u_input.b, _wgslsmith_mod_i32(12449i, u_input.a.x)), vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_mod_i32(u_input.b, -5827i), -2147483647i))) & vec3<i32>(-(~(2147483647i ^ var_1.b.b.x)), ~_wgslsmith_add_i32(15391i, _wgslsmith_mult_i32(var_1.a.x, arg_0.b.a.x)), 0i);
    let var_3 = true;
    var var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(17381i, var_1.a.x, 18460i, u_input.b), var_1.a, vec4<bool>(arg_0.e.x, arg_1.a, var_0.a, var_0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.b.x, 14487i, -1i, 57665i), var_1.b.b))), var_1.a), func_2().a.x);
    return _wgslsmith_add_i32(~reverseBits(-var_1.a.x & firstLeadingBit(arg_0.b.a.x)), _wgslsmith_sub_i32(0i >> (~arg_1.b.a % 32u), max(-4317i, -var_2.x)) & (~abs(var_1.a.x) ^ max(_wgslsmith_clamp_i32(-2147483647i, 39263i, -1i), func_2().b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(vec4<i32>(u_input.b, u_input.a.x, _wgslsmith_mod_i32(abs(u_input.b), 0i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-22453i, u_input.b), 1i)), firstTrailingBit(vec4<i32>(~(-1i), -11517i ^ u_input.a.x, func_1(Struct_3(Struct_2(vec4<i32>(-1i, 0i, u_input.b, -40940i), Struct_1(vec3<f32>(-301f, -410f, -337f), vec4<i32>(1i, u_input.b, u_input.b, 0i)), Struct_1(vec3<f32>(-926f, -1924f, -407f), vec4<i32>(56616i, 12920i, 6098i, 2147483647i))), Struct_2(vec4<i32>(6737i, 0i, u_input.a.x, -27982i), Struct_1(vec3<f32>(-738f, -1066f, 981f), vec4<i32>(u_input.a.x, 0i, 24429i, u_input.b)), Struct_1(vec3<f32>(841f, -350f, -492f), vec4<i32>(u_input.b, u_input.a.x, 45308i, 2147483647i))), u_input.a, vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), Struct_5(true, Struct_4(4294967295u))), u_input.a.x & u_input.b)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), func_2().c, func_2().c);
    var var_1 = Struct_5(!all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), true)), Struct_4(78618u >> (_wgslsmith_clamp_u32(abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7624u, 10421u), vec3<u32>(43880u, 39689u, 4294967295u)), ~14711u) % 32u)));
    var var_2 = false;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(var_0.c.a.x - -1435f);
    var_2 = true;
    var_2 = select(true || (268f == var_0.b.a.x), false, any(select(!(!vec3<bool>(var_1.a, false, var_1.a)), vec3<bool>(var_1.a, select(true, false, false), !var_1.a), !var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~19465u, ~firstTrailingBit(vec3<i32>(func_2().b.b.x, -26229i, -1i)));
}


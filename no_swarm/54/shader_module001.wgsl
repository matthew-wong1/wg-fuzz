struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(-15666i, 0i, 2147483647i, 13572i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_4(vec4<i32>(reverseBits(1i), u_input.c.x, -44254i, firstLeadingBit(global0.a.x)));
    global0 = Struct_4(global0.a);
    var var_1 = u_input.c.x;
    var_0 = Struct_4(vec4<i32>(u_input.c.x, _wgslsmith_add_i32(global0.a.x, i32(-1i) * -1i) << (~7532u % 32u), min(-2147483647i & -global0.a.x, -12204i), ~_wgslsmith_mod_i32(~global0.a.x, ~global0.a.x)));
    let var_2 = !(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))));
    return ~887u;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = true;
    var var_1 = Struct_2(-_wgslsmith_mult_i32(-2147483647i, arg_0), ~(-abs(-vec3<i32>(-10628i, global0.a.x, 1i))), 1u, Struct_1(4294967295u >> (u_input.b % 32u), vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(26105u, u_input.b, u_input.b), vec3<u32>(36461u, u_input.b, 0u))), 1732f, func_3(Struct_3(Struct_1(11084u, vec2<u32>(u_input.b, u_input.b), 1749f, 4294967295u), Struct_1(u_input.b, vec2<u32>(u_input.b, 3560u), -1350f, u_input.b)), Struct_1(u_input.b, vec2<u32>(30344u, 0u), -445f, 44846u)) | ~u_input.b));
    global0 = Struct_4(reverseBits(firstLeadingBit(~global0.a << (~vec4<u32>(var_1.d.b.x, 19106u, 0u, var_1.c) % vec4<u32>(32u)))));
    var_1 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(var_1.a, global0.a.x, 2018i, 12015i))), vec4<i32>(arg_0, -8850i, _wgslsmith_dot_vec2_i32(vec2<i32>(-17829i, global0.a.x), u_input.c), var_1.a)), -max(vec4<i32>(-50730i, 30927i, global0.a.x, -39617i), vec4<i32>(46927i, global0.a.x, 1i, -2147483647i))), var_1.b, countOneBits(~var_1.d.d), Struct_1(var_1.c, vec2<u32>(20442u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(12260u, var_1.d.b.x, 0u)), ~vec3<u32>(1u, 1u, var_1.d.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c)), 12921u << (~_wgslsmith_mult_u32(u_input.b, 4294967295u) % 32u)));
    let var_2 = Struct_3(Struct_1(97577u, vec2<u32>(0u, abs(var_1.c)), var_1.d.c, 4294967295u), Struct_1(0u & u_input.b, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 9533u), _wgslsmith_dot_vec4_u32(vec4<u32>(4817u, var_1.d.a, 0u, var_1.c), vec4<u32>(u_input.b, u_input.b, 2302u, 70085u))), _wgslsmith_mult_u32(abs(2666u), 1u)), 1000f, _wgslsmith_clamp_u32(u_input.b, 43406u, ~1u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -718f);
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec3<f32> {
    global0 = Struct_4(-select(global0.a, vec4<i32>(51749i, ~global0.a.x, arg_0.c.x, 0i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_0 = Struct_4(abs(global0.a));
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d)) - 794f) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(arg_0.d, arg_0.a)))) - arg_0.a);
    let var_2 = Struct_1(~abs(109411u), ~abs(vec2<u32>(65924u, 1u)) ^ ~select(vec2<u32>(109967u, arg_1), ~vec2<u32>(4294967295u, arg_1), arg_1 < arg_1), 1528f, max(abs(~u_input.b | arg_1), 61835u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(817f, arg_0.d, _wgslsmith_f_op_f32(-1000f + -1667f)))));
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = -1000f;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(Struct_5(-340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.a.x))), _wgslsmith_clamp_vec2_i32(global0.a.wx, u_input.a, countOneBits(u_input.c)), arg_0.b.c), ~_wgslsmith_div_u32(arg_0.b.d, arg_0.a.b.x)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_5) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, 10585u, u_input.b)) | ~vec4<u32>(u_input.b, u_input.b, 2834u, u_input.b), max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 68621u, u_input.b, u_input.b), vec4<u32>(115754u, u_input.b, u_input.b, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(6175u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u)))), abs(vec4<u32>(u_input.b, u_input.b, 13129u, 25086u) >> (vec4<u32>(1u, u_input.b, 0u, u_input.b) % vec4<u32>(32u)))), min(firstTrailingBit(max(countOneBits(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 58284u), vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 4294967295u)))), min(~vec2<u32>(1u, 58652u), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u)))), 1480f, 1u | u_input.b);
    let var_1 = vec3<i32>(arg_3.c.x, 10168i, 2147483647i);
    global0 = Struct_4(select(-firstTrailingBit(select(vec4<i32>(arg_3.c.x, 1i, -2147483647i, arg_3.c.x), vec4<i32>(-28700i, 0i, -41597i, -1i), vec4<bool>(false, true, true, false))), ~(-(global0.a ^ global0.a)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))));
    global0 = Struct_4(global0.a);
    var var_2 = Struct_4(max(-vec4<i32>(var_1.x << (u_input.b % 32u), _wgslsmith_mult_i32(arg_3.c.x, var_1.x), _wgslsmith_add_i32(-2147483647i, 1i), _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(global0.a.x, u_input.c.x, var_1.x, -11219i))), global0.a));
    return Struct_4(vec4<i32>(u_input.a.x << (u_input.b % 32u), global0.a.x, -_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, var_2.a.x), -2147483647i), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(global0.a.x, var_2.a.x, -1i)), vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2), global0.a.zx), -1i))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(abs(-713f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1210f, -250f, false))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(487f * 2085f), _wgslsmith_f_op_f32(func_2(u_input.c.x)))))), func_5(vec3<f32>(-1338f, _wgslsmith_f_op_f32(1f + -686f), 1880f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-452f)) * _wgslsmith_f_op_f32(f32(-1f) * -1742f))), -_wgslsmith_dot_vec3_i32(vec3<i32>(54184i, 18903i, u_input.a.x), arg_3.a.yzx) & -6346i, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f)), arg_3.a.yx, 540f)).a.xy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-836f, -1000f) * 556f));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, _wgslsmith_div_u32(36351u, 11848u), 4294967295u), _wgslsmith_div_vec3_u32(min(~vec3<u32>(u_input.b, 4294967295u, 4294967295u), max(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(0u, u_input.b, 24341u))), vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b), u_input.b | 10151u, ~u_input.b))));
    return _wgslsmith_add_vec4_i32(min(firstTrailingBit(vec4<i32>(-58945i, u_input.c.x, var_0.c.x, u_input.c.x)) << (~vec4<u32>(0u, u_input.b, u_input.b, 51245u) % vec4<u32>(32u)), -(global0.a >> (vec4<u32>(79382u, var_1.x, 1u, 1u) % vec4<u32>(32u)))) & vec4<i32>(15139i, 55308i, max(var_0.c.x, 0i), reverseBits(countOneBits(u_input.a.x))), arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(abs(func_6(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), false), vec2<bool>(true, true), func_5(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(1u, vec2<u32>(19029u, 52449u), -428f, u_input.b), Struct_1(u_input.b, vec2<u32>(u_input.b, u_input.b), 761f, u_input.b)))), _wgslsmith_f_op_f32(504f * -1000f), _wgslsmith_dot_vec4_i32(global0.a, global0.a), Struct_5(-1978f, 1064f, global0.a.xy, 276f)))));
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 9441u, u_input.b)), max(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, u_input.b)) & ~vec3<u32>(u_input.b, 41971u, u_input.b), ~(vec3<u32>(u_input.b, 1u, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b)))), u_input.b & firstLeadingBit(~u_input.b), _wgslsmith_sub_u32(u_input.b, 1u));
    var_0 = min(vec3<u32>(u_input.b, ~firstLeadingBit(~1u), u_input.b), ~(vec3<u32>(_wgslsmith_sub_u32(118040u, u_input.b), _wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x))) << (vec3<u32>(var_0.x, 29809u, u_input.b) % vec3<u32>(32u))));
    var var_1 = global0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(var_0.x, var_0.xx, -816f, 37017u), Struct_1(var_0.x, vec2<u32>(u_input.b, 12327u), 1000f, var_0.x)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1160f, var_2.x, -547f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, 2420f, 202f) + vec3<f32>(var_2.x, -733f, var_2.x))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(Struct_5(-585f, var_2.x, vec2<i32>(32833i, global0.a.x), var_2.x), 20099u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + 1577f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(u_input.b, u_input.b)), var_0.xz) ^ var_0.xy);
}


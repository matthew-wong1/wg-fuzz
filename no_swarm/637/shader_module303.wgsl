struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~(-(~(-2147483647i & u_input.c.x)));
    var_0 = -5543i;
    let var_1 = ~vec3<u32>((u_input.a | u_input.a) << (5990u % 32u), 26929u, 1u) ^ vec3<u32>(~u_input.a, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(u_input.a & 3530u, _wgslsmith_div_u32(4294967295u, 49631u)), abs(1u) ^ _wgslsmith_add_u32(29911u, u_input.a)), u_input.a);
    var_0 = -15118i;
    let var_2 = -527f;
    return !vec4<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), 31906u == ~var_1.x, true, true);
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = func_3();
    let var_1 = Struct_5(Struct_1(func_3().x, var_0, abs(~(~u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2104f), 305f), ~(~(~vec4<u32>(arg_0, arg_0, u_input.a, 0u)))), vec4<i32>(23083i, u_input.b.x, u_input.b.x, ~36103i), _wgslsmith_f_op_f32(min(2261f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(698f + 1000f), _wgslsmith_f_op_f32(898f + 1300f), u_input.c.x > u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -185f))))), vec2<u32>(~(~1u), 1u) ^ _wgslsmith_div_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(arg_0, 0u))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), max(vec2<u32>(0u, arg_0), vec2<u32>(1u, arg_0)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.d - var_1.a.d) * var_1.a.d))), _wgslsmith_f_op_f32(1f + var_1.a.d)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1439f, var_1.c)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c, -280f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(var_1.c + 859f))))));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.c)), _wgslsmith_f_op_f32(-1047f * var_1.a.d))))));
    return abs(vec4<i32>(u_input.b.x, u_input.c.x, -1i, _wgslsmith_mod_i32(var_1.a.c, u_input.b.x) | -2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_3) -> Struct_1 {
    var var_0 = abs(25840i);
    var_0 = ~arg_0.b;
    return arg_1.a;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<i32> {
    let var_0 = !(!vec3<bool>(any(vec2<bool>(true, true)), ~arg_1 >= 11360i, true));
    let var_1 = 1f;
    let var_2 = Struct_2(Struct_1(var_0.x, !select(vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), countOneBits(min(_wgslsmith_dot_vec3_i32(vec3<i32>(10935i, -1i, arg_1), vec3<i32>(u_input.b.x, arg_1, u_input.b.x)), ~u_input.c.x)), _wgslsmith_f_op_f32(floor(-142f)), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a, 2722u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 3029u, 9244u, arg_0), vec4<u32>(arg_0, 0u, 4294967295u, u_input.a)))), func_4(Struct_3(vec3<i32>(1i, 19226i ^ arg_1, arg_1 & arg_1), -2147483647i << ((u_input.a & 1u) % 32u), func_2(1u), reverseBits(-vec4<i32>(arg_1, -33549i, 0i, u_input.b.x))), Struct_5(Struct_1(true, vec4<bool>(true, true, true, true), ~u_input.c.x, var_1, ~vec4<u32>(20702u, u_input.a, 14250u, 1u)), vec4<i32>(arg_1, abs(-4129i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, -9644i), vec3<i32>(15052i, 41079i, 2147483647i)), max(arg_1, arg_1)), var_1, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(u_input.a, 0u)), reverseBits(vec2<u32>(u_input.a, 2219u)), countOneBits(vec2<u32>(arg_0, arg_0)))), Struct_3((vec3<i32>(u_input.c.x, -46381i, 0i) << (vec3<u32>(34587u, u_input.a, 52152u) % vec3<u32>(32u))) >> (select(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(u_input.a, u_input.a, 4294967295u), var_0) % vec3<u32>(32u)), -u_input.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(-11103i, -2147483647i, 31400i, -2147483647i), vec4<i32>(u_input.c.x, 4670i, arg_1, u_input.b.x)) ^ select(vec4<i32>(u_input.c.x, arg_1, 20927i, u_input.c.x), vec4<i32>(arg_1, 18192i, u_input.c.x, 0i), false), reverseBits(vec4<i32>(-1i, arg_1, u_input.c.x, u_input.b.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 54451u), vec4<u32>(arg_0, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))), var_0);
    let var_3 = Struct_5(var_2.a, (~firstLeadingBit(vec4<i32>(-2147483647i, 66723i, u_input.b.x, -1i)) | (-vec4<i32>(1i, 11811i, -2147483647i, 5120i) >> (select(var_2.a.e, var_2.a.e, var_2.b.b) % vec4<u32>(32u)))) | ~vec4<i32>(arg_1, var_2.b.c, 1i, _wgslsmith_div_i32(var_2.b.c, -21052i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_div_f32(-1436f, _wgslsmith_f_op_f32(-1000f * var_2.a.d))), _wgslsmith_f_op_f32(round(938f))), _wgslsmith_add_vec2_u32(~countOneBits(max(vec2<u32>(arg_0, var_2.a.e.x), vec2<u32>(54086u, arg_0))), ~var_2.a.e.yy));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.d) - 265f);
    return firstLeadingBit(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<i32>(-1i, _wgslsmith_mult_i32(select(_wgslsmith_dot_vec3_i32(vec3<i32>(38670i, 28729i, u_input.c.x), vec3<i32>(38647i, u_input.b.x, -26298i)), 1i, true), u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.c, func_1(~0u, max(u_input.c.x, 2147483647i)))), max(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(24814i, -13752i, u_input.b.x, u_input.c.x), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, -10969i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, 1i, 0i, 0i))), _wgslsmith_mod_i32(5536i, u_input.c.x)), ~vec4<i32>(~(~u_input.b.x), _wgslsmith_mod_i32(u_input.c.x, -1i << (u_input.a % 32u)), ~1i, 1i), vec4<i32>(~2147483647i, u_input.c.x, 2147483647i, abs(firstLeadingBit(-2147483647i))) & vec4<i32>(u_input.c.x, reverseBits(~(-2147483647i)), -(~u_input.b.x), abs(firstTrailingBit(u_input.c.x))));
    var var_1 = u_input.b.x;
    let var_2 = true;
    var var_3 = 25436u;
    var_1 = func_2(1u).x;
    var_3 = ~_wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(0u, u_input.a, 0u, 1u))), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), ~vec4<u32>(29976u, 1u, u_input.a, 57718u)));
    let var_4 = var_0;
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, 1000f, 711f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, 654f, 946f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-109f, _wgslsmith_f_op_f32(step(137f, 1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -591f), -729f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f + -569f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, 988f, -1304f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1548f, -787f, 1470f), vec3<f32>(500f, -1000f, 1656f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(545f, 1000f, 979f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, ~35426u);
}


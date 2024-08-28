struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> i32 {
    global0 = Struct_2(~u_input.a);
    let var_0 = -143f;
    global0 = Struct_2(_wgslsmith_mult_u32(4294967295u, ~(~(u_input.a >> (4294967295u % 32u)))));
    let var_1 = select(23716u >> (1u % 32u), global0.a ^ _wgslsmith_add_u32(max(firstLeadingBit(615u), ~96370u), global0.a >> (u_input.a % 32u)), true && (~abs(0i) == select(2147483647i, 8333i, all(vec3<bool>(true, false, false)))));
    let var_2 = Struct_2(4294967295u);
    return -1i;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_2(global0.a);
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(var_0.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 41827u)), vec2<u32>(45492u, 4294967295u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(18034u, 1u, global0.a, 0u), min(vec4<u32>(1u, 1u, 16895u, var_0.a), vec4<u32>(1u, global0.a, 0u, global0.a)))), ~(~4294967295u));
    let var_2 = countOneBits(_wgslsmith_mult_i32(firstLeadingBit(1i), abs(-arg_0)));
    var_1 = select(countOneBits(vec2<u32>(~var_0.a, ~(~var_0.a))), vec2<u32>(max(max(var_0.a, 1u), ~(~14262u)), 4294967295u), arg_2);
    var var_3 = select(select(select(!arg_1, select(!vec4<bool>(arg_2.x, arg_2.x, true, arg_3.x), vec4<bool>(false, arg_2.x, false, true), select(vec4<bool>(arg_3.x, false, true, arg_1.x), arg_1, vec4<bool>(arg_2.x, true, false, arg_2.x))), arg_1.x), !vec4<bool>(false, true, true, true | arg_2.x), arg_1), select(!(!(!arg_1)), select(vec4<bool>(false, true, arg_1.x, true), !vec4<bool>(arg_2.x, arg_3.x, true, false), select(select(vec4<bool>(arg_3.x, false, arg_2.x, arg_1.x), arg_1, arg_2.x), arg_1, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1272f)), _wgslsmith_f_op_f32(f32(-1f) * -525f)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -746f)))), arg_1);
    return vec4<i32>(~var_2 & arg_0, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(5053i, 2147483647i, var_2, var_2), vec4<i32>(40826i, -15458i, -80190i, -5965i)), var_2, _wgslsmith_mult_i32(1879i, arg_0)), vec4<i32>(-16162i, max(var_2, arg_0), ~(-36859i), abs(var_2)))), arg_0, ~2147483647i);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(true, select(true, global0.a > 60503u, select(true, true, true)), true), firstLeadingBit(func_3(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-33331i, -12672i, -2147483647i), vec3<i32>(-1i, 18096i, 2147483647i)), func_2()), vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec3<bool>(false, true, true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-324f, -750f, 1638f), vec3<f32>(-545f, -174f, 176f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-615f, 246f, 1398f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(1064f - _wgslsmith_f_op_f32(floor(-150f))), 1280f)), ~vec3<u32>((u_input.a << (u_input.a % 32u)) << (u_input.a % 32u), global0.a, 4294967295u), abs(56549u) >> (_wgslsmith_clamp_u32(global0.a, 51003u, ~0u) % 32u));
    var var_1 = Struct_4(Struct_3(vec4<u32>(global0.a, _wgslsmith_clamp_u32(global0.a, 40253u, u_input.a) ^ ~40442u, _wgslsmith_div_u32(global0.a, u_input.a | var_0.d.x), var_0.d.x), Struct_1(select(var_0.a, var_0.a, !var_0.a), vec4<i32>(-23104i, var_0.b.x, 2147483647i, i32(-1i) * -105465i), var_0.c, var_0.d, min(4294967295u, _wgslsmith_div_u32(37862u, global0.a))), Struct_1(select(vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a, select(vec3<bool>(false, false, var_0.a.x), var_0.a, vec3<bool>(var_0.a.x, false, false))), vec4<i32>(var_0.b.x >> (4294967295u % 32u), firstLeadingBit(var_0.b.x), var_0.b.x, ~var_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)), ~(var_0.d & var_0.d), 0u), 0u, vec3<f32>(-711f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.c.x, 1162f)))), _wgslsmith_f_op_f32(606f + _wgslsmith_div_f32(var_0.c.x, var_0.c.x)))), Struct_3(~_wgslsmith_clamp_vec4_u32(vec4<u32>(36740u, var_0.d.x, 11445u, u_input.a), vec4<u32>(46211u, 1u, 72427u, 42661u), vec4<u32>(u_input.a, var_0.e, 113677u, var_0.e)) << (min(vec4<u32>(38299u, u_input.a, u_input.a, 13876u), _wgslsmith_mod_vec4_u32(vec4<u32>(105309u, global0.a, var_0.d.x, 0u), vec4<u32>(global0.a, 1u, 19514u, u_input.a))) % vec4<u32>(32u)), Struct_1(var_0.a, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, 37040i, -4456i, var_0.b.x) >> (vec4<u32>(71697u, 9046u, global0.a, global0.a) % vec4<u32>(32u)), -var_0.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, 1341f, -1720f)))), var_0.d, 1u), Struct_1(vec3<bool>(var_0.a.x, var_0.c.x < -752f, any(var_0.a.xy)), var_0.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-240f, -531f, var_0.c.x) + vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)))), abs(var_0.d ^ var_0.d), ~(~27520u)), u_input.a, var_0.c));
    var_1 = Struct_4(var_1.b, var_1.b);
    var_1 = Struct_4(Struct_3(abs(~(vec4<u32>(4294967295u, 10222u, global0.a, 1u) & vec4<u32>(global0.a, u_input.a, 62963u, 1u))), Struct_1(select(var_1.b.b.a, vec3<bool>(var_1.b.c.a.x, true, true), true), vec4<i32>(_wgslsmith_mod_i32(0i, var_1.a.c.b.x), countOneBits(var_0.b.x), 0i | var_1.b.b.b.x, _wgslsmith_dot_vec2_i32(var_1.b.c.b.wx, vec2<i32>(0i, -1i))), vec3<f32>(var_0.c.x, 1633f, _wgslsmith_f_op_f32(-var_1.b.c.c.x)), vec3<u32>(u_input.a, var_1.b.a.x, var_1.b.a.x) | abs(vec3<u32>(4294967295u, global0.a, u_input.a)), 17414u), Struct_1(select(select(var_0.a, vec3<bool>(false, var_1.b.c.a.x, var_1.b.c.a.x), var_1.b.b.a), !vec3<bool>(var_1.b.b.a.x, var_0.a.x, true), true), -max(vec4<i32>(1i, -1i, var_1.b.c.b.x, var_0.b.x), var_0.b), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + 651f), _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x), var_0.d, 4294967295u), ~countOneBits(global0.a) & 103717u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x))), var_1.b.e.x, 461f)), Struct_3(~select(var_1.b.a ^ var_1.a.a, vec4<u32>(0u, 0u, 9770u, 0u), !vec4<bool>(var_1.b.c.a.x, false, var_0.a.x, var_0.a.x)), Struct_1(var_1.b.c.a, ~vec4<i32>(-1i, var_0.b.x, 9969i, var_1.b.c.b.x) ^ func_3(-5891i, vec4<bool>(var_1.b.b.a.x, var_1.b.c.a.x, false, true), vec2<bool>(true, var_1.b.c.a.x), vec3<bool>(true, var_1.a.b.a.x, false)), var_0.c, max(var_1.b.c.d, _wgslsmith_div_vec3_u32(var_1.b.a.xwz, var_1.b.c.d)), ~1u), var_1.b.c, select((53039u ^ var_0.d.x) & min(global0.a, 1u), ~(~u_input.a), var_0.a.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1878f, var_1.b.e.x, var_0.c.x) + var_0.c)))));
    var var_2 = Struct_4(var_1.b, var_1.a);
    return Struct_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_1(!(!vec3<bool>(all(vec2<bool>(true, true)), true, true)), vec4<i32>(-(2147483647i >> (global0.a % 32u)) ^ 1i, 0i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(11742i, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(1i, -2147483647i, 23303i, 2147483647i))) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 32881i), _wgslsmith_div_vec3_i32(vec3<i32>(-5800i, -3520i, 7912i), vec3<i32>(14746i, -12643i, 16896i))), 2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(765f, 793f, 1000f) + vec3<f32>(-1000f, 857f, -1158f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, 223f, 259f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, 424f, 1204f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, -750f, -860f))))), false & ((8790u >> (global0.a % 32u)) != 1u))), ~vec3<u32>(~global0.a, 20234u, 13717u) | ~(~firstTrailingBit(vec3<u32>(1u, u_input.a, global0.a))), reverseBits(abs(u_input.a)));
    global0 = func_1();
    global0 = func_1();
    var var_1 = Struct_1(var_0.a, var_0.b, var_0.c, ~reverseBits(abs(~vec3<u32>(global0.a, var_0.e, 1u))), select(max(~0u, 0u), u_input.a, select(var_0.a.x, all(var_0.a.yx), false)));
    global0 = func_1();
    let var_2 = firstLeadingBit(var_0.b.x);
    let var_3 = var_0.c;
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}


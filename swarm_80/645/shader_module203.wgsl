struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(54389u, 78519u, 4294967295u, 1u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = arg_2;
    let var_1 = 0u;
    global0 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(127849u, 45986u, arg_0.x, 0u) & ~vec4<u32>(45399u, 0u, global0.x, 0u), vec4<u32>(var_1, u_input.a | 15764u, arg_0.x, 35649u & arg_0.x), reverseBits(vec4<u32>(global0.x, global0.x, arg_0.x, global0.x)) & vec4<u32>(4294967295u, 44485u, 4294967295u, 50172u)));
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.x, ~u_input.a), abs(u_input.a)), reverseBits(reverseBits(u_input.a)), global0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, ~_wgslsmith_dot_vec2_u32(~arg_0, ~arg_0), firstTrailingBit(max(u_input.a, 63583u)) << (_wgslsmith_add_u32(4294967295u, var_1 | var_1) % 32u)));
    global0 = min(min(vec4<u32>(firstLeadingBit(40750u), global0.x, 1u, ~var_1) >> ((reverseBits(vec4<u32>(global0.x, 4294967295u, 27142u, 1u)) & vec4<u32>(4294967295u, 22914u, u_input.a, 4294967295u)) % vec4<u32>(32u)), ~min(min(vec4<u32>(var_1, u_input.a, u_input.a, 60421u), vec4<u32>(4294967295u, 98322u, arg_0.x, 1u)), vec4<u32>(0u, 2624u, global0.x, arg_0.x))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~1u, _wgslsmith_dot_vec2_u32(global0.yw, arg_0), min(var_1, 5335u)), ~vec4<u32>(4294967295u, var_1, 0u, 0u))));
    return 1u;
}

fn func_2() -> Struct_1 {
    global0 = ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global0.x, 922u, 5746u), vec4<u32>(0u, 1u, 7358u, 1u)) << (~(~vec4<u32>(global0.x, 1u, global0.x, global0.x)) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a << (2685u % 32u), _wgslsmith_mult_u32(u_input.a, 0u), ~1u, reverseBits(1u)), firstTrailingBit(select(vec4<u32>(12305u, global0.x, global0.x, global0.x), vec4<u32>(u_input.a, global0.x, 1086u, u_input.a), vec4<bool>(true, false, false, false))), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 1u, global0.x), vec4<u32>(15925u, 4294967295u, u_input.a, 69213u))) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(0u, 7860u, global0.x, 0u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(35846u, 4294967295u, u_input.a, 55724u)), ~vec4<u32>(1u, 4294967295u, global0.x, u_input.a) >> ((vec4<u32>(99513u, global0.x, 26897u, u_input.a) >> (vec4<u32>(1u, 41679u, u_input.a, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(1u, ~(u_input.a & u_input.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, global0.x), ~u_input.a), countOneBits(_wgslsmith_sub_u32(global0.x, u_input.a))));
    var var_0 = 1u;
    let var_1 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), ~u_input.a), _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.e, true), vec3<i32>(u_input.c.x, u_input.b, u_input.e.x)), 0i), 1050u, vec2<u32>(~(global0.x ^ 13739u), max(8567u, global0.x))), firstLeadingBit(~(~global0.xw & ~global0.wx)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(418f, -1042f))))));
    let var_2 = vec4<i32>(-u_input.c.x, 0i, -32158i, _wgslsmith_mod_i32(u_input.b, ~(-1i)));
    let var_3 = _wgslsmith_clamp_u32(max(func_3(var_1.b, any(vec4<bool>(true, var_1.c, true, true)), _wgslsmith_f_op_f32(var_1.d * 610f)), _wgslsmith_add_u32(~u_input.a, 3631u)), _wgslsmith_add_u32(global0.x | 71422u, _wgslsmith_mod_u32(global0.x, global0.x)) | ~(~0u), 21827u) ^ 51337u;
    return var_1.a;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = func_2();
    var var_1 = vec4<u32>(abs(1075u ^ ~firstTrailingBit(1u)), 4294967295u, _wgslsmith_div_u32(~global0.x, select(global0.x, ~19610u, true)) | max(firstTrailingBit(firstTrailingBit(14301u)), var_0.c), 35687u);
    var var_2 = 406f;
    var var_3 = var_0;
    var var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, -(~var_3.b)), u_input.d.x, -(i32(-1i) * -45148i), reverseBits(_wgslsmith_clamp_i32(49817i >> (var_3.a.x % 32u), 1i, var_0.b))), -min(_wgslsmith_add_vec4_i32(vec4<i32>(21060i, var_0.b, var_3.b, var_3.b), ~vec4<i32>(var_0.b, 4321i, var_0.b, 10269i)), abs(vec4<i32>(-64412i, var_3.b, var_0.b, var_0.b))), firstLeadingBit(-vec4<i32>(u_input.c.x, min(u_input.c.x, -1i), -var_3.b, firstTrailingBit(u_input.d.x))));
    return abs(global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1057f;
    var var_1 = 1u;
    var_1 = func_1(false);
    let var_2 = ~(~vec4<u32>(global0.x, 1u, 4294967295u, u_input.a ^ 1u)) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1744u, global0.x, global0.x, global0.x) << (vec4<u32>(1u, 0u, global0.x, 4294967295u) % vec4<u32>(32u))) | (_wgslsmith_add_vec4_u32(vec4<u32>(20887u, u_input.a, 76034u, 0u), vec4<u32>(global0.x, global0.x, 54974u, global0.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, global0.x), vec4<u32>(u_input.a, global0.x, u_input.a, u_input.a))), vec4<u32>(u_input.a, ~1u, 0u, countOneBits(37567u)), ~vec4<u32>(~1u, global0.x, ~global0.x, u_input.a >> (u_input.a % 32u))) % vec4<u32>(32u));
    var_1 = ~1u;
    var var_3 = Struct_1(global0.yy, abs(-u_input.b), global0.x, vec2<u32>(1u, ~global0.x));
    let var_4 = false;
    var var_5 = Struct_2(4294967295u, -1i, -868f, (-2147483647i ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, -2147483647i), 1392i << (var_2.x % 32u), _wgslsmith_mod_i32(u_input.c.x, u_input.e.x))) != -(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-4754i, u_input.e.x, u_input.d.x), u_input.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-574f, _wgslsmith_f_op_f32(ceil(120f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(258f, -1676f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, 162f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -385f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(365f, -1027f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c, var_5.e.x, -790f, 627f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.e.x, var_5.c, var_5.c, var_5.c) * vec4<f32>(-1304f, var_5.c, -202f, 1754f))) - vec4<f32>(_wgslsmith_f_op_f32(-1249f + var_5.c), _wgslsmith_f_op_f32(var_5.e.x + var_5.e.x), _wgslsmith_f_op_f32(abs(-1262f)), _wgslsmith_f_op_f32(round(408f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_5.e.x, var_5.e.x, -968f, var_5.e.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1653f, var_5.c, var_5.c, var_5.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.e.x, var_5.e.x, 368f, 1285f) * vec4<f32>(1680f, var_5.c, var_5.e.x, 433f))))), _wgslsmith_div_f32(-1230f, _wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(select(var_5.e.x, 874f, var_5.d)))), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_5.b, u_input.c.x, u_input.e.x) | vec4<i32>(-2147483647i, 0i, var_3.b, u_input.d.x), countOneBits(vec4<i32>(u_input.c.x, 16587i, var_5.b, 0i))), select(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-17775i, var_5.b, u_input.e.x, -61507i), vec4<i32>(-1i, var_5.b, var_5.b, 2569i), false), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.b, -30254i, u_input.d.x, 0i), vec4<i32>(27787i, 0i, 15759i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_5.b, var_5.b, -15435i), vec4<i32>(var_5.b, -11235i, -1i, -2147483647i))), reverseBits(vec4<i32>(-22711i, var_5.b, u_input.e.x, 6269i)) & -vec4<i32>(u_input.d.x, -36515i, -7803i, u_input.e.x), !(!var_5.d))), var_2.x);
}


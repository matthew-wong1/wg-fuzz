struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(4294967295u), Struct_5(7309u), Struct_5(86906u), Struct_5(1u), Struct_5(11624u), Struct_5(39877u), Struct_5(4294967295u), Struct_5(1u), Struct_5(35518u));

var<private> global1: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    global1 = !(!(2691u != _wgslsmith_div_u32(0u << (1u % 32u), ~u_input.b.x)));
    var var_0 = Struct_1(abs(-min(vec4<i32>(u_input.a, 2147483647i, u_input.c.x, 0i), -vec4<i32>(1i, u_input.a, u_input.a, 1i))), abs(vec2<u32>(firstTrailingBit(~u_input.b.x), ~(~u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1391f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1599f, -301f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, _wgslsmith_f_op_f32(1000f - -115f))), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(abs(-245f)), vec4<i32>(~(-_wgslsmith_clamp_i32(1i, -2147483647i, -38317i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c.x, abs(1i), abs(u_input.a), _wgslsmith_mult_i32(u_input.c.x, u_input.a)), select(vec4<i32>(u_input.a, -1i, u_input.c.x, 83402i), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.a) >> (u_input.b % vec4<u32>(32u)), any(vec2<bool>(false, false)))), ~(-(i32(-1i) * -39920i)), u_input.c.x));
    global0 = array<Struct_5, 9>();
    var var_1 = var_0.c.x;
    global1 = any(vec2<bool>(true, true));
    return 1i;
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    var var_0 = vec4<i32>(~select(min(func_3(), abs(38577i)), min(u_input.c.x, ~u_input.c.x), (u_input.c.x | u_input.c.x) == -42467i), max(14790i, u_input.c.x), _wgslsmith_add_i32(abs(-_wgslsmith_sub_i32(u_input.a, -21961i)), 41071i), -_wgslsmith_sub_i32(u_input.c.x, 47993i));
    let var_1 = _wgslsmith_add_vec2_u32(~(select(u_input.b.zy, u_input.b.ww, false) << ((u_input.b.yx << (vec2<u32>(u_input.b.x, arg_0.a) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(u_input.b.x, max(~40551u, 48185u)) % vec2<u32>(32u)), u_input.b.wy & (select(vec2<u32>(2617u, u_input.b.x) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), u_input.b.xz | vec2<u32>(1u, 0u), true) & select(~vec2<u32>(arg_0.a, 3640u), u_input.b.wy, true)));
    var var_2 = true;
    let var_3 = Struct_3(Struct_1(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-15560i, var_0.x, var_0.x, u_input.c.x), vec4<i32>(1i, 17215i, -1i, 16920i)), vec4<i32>(9713i, -39302i, var_0.x, u_input.c.x) >> (vec4<u32>(0u, 4294967295u, 0u, 82383u) % vec4<u32>(32u)))), ~(~countOneBits(u_input.b.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1491f, -1000f) - vec2<f32>(-573f, -1754f))))), 532f, countOneBits(~vec4<i32>(2147483647i, var_0.x, 1i, 1i)) | vec4<i32>(u_input.a << (var_1.x % 32u), _wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(var_0.x, 1i)), -39565i, -1i)), max(1u, min(min(u_input.b.x, var_1.x >> (var_1.x % 32u)), 1u)), any(vec4<bool>(true, true, true, true)), -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.zzx, u_input.c), abs(_wgslsmith_div_vec3_i32(var_0.zww, vec3<i32>(24101i, -42311i, 2147483647i)))));
    global1 = var_3.c;
    return arg_0;
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_4(firstLeadingBit(~(~countOneBits(u_input.b))), Struct_2(arg_2.a, u_input.c), -(~2147483647i));
    let var_1 = var_0.b.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2809f, arg_2.a.c.x))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c.x * var_0.b.a.d) + arg_1), _wgslsmith_f_op_f32(-arg_2.a.c.x))));
    global1 = -_wgslsmith_clamp_i32(u_input.a, firstLeadingBit(-17291i), abs(~var_0.c)) < _wgslsmith_add_i32(0i, -firstLeadingBit(-2147483647i) >> (~firstTrailingBit(arg_2.a.b.x) % 32u));
    global1 = 1000f > arg_2.a.c.x;
    return global0[_wgslsmith_index_u32(u_input.b.x, 9u)];
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> Struct_2 {
    global0 = array<Struct_5, 9>();
    let var_0 = any(select(select(select(!vec3<bool>(arg_1.c, arg_1.c, true), !vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, false, true)), select(!vec3<bool>(arg_1.c, true, false), select(vec3<bool>(true, arg_1.c, false), vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(false, false, true)), false), !arg_1.c && arg_1.c), !vec3<bool>(arg_1.b < arg_0.a, false, arg_1.c), true));
    global1 = ~_wgslsmith_mult_u32(28239u & func_4(arg_0, arg_1.a.d, Struct_2(Struct_1(arg_1.a.a, u_input.b.wz, vec2<f32>(-488f, 505f), -1000f, arg_1.a.a), vec3<i32>(1i, 2147483647i, 2147483647i))).a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a) >> (vec2<u32>(1u, arg_1.b) % vec2<u32>(32u)), min(vec2<u32>(1u, 14707u), vec2<u32>(arg_1.b, 0u)))) > arg_0.a;
    var var_1 = !(~(-2147483647i) != u_input.c.x) != !arg_1.c;
    let var_2 = ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x & 90704u);
    return Struct_2(arg_1.a, reverseBits(firstTrailingBit(vec3<i32>(arg_1.a.e.x, ~(-1i), _wgslsmith_mod_i32(-2147483647i, arg_1.d.x)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(736f)), _wgslsmith_f_op_f32(-418f - 756f), -1280f, _wgslsmith_f_op_f32(745f + -918f)) * vec4<f32>(416f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-668f * 425f), -178f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(535f, -1280f, -1124f, 1000f))))), arg_3))));
    let var_1 = func_5(func_4(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 9u)]), var_0.x, Struct_2(Struct_1(firstTrailingBit(vec4<i32>(u_input.a, u_input.c.x, -72448i, -1i)), u_input.b.xz << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 405f) * var_0.xz), var_0.x, vec4<i32>(2147483647i, u_input.c.x, 20026i, -28598i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, -39397i), u_input.c), -u_input.c))), Struct_3(Struct_1((vec4<i32>(u_input.c.x, arg_2.x, u_input.a, u_input.c.x) | vec4<i32>(53494i, u_input.c.x, arg_2.x, -1i)) << ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 97414u) & vec4<u32>(u_input.b.x, u_input.b.x, 43456u, u_input.b.x)) % vec4<u32>(32u)), select(vec2<u32>(77197u, u_input.b.x), u_input.b.yx | vec2<u32>(4294967295u, 0u), select(arg_1, vec2<bool>(true, false), false)), var_0.xw, _wgslsmith_f_op_f32(677f + _wgslsmith_div_f32(var_0.x, 2056f)), vec4<i32>(arg_2.x, arg_2.x, u_input.a, -11441i) ^ vec4<i32>(38738i, arg_2.x, 1i, 1i)), 91408u, true, vec3<i32>(-1i, abs(-1309i), u_input.a) << (u_input.b.zwx % vec3<u32>(32u))));
    global1 = !(2147483647i <= firstTrailingBit(_wgslsmith_clamp_i32(u_input.a, -var_1.a.e.x, ~(-947i))));
    global0 = array<Struct_5, 9>();
    let var_2 = 799i;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), u_input.c, true), ~(~min(u_input.b.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x))), !(-countOneBits(u_input.c.x) == (u_input.c.x >> (abs(42949u) % 32u))), -vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c.yy), vec2<i32>(u_input.a, 2147483647i)), -1i, -353i));
    let var_1 = func_5(func_4(Struct_5(u_input.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.d), -342f)), func_5(Struct_5(func_5(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], var_0).a.b.x), var_0)), var_0);
    global0 = array<Struct_5, 9>();
    var var_2 = abs(~u_input.c);
    var var_3 = var_0;
    var var_4 = Struct_3(Struct_1(~var_1.a.e, _wgslsmith_sub_vec2_u32(var_0.a.b, var_0.a.b | ~var_1.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.c.x, var_0.a.d), vec2<f32>(837f, 309f)))), _wgslsmith_div_f32(436f, 866f), ~(~(~var_3.a.a))), ~select(_wgslsmith_dot_vec2_u32(var_3.a.b, func_5(Struct_5(1u), Struct_3(var_0.a, var_1.a.b.x, var_3.c, var_0.a.e.yzz)).a.b), reverseBits(firstTrailingBit(1u)), !all(vec3<bool>(var_3.c, var_3.c, var_0.c))), true && var_3.c, var_0.d);
    var_4 = var_0;
    var var_5 = -612f;
    var_4 = Struct_3(Struct_1(min(_wgslsmith_mod_vec4_i32(vec4<i32>(-574i, -1i, 71818i, var_2.x), var_0.a.e), firstTrailingBit(vec4<i32>(-1i, var_3.d.x, -33668i, 83040i))) & select(countOneBits(vec4<i32>(-1i, var_4.d.x, 29385i, 1i)), var_1.a.a, !vec4<bool>(var_4.c, var_0.c, var_3.c, true)), u_input.b.yx, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c.x + 483f), _wgslsmith_f_op_f32(1583f + var_1.a.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(953f))))), vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.c.x), i32(-1i) * -27415i, var_3.d.x, -1i) ^ var_4.a.e), 18708u, true, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c, var_3.a.c, 4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1138f + _wgslsmith_f_op_f32(-var_1.a.c.x)), -742f, var_1.a.d, -1829f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a.c.x, var_1.a.c.x, -472f, -908f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.c.x, 937f, var_0.a.c.x, var_4.a.d)))) + vec4<f32>(1f, 1f, 1f, 1f))));
}


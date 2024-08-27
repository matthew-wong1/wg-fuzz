struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~(~u_input.e))), 23u)];
    var var_1 = Struct_3(-(-70444i ^ ~select(u_input.b.x, -25838i, false)), ~(u_input.a.x & ~u_input.a.x), global0[_wgslsmith_index_u32(max(1u, 4294967295u) >> (~firstTrailingBit(~u_input.e) % 32u), 23u)], true, arg_0.x >= 2147483647i);
    global2 = arg_0.x & arg_0.x;
    return arg_1.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_4 {
    global2 = ~2147483647i;
    global1 = ~(min(71169i, -24258i) & u_input.b.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -149f, -262f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -492f, -1401f)))) * vec3<f32>(-127f, _wgslsmith_f_op_f32(964f - 1308f), 1099f))));
    let var_1 = global0[_wgslsmith_index_u32(39905u, 23u)];
    let var_2 = (_wgslsmith_sub_i32(-_wgslsmith_sub_i32(-1i, arg_1), ~(~var_1.a.x)) << ((~(~4294967295u) << (u_input.c % 32u)) % 32u)) >> (28312u % 32u);
    return Struct_4(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), -994f >= var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, -16730i, arg_1), vec3<i32>(var_1.a.x, arg_1, var_1.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1382f, -1000f, var_0.x, var_0.x)), vec4<f32>(-1000f, var_0.x, var_0.x, -1800f)))))), vec3<u32>(countOneBits((66914u | u_input.c) << ((arg_0.x | arg_0.x) % 32u)), arg_0.x, countOneBits(arg_0.x & abs(5013u))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(~82299u), abs(4294967295u), ~51132u), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    global0 = array<Struct_1, 23>();
    var var_0 = true;
    var var_1 = arg_0.b;
    global0 = array<Struct_1, 23>();
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(arg_2.c.a.x | -10858i, u_input.d), 31509i, 12420i);
    return arg_0;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(func_2(firstLeadingBit(~reverseBits(vec4<u32>(25665u, 73321u, 29339u, u_input.c))), u_input.b.x), Struct_3(firstTrailingBit(~(5090i >> (u_input.c % 32u))), ~(~(~0u)), func_2(reverseBits(vec4<u32>(u_input.c, 0u, u_input.e, u_input.a.x)), _wgslsmith_clamp_i32(1i, u_input.b.x, u_input.d) | u_input.d).d, any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false))), Struct_2(u_input.d, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, ~u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.e), reverseBits(u_input.a))), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-61578i, u_input.d)) | u_input.b), Struct_1(~vec2<i32>(u_input.b.x, u_input.d)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u & u_input.a.x, _wgslsmith_add_u32(firstLeadingBit(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 2815u), vec2<u32>(113269u, u_input.e)))), 23u)]));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, abs(~u_input.c), _wgslsmith_mod_u32(u_input.c & var_0.c.x, _wgslsmith_add_u32(105731u, var_0.c.x))), firstLeadingBit(_wgslsmith_clamp_u32(var_0.c.x >> (u_input.c % 32u), ~var_0.c.x, u_input.e)), 75845u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), func_2(vec4<u32>(var_0.c.x, 55338u, 1u, var_0.c.x), u_input.d).c) & _wgslsmith_div_u32(~var_0.c.x, _wgslsmith_mult_u32(44132u, u_input.a.x))), select(~(~(~vec4<u32>(var_0.c.x, 0u, u_input.c, 0u))), ~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.e)), any(vec2<bool>(true, false))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 1607f, -231f, -2156f))), vec4<f32>(var_2.e, func_2(var_1, var_0.d.a.x).e, 1079f, _wgslsmith_f_op_f32(floor(var_0.b))))))));
    var var_4 = -_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(4319i, 42391i, var_0.d.a.x)), ~vec3<i32>(u_input.b.x, 1i, u_input.d), vec3<i32>(u_input.b.x, var_0.d.a.x, u_input.d) ^ vec3<i32>(-10801i, -23700i, 51167i)), firstTrailingBit(~vec3<i32>(8945i, -477i, var_0.d.a.x)));
    return Struct_3((((u_input.d | -48771i) & 1i) & u_input.d) & (countOneBits(var_2.d.a.x | -31544i) >> (u_input.e % 32u)), _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(u_input.c, var_1.x ^ 47749u)), 29041u), var_0.d, true, all(var_2.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(845f, arg_1.b) * vec2<f32>(-968f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.e)) + _wgslsmith_f_op_f32(-arg_1.b)))));
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(-(~(arg_0.c.a ^ arg_0.c.a)), arg_0.c.a));
    let var_2 = arg_0.c;
    let var_3 = func_1();
    return Struct_2(_wgslsmith_clamp_i32(var_3.a, var_3.c.a.x, -14166i), ~(abs(arg_1.c.xx) | _wgslsmith_div_vec2_u32(~u_input.a, vec2<u32>(u_input.e, var_3.b))), Struct_1(var_3.c.a << (_wgslsmith_add_vec2_u32(max(arg_1.c.yy, arg_1.c.yx), ~u_input.a) % vec2<u32>(32u))), func_2(reverseBits(abs(vec4<u32>(u_input.c, 30568u, u_input.a.x, var_3.b)) & vec4<u32>(arg_1.c.x, arg_1.c.x, var_3.b, var_3.b)), _wgslsmith_dot_vec4_i32(min(-vec4<i32>(-40868i, var_3.c.a.x, -2147483647i, 22932i), vec4<i32>(31127i, 2147483647i, -1i, -38294i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, arg_1.d.a.x, var_2.a.x, var_3.a) >> (vec4<u32>(arg_0.b, 56573u, 49349u, 104512u) % vec4<u32>(32u)), vec4<i32>(-1i, var_1.x, var_2.a.x, -2147483647i)))).d, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), func_2(vec4<u32>(u_input.e, min(func_4(Struct_4(vec3<bool>(true, false, true), 523f, vec3<u32>(0u, 43347u, u_input.e), Struct_1(u_input.b), -1089f), Struct_3(-18363i, u_input.a.x, Struct_1(u_input.b), false, false), Struct_2(u_input.d, vec2<u32>(1u, u_input.c), global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)])).c.x, ~0u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.e, 0u), u_input.c, select(0u, u_input.c, false)), ~u_input.e), u_input.b.x));
    global0 = array<Struct_1, 23>();
    var var_1 = all(vec3<bool>(any(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, true)))), false, !all(vec3<bool>(true, true, true))));
    var_1 = !(2147483647i <= -var_0.a);
    var_1 = func_1().d;
    let var_2 = vec2<i32>(42637i, -52825i) >> (_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a << (vec2<u32>(36729u, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(35043u, u_input.c)), vec2<u32>(func_1().b, ~var_0.b.x)) % vec2<u32>(32u));
    var var_3 = func_2(select(~select(vec4<u32>(u_input.c, u_input.a.x, 0u, 1u), vec4<u32>(u_input.e, 1u, var_0.b.x, var_0.b.x), false), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, u_input.e, 4294967295u, 43299u), vec4<u32>(42733u, var_0.b.x, 100030u, 1u)), _wgslsmith_mult_i32(56472i, var_0.d.a.x) > var_0.a) & vec4<u32>(u_input.c, u_input.a.x, ~1u, _wgslsmith_div_u32(~var_0.b.x, 4294967295u)), var_2.x);
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f * _wgslsmith_div_f32(var_3.b, var_3.e))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-147f)))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(6656i ^ var_3.d.a.x, ~(-1i)), 50811i), ~var_0.e.a.x), ~_wgslsmith_add_u32(max(abs(var_3.c.x), _wgslsmith_mod_u32(77241u, var_3.c.x)), min(_wgslsmith_mod_u32(39959u, 1u), func_5(Struct_3(var_0.d.a.x, var_3.c.x, Struct_1(vec2<i32>(-18497i, u_input.b.x)), false, var_3.a.x), Struct_4(vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.b, vec3<u32>(var_3.c.x, 1u, 28874u), var_3.d, var_3.b)).b.x)), reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(43063u, var_0.b.x, 1u, 1u), ~vec4<u32>(u_input.e, 0u, 1u, u_input.e))), _wgslsmith_div_f32(var_3.e, _wgslsmith_f_op_f32(-var_3.e)));
}


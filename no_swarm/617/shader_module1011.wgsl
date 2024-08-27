struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(578f, vec3<i32>(-33178i, 53011i, -5544i), 0u);

var<private> global1: array<vec2<u32>, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global0 = Struct_1(-198f, global0.b, abs(24239u));
    global0 = Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 240f))))), -(~vec3<i32>(_wgslsmith_mult_i32(u_input.b, global0.b.x), abs(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.a, u_input.c), vec4<i32>(29741i, global0.b.x, global0.b.x, u_input.a)))), global0.c);
    var var_0 = true;
    var var_1 = _wgslsmith_clamp_vec4_u32((vec4<u32>(~global0.c, 44019u, 1u, global0.c) | (~vec4<u32>(global0.c, 15205u, global0.c, global0.c) >> (select(vec4<u32>(global0.c, global0.c, global0.c, 1u), vec4<u32>(global0.c, 40466u, global0.c, global0.c), vec4<bool>(arg_0.c.a, arg_0.c.b.x, false, true)) % vec4<u32>(32u)))) & abs(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 58719u, global0.c), vec4<u32>(15759u, 8443u, 0u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c, global0.c, 94801u, 35041u), vec4<u32>(0u, global0.c, global0.c, 8866u)), vec4<bool>(true, true, true, true))), vec4<u32>(3198u, _wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(28501u, 24821u), global0.c, 36868u > global0.c), global0.c, global0.c), ~((1u << (global0.c % 32u)) ^ ~1u), ~4294967295u), vec4<u32>(select(~50287u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(39671u, 81133u)), global1[_wgslsmith_index_u32(1u >> (1u % 32u), 4u)]), select(true, false, -1044f < global0.a)), ~countOneBits(global0.c) ^ 4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1098u, global0.c), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(19857u, 4u)])), 0u << (0u % 32u)), ~1724u));
    var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, var_1.x), reverseBits(global0.c), 0u | global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, global0.c, var_1.x, 0u), vec4<u32>(global0.c, var_1.x, 0u, global0.c))), vec4<u32>(abs(30768u), var_1.x, ~0u, global0.c)), select(~(~vec4<u32>(global0.c, 26618u, 11732u, var_1.x)), ~vec4<u32>(0u, global0.c, global0.c, var_1.x), arg_0.d.a));
    return vec4<i32>(-61335i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(abs(2147483647i), u_input.d | arg_0.b), -firstLeadingBit(vec2<i32>(26163i, u_input.a)), false || (-2147483647i < u_input.c)), global0.b.zy), (_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.d, arg_0.b, 2147483647i), firstLeadingBit(vec4<i32>(0i, global0.b.x, -1i, global0.b.x))) | global0.b.x) | 1i, arg_0.b ^ (min(abs(-2147483647i), ~2147483647i) & -global0.b.x));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(Struct_3(Struct_2(false, vec2<bool>(true, any(vec4<bool>(false, false, false, false)))), u_input.a, Struct_2(any(vec4<bool>(true, false, true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), Struct_2(false, vec2<bool>(true, true))), Struct_3(Struct_2(true, vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.b.x, 17493i, -27964i, global0.b.x), (vec4<i32>(u_input.c, u_input.c, 8439i, -34158i) & vec4<i32>(0i, -28351i, u_input.d, u_input.d)) | func_3(Struct_3(Struct_2(true, vec2<bool>(true, false)), 2147483647i, Struct_2(true, vec2<bool>(true, true)), Struct_2(false, vec2<bool>(false, true))))), Struct_2(all(vec3<bool>(true, false, true)), vec2<bool>(true, true)), Struct_2(_wgslsmith_f_op_f32(trunc(global0.a)) != 351f, vec2<bool>(any(vec2<bool>(false, true)), false))));
    let var_1 = !select(!select(select(vec4<bool>(false, var_0.b.a.a, true, true), vec4<bool>(true, var_0.b.a.a, false, var_0.b.d.b.x), var_0.b.a.a), !vec4<bool>(false, var_0.b.d.b.x, false, true), select(var_0.b.a.a, var_0.b.a.b.x, false)), !select(!vec4<bool>(var_0.b.d.a, false, true, var_0.a.d.b.x), !vec4<bool>(false, false, var_0.a.a.b.x, var_0.b.d.a), select(vec4<bool>(true, var_0.a.a.b.x, true, false), vec4<bool>(var_0.a.a.b.x, false, false, var_0.b.a.b.x), vec4<bool>(var_0.a.a.b.x, var_0.b.c.b.x, false, var_0.a.a.a))), var_0.a.c.a);
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(min(global0.a, 1f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
    let var_4 = var_0.b.d.a;
    return global0.b.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = global0.a;
    let var_1 = false;
    var var_2 = !(!(any(select(vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, var_1, true))) & (~global0.c > ~0u)));
    var var_3 = global0.b.x;
    var var_4 = vec4<i32>(-2147483647i, -28809i, func_2() << (abs(18409u) % 32u), 4377i);
    return Struct_3(Struct_2(select(false, var_1, false), !select(!vec2<bool>(arg_1, var_1), select(vec2<bool>(false, false), vec2<bool>(false, true), true), 0u < global0.c)), _wgslsmith_clamp_i32(8224i, global0.b.x, firstTrailingBit(~(-arg_0))), Struct_2(false, vec2<bool>(true, false)), Struct_2(any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !(!vec2<bool>(false, var_1))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    var var_0 = vec2<f32>(global0.a, _wgslsmith_f_op_f32(global0.a + global0.a));
    let var_1 = Struct_4(func_1(-1i, false, ~(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, arg_2.b)) >> ((vec2<u32>(1u, 36569u) ^ vec2<u32>(arg_0, global0.c)) % vec2<u32>(32u)))), func_1(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(79299i, arg_1, 0i, arg_2.b), vec4<i32>(arg_1, -1i, -2880i, global0.b.x)) == 51055i, vec2<i32>(func_2(), -arg_1)));
    let var_2 = ~0u;
    let var_3 = _wgslsmith_add_i32(func_1(global0.b.x, !(!arg_2.d.a), firstLeadingBit(vec2<i32>(arg_1, arg_2.b))).b, select(-(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 30307i, 1i, global0.b.x), vec4<i32>(global0.b.x, -2147483647i, 15269i, arg_2.b)) << (1u % 32u)), ~_wgslsmith_clamp_i32(arg_1, _wgslsmith_div_i32(26102i, 43899i), -2147483647i ^ global0.b.x), all(func_1(55431i, any(vec4<bool>(true, arg_2.d.a, false, var_1.b.d.b.x)), max(vec2<i32>(global0.b.x, arg_1), vec2<i32>(arg_2.b, 2147483647i))).a.b)));
    var var_4 = arg_2;
    return Struct_1(-1212f, ~abs(firstTrailingBit(global0.b)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(400u, u_input.a, func_1(_wgslsmith_sub_i32(~global0.b.x, u_input.c), false, countOneBits(vec2<i32>(u_input.a, global0.b.x))), -1620f);
    global1 = array<vec2<u32>, 4>();
    let var_0 = func_4(global0.c, max(u_input.d, u_input.d ^ select(20396i, reverseBits(50649i), true)), func_1(1i, true, -max(firstLeadingBit(global0.b.zz), vec2<i32>(u_input.d, 11954i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(600f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, -997f) * vec2<f32>(648f, 617f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a, _wgslsmith_f_op_f32(2158f - global0.a)))))) * vec2<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), -719f));
    let var_2 = 419f;
    var var_3 = Struct_4(func_1(-24417i, 5274u > _wgslsmith_sub_u32(global0.c, _wgslsmith_clamp_u32(var_0.c, 19991u, 0u)), var_0.b.xy), func_1(~(-2147483647i), !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), vec2<i32>(~(-2147483647i), global0.b.x) << (countOneBits(vec2<u32>(0u, 48640u) | vec2<u32>(global0.c, global0.c)) % vec2<u32>(32u))));
    let var_4 = vec2<u32>(global0.c, _wgslsmith_add_u32(global0.c | 15666u, global0.c));
    var var_5 = vec4<f32>(var_0.a, var_1.x, 298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -1473f, false)) - global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(61438i, -_wgslsmith_sub_i32(var_0.b.x, max(11221i, global0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1003f)), -209f)))), _wgslsmith_add_vec4_i32(~vec4<i32>(-53511i >> (0u % 32u), 2147483647i, _wgslsmith_mod_i32(u_input.a, 0i), -u_input.b), vec4<i32>(~var_0.b.x, global0.b.x, select(-1i, 14809i, true), 51056i >> (1u % 32u)) ^ vec4<i32>(select(var_3.a.b, 17960i, false), u_input.c, 1i, _wgslsmith_mult_i32(10109i, global0.b.x))), 54137i << (0u % 32u));
}

